-- Create the database and select it
CREATE DATABASE IF NOT EXISTS ecommerce_app;
USE ecommerce_app;

-- Categories table
CREATE TABLE product_categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Users table
CREATE TABLE app_users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    created_at TIMESTAMP DEFAULT NOW()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Products table
CREATE TABLE store_products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    stock_quantity INT NOT NULL,
    category_id INT,
    created_at TIMESTAMP DEFAULT NOW()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Orders table
CREATE TABLE customer_orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL,
    status ENUM('Pending', 'Shipped', 'Delivered', 'Cancelled') DEFAULT 'Pending',
    created_at TIMESTAMP DEFAULT NOW()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Order Details table (without foreign keys)
CREATE TABLE order_details (
    order_detail_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Payments table
CREATE TABLE order_payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    payment_method ENUM('Credit Card', 'PayPal', 'Bank Transfer'),
    status ENUM('Completed', 'Pending', 'Failed') DEFAULT 'Pending',
    created_at TIMESTAMP DEFAULT NOW()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Reviews table
CREATE TABLE product_reviews (
    review_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT NOT NULL,
    user_id INT NOT NULL,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    comment TEXT,
    created_at TIMESTAMP DEFAULT NOW()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
