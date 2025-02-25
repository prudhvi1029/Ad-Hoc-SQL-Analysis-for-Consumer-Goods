-- ADHOC REQUEST - 9
-- Which channel helped to bring more gross sales in the fiscal year 2021 and the percentage of contribution?
WITH cte AS (
	SELECT 
		channel,
		ROUND(SUM((sold_quantity*gross_price))/1000000,2) AS gross_sales_mln
	FROM 
		fact_sales_monthly fsm
	JOIN 
		fact_gross_price
	USING
		(product_code)
	JOIN
		dim_customer
	USING
		(customer_code)
	WHERE
		fsm.fiscal_year = 2021
	GROUP BY
		channel
)

SELECT 
	*,
    ROUND((gross_sales_mln/sum(gross_sales_mln) over()) *100,2) AS percentage
FROM
	cte;