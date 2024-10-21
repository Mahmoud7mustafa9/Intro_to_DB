import mysql.connector

try:
    connections = mysql.connector.connect(
        host = "localhost" , user ="root" , password = "m1228619344@"
    ) 
    cursor = connections.cursor()
    mydb = "CREATE DATABASE IF NOT EXISTS alx_book_store"
    cursor.execute(mydb)

except mysql.connector.Error as e:
    print(f'somthing went wrong: {e}')

finally:
    if connections.is_connected():
        print(f'Database alx_book_store created successfully!')
        cursor.close()
        connections.close()
    else: 
        print(f'connection is not working !!')    