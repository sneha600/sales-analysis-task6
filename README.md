# Task 6: Sales Trend Analysis Using Aggregations

## 🎯 Objective
Analyze monthly revenue and order volume using SQL aggregation and grouping.

## 🧰 Tools
SQL Server Management Studio (SSMS)

## 📊 Dataset
- **File:** online_sales_sample.csv
- **Columns:** InvoiceNo, StockCode, Description, Quantity, InvoiceDate, UnitPrice, CustomerID, Country

## ⚙️ Steps Performed
1. Created database `SalesAnalysis`
2. Imported dataset into table `online_sales`
3. Added calculated column `amount = Quantity * UnitPrice`
4. Grouped data by year and month using:
   - `SUM()` for total revenue  
   - `COUNT(DISTINCT InvoiceNo)` for total orders
5. Sorted data and filtered by year for trend analysis

## 📈 Output
| Year | Month | Total_Revenue | Total_Orders |
|------|-------|---------------|---------------|
| 2024 | 1 | 107500.00 | 2 |
| 2024 | 2 | 101400.00 | 2 |
| 2024 | 3 | 31500.00 | 2 |
| 2024 | 4 | 50700.00 | 2 |
| 2024 | 5 | 56000.00 | 2 |

## 🧾 Outcome
Learned how to group data, use aggregation functions, and analyze sales trends over time.
