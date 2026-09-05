SELECT p.ProductID, p.ProductName, p.Category, p.SubCategory, SUM(d.Sales) AS TotalRevenue, SUM(d.Profit) AS TotalProfit, (SUM(d.Profit)/SUM(d.Sales))*100 AS ProfitMargin
FROM Products AS p
JOIN OrderDetails AS d
ON d.ProductID = p.ProductID
GROUP BY p.ProductID, p.ProductName, p.Category, p.SubCategory
HAVING SUM(d.Sales) >
(	
	SELECT SUM(Sales) / COUNT(DISTINCT ProductID)
	FROM OrderDetails
)
AND 
SUM(d.Profit) < 0
ORDER BY TotalRevenue DESC