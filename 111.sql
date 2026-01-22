SELECT *
FROM dbo.retail_store


CREATE VIEW Products_per AS
SELECT 
    StockCode,
    Description,
    SUM(Quantity) AS Total_Quantity,
    SUM(Quantity * Price) AS Total_Revenue,
    AVG(Price) AS Avg_Price,
    COUNT(DISTINCT Invoice) AS Orders,
    ROUND(SUM(Quantity * Price) / SUM(Quantity), 2) AS Revenue_Per_Unit
FROM dbo.retail_store
WHERE [Customer_ID] IS NOT NULL
  AND Quantity > 0
  AND Price > 0
GROUP BY StockCode, Description
HAVING SUM(Quantity) > 100 


CREATE VIEW Monthly_trends AS
SELECT 
    YEAR(InvoiceDate) AS Year,
    MONTH(InvoiceDate) AS Month,
    CONCAT(YEAR(InvoiceDate), '-', FORMAT(MONTH(InvoiceDate), '00')) AS Year_Month,
    COUNT(DISTINCT Invoice) AS Orders,
    COUNT(DISTINCT [Customer_ID]) AS Customers,
    ROUND(SUM(Quantity * Price),2) AS Revenue,
    ROUND(SUM(Quantity),2) AS Units_Sold,
    AVG(Quantity * Price) AS Avg_Order_Value
FROM dbo.retail_store
WHERE [Customer_ID] IS NOT NULL
  AND Quantity > 0
  AND Price > 0
GROUP BY YEAR(InvoiceDate), MONTH(InvoiceDate)


CREATE VIEW KPIs AS
SELECT 
	ROUND(SUM(quantity*price), 2) AS Total_revenue,
	COUNT(DISTINCT(StockCode)) AS Uniqe_products,
	SUM(quantity) AS units_sold,
	COUNT(DISTINCT(customer_id)) AS unique_customers,
	COUNT(DISTINCT(country)) AS countries,
	COUNT(DISTINCT(invoice)) AS total_orders
	FROM dbo.retail_store
	

    CREATE VIEW Country_per AS
SELECT  Country, 
ROUND(SUM(price*Quantity),2) AS total_revenue_per_country,
SUM(quantity) As Qauntity_sold,
ROUND(AVG(price*Quantity),2) AS Average_order_price,
COUNT(DISTINCT(invoice)) AS Total_orders,
COUNT(DISTINCT(customer_id)) AS Customer_Count
FROM dbo.retail_store
GROUP BY Country