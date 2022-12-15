import mysql.connector
from mysql.connector import errorcode

try: 
    cm_connection = mysql.connector.connect(
        user='localhost',
        password = 'password',
        host = '127.0.0.1',
        database="timmzatlantic"
        )
    
except mysql.connector.Error as err:
    if err.errno == errorcode.ER_ACCESS_DENIED_ERROR: 
        print("Invalid credentials")
    elif err.erno == errorcode.ER_BAD_DB_ERROR:
        print("Database not found")
    else:
        print("Cannot connect to database: ", err)
    exit()

##Part III: Deleting a row
sales_data_query = ("DELETE FROM sales_data WHERE `sales_data`.`order_num` = 125")


try: 
    sales_data_cursor = cm_connection.cursor()
    sales_data_cursor.execute(sales_data_query)
    cm_connection.commit()
    print("Deleted Order")
    print()        
    sales_data_cursor.close()

except mysql.connector.Error as err:
    print("\nSales Data not updated")
    print("Error: {}".format(err))
    
sales_data_cursor = cm_connection.cursor()
sales_data_query = ("SELECT * FROM sales_data")
sales_data_cursor.execute(sales_data_query)

for row in sales_data_cursor.fetchall():
    print(row)

sales_data_cursor.close()

#Close connection
cm_connection.close() 
