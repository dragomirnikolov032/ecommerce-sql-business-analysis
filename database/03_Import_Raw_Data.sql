USE EcommerceBusinessAnalysis;
GO

-- IMPORTANT: Update the file path for your environment.
-- Examples:
--   Docker (project setup): '/data/global_superstore_raw.csv'
--   Windows (native SQL):   'C:\path\to\global_superstore_raw.csv'
--   Linux/Mac (native SQL): '/home/youruser/.../global_superstore_raw.csv'
--   Docker (temp copy):     '/tmp/global_superstore_raw.csv'

-- ROWTERMINATOR: '\n' works for Unix/Linux/Mac line endings (this CSV).
-- If your CSV has Windows line endings (CRLF), change to: ROWTERMINATOR = '\r\n'

BULK INSERT RawSales
FROM '/data/global_superstore_raw.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDQUOTE = '"',
    ROWTERMINATOR = '\n',
    TABLOCK
);
GO
