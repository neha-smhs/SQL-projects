-- Objective 3
-- Analyze customer behavior
-- Your final objective is to combine the items and orders tables, find the least and most ordered categories, and dive into the details of the highest spend orders.

-- Task
-- 1. Combine the menu_items and order_details tables into a single table
SELECT * FROM menu_items;
SELECT * FROM order_details;

SELECT * 
FROM order_details o LEFT JOIN menu_items m  
	 ON m.menu_item_id = o.item_id;

-- 2. What were the least and most ordered items? What categories were they in?

SELECT item_name , category, COUNT(o.order_details_id) AS num_orders
FROM order_details o LEFT JOIN menu_items m  
	 ON m.menu_item_id = o.item_id
GROUP BY m.item_name, category
ORDER BY num_orders;

-- 3. What were the top 5 orders that spent the most money?
SELECT order_id , SUM(price) as total_spend
FROM order_details o LEFT JOIN menu_items m  
	 ON m.menu_item_id = o.item_id
GROUP BY order_id
ORDER BY total_spend DESC
LIMIT 5;

-- 4. View the details of the highest spend order. Which specific items were purchased?
SELECT category, COUNT(item_id) AS num_items
FROM order_details o LEFT JOIN menu_items m  
	 ON m.menu_item_id = o.item_id
WHERE order_id = 440
GROUP BY category;

-- BONUS: View the details of the top 5 highest spend orders
SELECT order_id, category, COUNT(item_id) AS num_items
FROM order_details o LEFT JOIN menu_items m  
	 ON m.menu_item_id = o.item_id
WHERE order_id IN (440,2075,1957,330,2675)
GROUP BY order_id , category;

-- Looking at the data of the highest spend orders , looks like there is more demand for Italian food so it is preferred to be kept for in the menu.

