#DROP DATABASE lab_mysql;
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

CREATE TABLE Branches (
    Branch_ID VARCHAR(11) PRIMARY KEY NOT NULL,
    Phone_number VARCHAR(15) NOT NULL,  
    Email VARCHAR(40) NOT NULL,
    Street VARCHAR(40) NOT NULL,
    ZIP_Code VARCHAR(5) NOT NULL, 
    City VARCHAR(40) NOT NULL
);

CREATE TABLE Customer (
    Customer_ID VARCHAR(11) PRIMARY KEY NOT NULL,
    Name VARCHAR(40) NOT NULL,
    Email VARCHAR(40) NOT NULL,
    Street VARCHAR(40) NOT NULL,
    ZIP_Code VARCHAR(5) NOT NULL,
    City VARCHAR(40) NOT NULL
);

CREATE TABLE Salesperson (
    Salesperson_ID VARCHAR(11) PRIMARY KEY NOT NULL,
    Salesperson_first_name VARCHAR(40) NOT NULL,
    Salesperson_lastname VARCHAR(40) NOT NULL,
    Email VARCHAR(40) NOT NULL,
    Branch_ID VARCHAR(11) NOT NULL, 
    FOREIGN KEY (Branch_ID) REFERENCES Branches(Branch_ID)
);

CREATE TABLE Cars (
    Car_ID VARCHAR(11) PRIMARY KEY NOT NULL,
    Model_name VARCHAR(40) NOT NULL,
    Category VARCHAR(11) NOT NULL,
    Manufacturer VARCHAR(40) NOT NULL,
    Colour VARCHAR(40) NOT NULL,
    Year_of_Production INT(4) NOT NULL
);

CREATE TABLE Invoices (
    Invoice_ID VARCHAR(11) PRIMARY KEY NOT NULL, 
    Amount DECIMAL(8, 2) NOT NULL,
    Status VARCHAR(11) NOT NULL,
    Date DATETIME NOT NULL,
    Salesperson_ID VARCHAR(11) NOT NULL,
    FOREIGN KEY (Salesperson_ID) REFERENCES Salesperson(Salesperson_ID)
);

CREATE TABLE Orders (
    Order_ID INT AUTO_INCREMENT PRIMARY KEY,
    Order_date DATETIME NOT NULL,
    Customer_ID VARCHAR(11) NOT NULL,
    Salesperson_ID VARCHAR(11) NOT NULL,
    Invoice_ID VARCHAR(11) NOT NULL,
    Car_Id VARCHAR(11) NOT NULL,
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
    FOREIGN KEY (Salesperson_ID) REFERENCES Salesperson(Salesperson_ID),
    FOREIGN KEY (Invoice_ID) REFERENCES Invoices(Invoice_ID),
    FOREIGN KEY (Car_ID) REFERENCES Cars(Car_ID)
);
