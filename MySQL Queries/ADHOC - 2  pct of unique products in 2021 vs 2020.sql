WITH cte_1 AS (
	SELECT
		(SELECT count(DISTINCT(product_code)) FROM fact_gross_price WHERE fiscal_year = 2020) AS unique_products_2020,
		(SELECT count(DISTINCT(product_code)) FROM fact_gross_price WHERE fiscal_year = 2021) AS unique_products_2021
	FROM 
		fact_gross_price
	LIMIT 1
)
SELECT 
	*,
    ROUND((((unique_products_2021-unique_products_2020)/unique_products_2020) *100),2) AS percentage_chg
FROM
	cte_1
