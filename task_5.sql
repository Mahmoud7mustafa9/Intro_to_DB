-- Write a script that inserts a single row in the table customer (database alx_book_store) in your MySQL server.

-- Singel data insertion

-- customer_id = 1
-- customer_name = Cole Baidoo cbaidoo@sandtech.com 123 Happiness Ave.
-- The database name will be passed as an argument of the mysql command

-- Name of the file should be task_5.sql
USE alx_book_store;

INSERT INTO Customers (customer_id , customer_name , email , address) VALUES 
( 1 , "Cole Baidoo" ,"cbaidoo@sandtech.com" ,"123 Happiness Ave")