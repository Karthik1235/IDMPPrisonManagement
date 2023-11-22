import pymysql


class db_connection:
    def __init__(self, username, password):
        self.cnx = ''
        config = {'host': 'localhost',
                  'port': 3306, 'database': 'prisonmanagement',
                  'user': username,
                  'password': password, 'charset': 'utf8',
                  'use_unicode': True,
                  'cursorclass': pymysql.cursors.DictCursor
                  }
        self.cnx = pymysql.connect(**config)

    def get_connection(self):
        return self.cnx