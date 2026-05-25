/*
=====================================================================
Dimensions Exploration
=====================================================================
Script Purpose:
	This script will identify all the unique values in each Dimension
	inside our DB. Recognizing how the data might be grouped will be 
	useful for later analysis.
*/

-- Exploring all the countries our customers come from
SELECT DISTINCT country FROM gold.dim_customers;

-- Let's see if maybe some of our customer are not Male or Female. May be anything else
SELECT DISTINCT gender FROM gold.dim_customers;

-- Exploring the different products the company has
SELECT DISTINCT product_name FROM gold.dim_products;

-- Exploring the different product categories
SELECT DISTINCT category FROM gold.dim_products;

-- Exploring the different product sub-categories
SELECT DISTINCT sub_category FROM gold.dim_products;