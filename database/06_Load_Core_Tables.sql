USE EcommerceBusinessAnalysis;
GO

-- Load Customers
INSERT INTO Customers (
    CustomerID,
    CustomerName,
    Segment
)
SELECT DISTINCT
    CustomerID,
    CustomerName,
    Segment
FROM RawSales;
GO


-- Load Products
INSERT INTO Products (
    ProductID,
    ProductName,
    Category,
    SubCategory
)
SELECT DISTINCT
    ProductID,
    ProductName,
    Category,
    SubCategory
FROM RawSales;
GO
