SELECT c.Segment AS CustomerSegment, SUM(d.Sales) AS TotalRevenue, SUM(d.Profit) AS TotalProfit, COUNT(DISTINCT o.OrderKey) AS NumberOfOrders, (SUM(d.Profit)/SUM(d.Sales))*100 AS ProfitMargin
FROM Customers AS c
JOIN Orders AS o
ON c.CustomerID = o.CustomerID
JOIN OrderDetails AS d
ON d.OrderKey = o.OrderKey
GROUP BY c.Segment
ORDER BY TotalRevenue DESC, TotalProfit DESC