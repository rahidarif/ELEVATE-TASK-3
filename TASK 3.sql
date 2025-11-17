SELECT order_id, customer_id, product_name, quantity, unit_price
FROM ecommerce_dataset
LIMIT 5;
SELECT order_id, product_name, order_status
FROM ecommerce_Dataset
WHERE order_status = 'Delivered'
limit 5;
SELECT product_name, unit_price
FROM ecommerce_dataset
ORDER BY unit_price DESC
limit 5;
SELECT category, SUM(quantity) AS total_quantity
FROM ecommerce_dataset
GROUP BY category;

SELECT product_name, unit_price
FROM ecommerce_dataset
WHERE unit_price > (SELECT AVG(unit_price) FROM ecommerce_dataset);

SELECT *
FROM ecommerce_dataset
WHERE unit_price = (SELECT MAX(unit_price) FROM ecommerce_dataset);

SELECT SUM(quantity * unit_price) AS total_sales
FROM ecommerce_dataset;

SELECT AVG(rating) AS avg_rating
FROM ecommerce_dataset;

SELECT country, COUNT(order_id)
FROM ecommerce_dataset
GROUP BY country;

SELECT customer_id,
       COUNT(order_id) AS total_orders,
       SUM(quantity * unit_price) AS total_spent
FROM ecommerce_dataset
GROUP BY customer_id;

SELECT product_id, product_name, category,
       SUM(quantity) AS units_sold,
       SUM(quantity * unit_price) AS revenue
FROM ecommerce_dataset
GROUP BY product_id, product_name, category;

