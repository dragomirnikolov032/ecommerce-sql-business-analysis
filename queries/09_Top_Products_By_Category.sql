SELECT * FROM
(
SELECT p.Category,
p.ProductID,
p.ProductName,
SUM(d.Sales) AS TotalRevenue,
SUM(d.Profit) AS TotalProfit,
(SUM(d.Profit) / SUM(d.Sales)) * 100 AS ProfitMargin,
RANK() OVER (PARTITION BY p.Category ORDER BY SUM(d.Profit) DESC) AS ProfitRank
FROM Products AS p
JOIN OrderDetails AS d
ON p.ProductID = d.ProductID
GROUP BY p.Category, p.ProductID, p.ProductName
) AS ProfitRank
WHERE ProfitRank <= 3
ORDER BY Category, ProfitRank