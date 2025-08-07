------------------------
-- CREATE VIEW CALENDAR
------------------------
CREATE VIEW gold.calendar
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://himadatalake.dfs.core.windows.net/silver/AdventureWorks_Calendar/',
            FORMAT = 'PARQUET'
        ) as QUER1




------------------------
CREATE OR ALTER VIEW gold.customers1 AS
SELECT *
FROM OPENROWSET(
    BULK 'https://himadatalake.dfs.core.windows.net/silver/AdventureWorks_Customers/',
    FORMAT = 'PARQUET'
) AS QUERY1;



------------------------
-- CREATE VIEW PRODUCTS1
------------------------
CREATE VIEW gold.products1
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://himadatalake.dfs.core.windows.net/silver/AdventureWorks_Products/',
            FORMAT = 'PARQUET'
        ) as QUER1




------------------------
-- CREATE VIEW RETURNS
------------------------
CREATE VIEW gold.returns1
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://himadatalake.dfs.core.windows.net/silver/AdventureWorks_Returns/',
            FORMAT = 'PARQUET'
        ) as QUER1


    ------------------------
-- CREATE VIEW SALES
------------------------
CREATE VIEW gold.sales
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://himadatalake.dfs.core.windows.net/silver/AdventureWorks_Sales/',
            FORMAT = 'PARQUET'
        ) as QUER1


------------------------
-- CREATE VIEW SUBCAT
------------------------
CREATE VIEW gold.subcat
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://himadatalake.dfs.core.windows.net/silver/AdventureWorks_SUbCategories/',
            FORMAT = 'PARQUET'
        ) as QUER1



------------------------
-- CREATE VIEW TERRITORIES
------------------------
CREATE VIEW gold.territories
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://himadatalake.dfs.core.windows.net/silver/AdventureWorks_Territories/',
            FORMAT = 'PARQUET'
        ) as QUER1
















