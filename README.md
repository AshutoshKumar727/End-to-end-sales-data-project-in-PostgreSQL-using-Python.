# End-to-end-sales-data-project-in-PostgreSQL-using-Python.
 Just completed a Real-World PostgreSQL Data Analysis Project! 💻📊  Over the last few days, I worked on a comprehensive restaurant sales dataset covering 4 months of transactions. The project focused on:
 
---
## 📌 Project Overview
This project focuses on **cleaning**, **transforming**, and **analyzing** four months of restaurant sales data using PostgreSQL.  
The raw dataset contained **null values, duplicates, inconsistent data types**, and missing relationships.  
Through SQL scripts, I performed **data quality improvements** and **generated business insights**.

---

## 🛠 Tools & Technologies
- **PostgreSQL** (Database)
- **pgAdmin** (SQL IDE)
- **SQL** (Data Cleaning, Analysis, Relationship Setup)
- **ER Diagram Tool**: dbdiagram.io
## 🔍 Dataset Details
**Tables Used:**
1. `January_Sales_2023`
2. `February_Sales_2023`
3. `March_Sales_2023`
4. `April_Sales_2023`
5. `Customer Details`
6. `Restaurant_Details`
7. `Food Details`

---

## 🧹 Data Cleaning Steps
- **Null Handling**: Removed rows with missing critical values (`order_id`, `customer_id`, `Fooditem`, etc.)
- **Duplicate Removal**: Checked and deleted both partial and exact duplicates
- **Column Cleanup**: Dropped unnecessary `Unnamed` columns
- **Data Type Fixes**: Converted date columns to `DATE`, IDs to `BIGINT`
- **Consistency**: Unified column formats across all monthly tables

---

## 🔗 Relationship Setup
- Added **Primary Keys** to `Customer Details`, `Restaurant_Details`, and `Food Details`
- Added **Foreign Keys** to connect sales data with customer, restaurant, and food details
- Created a **normalized relational structure** for analysis

---

## 📊 Analysis & Insights
Key metrics calculated:
1. **Total Orders** per month
2. **Total & Average Quantity** sold
3. **Month-on-Month Growth**
4. **Top 10 Customers** by purchase quantity
5. **Customer Segmentation** by `member_Type`
6. **Top Food Items** by demand
7. **Food Type-wise Sales**
8. **Restaurant-wise Performance & Cancellations**
9. **Payment Method Usage**
10. **Delivery Status Distribution**

---

## 📈 Sample Insights
- **Top Food Item** in January: *Pizza* 🍕
- **Highest Selling Restaurant**: ID `R102`
- **Most Popular Payment Method**: *UPI*
- **Customer Retention**: 18% repeat customers in January



