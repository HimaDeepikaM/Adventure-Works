







-- Customers
CREATE EXTERNAL TABLE gold.ecustomers
WITH (
    LOCATION = 'AdventureWorks_Customers',
    DATA_SOURCE = gold_silver,
    FILE_FORMAT = format_parquet
)
AS SELECT * FROM gold.customers1;

-- Products
CREATE EXTERNAL TABLE gold.eproducts
WITH (
    LOCATION = 'AdventureWorks_Products',
    DATA_SOURCE = gold_silver,
    FILE_FORMAT = format_parquet
)
AS SELECT * FROM gold.products1;

-- Returns
CREATE EXTERNAL TABLE gold.ereturns
WITH (
    LOCATION = 'AdventureWorks_Returns',
    DATA_SOURCE = gold_silver,
    FILE_FORMAT = format_parquet
)
AS SELECT * FROM gold.returns1;

-- Sales
-- (Already done, just shown for completeness)
CREATE EXTERNAL TABLE gold.extsales
WITH (
    LOCATION = 'AdventureWorks_Sales1',
    DATA_SOURCE = gold_silver,
    FILE_FORMAT = format_parquet
)
AS SELECT * FROM gold.sales;

-- SubCategories
CREATE EXTERNAL TABLE gold.extsubcategories
WITH (
    LOCATION = 'AdventureWorks_SUbCategories',
    DATA_SOURCE = gold_silver,
    FILE_FORMAT = format_parquet
)
AS SELECT * FROM gold.subcat;

-- Territories
CREATE EXTERNAL TABLE gold.extterritories
WITH (
    LOCATION = 'AdventureWorks_Territories',
    DATA_SOURCE = gold_silver,
    FILE_FORMAT = format_parquet
)
AS SELECT * FROM gold.territories;
