def get_user_type():
    print(
        'Select the type of user you want to interact as by entering the corresponding numbers:\n')
    print('1: Admin Login')
    print('2: Supervisor Login')
    print('3: Visitor Login')

def print_wrong_input():
    print('Wrong input entered')


def print_logged_in_as(current_user):
    print('Successfully logged in as ' + current_user)


def print_visitor_operations():
    print('\nEnter the operation you want to perform:')
    print('1. Request prisoner visitation')
    print('2. See Request Status')
    print('Q. Quit')


def print_supervisor_operations():
    print('\nEnter the operation you want to perform:')
    print('1. Examine all your guards and their details')
    print('2. Add new guard')
    print('3. Remove a guard')
    print('4. Update a guard details')
    print('5. Examine all prisoners and their details')
    print('6. Add new Prisoner Details')
    print('7. Release a prisoner')
    print('8. Update a prisoner details')
    print('9. Accept or reject pending visitation requests')
    print('10. Visualize the age range of prisoners')
    print('11. Visualize the empty blocks')
    print('12. Visualize the occupied blocks')
    print('13. Visualize Number of prisoner for each crime in each block')
    print('Q. Quit')

def print_supervisor(result):
    for row in result:
        print('Supervisor No: ' + str(row['supervisorId']))
        print('Supervisor First Name: ' + row['firstName'])
        print('Supervisor Last Name: ' + row['lastName'])
        print()


def print_admin_operations():
    print('\nEnter the operation you want to perform:')
    print('1. Add new supervisor')
    print('2. Delete an existing supervisor')
    print('3. Update a supervisor')
    print('4. Show all supervisors')
    print('5. Visualize all supervisors visitation acceptance rates')
    print('Q. Quit')


def print_guard(result):
    for row in result:
        print('Guard No: ' + str(row['guardId']))
        print('Guard First Name: ' + row['firstname'])
        print('Guard Last Name: ' + row['lastname'])
        print()

def print_medStaff(result):
    pass


def print_prisoner(result):
    for row in result:
        print('Prisoner No: ' + str(row['prisonerId']))
        print('Prisoner First Name: ' + row['firstname'])
        print('Prisoner Last Name: ' + row['lastname'])
        print()

def print_prisonerN(result):
    for row in result:
        print('Prisoner No: ' + str(row['prisonerId']))
        print('Prisoner First Name: ' + row['firstName'])
        print('Prisoner Last Name: ' + row['lastName'])
        print()

def welcome():
    print('\nWelcome to Prison Management System.')
