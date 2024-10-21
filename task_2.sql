
CREATE TABLE IF NOT EXISTS Books (
book_id INT PRIMARY KEY,
title VARCHAR(130) ,
author_id INT FOREIGN KEY REFERENCES Authors(author_id),
price DOUBLE,
publication_date DATE

)
CREATE TABLE IF NOT EXISTS Authors(
    author_id PRIMARY KEY,
author_name VARCHAR(215)
);
CREATE TABLE IF NOT EXISTS Customers( 
customer_id PRIMARY KEY,
customer_name VARCHAR(215),
email VARCHAR(215),
address TEXT
);

CREATE TABLE IF NOT EXISTS Orders(
order_date DATE
order_id INT,
customer_id INT,
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE IF NOT EXISTS Order_Details(
orderdetailid PRIMARY KEY,
order_id INT,
book_id INT,
FOREIGN KEY (order_id) REFERENCES Orders(order_id),
FOREIGN KEY (book_id) REFERENCES Books(book_id)
quantity DOUBLE
);