CREATE DATABASE IF NOT EXISTS digital_Store;

USE digital_Store;

CREATE TABLE IF NOT EXISTS banners(
    banner_id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    banner_image VARCHAR(100) NULL,
    banner_image_bg VARCHAR(100) NULL,
    banner_title VARCHAR(50) NOT NULL,
    banner_title_sup VARCHAR(50) NOT NULL,
    banner_discription VARCHAR(255) NOT NULL,
    banner_cta_text VARCHAR(20) NOT NULL,
    banner_status INTEGER DEFAULT 1
);

CREATE TABLE IF NOT EXISTS brands(
    brand_id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    brand_name VARCHAR(20) NOT NULL,
    brand_status INTEGER DEFAULT 1 
);

INSERT INTO brands (brand_name) VALUES 
('Adidas'),
('Balenciaga'),
('Lacoste'),
('Mizuno'),
('New balance'),
('Nike'),
('Okley'),
('Olimpikus'),
('Penalty'),
('Puma'),
('Umbro');

CREATE TABLE IF NOT EXISTS categories(
    category_id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    category_name VARCHAR(20) NOT NULL,
    category_status INTEGER DEFAULT 1
);

INSERT INTO categories (category_name, category_status)
VALUES
('Tênis', 1),
('Camisetas', 1),
('Calças', 1),
('Bonés', 1),
('Headphones', 1),
('Bolsas', 0);

CREATE TABLE IF NOT EXISTS users(
    user_id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    user_name VARCHAR(20) NOT NULL,
    user_status INTEGER DEFAULT 1,
    user_email VARCHAR(255) NOT NULL,
    user_fone BIGINT NOT NULL,
    user_data_nasc DATE NOT NULL
);

INSERT INTO users (user_name, user_status, user_email, user_fone, user_data_nasc)
VALUES
('Ana', 1, 'ana@gmail.com', 85977777777, '1990-03-15'),
('Carlos', 1, 'carlos@gmail.com', 85977777776, '1985-07-22'),
('Beatriz', 0, 'beatriz@gmail.com', 85977777775, '2002-12-01'),
('Fernando', 1, 'fernando@gmail.com', 85977777774, '1978-06-09'),
('Claudia', 0, 'claudia@gmail.com', 85977777773, '1995-11-30'),
('Gustavo', 1, 'gustavo@gmail.com', 85977777772, '1988-05-25'),
('Luciana', 0, 'luciana@gmail.com', 85977777771, '2003-08-14');

CREATE TABLE IF NOT EXISTS reviews(
    review_id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    review_rate INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    review_text VARCHAR(255) NULL,
    review_status INTEGER DEFAULT 1,
    FOREIGN KEY (user_id) REFERENCES users (user_id)
);

CREATE TABLE IF NOT EXISTS genders(
    gender_id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    gender_name VARCHAR(50) NOT NULL,
    gender_status INTEGER DEFAULT 1
);

CREATE TABLE IF NOT EXISTS products(
    product_id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_image BLOB NULL,
    product_discount INTEGER NOT NULL,
    product_price FLOAT NOT NULL,
    product_sizes VARCHAR(50) NULL,
    product_name VARCHAR(20) NOT NULL,
    product_description VARCHAR(255) NULL,
    product_category INTEGER NOT NULL,
    product_colors VARCHAR(10) NOT NULL,
    product_status INTEGER DEFAULT 1,
    product_condition INTEGER DEFAULT 1,
    brand_id INTEGER,
    category_id INTEGER,
    FOREIGN KEY (brand_id) REFERENCES brands(brand_id),
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

CREATE TABLE IF NOT EXISTS products_images (
    product_image_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    product_image_url VARCHAR(255) NOT NULL,
    product_id INTEGER NOT NULL,
    FOREIGN KEY(product_id) REFERENCES products (product_id)
);

CREATE TABLE IF NOT EXISTS collections(
    collection_id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    collection_image_bg BLOB NULL,
    collection_discount INTEGER NOT NULL,
    collection_title VARCHAR(50) NOT NULL,
    collection_cta_txt VARCHAR(250) NOT NULL,
    collection_status INTEGER DEFAULT 1
);

CREATE TABLE IF NOT EXISTS orders(
    order_id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    total_order DECIMAL(10, 2) NOT NULL,
    total_order_discount DECIMAL(10, 2) NOT NULL,
    order_ship VARCHAR(10) NOT NULL,
    order_status INTEGER DEFAULT 1,
    user_id INTEGER,
    FOREIGN KEY(user_id) REFERENCES users (user_id)
);

CREATE TABLE IF NOT EXISTS carts(
    cart_id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id INTEGER NOT NULL,
    FOREIGN KEY(user_id) REFERENCES users (user_id)
);

INSERT INTO products_images (product_image_url, product_id)
VALUES
('https://imgnike-a.akamaihd.net/768x768/027796NX.jpg', 30),
('https://imgnike-a.akamaihd.net/768x768/027796NXA1.jpg', 30),
('https://imgnike-a.akamaihd.net/768x768/027796NXA2.jpg', 30),
('https://imgnike-a.akamaihd.net/768x768/027796NXA3.jpg', 31);

-- Sample data for `products`
INSERT INTO products (product_price, product_name, product_description, product_category, product_colors, product_discount, brand_id, category_id)
SELECT 
    ROUND(RAND() * (100 - 10) + 10, 2) as product_price,
    CASE 
        WHEN RAND() < 0.5 THEN 'Tênis'
        ELSE 'Camisa'
    END as product_name,
    SUBSTRING('Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, FLOOR(RAND() * 50) + 1) as product_description,
    FLOOR(RAND() * 5) + 1 as category_id,
    'Cores' as product_colors,
    0.00 as product_discount,
    FLOOR(RAND() * 11) + 1 as brand_id,
    FLOOR(RAND() * 6) + 1 as product_category
FROM 
    information_schema.tables
LIMIT 100;
