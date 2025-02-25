-- ADHOC REQUEST - 5
-- Get the products that have the highest and lowest manufacturing costs.
WITH cte_1 AS(
	SELECT 
		product_code,
		manufacturing_cost
	FROM 
		fact_manufacturing_cost
	WHERE 
		manufacturing_cost = (SELECT MAX(manufacturing_cost) from fact_manufacturing_cost)
UNION
	SELECT 
		product_code,
		manufacturing_cost
	FROM 
		fact_manufacturing_cost
	WHERE 
		manufacturing_cost = (SELECT MIN(manufacturing_cost) from fact_manufacturing_cost)
)
SELECT
	product_code,
    product,
    manufacturing_cost
FROM 
	cte_1
JOIN 
	dim_product
USING(product_code)
