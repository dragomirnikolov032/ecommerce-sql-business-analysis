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


-- Load Orders
INSERT INTO Orders (
    OrderID,
    CustomerID,
    OrderDate,
    ShipDate,
    ShipMode,
    PostalCode,
    City,
    State,
    Country,
    Region,
    Market,
    OrderPriority
)
SELECT DISTINCT
    OrderID,
    CustomerID,
    OrderDate,
    ShipDate,
    ShipMode,
    PostalCode,
    City,
    State,
    Country,
    Region,
    Market,
    OrderPriority
FROM RawSales;
GO


-- Load Order Details
INSERT INTO OrderDetails (
    RowID,
    OrderID,
    ProductID,
    Sales,
    Quantity,
    Discount,
    Profit,
    ShippingCost
)
SELECT
    RowID,
    OrderID,
    ProductID,
    Sales,
    Quantity,
    Discount,
    Profit,
    ShippingCost
FROM RawSales;
GO


-- Verify loaded data
SELECT COUNT(*) AS CustomersCount
FROM Customers;

SELECT COUNT(*) AS ProductsCount
FROM Products;

SELECT COUNT(*) AS OrdersCount
FROM Orders;

SELECT COUNT(*) AS OrderDetailsCount
FROM OrderDetails;
GO
