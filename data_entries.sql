INSERT INTO product_categories (category_name, created_at) VALUES
('Electronics', NOW()),
('Fashion', NOW()),
('Home & Kitchen', NOW()),
('Sports', NOW()),
('Books', NOW());

-------------------------------

INSERT INTO app_users (username, email, password_hash, first_name, last_name, created_at) VALUES
('john_doe', 'john@example.com', 'hashed_password1', 'John', 'Doe', NOW()),
('jane_smith', 'jane@example.com', 'hashed_password2', 'Jane', 'Smith', NOW()),
('alice_wonder', 'alice@example.com', 'hashed_password3', 'Alice', 'Wonder', NOW()),
('bob_builder', 'bob@example.com', 'hashed_password4', 'Bob', 'Builder', NOW());

-------------------------------

INSERT INTO store_products (name, description, price, stock_quantity, category_id, created_at) VALUES
('Smartphone', 'Latest model smartphone with all features', 699.99, 50, 1, NOW()),
('Jeans', 'Stylish denim jeans', 49.99, 100, 2, NOW()),
('Blender', 'High-speed blender for smoothies', 89.99, 30, 3, NOW()),
('Tennis Racket', 'Professional tennis racket', 120.00, 20, 4, NOW()),
('Cooking Book', 'Delicious recipes for home cooking', 25.00, 150, 5, NOW());

-------------------------------

INSERT INTO customer_orders (user_id, total_amount, status, created_at) VALUES
(1, 749.98, 'Pending', NOW()),
(2, 49.99, 'Shipped', NOW()),
(1, 120.00, 'Delivered', NOW()),
(3, 25.00, 'Cancelled', NOW());

-------------------------------

INSERT INTO order_details (order_id, product_id, quantity, price, created_at) VALUES
(1, 1, 1, 699.99, NOW()),
(1, 5, 1, 49.99, NOW()),
(2, 2, 1, 49.99, NOW()),
(3, 4, 1, 120.00, NOW());

-------------------------------

INSERT INTO order_payments (order_id, amount, payment_method, status, created_at) VALUES
(1, 749.98, 'Credit Card', 'Completed', NOW()),
(2, 49.99, 'PayPal', 'Completed', NOW()),
(3, 120.00, 'Bank Transfer', 'Pending', NOW());

-------------------------------

INSERT INTO product_reviews (product_id, user_id, rating, comment, created_at) VALUES
(1, 1, 5, 'Amazing smartphone!', NOW()),
(2, 2, 4, 'Good quality jeans.', NOW()),
(3, 3, 3, 'Average blender.', NOW()),
(4, 4, 5, 'Best racket I have used.', NOW());

==============================================xx=============================================