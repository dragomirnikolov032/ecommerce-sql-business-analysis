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
    TRY_CONVERT(DATE, OrderDate),
    TRY_CONVERT(DATE, ShipDate),
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


-- Load OrderDetails

INSERT INTO OrderDetails (
    RowID,
    OrderKey,
    ProductID,
    Sales,
    Quantity,
    Discount,
    Profit,
    ShippingCost
)
SELECT
    TRY_CONVERT(INT, r.RowID),
    o.OrderKey,
    r.ProductID,
    TRY_CONVERT(DECIMAL(18,4), r.Sales),
    TRY_CONVERT(INT, r.Quantity),
    TRY_CONVERT(DECIMAL(10,4), r.Discount),
    TRY_CONVERT(DECIMAL(18,4), r.Profit),
    TRY_CONVERT(DECIMAL(18,4), r.ShippingCost)
FROM RawSales AS r
INNER JOIN Orders AS o
    ON r.OrderID = o.OrderID
    AND r.CustomerID = o.CustomerID
    AND TRY_CONVERT(DATE, r.OrderDate) = o.OrderDate
    AND TRY_CONVERT(DATE, r.ShipDate) = o.ShipDate
    AND r.ShipMode = o.ShipMode
    AND r.PostalCode = o.PostalCode
    AND r.City = o.City
    AND r.State = o.State
    AND r.Country = o.Country
    AND r.Region = o.Region
    AND r.Market = o.Market
    AND r.OrderPriority = o.OrderPriority;
GO
