/*
=====================================================================
Magnitude analysis
=====================================================================
Script Purpose:
	This script helps us compare the Measure values across different 
	Categories (Dimensions). Here we are breaking the Big Numbers to 
	further understand more about the Dimensions' values.
*/

-- Getting total revenue generated per each country. We want to see which country gives us a lot of money.
SELECT 
	c.country,
	SUM(s.sales_amount) AS total_revenue
FROM gold.fact_sales s
LEFT JOIN gold.dim_customers c
ON s.customer_key = c.customer_key
GROUP BY c.country 
ORDER BY SUM(s.sales_amount) DESC

-- Let's see whether our revenue mostly comes from Male customers or Female one
SELECT 
	c.gender,
	SUM(s.sales_amount) AS total_sales
FROM gold.fact_sales s
LEFT JOIN gold.dim_customers c
ON s.customer_key = c.customer_key
GROUP BY c.gender 
ORDER BY SUM(s.sales_amount) DESC

-- Total revenue per product category. Good to see which product category gives us a lot of money
SELECT 
	p.category,
	SUM(s.sales_amount) AS total_sales
FROM gold.fact_sales s
LEFT JOIN gold.dim_products p
ON s.product_key = p.product_key
GROUP BY p.category 
ORDER BY SUM(s.sales_amount) DESC

-- Total revenue per product sub-category. Good to see which product sub-category gives us a lot of money
SELECT 
	p.sub_category,
	SUM(s.sales_amount) AS total_sales
FROM gold.fact_sales s
LEFT JOIN gold.dim_products p
ON s.product_key = p.product_key
GROUP BY p.sub_category 
ORDER BY SUM(s.sales_amount) DESC

-- Let's see which country most of our customers come from
SELECT 
	country,
	COUNT(customer_key) AS total_customers
FROM gold.dim_customers
GROUP BY country
ORDER BY COUNT(customer_key) DESC

-- Are most of our customers Male or Female ?
SELECT 
	gender,
	COUNT(customer_key) AS total_customers
FROM gold.dim_customers
GROUP BY gender
ORDER BY COUNT(customer_key) DESC