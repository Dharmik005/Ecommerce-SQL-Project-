1. Retrieve All Products with Their Categories -

SELECT sp.product_id, sp.name AS product_name, pc.category_name, sp.price, sp.stock_quantity
FROM store_products sp
JOIN product_categories pc ON sp.category_id = pc.category_id;

--------------------------------------------------
2. Get All Users and Their Orders -

SELECT u.user_id, u.username, o.order_id, o.total_amount, o.status
FROM app_users u
LEFT JOIN customer_orders o ON u.user_id = o.user_id;

---------------------------------------------------
3. Find Total Sales Amount by Product -

SELECT sp.name AS product_name, SUM(od.quantity * od.price) AS total_sales
FROM order_details od
JOIN store_products sp ON od.product_id = sp.product_id
GROUP BY sp.product_id;

----------------------------------------------------
4. List All Reviews for a Specific Product -

SELECT r.rating, r.comment, u.username
FROM product_reviews r
JOIN app_users u ON r.user_id = u.user_id
WHERE r.product_id = 1;

----------------------------------------------------
5. Get Users Who Have Not Made Any Orders -

SELECT u.user_id, u.username
FROM app_users u
LEFT JOIN customer_orders o ON u.user_id = o.user_id
WHERE o.order_id IS NULL;

----------------------------------------------------
6. Count of Products in Each Category -

SELECT pc.category_name, COUNT(sp.product_id) AS product_count
FROM product_categories pc
LEFT JOIN store_products sp ON pc.category_id = sp.category_id
GROUP BY pc.category_name;

-----------------------------------------------------
7. Retrieve Payments and Their Statuses -

SELECT p.payment_id, p.amount, p.payment_method, p.status, o.order_id
FROM order_payments p
JOIN customer_orders o ON p.order_id = o.order_id;

-----------------------------------------------------
8. Get the Average Rating for Each Product -

SELECT sp.name AS product_name, AVG(r.rating) AS average_rating
FROM product_reviews r
JOIN store_products sp ON r.product_id = sp.product_id
GROUP BY sp.product_id;

==========================================xx=====================================