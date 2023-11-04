import mysql.connector

db_name = "python_test_db"

mydbconnection = mysql.connector.connect(
    host="localhost",
    user='root',
    passwd='password',
    database=db_name
)

mycursor = mydbconnection.cursor()

sqlquery = """
    insert into Student(Roll, Name)
    values('101','Nirob Barman')
"""

mycursor.execute(sqlquery)
mydbconnection.commit()

print('Inserting data into table successful')
