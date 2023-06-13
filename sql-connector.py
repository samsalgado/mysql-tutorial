import mysql.connector
mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="password",
  database="store"
)

mycursor = mydb.cursor()
mycursor.execute("CREATE DATABASE store")
mycursor.execute("CREATE TABLE products (id int, name VARCHAR(255), price int(100), quantity int(100))")
mycursor.execute("SHOW TABLES")
for x in mycursor: 
  print(x)
sql = "INSERT INTO products (id, name, price, quantity) VALUES (%s, %s, %s, %s)"
val = [
(0,'Save The Tatas Set',100,99.99),
(01235,'Purple Flower Se',10,69.65),
(0253,'Orange Bralette Set',15,49.99),
(023254,'BTC Kimono',50,89.99),
(01216,'Oceans',94,16.99),
(0156,'Flowers',25,16.99),
(01112,'Butterflys',15,22.29)
]
mycursor.execute(sql, val)
mydb.commit()
print(mycursor.rowcount, "New record")

