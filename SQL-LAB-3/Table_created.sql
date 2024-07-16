CREATE DATABASE SupplyChainDB;
USE SupplyChainDB;

CREATE TABLE Suppliers (
    SupplierID INT AUTO_INCREMENT PRIMARY KEY,
    SupplierName VARCHAR(100) NOT NULL,
    ContactName VARCHAR(100),
    ContactEmail VARCHAR(100),
    ContactPhone VARCHAR(20)
);
CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    SupplierID INT,
    Price DECIMAL(10, 2),
    StockQuantity INT,
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);
CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    OrderDate DATE NOT NULL,
    SupplierID INT,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);

CREATE TABLE OrderItems (
    OrderItemID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    UnitPrice DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO Suppliers (SupplierName, ContactName, ContactEmail, ContactPhone) VALUES
('Supplier A', 'John Doe', 'john@example.com', '123-456-7890'),
('Supplier B', 'Jane Smith', 'jane@example.com', '987-654-3210'),
('Supplier C', 'Jim Beam', 'jim@example.com', '456-789-0123'),
('Supplier D', 'Jill Valentine', 'jill@example.com', '321-654-0987'),
('Supplier E', 'Jack Sparrow', 'jack@example.com', '654-321-7890');

INSERT INTO Products (ProductName, SupplierID, Price, StockQuantity) VALUES
('Product 1', 1, 10.50, 100),
('Product 2', 2, 20.00, 150),
('Product 3', 3, 15.75, 200),
('Product 4', 4, 30.25, 50),
('Product 5', 5, 12.00, 120),
('Product 6', 1, 18.40, 80),
('Product 7', 2, 25.00, 130),
('Product 8', 3, 16.90, 70),
('Product 9', 4, 33.00, 60),
('Product 10', 5, 19.80, 90),
('Product 11', 1, 11.50, 110),
('Product 12', 2, 21.00, 160),
('Product 13', 3, 14.75, 210),
('Product 14', 4, 32.25, 55),
('Product 15', 5, 13.00, 130),
('Product 16', 1, 17.40, 85),
('Product 17', 2, 26.00, 140),
('Product 18', 3, 15.90, 75),
('Product 19', 4, 31.00, 65),
('Product 20', 5, 18.80, 95),
('Product 21', 1, 10.00, 95),
('Product 22', 2, 22.00, 190),
('Product 23', 3, 18.50, 170),
('Product 24', 4, 35.00, 40),
('Product 25', 5, 20.00, 110);

INSERT INTO Orders (OrderDate, SupplierID, TotalAmount) VALUES
('2024-07-01', 1, 150.00),
('2024-07-02', 2, 250.00),
('2024-07-03', 3, 175.00),
('2024-07-04', 4, 300.00),
('2024-07-05', 5, 120.00),
('2024-07-06', 1, 180.00),
('2024-07-07', 2, 230.00),
('2024-07-08', 3, 190.00),
('2024-07-09', 4, 320.00),
('2024-07-10', 5, 150.00),
('2024-07-11', 1, 130.00),
('2024-07-12', 2, 260.00),
('2024-07-13', 3, 185.00),
('2024-07-14', 4, 310.00),
('2024-07-15', 5, 140.00),
('2024-07-16', 1, 170.00),
('2024-07-17', 2, 240.00),
('2024-07-18', 3, 195.00),
('2024-07-19', 4, 330.00),
('2024-07-20', 5, 160.00),
('2024-07-21', 1, 140.00),
('2024-07-22', 2, 270.00),
('2024-07-23', 3, 205.00),
('2024-07-24', 4, 340.00),
('2024-07-25', 5, 170.00);

INSERT INTO OrderItems (OrderID, ProductID, Quantity, UnitPrice) VALUES
(1, 1, 10, 10.50),
(1, 6, 5, 18.40),
(2, 2, 12, 20.00),
(2, 7, 4, 25.00),
(3, 3, 11, 15.75),
(3, 8, 6, 16.90),
(4, 4, 9, 30.25),
(4, 9, 3, 33.00),
(5, 5, 10, 12.00),
(5, 10, 5, 19.80),
(6, 1, 12, 10.50),
(6, 11, 4, 11.50),
(7, 2, 14, 20.00),
(7, 12, 3, 21.00),
(8, 3, 13, 15.75),
(8, 13, 5, 14.75),
(9, 4, 10, 30.25),
(9, 14, 2, 32.25),
(10, 5, 11, 12.00),
(10, 15, 4, 13.00),
(11, 1, 8, 10.50),
(11, 16, 3, 17.40),
(12, 2, 15, 20.00),
(12, 17, 2, 26.00),
(13, 3, 14, 15.75),
(13, 18, 4, 15.90),
(14, 4, 9, 30.25),
(14, 19, 2, 31.00),
(15, 5, 10, 12.00),
(15, 20, 3, 18.80),
(16, 1, 11, 10.50),
(16, 21, 2, 10.00),
(17, 2, 13, 20.00),
(17, 22, 2, 22.00),
(18, 3, 12, 15.75),
(18, 23, 3, 18.50),
(19, 4, 8, 30.25),
(19, 24, 2, 35.00),
(20, 5, 9, 12.00),
(20, 25, 3, 20.00);
