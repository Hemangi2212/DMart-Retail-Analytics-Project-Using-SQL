create database retail_dw;


USE retail_dw;

SHOW TABLES; 
select * from dim_customer;

create database retail_oltp;

use retail_oltp;
SHOW TABLES;

create database retail_rolap ;

use retail_rolap;

SHOW COLUMNS FROM fact_sales;

# Query 1: Top 10 Stores by Revenue (Using RANK)
SELECT 
	store_name, 
    city,
    SUM(sale_amount) AS total_revenue, 
    RANK() OVER (
		order by sum(sale_amount) desc
	) AS revenue_rank
from fact_sales fs
join dim_store ds
	ON fs.store_key = ds.store_key
group by store_name,city
LIMIT 10;

# Query 2 — Top Customers (DENSE_RANK)
WITH customer_sales AS (
    SELECT
        dc.customer_name,
        SUM(fs.sale_amount) AS total_spent
    FROM fact_sales fs
    JOIN dim_customer dc
      ON fs.customer_key = dc.customer_key
    GROUP BY dc.customer_name
)

SELECT *,
       DENSE_RANK() OVER(ORDER BY total_spent DESC) AS customer_rank
FROM customer_sales
LIMIT 10;

# Query 3 — Running Revenue (SUM OVER)
WITH daily_sales AS (
    SELECT
        date_id,
        SUM(sale_amount) AS revenue
    FROM fact_sales
    GROUP BY date_id
)

SELECT *,
       SUM(revenue) OVER(
           ORDER BY date_id
       ) AS cumulative_revenue
FROM daily_sales;

# Query 4 — Product Ranking by Revenue (ROW_NUMBER)
WITH product_sales AS (
    SELECT
        dp.product_name,
        SUM(fs.sale_amount) AS revenue
    FROM fact_sales fs
    JOIN dim_product dp
      ON fs.product_key = dp.product_key
    GROUP BY dp.product_name
)

SELECT *,
       ROW_NUMBER() OVER(
           ORDER BY revenue DESC
       ) AS product_rank
FROM product_sales
LIMIT 10;

# Query 5 — Profit Analysis (NTILE)
WITH customer_profit AS (
    SELECT
        customer_key,
        SUM(profit) AS total_profit
    FROM fact_sales
    GROUP BY customer_key
)

SELECT *,
       NTILE(4) OVER(
           ORDER BY total_profit DESC
       ) AS profit_quartile
FROM customer_profit;