import mysql.connector
from mysql.connector import Error

f = open("happiest_mind_sample.txt","r")
sent = f.readlines()
for i in sent:
    ind = sent.index(i)
    sent[ind] = i[:-1]
try:
    connection = mysql.connector.connect(host='localhost',
                                         database='python_dictionary',
                                         user='root',
                                         password='',
                                         autocommit=True)
    
    for i in sent:
        words_list = i.split()
        for j in words_list:
            while j[-1]=='.' or j[-1]==',' or j[-1]=='!' or j[-1]=='?':
                j = j[:-1]
            mySql_Create_Table_Query = """SELECT * FROM dictionary WHERE words='"""+j+"""'"""
            cursor = connection.cursor()
            cursor.execute(mySql_Create_Table_Query)
            result = cursor.fetchone()
            if result!=None:
                continue
            else:
                j = j.lower()
                mySql_Create_Table_Query = """INSERT INTO dictionary(words) VALUES ('"""+j+"""')"""
                cursor = connection.cursor()
                result = cursor.execute(mySql_Create_Table_Query)
    print("Words inserted successfully ")

except mysql.connector.Error as error:
    print("Failed to connect to MySQL: {}".format(error))
finally:
    if (connection.is_connected()):
        cursor.close()
        connection.close()
        print("MySQL connection is closed")