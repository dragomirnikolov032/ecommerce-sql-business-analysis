-- Check for duplicate Row IDs
SELECT
    RowID,
    COUNT(*) AS Occurrences
FROM RawSales
GROUP BY RowID
HAVING COUNT(*) > 1;