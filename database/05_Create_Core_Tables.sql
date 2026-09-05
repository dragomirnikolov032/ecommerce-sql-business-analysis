USE EcommerceBusinessAnalysis;
GO

CREATE TABLE Customers (
    CustomerID NVARCHAR(30) PRIMARY KEY,
    CustomerName NVARCHAR(100),
    Segment NVARCHAR(30)
);
GO

CREATE TABLE Products (
    ProductID NVARCHAR(50) PRIMARY KEY,
    ProductName NVARCHAR(255),
    Category NVARCHAR(50),
    SubCategory NVARCHAR(50)
);
GO

CREATE TABLE Orders (
    OrderID NVARCHAR(30) PRIMARY KEY,
    CustomerID NVARCHAR(30),
    OrderDate DATE,
    ShipDate DATE,
    ShipMode NVARCHAR(30),
    PostalCode NVARCHAR(20),
    City NVARCHAR(100),
    State NVARCHAR(100),
    Country NVARCHAR(100),
    Region NVARCHAR(50),
    Market NVARCHAR(50),
    OrderPriority NVARCHAR(30),

    FOREIGN KEY (CustomerID)
        REFERENCES Customers(CustomerID)
);
GO

CREATE TABLE OrderDetails (
    RowID INT PRIMARY KEY,
    OrderID NVARCHAR(30),
    ProductID NVARCHAR(50),
    Sales DECIMAL(18,4),
    Quantity INT,
    Discount DECIMAL(10,4),
    Profit DECIMAL(18,4),
    ShippingCost DECIMAL(18,4),

    FOREIGN KEY (OrderID)
        REFERENCES Orders(OrderID),

    FOREIGN KEY (ProductID)
        REFERENCES Products(ProductID)
);
GO
