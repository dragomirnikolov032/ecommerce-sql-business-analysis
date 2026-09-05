SELECT o.Country, 
CONCAT(CAST(ROUND(SUM(d.Sales) / (SELECT SUM(Sales) FROM OrderDetails) * 100,2) AS DECIMAL(10,2)), '%') AS RevenueSharePercent,
SUM(d.Sales) AS TotalRevenue,
CONCAT(CAST(ROUND(SUM(d.Profit)/ ( SELECT SUM(Profit) FROM OrderDetails) *100, 2) AS DECIMAL(10,2)) , '%') AS ProfitSharePercent,
SUM(d.Profit) AS TotalProfit,
COUNT(DISTINCT d.OrderKey) AS NumberOfOrders
FROM Orders as o
JOIN OrderDetails as d
ON d.OrderKey = o.OrderKey
GROUP BY o.Country
ORDER BY TotalRevenue DESC