CREATE DATABASE SalesAnalysis
USE SalesAnalysis
EXEC sp_rename 'online_sales_sample', 'online_sales'
ALTER TABLE online_sales ADD amount AS (Quantity * UnitPrice)
SELECT 
    YEAR(InvoiceDate) AS Year,
    MONTH(InvoiceDate) AS Month,
    SUM(Quantity * UnitPrice) AS Total_Revenue,
    COUNT(DISTINCT InvoiceNo) AS Total_Orders
FROM online_sales
GROUP BY YEAR(InvoiceDate), MONTH(InvoiceDate)
ORDER BY YEAR(InvoiceDate), MONTH(InvoiceDate)

--Sorting by Highest Revenue
SELECT 
    YEAR(InvoiceDate) AS Year,
    MONTH(InvoiceDate) AS Month,
    SUM(Quantity * UnitPrice) AS Total_Revenue,
    COUNT(DISTINCT InvoiceNo) AS Total_Orders
FROM online_sales
GROUP BY YEAR(InvoiceDate), MONTH(InvoiceDate)
ORDER BY Total_Revenue DESC

--Top 3 Best-Performing Months
SELECT TOP 3
    YEAR(InvoiceDate) AS Year,
    MONTH(InvoiceDate) AS Month,
    SUM(Quantity * UnitPrice) AS Total_Revenue,
    COUNT(DISTINCT InvoiceNo) AS Total_Orders
FROM online_sales
GROUP BY YEAR(InvoiceDate), MONTH(InvoiceDate)
ORDER BY Total_Revenue DESC

--Filter by Specific Year
SELECT 
    YEAR(InvoiceDate) AS Year,
    MONTH(InvoiceDate) AS Month,
    SUM(Quantity * UnitPrice) AS Total_Revenue,
    COUNT(DISTINCT InvoiceNo) AS Total_Orders
FROM online_sales
WHERE YEAR(InvoiceDate) = 2024
GROUP BY YEAR(InvoiceDate), MONTH(InvoiceDate)
ORDER BY YEAR(InvoiceDate), MONTH(InvoiceDate)

--Average Order Value
SELECT 
    YEAR(InvoiceDate) AS Year,
    MONTH(InvoiceDate) AS Month,
    SUM(Quantity * UnitPrice) AS Total_Revenue,
    COUNT(DISTINCT InvoiceNo) AS Total_Orders,
    SUM(Quantity * UnitPrice) / COUNT(DISTINCT InvoiceNo) AS Avg_Order_Value
FROM online_sales
GROUP BY YEAR(InvoiceDate), MONTH(InvoiceDate)
ORDER BY YEAR(InvoiceDate), MONTH(InvoiceDate)