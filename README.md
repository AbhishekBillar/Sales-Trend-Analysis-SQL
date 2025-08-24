# 📊 Sales Trend Analysis Using Aggregations

## 📝 Objective
Perform time-based sales analysis using SQL aggregation functions to uncover patterns in **monthly revenue and order volume**.

---

## 📁 Dataset
- **Name:** `online_sales`
- **Format:** CSV file
- **Sample Columns:** `Order_Id`, `Order_Date`, `Amount`, `Profit`, `Quantity`, `City`, `Customer_Name`, `Category`, `Sub_Category`, `Payment_Mode`, etc.

---

## 🛠️ Tools Used
- **SQL Engine:** MySQL

---

## 🧠 Concepts & Guide
- Use `YEAR(order_date)` and `MONTH(order_date)` to extract year and month.
- Group by year and month to analyze time trends: `GROUP BY YEAR(order_date), MONTH(order_date)`.
- Use `SUM(Amount)` to calculate revenue.
- Use `COUNT(DISTINCT Order_Id)` to count order volume.
- Use `ORDER BY` to sort by time or metrics like revenue or profit.
- Use `LIMIT` to return top records (e.g., top customers or top months).
- Use `HAVING` to filter grouped results (e.g., total revenue > 10000).
- Use `LIKE` for wildcard filtering (e.g., customer names, product keywords).
- Apply `AVG()` for average quantity or profit insights.

---

## 🎯 Outcome
By completing this task, you will:
- Understand how to group time-based data
- Learn to use aggregation functions to uncover trends
- Practice combining filters, wildcards, and grouped conditions
- Gain hands-on experience writing SQL queries suitable for business reporting and interviews

