SELECT TOP 10 c.CustomerID, c.CustomerName, SUM(d.Sales) AS TotalRevenue, SUM(d.Profit) AS TotalProfit, 
(SUM(d.Profit) / SUM(d.Sales)) * 100 AS ProfitMargin
FROM Customers AS c
JOIN Orders AS o
ON o.CustomerID = c.CustomerID
JOIN OrderDetails AS d
ON d.OrderKey = o.OrderKey
GROUP BY c.CustomerID, c.CustomerName
ORDER BY SUM(d.Sales) DESC