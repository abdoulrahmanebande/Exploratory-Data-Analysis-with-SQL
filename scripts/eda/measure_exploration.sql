/*
=====================================================================
Measure Exploration
=====================================================================
Script Purpose:
	This script helps us calculate the key metrics of our Business
*/

-- Getting the total sales from the business start till now
SELECT 
	'Total sales' AS measure_name,
	SUM(sales_amount) AS measure_value
FROM gold.fact_sales

UNION 

-- Getting the total number of items sold from business start till now
SELECT 
	'Total items sold' AS measure_name,
	SUM(quantity) AS measure_value
FROM gold.fact_sales

UNION 
SELECT 
	'Average price' AS measure_name,
	AVG(price) AS measure_value
FROM gold.fact_sales
UNION
SELECT 
	'Total orders' AS measure_name,
	COUNT(DISTINCT order_number) AS measure_value
FROM gold.fact_sales
UNION
SELECT 
	'Total products' AS measure_name,
	COUNT(product_key) AS measure_value  -- product_key is already a SK. So no need to use DISTINCT.
FROM gold.dim_products
UNION
SELECT 
	'Total customers' AS measure_name,
	COUNT(customer_key) AS measure_value  -- customer_key is already a SK. So no need to use DISTINCT.
FROM gold.dim_customers
UNION
SELECT 
	'Total customers who made orders' AS measure_name,
	COUNT(DISTINCT customer_key) AS measure_value  -- customer might order multiple stuff
FROM gold.fact_sales