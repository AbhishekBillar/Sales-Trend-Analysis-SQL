-- TASK 6: Sales Trend Analysis Using Aggregations

-- 1. Get total sales, profit, and quantity per year.
select sum(amount) as total_sales,
		sum(profit) as total_profit,
        year(Order_Date) as year
from orders
group by year;

-- 2. List all orders with full details where sub category is a “Phone”.
select * from orders
where sub_category like "%Phone%";

--  3. Show monthly revenue for 2018, sorted by month.
select month(order_date) as months,
		sum(amount) monthly_revenue
from orders
where year(Order_Date)="2018"
group by months
order by months;

--  4. Top 5 customers by total amount spent.
select Customer_Name,
		sum(amount) as total_spent,
        count(distinct Order_Id) as order_count,
        sum(quantity) as total_quantity
from orders
group by Customer_Name
order by total_spent desc
limit 5;

-- 5. Show revenue and average profit per category in 2018.
select category, 
		sum(amount) as revenue,
        avg(profit) as avg_profit,
         COUNT(DISTINCT Order_Id) AS orders
from orders
WHERE YEAR(Order_Date) = 2018
GROUP BY Category;

--  6. Cities where revenue exceeded 25,000 and profit was over 5,000.
SELECT City, 
		SUM(Amount) AS revenue, 
        SUM(Profit) AS profit
FROM orders
GROUP BY City
HAVING SUM(Amount) > 25000 AND SUM(Profit) > 5000
ORDER BY revenue DESC;

--  7. Show average quantity and revenue by payment mode.
SELECT Payment_Mode, 
		AVG(Quantity) AS avg_qty, 
        SUM(Amount) AS total_revenue, 
        COUNT(DISTINCT Order_Id) AS orders
FROM orders
GROUP BY Payment_Mode
ORDER BY total_revenue DESC;

-- 8. Sub-categories with more than 40 orders.
SELECT Sub_Category, 
		COUNT(DISTINCT Order_Id) AS order_count, 
        SUM(Amount) AS revenue
FROM orders
GROUP BY Sub_Category
HAVING COUNT(DISTINCT Order_Id) > 40
ORDER BY revenue DESC;

-- 9.Orders from states ending in 'a' with more than 2,000 in sales.
SELECT State, SUM(Amount) AS total_sales, COUNT(*) AS num_orders
FROM orders
WHERE State LIKE '%a'
GROUP BY State
HAVING SUM(Amount) > 2000;

-- 10.Show total revenue per sub-category for 'Furniture' products.
SELECT Sub_Category, 
		SUM(Amount) AS revenue, 
        SUM(Profit) AS profit, 
        COUNT(*) AS orders
FROM orders
WHERE Category = 'Furniture'
GROUP BY Sub_Category
ORDER BY revenue DESC;

-- 11.Display all orders where customer name starts with 'A'.
SELECT *
FROM orders
WHERE Customer_Name LIKE 'A%';

-- 12.Products sold more than 5 times with quantity over 20.
SELECT Sub_Category, 
		SUM(Quantity) AS total_qty, 
        COUNT(DISTINCT Order_Id) AS order_count
FROM orders
GROUP BY Sub_Category
HAVING total_qty > 20 AND order_count > 5;

-- 13.Minimum Profit Per Year
SELECT 
  YEAR(Order_Date) AS year,
  MIN(Profit) AS min_profit
FROM orders
GROUP BY year
ORDER BY min_profit ASC;


-- 14.Maximum Quantity Ordered Per Month
SELECT 
  YEAR(Order_Date) AS year,
  MONTH(Order_Date) AS month,
  MAX(Quantity) AS max_quantity
FROM orders
GROUP BY year, month
ORDER BY max_quantity DESC;

-- 15.List product categories sold in more than 10 different cities.
SELECT Category, 
		COUNT(DISTINCT City) AS cities
FROM orders
GROUP BY Category
HAVING COUNT(DISTINCT City) > 10;



























































































































































