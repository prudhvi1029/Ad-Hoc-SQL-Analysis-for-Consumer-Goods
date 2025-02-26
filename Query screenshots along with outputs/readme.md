# Ad-Hoc Queries - Visual Outputs

Below are the **10 ad-hoc SQL queries** from the [ad-hoc-requests.pdf], along with their corresponding outputs. Each section includes the **original question** followed by one or more **screenshots** showing the results.

---

## Query 1
**Question:** Provide the list of markets in which customer **"Atliq Exclusive"** operates its business in the **APAC** region.

![ADHOC - 1](https://github.com/user-attachments/assets/3ef7c52c-622a-4da3-b6cf-a9e9dfd0e0bd)

---

## Query 2
**Question:** What is the percentage of unique product increase in **2021** vs. **2020**?  
The final output contains:  
- `unique_products_2020`  
- `unique_products_2021`  
- `percentage_chg`

![ADHOC - 2](https://github.com/user-attachments/assets/adb8d5d5-41f3-4eb7-8ae1-9978694e4a68)

---

## Query 3
**Question:** Provide a report with all the unique product counts for each **segment** and sort them in descending order of product counts.  
The final output contains:  
- `segment`  
- `product_count`

![ADHOC - 3](https://github.com/user-attachments/assets/7a78a8b1-80a0-4c60-8b28-0d1ee7ea3d91)

---

## Query 4
**Question:** Follow-up: Which segment had the most increase in unique products in **2021** vs **2020**?  
The final output contains:  
- `segment`  
- `product_count_2020`  
- `product_count_2021`  
- `difference`

![ADHOC - 4 1](https://github.com/user-attachments/assets/c2890d96-87a2-4abc-be6b-43410eabc2d9)
![ADHOC - 4 2](https://github.com/user-attachments/assets/c1b157ac-65e8-4dfb-bf66-8ec3b1926075)

---

## Query 5
**Question:** Get the products that have the highest and lowest **manufacturing costs**.  
The final output contains:  
- `product_code`  
- `product`  
- `manufacturing_cost`

![ADHOC - 5](https://github.com/user-attachments/assets/2c46b24f-cf79-4252-b508-dbaece9385d9)

---

## Query 6
**Question:** Generate a report containing the top 5 customers who received an average high **pre_invoice_discount_pct** for the **fiscal year 2021** in the **Indian** market.  
The final output contains:  
- `customer_code`  
- `customer`  
- `average_discount_percentage`

![ADHOC - 6](https://github.com/user-attachments/assets/2ee4ea24-5e8b-4a4e-952e-6f61589c951d)

---

## Query 7
**Question:** Get the complete report of the **Gross sales amount** for the customer **“Atliq Exclusive”** for each **month**.  
The final report includes:  
- `Month`  
- `Year`  
- `Gross sales Amount`

![ADHOC - 7 1](https://github.com/user-attachments/assets/82b1d968-957c-4bf0-8be0-d21c68ea3888)
![ADHOC - 7 2](https://github.com/user-attachments/assets/8ee0e4eb-79da-4ddd-8d36-973a852d80b0)

---

## Query 8
**Question:** In which quarter of **2020** did we get the maximum **total_sold_quantity**?  
The final output is sorted by `total_sold_quantity` and includes:  
- `Quarter`  
- `total_sold_quantity`

![ADHOC - 8 1](https://github.com/user-attachments/assets/7c33969d-108e-4479-b90f-adc348467f2a)
![ADHOC - 8 2](https://github.com/user-attachments/assets/51e7a72a-5442-4f0e-b97a-13c1be5b8549)

---

## Query 9
**Question:** Which **channel** brought in more gross sales in the **fiscal year 2021**, and what is the percentage of contribution?  
The final output contains:  
- `channel`  
- `gross_sales_mln`  
- `percentage`

![ADHOC - 9](https://github.com/user-attachments/assets/b42c8c94-bdc0-4463-8fed-0812e2f9aba6)

---

## Query 10
**Question:** Get the **Top 3 products** in each **division** that have a high **total_sold_quantity** in **2021**.  
The final output contains:  
- `division`  
- `product_code`  
- `product`  
- `total_sold_quantity`  
- `rank_order`

![ADHOC - 10](https://github.com/user-attachments/assets/e84f16d8-d676-48fb-a78c-b793e101e5aa)
