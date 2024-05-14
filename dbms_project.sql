CREATE DATABASE inventory_management_system;
show databases
USE inventory_management_system ;
show tables

USE inventory_management_system ;

CREATE TABLE Customers (
  customer_id INT PRIMARY KEY AUTO_INCREMENT,
  customer_name VARCHAR(255) NOT NULL,
  customer_email VARCHAR(255),
  customer_phone VARCHAR(20)
);

INSERT INTO Customers (customer_name, customer_email, customer_phone)
VALUES ('John Doe', 'john.doe@example.com', '+1234567890'),
       ('Jane Smith', 'jane.smith@company.com', '+9876543210'),
       ('Michael Lee', 'michael.lee@gmail.com', '+5432198765'),
       ('Alice Johnson', 'alice.johnson@yahoo.com', '+0987654321'),
       ('David Williams', 'david.williams@outlook.com', '+1230987654'),
       ('Sarah Davis', 'sarah.davis@hotmail.com', '+9871234560'),
       ('Robert Brown', 'robert.brown@workmail.com', '+5436543210'),
       ('Emily Garcia', 'emily.garcia@live.com', '+0123456789'),
       ('Matthew Miller', 'matthew.miller@aol.com', '+9854321076'),
       ('Jennifer Hernandez', 'jennifer.hernandez@icloud.com', '+1543210987');

show tables

CREATE TABLE Staff (
  staff_id INT PRIMARY KEY AUTO_INCREMENT,
  staff_name VARCHAR(255) NOT NULL,
  staff_email VARCHAR(255),
  staff_role VARCHAR(50)
);

INSERT INTO Staff (staff_name, staff_email, staff_role)
VALUES ('William Chen', 'william.chen@company.com', 'Manager'),
       ('Olivia Jones', 'olivia.jones@workmail.com', 'Salesperson'),
       ('Daniel Garcia', 'daniel.garcia@company.com', 'Inventory Specialist'),
       ('Amanda Hernandez', 'amanda.hernandez@outlook.com', 'Customer Service'),
       ('Andrew Walker', 'andrew.walker@gmail.com', 'Warehouse Manager'),
       ('Sophia Young', 'sophia.young@hotmail.com', 'Accountant'),
       ('Christopher Clark', 'christopher.clark@live.com', 'Marketing Manager'),
       ('Elizabeth Moore', 'elizabeth.moore@icloud.com', 'IT Specialist'),
       ('Joseph Garcia', 'joseph.garcia@yahoo.com', 'Delivery Driver'),
       ('Ashley Lopez', 'ashley.lopez@aol.com', 'Cashier');

show tables

CREATE TABLE Budget (
  budget_id INT PRIMARY KEY AUTO_INCREMENT,
  budget_year INT NOT NULL,
  total_budget DECIMAL(10,2) NOT NULL
);

INSERT INTO Budget (budget_year, total_budget)
VALUES (2024, 1000000.00),
       (2025, 1200000.00);
       
       CREATE TABLE Products (
  product_id INT PRIMARY KEY AUTO_INCREMENT,
  product_name VARCHAR(255) NOT NULL,
  product_description TEXT,
  product_price DECIMAL(10,2) NOT NULL,
  product_stock INT NOT NULL
);

INSERT INTO Products (product_name, product_description, product_price, product_stock)
VALUES ('Laptop', 'High-performance laptop with i7 processor and 16GB RAM', 1500.00, 20),
       ('Smartphone', 'Latest smartphone with advanced camera and long battery life', 800.00, 30),
       ('Headphones', 'Wireless headphones with noise cancellation and superior sound quality', 200.00, 50),
       ('Smartwatch', 'Smartwatch with fitness tracking and notification features', 300.00, 15),
       ('Tablet', 'Portable tablet for work, entertainment, and creativity', 500.00, 10);
      
show tables
CREATE TABLE Orders (
  order_id INT PRIMARY KEY AUTO_INCREMENT,
  customer_id INT NOT NULL,
  staff_id INT NOT NULL,
  order_date DATE NOT NULL,
  order_total DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
  FOREIGN KEY (staff_id) REFERENCES Staff(staff_id)
);

INSERT INTO Orders (customer_id, staff_id, order_date, order_total)
VALUES (1, 2, '2024-05-10', 1200.00),
       (3, 4, '2024-04-25', 800.00),
       (5, 1, '2024-05-08', 500.00),
       (7, 3, '2024-04-18', 300.00),
       (2, 5, '2024-05-03', 1800.00),
       (4, 6, '2024-04-12', 200.00),
       (6, 7, '2024-05-01', 1000.00),
       (8, 8, '2024-04-05', 600.00),
       (9, 9, '2024-03-28', 400.00),
       (10, 10, '2024-03-21', 700.00);

show tables

CREATE TABLE Order_Details (
  order_detail_id INT PRIMARY KEY AUTO_INCREMENT,
  order_id INT NOT NULL,
  product_id INT NOT NULL,
  quantity INT NOT NULL,
  FOREIGN KEY (order_id) REFERENCES Orders(order_id),
  FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO Order_Details (order_id, product_id, quantity)
VALUES (1, 1, 1),
       (1, 3, 2),
       (2, 2, 1),
       (2, 4, 2),
       (3, 1, 2),
       (4, 3, 1),
       (5, 5, 1),
       (5, 2, 2),
       (6, 4, 3),
       (7, 1, 3);
       
       show tables
       
       CREATE TABLE Suppliers (
  supplier_id INT PRIMARY KEY AUTO_INCREMENT,
  supplier_name VARCHAR(255) NOT NULL,
  supplier_contact VARCHAR(255),
  supplier_address TEXT
);

INSERT INTO Suppliers (supplier_name, supplier_contact, supplier_address)
VALUES ('TechTronics Inc.', '+1234567890', '1 Main Street, New York, NY 10001'),
       ('Global Electronics', '+9876543210', '55 Market Street, London, UK'),
       ('Mobile Mania', '+5432198765', '34 High Street, Paris, France'),
       ('Wearable Tech', '+0987654321', '20 Business Park Drive, Berlin, Germany'),
       ('Tablet Solutions', '+1230987654', '1 Technology Way, Tokyo, Japan'),
       ('Printing Plus', '+9871234560', '7 Innovation Avenue, Beijing, China'),
       ('Marketing Supplies', '+5436543210', '4 Innovation Lane, Sydney, Australia'),
       ('Tech Hub', '+0123456789', '9 Tech Center Road, Mumbai, India'),
       ('Gadget Gear', '+9854321076', '12 Innovation Square, Sao Paulo, Brazil');
    


SELECT * FROM Customers LIMIT 5;
