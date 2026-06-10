# 🛒 DMart Retail Analytics Project Using SQL

Transforming **50,000+ retail transactions** into actionable business intelligence using **SQL, ETL, Data Warehousing, and Window Functions**.

---

## 📌 Project Overview

Retail companies generate thousands of transactions every day, making raw data difficult to analyze directly.

This project demonstrates how a retail company like **DMart** can:

* Store transactions in an **OLTP database**
* Build a **Star Schema Data Warehouse (ROLAP)**
* Perform **ETL (Extract, Transform, Load)** processing
* Generate analytical reports
* Extract business insights using advanced SQL techniques

### 📊 Dataset Size

* 50,000+ Sales Records
* Customer Data
* Store Data
* Product Data
* Supplier Data

---

## 🏗️ Architecture

```text
OLTP DATABASE
(Transactional System)
        │
        ▼
ETL PROCESS
(Extract, Transform, Load)
        │
        ▼
ROLAP DATA WAREHOUSE
(Star Schema)
        │
        ▼
ANALYTICAL REPORTS
```

---

## ⭐ Star Schema Design

### Fact Table

```sql
fact_sales
```

**Measures Included:**

* Sale Amount
* Profit
* Quantity
* Cost
* Discounts

### Dimension Tables

```sql
dim_customer
dim_store
dim_product
dim_supplier
dim_date
```

---

# 📈 Business Analytics Queries

## 1️⃣ Top Revenue Generating Stores

### 🎯 Objective

Identify the highest-performing stores across the country.

### 🛠 SQL Features Used

* SUM()
* JOIN
* RANK() Window Function

### 💡 Business Insight

* Top-performing stores contribute significantly to overall company revenue.
* High-performing stores can be used as benchmarks for other branches.
* Management can replicate successful strategies across lower-performing stores.

---

## 2️⃣ Month-over-Month Sales Growth

### 🎯 Objective

Analyze sales performance over time.

### 🛠 SQL Features Used

* GROUP BY
* LAG() Window Function

### 💡 Business Insight

* Identifies seasonal sales patterns.
* Measures monthly growth and decline in revenue.
* Supports inventory planning and forecasting.

---

## 3️⃣ High-Value Customer Analysis

### 🎯 Objective

Identify customers generating the highest revenue.

### 🛠 SQL Features Used

* DENSE_RANK()
* Aggregation Functions

### 💡 Business Insight

* Helps identify VIP customers.
* Supports loyalty and retention programs.
* Improves customer lifetime value strategies.

---

## 4️⃣ Running Revenue Trend

### 🎯 Objective

Track cumulative business growth over time.

### 🛠 SQL Features Used

* SUM() OVER()

### 💡 Business Insight

* Monitors overall business growth.
* Helps measure progress against revenue targets.
* Supports strategic decision-making.

---

## 5️⃣ Most Profitable Products

### 🎯 Objective

Discover products generating the highest profit.

### 🛠 SQL Features Used

* ROW_NUMBER()
* Aggregation Functions

### 💡 Business Insight

* Highlights products driving profitability.
* Supports inventory optimization.
* Helps improve profit margins and product strategy.

---

## 🔥 Window Functions Implemented

| Window Function | Business Use Case           |
| --------------- | --------------------------- |
| RANK()          | Store Revenue Ranking       |
| DENSE_RANK()    | Customer Ranking            |
| ROW_NUMBER()    | Product Ranking             |
| LAG()           | Month-over-Month Analysis   |
| SUM() OVER()    | Running Revenue Calculation |

---

## 🛠 Skills Demonstrated

### SQL

* Joins
* Aggregations
* Common Table Expressions (CTEs)
* Window Functions

### Data Warehousing

* Star Schema Design
* Fact & Dimension Modeling
* OLTP vs ROLAP Architecture

### ETL

* Data Extraction
* Data Transformation
* Data Loading

### Business Analytics

* Revenue Analysis
* Customer Segmentation
* Product Performance Analysis
* Sales Trend Analysis

---

## 🎯 Key Outcomes

✅ Built a Retail Data Warehouse using Star Schema

✅ Performed ETL from OLTP to ROLAP

✅ Processed and analyzed 50,000+ sales transactions

✅ Implemented advanced SQL Window Functions

✅ Generated actionable business insights for decision-making

---

## 📌 Conclusion

This project demonstrates practical knowledge of **SQL, Data Warehousing, ETL, and Business Analytics** by transforming raw retail transaction data into meaningful business insights. The analytical reports help businesses understand customer behavior, store performance, sales trends, and product profitability to support data-driven decision-making.
