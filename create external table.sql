create database scoped credential cred_hima 
with 
    identity = 'Managed Identity'


create external data source source_silver 
WITH
 (
    location = 'https://himadatalake.dfs.core.windows.net/silver',
    credential = cred_hima
 )

 create external data source gold_silver 
WITH
 (
    location = 'https://himadatalake.dfs.core.windows.net/gold',
    credential = cred_hima
 )

 create external file format format_parquet
 WITH(
    format_type= PARQUET,
    DATA_COMPRESSION='org.apache.hadoop.io.compress.SnappyCodec'
 )

-- create external table extsales

 create external table gold.extsales
 WITH(
    location='extsales',
    data_source= gold_silver,
    file_format=format_parquet
 )AS
 select * from gold.sales


 select * from gold.extsales



 IF EXISTS (SELECT * FROM sys.external_tables WHERE name = 'extsales')
BEGIN
    DROP EXTERNAL TABLE gold.extsales;
END

