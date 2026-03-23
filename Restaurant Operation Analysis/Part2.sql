
-- Objective 2
-- Explore the orders table
-- The objective is to better understand the orders table by finding the date range, the number of items within each order, and the orders with the highest number of items.

-- Task
-- 1. View the order_details table. What is the date range of the table?
SELECT * FROM order_details;

SELECT MIN(order_date) , MAX(order_date) FROM order_details;

-- 2. How many orders were made within this date range? How many items were ordered within this date range?
SELECT COUNT(DISTINCT order_id) AS total_orders 
FROM order_details;

SELECT COUNT(*) AS total_items
FROM order_details;

-- 3. Which orders had the most number of items?
SELECT order_id, COUNT(item_id) AS total_items
FROM order_details
GROUP BY order_id
ORDER BY total_items DESC;

-- 4. How many orders had more than 12 items?
SELECT COUNT(order_id) AS total_orders
FROM 
(SELECT order_id, COUNT(item_id) AS total_items
FROM order_details
GROUP BY order_id
HAVING COUNT(item_id) > 12) AS num_orders
