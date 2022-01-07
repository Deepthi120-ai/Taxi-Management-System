#install on cmd: pip install mysql-connector-python
import mysql.connector
mydb=mysql.connector.connect(host="localhost",user="root",passwd="sowdiv22",db="Taxi_Management_System")
#print(mydb)

def show_table_list():
    mycursor=mydb.cursor()
    mycursor.execute("Show tables")
    i=0
    for tb in mycursor:
        print(i,tb)
        i=i+1
    mycursor.close()

def show_query_list():
    print("SIMPLE QUERIES")
    print("1.WRITE A QUERY TO DISPLAY THE MAXIMUM EXPERIENCE YEARS FROM DRIVER TABLE:")
    print("2. WRITE A QUERY TO DISPLAY THE MODE OF PAYMENT OF ALL THE CUSTOMERS FROM BILL DETAILS TABLE:")
    print("3. WRITE A QUERY TO DISPLAY ALL THE DRIVER ID'S ALONG WITH THE NO OF DRIVERS WORKING IN IT:")
    print("4. WRITE A QUERY TO DISPLAY THE N_area from the Areas table:")
    print("5. WRITE A QUERY TO DISPLAY THE DETAILS OF ALL THE PASSENGERS :")
    print("NESTED QUERIES")
    print("6. LIST THE DETAILS OF EMPLOYEES WHOSE FIRST NAME IS  EITHER ravi or Hari:")
    print("7. WRITE A QUERY TO DISPLAY THE Non HIGHEST COST OF THE Bills :")
    print("8. WRITE A QUERY TO DISPLAY THE FEEDBACK ID OF THE CUSTOMER WITH HIGHEST RATING:")
    print("9. LIST THE DRIVER_ID OF ALL THE DRIVER WHOSE FINE IS EITHER 1000 OR 500:")
    print("10. LIST  ALL THE PASSENGER ID WHOSE DESTINATION IS EITHER JPnagar OR Yellanahalli :")
    print("COMPLEX QUERIES")
    print("11. WRITE A QUERY TO DISPLAY THE FIRST 10 RECORD FROM DRIVER TABLE:")
    print("12. WRITE A QUERY TO DISPLAY THE NUMBER OF ROUTES TAKEN BY A TAXI:")
    print("13. WRITE A QUERY TO DISPLAY THE NUMBER OF TAXIS EXIS PER TAXI TYPE:")
    print("14. WRITE A QUERY TO DISPLAY THE NUMBER OF PASSENGERS PER GENDER:")
    print("15. WRITE A QUERY TO DISPLAY THE NUMBER MAXIMUM DISTANCE A ROUTE TAKES")
   
def show_table(n):
    mycursor=mydb.cursor()
    mycursor.execute("Show tables")
    i=0
    for tb in mycursor:
        if i==n:
            sql="select * from %s" % tb
            print(sql)
        i=i+1
    mycursor.close()
    mycursor2=mydb.cursor()
    mycursor2.execute(sql)
    myresult=mycursor2.fetchall()
    for row in myresult:
        print(row)
    mycursor2.close()
    
def execute_query(m):
    mycursor=mydb.cursor()
    fd = open("taxi_queries.sql", 'r')
    sqlFile = fd.read()
    fd.close()
    sqlCommands = sqlFile.split(';')

    i=1
    for command in sqlCommands:
        if command.strip() != '' and command.strip() != 'use Taxi_Management_System':
            if i==m:
                mycursor.execute(command)
                myresult=mycursor.fetchall()
                for row in myresult:
                    print(row)
            i=i+1
    mycursor.close()
    
if __name__=="__main__":   
    if(mydb):
        print("Connection Successful")
        
    else:
        print("Connection Unsuccessful")
    
    print("1. Show Table\n2. Execute query")
    n=int(input("Select option number: "))

    if(n == 1):  
       show_table_list()
       m = int(input("Enter table number: "))
       show_table(m)
    elif(n == 2):
       show_query_list()
       m=int(input("Enter query number:  "))
       execute_query(m)
    
   



    