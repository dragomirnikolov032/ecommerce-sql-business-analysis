SELECT TOP 10 o.OrderID AS OrderID,
c.CustomerName AS Customer, 
p.ProductName AS Product, 
p.Category AS ProductCategory, 
o.Country AS Country, 
d.Sales AS Sales, 
d.Discount AS NummDiscount,
d.Profit AS Profit, 
o.ShipMode AS ShippingMethod,
d.ShippingCost AS ShippingCost
FROM Customers AS c
JOIN Orders AS o
ON o.CustomerID = c.CustomerID
JOIN OrderDetails AS d
ON d.OrderKey = o.OrderKey
JOIN Products AS p
ON p.ProductID = d.ProductID
WHERE Profit < 0
ORDER BY Profit 
