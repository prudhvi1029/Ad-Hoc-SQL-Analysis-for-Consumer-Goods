-- ADHOC REQUEST - 7
/*
Get the complete report of the Gross sales amount for the customer “Atliq Exclusive” for each month . 
This analysis helps to get an idea of low and high-performing months and take strategic decisions.
*/
WITH cte_1 AS (
	SELECT
		date,
        customer_code,
		product_code,
        sold_quantity,
        gross_price,
		MONTHNAME(date) AS month,
		YEAR(date) AS year,
		ROUND((sold_quantity * gross_price),2) AS sales_amount
	FROM	
		fact_sales_monthly
	JOIN fact_gross_price
	USING (product_code)
	JOIN dim_customer
	USING (customer_code)
	WHERE 
		customer = "ATLIQ EXCLUSIVE"
)
SELECT 
	month,
    year,
    CONCAT(ROUND(sum(sales_amount)/1000000,2),"M") AS gross_sales_amount
FROM 
	cte_1
GROUP BY
	month,year;