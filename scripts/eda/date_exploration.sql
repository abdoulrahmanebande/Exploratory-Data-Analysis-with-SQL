/*
=====================================================================
Date Exploration
=====================================================================
Script Purpose:
	This script helps us identify the earliest and latest dates in order
	to understand the time span. Useful when making different types of 
	Time Analysis later.
*/

-- Find the date of the first and last order and the number of years of business
SELECT
	MIN(order_date) AS first_date_order,
	MAX(order_date) AS last_date_order,
	DATEDIFF(year, MIN(order_date), MAX(order_date)) AS business_years
FROM gold.fact_sales;

-- Find the ages of the youngest and oldest customer
SELECT 
	DATEDIFF(year, MAX(birth_date), GETDATE()) AS youngest_age,
	DATEDIFF(year, MIN(birth_date), GETDATE()) AS oldest_age
FROM gold.dim_customers;