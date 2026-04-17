SELECT * FROM superstore LIMIT 10;
SELECT ROUND(SUM(sales), 2) AS total_sales
FROM superstore;
SELECT ROUND(SUM(profit), 2) AS total_profit
FROM superstore;
SELECT SUM(quantity) AS total_quantity
FROM superstore;
SELECT region, ROUND(SUM(sales), 2) AS total_sales
FROM superstore
GROUP BY region
ORDER BY total_sales DESC;
SELECT customer_name, ROUND(SUM(sales), 2) AS total_sales
FROM superstore
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 5;
SELECT product_name, ROUND(SUM(sales), 2) AS total_sales
FROM superstore
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;
SELECT order_date
FROM superstore
LIMIT 5;
SELECT MONTH(order_date) AS month_num,
       ROUND(SUM(sales), 2) AS monthly_sales
FROM superstore
GROUP BY MONTH(order_date)
ORDER BY month_num;