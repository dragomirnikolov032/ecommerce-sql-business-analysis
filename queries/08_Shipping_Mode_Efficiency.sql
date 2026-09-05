SELECT o.ShipMode AS ShippingMethood,
COUNT(DISTINCT d.OrderKey) AS NumberOfOrders,
SUM(d.Sales) AS TotalRevenue,
SUM(d.Profit) AS TotalProfit,
(SUM(d.Profit) / SUM(d.Sales)) * 100 AS ProfitMargin,
SUM(d.ShippingCost) AS TotalShippingCost,
SUM(d.ShippingCost) / COUNT(DISTINCT d.OrderKey) AS AverageShippingCostPerOrder,
CONVERT(varchar(50),(SUM(d.ShippingCost)/SUM(d.Sales)) * 100) + '%' AS ShippingCostToRevenuePercent
FROM Orders AS o
JOIN OrderDetails AS d
ON o.OrderKey = d.OrderKey
GROUP BY o.ShipMode
ORDER BY ShippingMethood
