/*
=====================================================================
Ranking analysis
=====================================================================
Script Purpose:
	This script helps us order the values of the Dimensions based on a Measure
	in order to identify Top-N performers ans well as Bottom-N performers.
*/

-- Target the top 10 customers based on sales.
WITH CTE_Top_10_customers AS
(
	SELECT 
		customer_key,
		total_sales
	FROM (SELECT 
		customer_key,
		SUM(sales_amount) AS total_sales,
		ROW_NUMBER() OVER(ORDER BY SUM(sales_amount) DESC) AS rank_customers
	FROM gold.fact_sales 
	GROUP BY customer_key)t WHERE rank_customers <= 10
)

SELECT 
	c.customer_key,
	c.first_name,
	c.last_name,
	t.total_sales
FROM CTE_Top_10_customers t
LEFT JOIN gold.dim_customers c
ON t.customer_key = c.customer_key


-- Target the lowest 10 customers based on sales.
WITH CTE_Top_10_customers AS
(
	SELECT 
		customer_key,
		total_sales
	FROM (SELECT 
		customer_key,
		SUM(sales_amount) AS total_sales,
		ROW_NUMBER() OVER(ORDER BY SUM(sales_amount)) AS rank_customers
	FROM gold.fact_sales 
	GROUP BY customer_key)t WHERE rank_customers <= 10
)

SELECT 
	c.customer_key,
	c.first_name,
	c.last_name,
	t.total_sales
FROM CTE_Top_10_customers t
LEFT JOIN gold.dim_customers c
ON t.customer_key = c.customer_key

-- Target top 10 products that generate us big revenue
SELECT 
	*
FROM (SELECT 
	p.product_key,
	p.product_name,
	SUM(f.sales_amount) AS total_sales,
	ROW_NUMBER() OVER(ORDER BY SUM(f.sales_amount) DESC) AS product_ranks
FROM gold.fact_sales f 
LEFT JOIN gold.dim_products p
ON f.product_key = p.product_key
GROUP BY p.product_key, product_name)t WHERE product_ranks <= 10

-- Target worst 10 products based on sales
SELECT 
	*
FROM (SELECT 
	p.product_key,
	p.product_name,
	SUM(f.sales_amount) AS total_sales,
	ROW_NUMBER() OVER(ORDER BY SUM(f.sales_amount)) AS product_ranks
FROM gold.fact_sales f 
LEFT JOIN gold.dim_products p
ON f.product_key = p.product_key
GROUP BY p.product_key, product_name)t WHERE product_ranks <= 10