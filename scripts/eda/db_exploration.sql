/*
=====================================================================
DATABASE Exploration
=====================================================================
Script Purpose:
	Before starting any EDA, it is really good to get to know to the
	database you will work on. So, this script will show us the following:
	- The number of tables our DB has
	- The number of columns in each Table
	- The columns name and their metadata
	This DB expploration is important in order to set the foundations for EDA.
*/

-- Number of Table in our Database
SELECT * FROM INFORMATION_SCHEMA.TABLES;

-- Number of columns and their metadata in gold layer (Business ready data) tables
SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'dim_customers';

SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'dim_products';

SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'fact_sales';