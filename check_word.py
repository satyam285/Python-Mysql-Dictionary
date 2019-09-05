import mysql.connector
from mysql.connector import Error

try:
    connection = mysql.connector.connect(host='localhost',
                                         database='python_dictionary',
                                         user='root',
                                         password='')
    print("Enter the word to be checked. Enter '000' to exit ! ")
    i=input()
    while(i != "000"):
        i = i.lower()
        mySql_Create_Table_Query = """SELECT * FROM dictionary WHERE words='"""+i+"""'"""
        cursor = connection.cursor()
        cursor.execute(mySql_Create_Table_Query)
        result = cursor.fetchone()       
        if result!=None:
            print(True)
        else:
            print(False)
        print("Enter the word to be checked. Enter '000' to exit ! ")
        i=input()

except mysql.connector.Error as error:
    print("Failed to connect to MySQL: {}".format(error))
finally:
    if (connection.is_connected()):
        cursor.close()
        connection.close()
        print("MySQL connection is closed")