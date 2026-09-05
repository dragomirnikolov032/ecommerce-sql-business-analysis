SELECT p.Category, p.SubCategory, SUM(d.Sales) AS TotalRevenue, SUM(d.Profit) AS TotalProfit, (SUM(d.Profit)/SUM(d.Sales))*100 AS ProfitMargin
FROM Products AS p
JOIN OrderDetails AS d
ON d.ProductID = p.ProductID
GROUP BY p.Category, p.SubCategory
HAVING SUM(d.Profit) < 0 OR ((SUM(d.Profit)/SUM(d.Sales))*100) < 0
ORDER BY TotalRevenue, TotalProfit