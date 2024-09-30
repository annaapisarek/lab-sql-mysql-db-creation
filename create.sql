#DROP DATABASE lab_mysql;
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

CREATE TABLE Branches (
    Branch_ID VARCHAR(11) PRIMARY KEY,
    Phone_number VARCHAR(15),  
    Email VARCHAR(40),
    Street VARCHAR(40),
    ZIP_Code VARCHAR(5), 
    City VARCHAR(40)
);

CREATE TABLE Customer (
    Customer_ID VARCHAR(11) PRIMARY KEY,
    Name VARCHAR(40),
    Email VARCHAR(40),
    Street VARCHAR(40),
    ZIP_Code VARCHAR(5),
    City VARCHAR(40)
);

CREATE TABLE Salesperson (
    Salesperson_ID VARCHAR(11) PRIMARY KEY,
    Salesperson_first_name VARCHAR(40),
    Salesperson_lastname VARCHAR(40),
    Email VARCHAR(40),
    Branch_ID VARCHAR(11), 
    FOREIGN KEY (Branch_ID) REFERENCES Branches(Branch_ID)
);

CREATE TABLE Cars (
    Car_ID VARCHAR(11) PRIMARY KEY,
    Model_name VARCHAR(40),
    Category VARCHAR(11),
    Manufacturer VARCHAR(40),
    Colour VARCHAR(40),
    Year_of_Production INT(4) 
);

CREATE TABLE Invoices (
    Invoice_ID VARCHAR(11) PRIMARY KEY, 
    Amount DECIMAL(8, 2),
    Status VARCHAR(11),
    Date DATETIME,
    Salesperson_ID VARCHAR(11),
    FOREIGN KEY (Salesperson_ID) REFERENCES Salesperson(Salesperson_ID)
);

CREATE TABLE Orders (
    Order_ID INT AUTO_INCREMENT PRIMARY KEY,
    Order_date DATETIME,
    Customer_ID VARCHAR(11),
    Salesperson_ID VARCHAR(11),
    Invoice_ID VARCHAR(11),
    Car_Id VARCHAR(11),
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
    FOREIGN KEY (Salesperson_ID) REFERENCES Salesperson(Salesperson_ID),
    FOREIGN KEY (Invoice_ID) REFERENCES Invoices(Invoice_ID),
    FOREIGN KEY (Car_ID) REFERENCES Cars(Car_ID)
);
