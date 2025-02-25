-- ADHOC REQUEST - 4
-- Provide a report with all the unique product counts for each segment and sort them in descending order of product counts.
-- Which segment had the most increase in unique products in 2021 vs 2020
WITH cte_1 AS (
	SELECT
		segment,
		COUNT(DISTINCT(dp.product_code)) as no_of_products_2020
	FROM 
		dim_product dp
	JOIN 
		fact_gross_price fgp
	ON 
		dp.product_code = fgp.product_code
	WHERE fiscal_year = 2020
	GROUP BY
		segment
	ORDER BY
		no_of_products_2020 DESC
),
cte_2 AS (
	SELECT
		segment,
		COUNT(DISTINCT(dp.product_code)) as no_of_products_2021
	FROM 
		dim_product dp
	JOIN 
		fact_gross_price fgp
	ON 
		dp.product_code = fgp.product_code
	WHERE fiscal_year = 2021
	GROUP BY
		segment
	ORDER BY
		no_of_products_2021 DESC
)
SELECT
	cte_1.segment,
    no_of_products_2020,
    no_of_products_2021,
    (no_of_products_2021 - no_of_products_2020) AS difference
FROM cte_1
JOIN cte_2
ON cte_1.segment = cte_2.segment
	
    