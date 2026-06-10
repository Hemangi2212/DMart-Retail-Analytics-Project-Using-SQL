# DMart-Retail-Analytics-Project-Using-SQL
Transforming 50,000+ retail transactions into actionable business intelligence using SQL, ETL, Data Warehousing, and Window Functions.

📌 Project Overview

Retail companies generate thousands of transactions every day. Raw transactional data is difficult to analyze directly.

This project demonstrates how a retail company like DMart can:

Store transactions in an OLTP system
Build a Star Schema Data Warehouse (ROLAP)
Perform ETL processing
Generate analytical reports
Extract business insights using advanced SQL

Dataset Size:

📊 50,000+ Sales Records
👥 Customer Data
🏬 Store Data
📦 Product Data
🚚 Supplier Data

🏗 Architecture
~~~
          OLTP DATABASE
      (Transactional System)
                 │
                 ▼
          ETL PROCESS
    (Extract Transform Load)
                 │
                 ▼
       ROLAP DATA WAREHOUSE
          (Star Schema)
                 │
                 ▼
        ANALYTICAL REPORTS
~~~

⭐ Star Schema Design
Fact Table
~~~
fact_sales 
~~~

Contains:

Sales Amount
Profit
Quantity
Cost
Discounts

Dimension Tables
~~~
dim_customer
dim_store
dim_product
dim_supplier
dim_date
~~~

📈 Business Analytics Queries
1️⃣ Top Revenue Generating Stores
Objective

Identify the highest-performing stores across the country.

SQL Features Used
SUM()
JOIN
RANK() Window Function
Business Insight

✅ RetailMart Aligarh generated the highest revenue.

✅ Top stores contribute significantly to overall company sales.

✅ Management can study these stores and replicate successful strategies elsewhere.

2️⃣ Month-over-Month Sales Growth
Objective

Analyze sales performance over time.

SQL Features Used
GROUP BY
LAG() Window Function
Business Insight

✅ Detect seasonal demand patterns.

✅ Measure monthly growth and decline.

✅ Improve inventory and marketing planning.

3️⃣ High-Value Customer Analysis
Objective

Find customers generating maximum revenue.

SQL Features Used
DENSE_RANK()
Aggregation
Business Insight

✅ Identify VIP customers.

✅ Design loyalty and retention programs.

✅ Increase customer lifetime value.

4️⃣ Running Revenue Trend
Objective

Track cumulative business growth.

SQL Features Used
SUM() OVER()
Business Insight

✅ Monitor overall business trajectory.

✅ Measure progress against revenue targets.

✅ Support executive decision-making.

5️⃣ Most Profitable Products
Objective

Discover products driving maximum profit.

SQL Features Used
ROW_NUMBER()
Aggregation
Business Insight

✅ Focus inventory investment on profitable products.

✅ Optimize product portfolio.

✅ Improve profit margins.


Conclusion

This project demonstrates practical knowledge of SQL, Data Warehousing, ETL, and Business Analytics by converting raw retail transaction data into actionable insights for decision-making.
