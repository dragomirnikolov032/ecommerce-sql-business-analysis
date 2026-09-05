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
    OrderKey INT IDENTITY(1,1) PRIMARY KEY,
    OrderID NVARCHAR(30) NOT NULL,
    CustomerID NVARCHAR(30) NOT NULL,
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
    OrderKey INT NOT NULL,
    ProductID NVARCHAR(50),
    Sales DECIMAL(18,4),
    Quantity INT,
    Discount DECIMAL(10,4),
    Profit DECIMAL(18,4),
    ShippingCost DECIMAL(18,4),

    FOREIGN KEY (OrderKey)
        REFERENCES Orders(OrderKey),

    FOREIGN KEY (ProductID)
        REFERENCES Products(ProductID)
);
GO
