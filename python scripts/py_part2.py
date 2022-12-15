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

##Part II: Insert row and print new table
sales_data_cursor = cm_connection.cursor()
sales_data_query = ("SELECT * FROM sales_data")
sales_data_cursor.execute(sales_data_query)

sales_data_cursor.close()

store_id = "walmart"
product = 3315
quantity = 10000

sales_data_query = ("INSERT INTO sales_data"
                    "(store_id, product, quantity)"
                    "VALUES(%s, %s, %s)")

sales_data = (store_id, product, quantity)

try: 
    sales_data_cursor = cm_connection.cursor()
    sales_data_cursor.execute(sales_data_query, sales_data)
    cm_connection.commit()
    print("Added sale")
    
    for row in sales_data_cursor.fetchall():
        print(row)
    
    sales_data_cursor.close()
    
except mysql.connector.Error as err: 
    print("\nSale not added")
    print("Error: {}".format(err))

#Close connection
cm_connection.close() 