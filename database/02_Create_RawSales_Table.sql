USE EcommerceBusinessAnalysis;
GO

CREATE TABLE RawSales (
    RowID INT,
    OrderID NVARCHAR(30),
    OrderDate DATE,
    ShipDate DATE,
    ShipMode NVARCHAR(30),
    CustomerID NVARCHAR(30),
    CustomerName NVARCHAR(100),
    Segment NVARCHAR(30),
    PostalCode NVARCHAR(20),
    City NVARCHAR(100),
    State NVARCHAR(100),
    Country NVARCHAR(100),
    Region NVARCHAR(50),
    Market NVARCHAR(50),
    ProductID NVARCHAR(50),
    Category NVARCHAR(50),
    SubCategory NVARCHAR(50),
    ProductName NVARCHAR(255),
    Sales DECIMAL(18,4),
    Quantity INT,
    Discount DECIMAL(10,4),
    Profit DECIMAL(18,4),
    ShippingCost DECIMAL(18,4),
    OrderPriority NVARCHAR(30)
);
GO
