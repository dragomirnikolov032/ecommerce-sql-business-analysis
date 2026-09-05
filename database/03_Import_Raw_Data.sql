USE EcommerceBusinessAnalysis;
GO

-- IMPORTANT:
-- Replace the file path below with the location of
-- global_superstore_raw.csv on your own computer.

BULK INSERT RawSales
FROM 'C:\path\to\global_superstore_raw.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDQUOTE = '"',
    ROWTERMINATOR = '0x0a',
    TABLOCK
);
GO