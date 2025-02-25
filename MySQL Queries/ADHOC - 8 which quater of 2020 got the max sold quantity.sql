-- ADHOC REQUEST - *
-- In which quarter of 2020, got the maximum total_sold_quantity?
WITH cte AS (
	SELECT
		*,
		(CASE 
			WHEN MONTH(DATE_ADD(date, INTERVAL 4 MONTH)) BETWEEN 1 AND 3 THEN 'Q1'
			WHEN MONTH(DATE_ADD(date, INTERVAL 4 MONTH)) BETWEEN 4 AND 6 THEN 'Q2'
			WHEN MONTH(DATE_ADD(date, INTERVAL 4 MONTH)) BETWEEN 7 AND 9 THEN 'Q3'
			WHEN MONTH(DATE_ADD(date, INTERVAL 4 MONTH)) BETWEEN 10 AND 12 THEN 'Q4'
		END) AS quarter,
        YEAR(date) AS year,
        MONTHNAME(date) AS month
	FROM
		fact_sales_monthly
)
SELECT 
	quarter,
    month,
    SUM(sold_quantity) AS total_sold_quantity
FROM
	cte
WHERE
	fiscal_year = 2020
GROUP BY
	quarter,month;