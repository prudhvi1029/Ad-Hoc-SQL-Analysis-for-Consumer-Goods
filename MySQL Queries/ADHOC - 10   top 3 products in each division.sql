-- ADHOC REQUEST - 10
-- Get the Top 3 products in each division that have a high total_sold_quantity in the fiscal_year 2021
WITH cte AS(
	SELECT 
		division,
		product_code,
		product,
		SUM(sold_quantity) as total_sold_quantity
	FROM
		fact_sales_monthly
	JOIN
		dim_product
	USING
		(product_code)
	WHERE 
		fiscal_year = 2021
	GROUP BY
		product_code
),
cte_1 AS(
	SELECT
		*,
		RANK() OVER(PARTITION BY division ORDER BY total_sold_quantity DESC) AS row_num
	FROM
		cte
)
select * from cte_1 where row_num < 4
