 SELECT YEAR(o.OrderDate) AS OrderYears, 
 DATENAME(mm,o.OrderDate) AS OrderMonths, 
 SUM(d.Sales) AS TotalRevenue, 
 COUNT(DISTINCT(o.OrderKey)) AS NumOrders, 
 SUM(d.Sales) / COUNT(DISTINCT (o.OrderKey)) AS AverageOrdVal
 FROM Orders AS o
 JOIN OrderDetails AS d
 ON o.OrderKey = d.OrderKey
 GROUP BY MONTH(o.OrderDate), YEAR(o.OrderDate), DATENAME(mm,o.OrderDate)
 ORDER BY YEAR(o.OrderDate), MONTH(o.OrderDate)
