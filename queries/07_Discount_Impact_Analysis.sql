SELECT
	CASE
		WHEN d.Discount = 0 THEN 'NO DISCOUNT'
		WHEN d.Discount < 0.1 THEN 'LOW DISCOUNT'
		WHEN d.Discount BETWEEN 0.1 AND 0.3 THEN 'MEDIUM DISCOUNT'
		ELSE 'HIGH DISCOUNT'
	END AS DiscountLevel,
	COUNT(DISTINCT d.OrderKey) AS NumberOfOrders,
	SUM(d.Quantity) AS TotalQuantity,
	SUM(d.Sales) AS TotalRevenue, 
	SUM(d.Profit) AS TotalProfit, 
	(SUM(d.Profit)/SUM(d.Sales)) * 100 AS ProfitMargin
	FROM OrderDetails AS d
	GROUP BY CASE
		WHEN d.Discount = 0 THEN 'NO DISCOUNT'
		WHEN d.Discount < 0.1 THEN 'LOW DISCOUNT'
		WHEN d.Discount BETWEEN 0.1 AND 0.3 THEN 'MEDIUM DISCOUNT'
		ELSE 'HIGH DISCOUNT'
	END
	ORDER BY DiscountLevel DESC