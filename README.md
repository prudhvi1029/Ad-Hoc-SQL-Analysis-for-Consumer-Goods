# Ad-Hoc SQL Analysis for Consumer Goods


![Screenshot 2025-02-25 163731](https://github.com/user-attachments/assets/e96d21ec-e95a-4ae4-a0e3-16b81e3e0aff)


Welcome to the **Ad-Hoc SQL Analysis** project! This repository showcases a series of SQL queries, insights, and presentation materials focused on Atliq Hardware, a fictitious computer hardware manufacturer. The main objective is to demonstrate how ad-hoc SQL queries can quickly deliver valuable insights for business stakeholders.




---

## Table of Contents
1. [Project Overview](#1-project-overview)  
2. [Dataset & Source Files](#2-dataset--source-files)  
3. [Database Schema & Metadata](#3-database-schema--metadata)  
4. [Key Business Questions](#4-key-business-questions)  
5. [SQL Queries & Analysis](#5-sql-queries--analysis)  
6. [Insights & Observations](#6-insights--observations)    
7. [Contact & Contributing](#7-contact--contributing)  

---

## 1. Project Overview
Atliq Hardware is a hypothetical company manufacturing computer hardware products (PCs, accessories, peripherals, networking equipment) and selling them globally. This project aims to:

- Showcase **SQL-based ad-hoc analyses** answering specific business questions.  
- Provide **quick insights** to guide data-driven decisions.  
- Demonstrate **best practices** in query structure, logic, and presentation.

---

## 2. Dataset & Source Files

Below are the key files referenced in this project:

1. **[AD-HOC-REQUESTS.pdf](https://github.com/prudhvi1029/Ad-Hoc-SQL-Analysis-for-Consumer-Goods/blob/main/ad-hoc-requests.pdf)**  
   - Contains 10 business queries (ad-hoc requests) that drive the SQL analyses.

2. **[MetaData.txt](https://github.com/prudhvi1029/Ad-Hoc-SQL-Analysis-for-Consumer-Goods/blob/main/Metadata.txt)**
   - A data dictionary describing each column in the six main tables:
     - `dim_customer`
     - `dim_product`
     - `fact_gross_price`
     - `fact_manufacturing_cost`
     - `fact_pre_invoice_deductions`
     - `fact_sales_monthly`

3. **[SQL consumer goods AD-HOC analysis.pdf](https://github.com/prudhvi1029/Ad-Hoc-SQL-Analysis-for-Consumer-Goods/blob/main/SQL%20consumer%20goods%20AD-HOC%20analysis.pdf)**
   - A detailed overview of how each question was addressed with SQL, including insights and visual breakdowns.
---

## 3. Database Schema & Metadata

The Atliq Hardware dataset consists of the following **six key tables**:

1. **`dim_customer`**  
   - Customer codes, names, channels (Retailers, Direct, Distributors), markets, regions, etc.

2. **`dim_product`**  
   - Product codes, divisions (PC, P & A, N & S), segments (Notebook, Peripherals), product names, etc.

3. **`fact_gross_price`**  
   - Gross selling prices by product and fiscal year (e.g., 2020, 2021).

4. **`fact_manufacturing_cost`**  
   - Total manufacturing costs by product and fiscal year.

5. **`fact_pre_invoice_deductions`**  
   - Pre-invoice discount percentages per customer, per fiscal year.

6. **`fact_sales_monthly`**  
   - Monthly sales data (date, sold quantity, product code, customer code, fiscal year).

For more details on specific columns, see  **[MetaData.txt](https://github.com/prudhvi1029/Ad-Hoc-SQL-Analysis-for-Consumer-Goods/blob/main/Metadata.txt)**

---

## 4. Key Business Questions

Among the ad-hoc requests analyzed are:

1. **Markets** where “Atliq Exclusive” operates in the APAC region.  
2. **Percentage increase** of unique products from 2020 to 2021.  
3. **Unique product counts** per segment and which segment grew most between 2020 and 2021.  
4. **Highest & lowest manufacturing costs** by product.  
5. **Top 5 customers** by average discount percentage in a specific market (e.g., India, 2021).  
6. Monthly gross sales for “Atliq Exclusive” to identify high- and low-performing months.  
7. The **quarter with the maximum sold quantity** in 2020.  
8. Sales **channel contribution** (e.g., Retailer, Direct, Distributor) in 2021.  
9. **Top 3 products** in each division by sold quantity in 2021.  

See **[ad-hoc-requests.pdf](https://github.com/prudhvi1029/Ad-Hoc-SQL-Analysis-for-Consumer-Goods/blob/main/ad-hoc-requests.pdf)** for the complete list of questions.

---

## 5. SQL Queries & Analysis

Each SQL query follows **best practices** in readability and logic. Common techniques used:

- **CTEs** (Common Table Expressions) for intermediate calculations.  
- **JOINs** to link the dimension tables (`dim_customer`, `dim_product`) with the fact tables.  
- **Aggregate functions** (`COUNT`, `SUM`, `AVG`) to compute metrics like total sold quantities or average discounts.  
- **Filtering** using `WHERE` clauses and grouping with `GROUP BY`.

## 6. Insights & Observations

A few key takeaways from the analysis:

- **Strong Product Diversification**: A ~36% increase in unique products from 2020 to 2021.
- **Leading Segments**: “Accessories” and “Notebook” segments show high product counts and growth.
- **High Discounts**: Major Indian retailers like Flipkart, Croma receive ~25–30% pre-invoice discounts, reflecting volume partnerships.
- **Seasonality**: Certain quarters/months (e.g., Q1 2020) have spikes, likely due to promotions or product launches.
- **Channel Dominance**: Retailers contributed over 70% of gross sales in 2021, overshadowing Direct and Distributors.

## 7. Contact & Contributing

- **Author**: Prudhvi Sai Guntupalli
- **Email**: [connect2prudhvisai@gmail.com](mailto:connect2prudhvisai@gmail.com)  

Contributions, suggestions, and improvements are welcome. Feel free to open an issue or submit a pull request.

**Thank you for exploring this Ad-Hoc SQL Analysis project!**  
If you find it helpful, consider giving a star ⭐ on GitHub to show your support.


Further details and visuals are found in **[SQL consumer goods AD-HOC analysis.pdf](https://github.com/prudhvi1029/Ad-Hoc-SQL-Analysis-for-Consumer-Goods/blob/main/SQL%20consumer%20goods%20AD-HOC%20analysis.pdf)**



