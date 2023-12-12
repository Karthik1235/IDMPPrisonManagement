ReadMe
Software Prerequisites -
1.	Python 3 or higher version must be installed on the computer.

Python3 download - https://www.python.org/downloads/

2.	Python 3 Libraries to be installed –

2.1	pip3 install pandas
2.2	pip3 install matplotlib
2.3	pip3 install PrettyTable
Note:  if you find any difficulties downloading any of the dependencies, please run the below command and then try running the above commands
pip3 install --upgrade pip
3.	MySql workbench 
Steps to run the Application –
1.	Open the prison Management SQL dump file in MySql workbench and run the file to create the database and import all the data associated with it.

2.	Open the PrisonManagement folder and navigate to the src folder inside it and add your database username and password credentials inside it. For Example -

- name: ‘root’
  password  - ‘user123’

3.	Open the terminal and navigate to /PrisonManagement/src (present in the zip file along with the sql dump file)
 3.1 cd  /PrisonManagement/src
 3.2 run the command python3 app.py

4.	Now it will prompt you to choose which kind of user you are.
1. Admin
2. Supervisor
3. Visitor
There is only one admin who can change the system ex -

username - admin 
password – admin123

The supervisor is added by the admin, here are some of the supervisor's credentials ex -

username - kramer23
password - user123

Visitors – Anyone can sign up as a visitor and place a visitation request for a prisoner ex -

username - sam7908
password - sam1239
Once the user is determined and logged in we can see their corresponding operations which we can perform
