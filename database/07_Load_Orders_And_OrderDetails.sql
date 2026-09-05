USE EcommerceBusinessAnalysis;
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
