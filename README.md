# Online-Store-Analysis-
Analyze online store performance using multiple tools

# 🛒 E-Commerce Sales Analytics Dashboard

> Interactive Power BI dashboard analyzing online retail performance across 43 countries to identify customer behavior patterns and revenue optimization opportunities.


---

🎯 Project Overview

-Business Context: 
Analysis of a UK-based online retail company specializing in unique all-occasion gifts, serving both wholesale and retail customers globally.

Objective:
Build a comprehensive analytics dashboard to:




1- Track business performance (revenue, orders, customer metrics)



2- Identify sales trends and seasonality patterns


3- Analyze geographic distribution and market opportunities


4- Optimize product catalog based on performance

 🔍 Data Analysis Process

-Data Source & Collection

    
-Source: UCI Machine Learning Repository - Online Retail Dataset  


-Format: Excel (.xlsx) with 2 worksheets  

-Original Records: 1,067,371+ transactions


-Analysis Period: December 2009 - December 2011  


-Dataset Size: 1,067,371 transactions  

-Geographic Reach: 43 countries

---

 📊 Dashboard Features

-- Key Performance Indicators (KPIs)
- Total Revenue: £19.01M
- Total Orders: 53.6K transactions
- Customer Base: 5,942 unique customers
- Product Catalog: 5,131 unique products
- Units Sold: 10.4M items
- Global Reach: 43 countries served

-- Interactive Visualizations
1. Order Trend Analysis - Quarterly order volume showing growth trajectory
 
2.  Monthly revenue with average order value correlation
  
4. Geographic Distribution - Interactive map showing revenue concentration
  
5. Product Performance** - Top products by revenue with detailed metrics
<img width="1423" height="816" alt="online store1" src="https://github.com/user-attachments/assets/8e585eb9-8a23-4709-ae03-ed743995b7ac" />

   ![Online store](https://github.com/user-attachments/assets/befa5523-5555-4263-8e8c-40aaa59f2999)




🔍 **SQL Analysis**:
**4 Analytical Queries:**
1. Overall business KPIs
2. Monthly revenue trends
3. Geographic performance by country
4. Product Performance

Sample Query:

**Sample Query:**
```sql
-- Monthly Trends Analysis
SELECT  Country, 
ROUND(SUM(price*Quantity),2) AS total_revenue_per_country,
SUM(quantity) As Qauntity_sold,
ROUND(AVG(price*Quantity),2) AS Average_order_price,
COUNT(DISTINCT(invoice)) AS Total_orders,
COUNT(DISTINCT(customer_id)) AS Customer_Count
FROM dbo.retail_store
GROUP BY Country
```

