import sys
from datetime import datetime

import warnings

from connection import db_connection
import view
import pandas as pd
import PyQt5
import matplotlib
matplotlib.use('Qt5Agg')
import matplotlib.pyplot as plt
from prettytable import PrettyTable
import yaml
from yaml.loader import SafeLoader


current_user = ''
cnx = ''


def db_login():
    with open('Userdetails.yaml', 'r') as f:
        data = list(yaml.load_all(f, Loader=SafeLoader))
    c = db_connection(data[0][0]['name'], data[0][0]['password'])
    global cnx
    cnx = c.get_connection()
    view.welcome()
    return cnx


def get_login_user():
    view.get_user_type()
    usertype = input()
    return usertype


def userlogin(usertype):
    global current_user
    current_user = input('Please enter your username:')
    password = input('Please enter your password:')
    stmt_login_user = "select login('" + current_user + "','" + password + "','" + usertype + "')"
    cur.execute(stmt_login_user)
    status = cur.fetchall()
    s = status[0]["login('" + current_user + "','" + password + "','" + usertype + "')"]
    while not s:
        proceed = input(
            'The username and password combination entered was wrong. Do you wish to try again? Y/N\n')
        if proceed == "Y":
            current_user = input('Please enter your username:')
            password = input('Please enter your password:')
            stmt_login_user = "select login('" + current_user + "','" + password + "','" + usertype + "')"  # call login function in sql
            cur.execute(stmt_login_user)
            status = cur.fetchall()
            s = status[0]["login('" + current_user + "','" + password + "','" + usertype + "')"]
        elif proceed == "N":
            return False
        else:
            view.print_wrong_input()
        if s:
            view.print_logged_in_as(current_user)
            return True
    return True


def user_login(usert):
    if usert == "3":
        new_visitor = input('Welcome to Prison Visiting Permission, '
                            'do you already have a visitor account? Y/N\n')
        if new_visitor == "N":
            global current_user
            current_user = input('Please enter a unique username that you would like to choose:\n')
            stmt_is_user_present = "select isUserPresent('" + current_user + "','" + "visitor" + "')"
            cur.execute(stmt_is_user_present)
            status = cur.fetchall()
            while status[0]["isUserPresent('" + current_user + "','" + "visitor" + "')"]:
                print('The current username is already picked')
                current_user = input('Please enter a different username:\n')
                stmt_is_user_present = "call isUserPresent('" + current_user + "','" + "visitor" + "')"
                cur.execute(stmt_is_user_present)
            password = input('Please enter your password:\n')
            SSN = input('Please Enter your SSN number: ')
            firstName = input('Please Enter your First name: ')
            lastName = input('Please Enter your Last name: ')
            gender = input('Please specify your Gender (Male/Female/Other): ')
            dob = input("Enter date of birth in the format y-m-d: ")
            datetime.strptime(dob, '%Y-%m-%d')
            city = input("Please enter the City of your stay: ")
            street = input("Please enter the street of your stay: ")
            state = input("Please enter the state where you stay: ")
            phoneNumber = input("Enter your Phone number: ")
            stmt_new_visitor = "call addvisitor('"+SSN+"','"+firstName+"','"+lastName+"','"+gender+"','"+dob+"','"+city+"','"+street+"','"+state+"','"+phoneNumber+"','"+current_user+"','"+password+"')"
            try:
                cur.execute(stmt_new_visitor)
                cnx.commit()
                print("User Created Successfully!!")
            except Exception as e:
                print(repr(e))
        else:
            return userlogin("visitor")

    elif usert == "1":
        return userlogin("admin")

    elif usert == "2":
        return userlogin("supervisor")
    else:
        print('Invalid input entered')
        return False
    return True


def prisoner_visitation():
    try:
        prisonerDetails = "call getAllPrisoners()"
        cur.execute(prisonerDetails)
        prisonerList = cur.fetchall()
        print("Prisoner List \n")
        t = PrettyTable(['Id', 'Name', 'LastName'])
        prisonerIdlist = []
        for i in prisonerList:
            prisonerIdlist.append(str(i["prisonerId"]))
            t.add_row([i["prisonerId"], i["firstname"], i["lastname"]])
        print(t)
        prisonerVisit = input("Enter the prisoner Id whom you would like to visit: ")
        while prisonerVisit not in prisonerIdlist:
            prisonerVisit = input("Invalid Input please enter valid input or Go back (Q): ")
            if prisonerVisit == "Q":
                break
        visit_time = input("Enter the date format y-m-d (Visitation hours 4-6 pm): ")
        try:
            datetime.strptime(visit_time, '%Y-%m-%d')
        except Exception as e:
            print("Invalid date! Please enter a valid date.")
        prisonerSuper = "call getSupervisorforPrisoner(" + prisonerVisit + ")"
        cur.execute(prisonerSuper)
        supervisor = cur.fetchall()
        if not supervisor:
            print("The prisoner does not have any visitor privileges")
        else:
            addVisitor = "call visitRequest(" + prisonerVisit + ",'" + current_user + "'," \
                                                                                      "" + str(
                supervisor[
                    0]["supervisorId"]) + ",'" + visit_time + "'," + "0" + ")"
            cur.execute(addVisitor)
            cnx.commit()
            print("Placed the request successfully")
    except Exception as e:
        print(repr(e))


def visitor_operations(username):
    view.print_visitor_operations()
    operation = input().upper()

    if operation == "1":
        prisoner_visitation()
    elif operation == "2":
        see_request_details(username)
    elif operation == "Q":
        pass
    else:
        view.print_wrong_input()

    if operation != "Q":
        visitor_operations(username)


def see_request_details(username):
    print("Approval Status")
    fetch_approvals = "call getRequestForVisitor('" + username + "');"
    cur.execute(fetch_approvals)
    approvals = cur.fetchall()
    t = PrettyTable(['Serial Number','Prisoner Id', 'Prisoner Name', 'Visitation Date','Status'])
    count=1
    statusList = {"0":"Pending","1":"Approved" ,"2" : "Deny"}
    for i in approvals:
        t.add_row([count,i["prisonerId"], i["prisoner"], i["request_date"],statusList[i["visit_status"]]])
        count+=1
    print(t)



def show_supervisors():
    cur.callproc('getAllSupervisors')
    result = cur.fetchall()
    view.print_supervisor(result)


def delete_supervisor():
    show_supervisors()
    supervisor_id = input('Which supervisor do you want to remove? Enter the supervisor no')
    stmt_remove_guard = "call removeSupervisor('" + supervisor_id + "')"
    try:
        cur.execute(stmt_remove_guard)
        s = cur.fetchall()
        if s and '@full_error' in s[0]:
            print(s[0]['@full_error'])
        else:
            cnx.commit()
            print('Successfully removed the selected supervisor.')
    except Exception as e:
        print(repr(e))
    return


def update_supervisor():
    show_supervisors()
    supervisor_id = input('Which supervisor do you want to remove? Enter the guard no')
    SSN = input('Please enter the SSN of the supervisor')
    fname = input('Please enter the first name: ')
    lname = input('Please enter the last name: ')
    sex = input('Please enter the sex (Male/ Female/ Other) of the supervisor: ')
    dob = input('Please enter their date of birth in yyyy-m-d format: ')
    ssd = input('Please enter service start date in yyyy-m-d format: ')
    sed = input('Please enter service end date in yyyy-m-d format: ')
    street = input('Please enter street number: ')
    city = input('Please enter city of residence: ')
    state = input('Please enter state of residence: ')
    salary = input('Please enter their salary: ')
    stmt_add_guard = "call updateSupervisor('" + supervisor_id + "','" + SSN + "','" + fname + \
                     "','" + lname + \
                     "','" + sex + "','" + dob + "','" + ssd + "','" + sed + "','" + street \
                     + "','" + city + "','" + state + "','" + salary + "')"
    try:
        cur.execute(stmt_add_guard)
        s = cur.fetchall()
        if s and '@full_error' in s[0]:
            print(s[0]['@full_error'])
        else:
            cnx.commit()
            print('Successfully updated the Supervisor details')
    except Exception as e:
        print(repr(e))


def show_guards(supervisor_name):
    stmt_get_guards = "call getAllGuards('" + supervisor_name + "')"
    cur.execute(stmt_get_guards)
    result = cur.fetchall()
    view.print_guard(result)


def add_guard(supervisor_name):
    SSN = input('Please enter the SSN of the guard: ')
    fname = input('Please enter the first name: ')
    lname = input('Please enter the last name: ')
    sex = input('Please enter the sex (Male/ Female/ Other) of the guard: ')
    dob = input('Please enter their date of birth in yyyy-m-d format: ')
    ssd = input('Please enter service start date in yyyy-m-d format: ')
    sed = input('Please enter service end date in yyyy-m-d format: ')
    street = input('Please enter street number: ')
    city = input('Please enter city of residence: ')
    state = input('Please enter state of residence: ')
    salary = input('Please enter their salary: ')
    stmt_add_guard = "call addGuard('" + SSN + "','" + fname + "','" + lname + \
                     "','" + sex + "','" + dob + "','" + ssd + "','" + sed + "','" + street \
                     + "','" + city + "','" + state + "','" + supervisor_name + "','" + salary + "')"
    try:
        cur.execute(stmt_add_guard)
        s = cur.fetchall()
        if s and '@full_error' in s[0]:
            print(s[0]['@full_error'])
        else:
            cnx.commit()
            print('Successfully created a new guard')
    except Exception as e:
        print(repr(e))


def remove_guard(supervisor_name):
    show_guards(supervisor_name)
    guard_id = input('Which guard do you want ot remove? Enter the guard no: ')
    stmt_remove_guard = "call deleteGuard('" + guard_id + "')"
    try:
        cur.execute(stmt_remove_guard)
        s = cur.fetchall()
        if s and '@full_error' in s[0]:
            print(s[0]['@full_error'])
        else:
            cnx.commit()
            print('Successfully removed the selected guard.')
    except Exception as e:
        print(repr(e))
    return


def update_guard(supervisor_name):
    show_guards(supervisor_name)
    guard_id = input('Which guard do you want ot remove? Enter the guard no: ')

    fname = input('Please enter the first name: ')
    lname = input('Please enter the last name: ')
    sex = input('Please enter the sex (Male/ Female/ Other) of the guard: ')
    dob = input('Please enter their date of birth in yyyy-m-d format: ')
    ssd = input('Please enter service start date in yyyy-m-d format: ')
    sed = input('Please enter service end date in yyyy-m-d format: ')
    street = input('Please enter street number: ')
    city = input('Please enter city of residence: ')
    state = input('Please enter state of residence: ')
    salary = input('Please enter their salary: ')
    stmt_add_guard = "call updateGuard('" + guard_id + "','" + fname + "','" + lname + \
                     "','" + sex + "','" + dob + "','" + ssd + "','" + sed + "','" + street \
                     + "','" + city + "','" + state + "','" + supervisor_name + "','" + salary + "')"
    try:
        cur.execute(stmt_add_guard)
        s = cur.fetchall()
        if s and '@full_error' in s[0]:
            print(s[0]['@full_error'])
        else:
            cnx.commit()
            print('Successfully updated the guard details')
    except Exception as e:
        print('Could not update the data for the given guard')


def show_prisoners():
    stmt_get_prisoners = "call getAllPrisoners()"
    cur.execute(stmt_get_prisoners)
    result = cur.fetchall()
    view.print_prisoner(result)


def add_prisoner():
    SSN = input('Please enter the SSN of the prisoner: ')
    fname = input('Please enter the first name: ')
    lname = input('Please enter the last name: ')
    sex = input('Please enter the sex (Male/ Female/ Other) of the prisoner: ')
    dob = input('Please enter their date of birth in yyyy-m-d format: ')
    ssd = input('Please enter prison term start date in yyyy-m-d format: ')
    sed = input('Please enter prison term end date in yyyy-m-d format: ')
    street = input('Please enter street number: ')
    city = input('Please enter city of residence: ')
    state = input('Please enter state of residence: ')
    hasPrivilege = input('Please enter if the prisoner has visitation privileges or not (0/1): ')
    stmt_add_prisoner = "call addPrisoner('" + SSN + "','" + fname + "','" + lname + \
                        "','" + sex + "','" + dob + "','" + ssd + "','" + sed + "','" + street \
                        + "','" + city + "','" + state + "','" + hasPrivilege + "')"
    try:
        cur.execute(stmt_add_prisoner)
        s = cur.fetchall()
        if s and '@full_error' in s[0]:
            print(s[0]['@full_error'])
        else:
            cnx.commit()
            print('Successfully created a new prisoner')
            stmt_get_all_capacity = "call getRemainingBlockCapacity()"
            cur.execute(stmt_get_all_capacity)
            s = cur.fetchall()
            print('Available blocks are:')
            if s and '@full_error' in s[0]:
                print(s[0]['@full_error'])
            else:
                for row in s:
                    print('Block Number: ' + str(row['blockNo']))
                    print('Available capacity: ' + str(row['capacity']))
                    print()
                block_id = input("Enter the block you want to add the criminal to")
                stmt_get_cell_capacity = "call getCellRemainingCapacity(" + block_id + ")"
                cur.execute(stmt_get_cell_capacity)
                result = cur.fetchall()
                if result and '@full_error' in result[0]:
                    print(result[0]['@full_error'])
                else:
                    for row in result:
                        print('Cell Number: ' + str(row['cellId']))
                        print('Available capacity: ' + str(row['capacity']))
                        print()
                    cell_id = input("Enter the block you want to add the criminal to")
                    stmt_add_prisoner_to_cell = "call addPrisonerToCell('" + SSN + "','" + cell_id \
                                                + "','" + block_id + "')"
                    cur.execute(stmt_add_prisoner_to_cell)
                    s = cur.fetchall()
                    if s and '@full_error' in s[0]:
                        print(s[0]['@full_error'])
                    else:
                        cnx.commit()
                        print('Successfully added the new prisoner to a cell')

    except Exception as e:
        print(repr(e))


def release_prisoner():
    try:
        cur.callproc('releasePrisoner')
        result = cur.fetchall()
        if result and '@full_error' in result[0]:
            print(result[0]['@full_error'])
        if not result:
            print('No prisoners are to be released today')
        else:
            print('The prisoners to be released today are:')
            view.print_prisonerN(result)
    except Exception as e:
        print(repr(e))


def update_prisoner():
    show_prisoners()
    prisoner_id = input('Which prisoner do you want to update? Enter the prisoner no')

    fname = input('Please enter the first name: ')
    lname = input('Please enter the last name: ')
    sex = input('Please enter the sex (Male/ Female/ Other) of the guard: ')
    dob = input('Please enter their date of birth in yyyy-m-d format: ')
    ssd = input('Please enter prison term start date in yyyy-m-d format: ')
    sed = input('Please enter prison term end date in yyyy-m-d format: ')
    street = input('Please enter street number: ')
    city = input('Please enter city of residence: ')
    state = input('Please enter state of residence: ')
    hasPrivilege = input('Please enter if the prisoner has visitation privileges or not (0/1): ')
    stmt_update_prisoner = "call updatePrisoner('" + prisoner_id + "','" + fname + "','" + lname + \
                           "','" + sex + "','" + dob + "','" + ssd + "','" + sed + "','" + street \
                           + "','" + city + "','" + state + "','" + hasPrivilege + "');"
    try:
        cur.execute(stmt_update_prisoner)
        s = cur.fetchall()
        if s and '@full_error' in s[0]:
            print(s[0]['@full_error'])
        else:
            cnx.commit()
            print('Successfully updated the prisoner details')
    except Exception as e:
        print(repr(e))
        print('Could not update the prisoner details')


def accept_reject_pending_requests(supervisor_name):
    print("List of Pending requests for approval and rejection")
    fetch_approvals = "call requestsForSupervisor('" + supervisor_name + "');"
    cur.execute(fetch_approvals)
    approvals = cur.fetchall()
    print("Pending Approvals \n")
    t = PrettyTable(['Serial Number','Prisoner Id', 'Prisoner Name','Visitor Id' ,'Visitor Name', 'Visitation Date'])
    approvalList = {}
    count=1
    for i in approvals:
        approvalList[str(count)]=[str(i["prisonerId"]),i["request_date"].strftime("%Y-%m-%d"),i["visitorId"]]
        t.add_row([count,i["prisonerId"], i["prisoner"], i["visitorId"],i["visitor"], i["request_date"]])
        count+=1
    print(t)
    prisonerApproval = input("Enter the Serial number of the request you would like approve or deny:")
    while prisonerApproval not in approvalList.keys():
        prisonerApproval = input("Invalid Input please enter valid input or Go back (Q):")
        if prisonerApproval == "Q":
            break
    statusList = {"Approved": "1", "Deny": "2"}
    for i, val in statusList.items():
        print(val, ".", i)

    approval = input("Action:")
    while approval not in statusList.values():
        approval = input("Invalid Input please enter valid input or Go back (Q):")
        if approval == "Q":
            return
    updateRequest = "call updateRequest('"+approval+"',"+approvalList[prisonerApproval][0]+","+str(approvalList[prisonerApproval][2])+",'"+approvalList[prisonerApproval][1]+"')"

    try:
        cur.execute(updateRequest)
        cnx.commit()
        print("Request updated")
    except Exception as e:
        print(repr(e))
        print('Could not update the approval')
    return


def visualize_age_range():
    stmt_get_age_prisoners = "call prisonerAgeRange()"
    cur.execute(stmt_get_age_prisoners)
    result = cur.fetchall()
    plot_data(result)

def visualize_prisoner_occupancy():
    stmt_get_age_prisoners = "call getRemainingBlockCapacity()"
    cur.execute(stmt_get_age_prisoners)
    result = cur.fetchall()
    df = write_csv(result)
    df = df.astype(float)
    df = df.transpose()
    df.plot.bar(x='blockNo', y='capacity', rot=0)
    plt.show()

def visualize_prisoner_filled():
    stmt_get_age_prisoners = "call getOccupiedBlocks()"
    cur.execute(stmt_get_age_prisoners)
    result = cur.fetchall()
    df = write_csv(result)
    df = df.astype(float)
    df = df.transpose()
    df.plot.bar(x='blockId', y='capacity_filled', rot=0)
    plt.show()


def visualize_supervisor_acceptance():
    warnings.filterwarnings('ignore')
    stmt_get_percent = "call getAllApprovalRates()"
    cur.execute(stmt_get_percent)
    result = cur.fetchall()
    df = write_csv(result)
    df = df.astype(float)
    df = df.transpose()
    df.plot.bar(x='supervisorId', y='approval_rate', rot=0)
    plt.show()

def visualize_crime_per_block():
    try:
        cur.callproc('getCrimeStatsforBlock')
        result = cur.fetchall()
        t = PrettyTable(['Block ID','Crime','Number of Prisoners'])
        for i in result:
            t.add_row([i["blockId"], i["crimeName"], i["count(*)"]])
        print(t)

    except Exception as e:
        print(repr(e))


def supervisor_operations(supervisor_name):
    view.print_supervisor_operations()
    operation = input().upper()

    if operation == "1":
        show_guards(supervisor_name)
    elif operation == "2":
        add_guard(supervisor_name)
    elif operation == "3":
        remove_guard(supervisor_name)
    elif operation == "4":
        update_guard(supervisor_name)
    elif operation == "5":
        show_prisoners()
    elif operation == "6":
        add_prisoner()
    elif operation == "7":
        release_prisoner()
    elif operation == "8":
        update_prisoner()
    elif operation == "9":
        accept_reject_pending_requests(supervisor_name)
    elif operation == "10":
        visualize_age_range()
    elif operation == "11":
        visualize_prisoner_occupancy()
    elif operation == "12":
        visualize_prisoner_filled()
    elif operation == "13":
        visualize_crime_per_block()
    elif operation == "Q":
        return
    else:
        view.print_wrong_input()

    if operation != "Q":
        supervisor_operations(supervisor_name)


def write_csv(data):
    df = pd.DataFrame.from_records(data)
    df.to_csv('abc.csv')
    return df.T


def plot_data(status):
    df = write_csv(status)
    df=df.astype(float)
    df.plot(kind='line')
    plt.show()


def add_supervisor():
    username = input('Please enter the username of the supervisor: ')
    password = input('Please enter the password of the supervisor: ')
    SSN = input('Please enter the SSN of the supervisor: ')
    fname = input('Please enter the first name: ')
    lname = input('Please enter the last name: ')
    sex = input('Please enter the sex (Male/ Female/ Other) of the supervisor: ')
    dob = input('Please enter their date of birth in yyyy-m-d format: ')
    ssd = input('Please enter service start date in yyyy-m-d format: ')
    sed = input('Please enter service end date in yyyy-m-d format: ')
    street = input('Please enter street number: ')
    city = input('Please enter city of residence: ')
    state = input('Please enter state of residence: ')
    salary = input('Please enter their salary: ')
    stmt_add_supervisor = "call addSupervisor('" + username + "','" + password + "','" + SSN + "','" + \
                          fname + "','" + lname + \
                          "','" + sex + "','" + dob + "','" + ssd + "','" + sed + "','" + street \
                          + "','" + city + "','" + state + "','" + salary + "');"
    try:
        cur.execute(stmt_add_supervisor)
        s = cur.fetchall()
        if s and '@full_error' in s[0]:
            print(s[0]['@full_error'])
        else:
            cnx.commit()
            print('Successfully created a new supervisor')
    except Exception as e:
        print(repr(e))


def admin_operations(username):
    view.print_admin_operations()
    operation = input().upper()

    if operation == "1":
        add_supervisor()
    elif operation == "2":
        delete_supervisor()
    elif operation == "3":
        update_supervisor()
    elif operation == "4":
        show_supervisors()
    elif operation == "5":
        visualize_supervisor_acceptance()
    elif operation == "6":
        return
    elif operation == "Q":
        pass
    else:
        print('Wrong input provided')

    if operation != "Q":
        admin_operations(username)


def show_operations(username, usert):
    if usert == "3":
        visitor_operations(username)
    elif usert == "1":
        admin_operations(username)
    elif usert == "2":
        supervisor_operations(username)
    else:
        view.print_wrong_input()


if __name__ == '__main__':
    try:
        cnx = db_login()
        if cnx:
            cur = cnx.cursor()
            usertype = get_login_user()
            while usertype not in ['1', '2', '3']:
                print('Invalid input entered')
                usertype = get_login_user()
            if user_login(usertype):
                show_operations(current_user, usertype)

            cur.close()
            sys.exit()
        else:
            print('Cannot reach the database at the moment. Please update the db_login file in '
                  'the folder')
    except Exception as e:
        print(repr(e))