CREATE SCHEMA IMS;
USE IMS;

CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    Name VARCHAR(100),
    Description TEXT,
    Price DECIMAL(10, 2),
    Quantity INT
);

CREATE TABLE Supplier (
    SupplierID INT PRIMARY KEY,
    Name VARCHAR(100),
    ContactInfo VARCHAR(100),
    Address VARCHAR(200)
);

CREATE TABLE Inventory (
    InventoryID INT PRIMARY KEY,
    ProductID INT,
    SupplierID INT,
    QuantityAvailable INT,
    ReorderLevel INT,
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
    FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID)
);

CREATE TABLE `Order` (
    OrderID INT PRIMARY KEY,
    ProductID INT,
    CustomerID INT,
    OrderDate DATE,
    Quantity INT,
    FOREIGN KEY (ProductID) REFERENCES Product (ProductID),
    FOREIGN KEY (CustomerID) REFERENCES Customer (CustomerID)
);

CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    ContactInfo VARCHAR(100),
    Address VARCHAR(200)
);

