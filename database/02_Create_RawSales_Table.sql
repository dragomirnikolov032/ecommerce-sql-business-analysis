USE EcommerceBusinessAnalysis;
GO

CREATE TABLE RawSales (
    SourceIndex NVARCHAR(20),
    RowID NVARCHAR(20),
    OrderID NVARCHAR(30),
    OrderDate NVARCHAR(20),
    ShipDate NVARCHAR(20),
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
    Sales NVARCHAR(30),
    Quantity NVARCHAR(20),
    Discount NVARCHAR(30),
    Profit NVARCHAR(30),
    ShippingCost NVARCHAR(30),
    OrderPriority NVARCHAR(30)
);
GO
