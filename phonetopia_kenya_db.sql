-- CREATE DATABASE Phonetopia_Kenya;
-- 1. Table: employees
CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
    phone_number VARCHAR(15) NOT NULL UNIQUE,
    position VARCHAR(50) NOT NULL
);

-- 2. Table: suppliers
CREATE TABLE suppliers (
    supplier_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    contact_email VARCHAR(100),
    country VARCHAR(50) NOT NULL
);

-- 3. Table: categories
CREATE TABLE categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL UNIQUE
);

-- 4. Table: products
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    category_id INT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock_quantity INT DEFAULT 0,
    is_trade_in_eligible BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (category_id) REFERENCES categories(category_id),
    FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id)
);

-- ---------------------------
-- 5. Table: customers
-- ---------------------------
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(15) NOT NULL UNIQUE,
    address VARCHAR(255)
);

-- ---------------------------
-- 6. Table: trade_ins
-- ---------------------------
CREATE TABLE trade_ins (
    trade_in_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    old_iphone_model VARCHAR(50) NOT NULL,
    trade_in_date DATE NOT NULL,
    evaluated_value DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- ---------------------------
-- 7. Table: orders
-- ---------------------------
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    employee_id INT,
    order_date DATETIME NOT NULL,
    delivery_method VARCHAR(50) NOT NULL, -- Pickup Mtaani or Rider
    delivery_address VARCHAR(255),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

-- ---------------------------
-- 8. Table: order_items (Many-to-Many between orders and products)
-- ---------------------------
CREATE TABLE order_items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- ---------------------------
-- 9. Table: riders
-- ---------------------------
CREATE TABLE riders (
    rider_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(15) NOT NULL UNIQUE
);

-- ---------------------------
-- 10. Table: expenses
-- ---------------------------
CREATE TABLE expenses (
    expense_id INT AUTO_INCREMENT PRIMARY KEY,
    description VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL, -- e.g., Rent, Marketing
    amount DECIMAL(10,2) NOT NULL,
    expense_date DATE NOT NULL
);

-- ---------------------------
-- 11. Table: deliveries
-- ---------------------------
CREATE TABLE deliveries (
    delivery_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    rider_id INT,
    service VARCHAR(50) NOT NULL, -- Pickup Mtaani or Rider
    delivery_date DATE,
    status VARCHAR(50) DEFAULT 'Pending',
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (rider_id) REFERENCES riders(rider_id)
);


-- ---------------------------
-- Sample Data for Phonetopia Kenya Database
-- ---------------------------
-- Insert data for Employees
INSERT INTO employees (first_name, last_name, phone_number, position) VALUES
('Vincent', 'Odhiambo', '0788844018', 'Chief Executive Officer'),
('Ian', 'Cliff', '0722156702', 'Manager'),
('Rose', 'Osore', '070590541', 'Assistant Manager'),
('Noel', 'Omondi', '0701740500', 'Business Advisor and Investor');

-- Insert data for Categories
INSERT INTO categories (category_name) VALUES
('Phone Cases'),
('Chargers'),
('Accessories'),
('Phones');

-- Insert data for Suppliers
-- Note: The supplier_id is auto-incremented, so we don't need to specify it.
INSERT INTO suppliers (name, contact_email, country) VALUES
('Nairobi Tech Supplies', 'info@nairobitech.co.ke', 'Kenya'),
('Global Gadgets Ltd', 'sales@globalgadgets.com', 'China'),
('Guangzhou E11 Communication Ltd', 'info@e11communication.co.ke', 'China'),
('Shenzhen Lichuangmei Technology', 'contact@lichuangmeitech.co.ke', 'China');

-- Insert data for Riders
INSERT INTO riders (name, phone_number) VALUES
('Sylvester Odhiambo', '0745678901'),
('Key Terrain', '0756789012');

-- Insert data for Customers
INSERT INTO customers (full_name, phone_number, address) VALUES
('Alice Nyambura', '0767890123', 'Westlands, Nairobi'),
('Brian Otieno', '0778901234', 'Kilimani, Nairobi'),
('Esther Wambui', '0789012345', 'South C, Nairobi'),
('Mumbi Yator', '0734091276', 'Narok'),
('Nicole Njeri', '0700228321', 'Donholm, Nairobi'),
('Wendy Oliwa', '0712340981', 'Langata, Nairobi'),
('Sharon Kemunto', '0111890225', 'Rongai, Kajiado'),
('Katrina Wambui', '0777022145', 'Karen, Nairobi'),
('Janice Wende', '0745612309', 'Ngong, Kajiado'),
('Jasmine Rose', '0765432109', 'Umoja, Nairobi');

-- Insert data for Expenses
INSERT INTO expenses (description, category, amount, expense_date) VALUES
('Shop Rent', 'Rent', 26000.00, '2025-05-01'),
('Product Marketing', 'Marketing', 5000.00, '2025-05-10'),
('Electricity', 'Electricity', 1500.00, '2025-05-10');

 -- Insert data for Products   
INSERT INTO products (name, category_id, price, stock_quantity, is_trade_in_eligible) VALUES
('Silicone Case iPhone', 1, 550.00, 50, FALSE),
('Silicone Case Samsung', 1, 550.00, 40, FALSE),
('Customized Case', 1,750.00, 30, FALSE),
('Casetify Designer Case', 1,800.00, 20, FALSE),
('iPhone Charger', 2, 1600.00, 25, FALSE),
('Samsung Charger', 2, 1400.00, 30, FALSE),
('Laptop Charger USB-C', 2000.00, 15, FALSE),
('Octobuddy', 3, 250.00, 100, FALSE),
('Normal Glass Protector', 3, 400.00, 60, FALSE),
('Privacy Glass Protector', 3, 500.00, 50, FALSE),
('iPhone Cable', 3, 500.00, 70, FALSE),
('Samsung Cable', 3, 500.00, 65, FALSE),
('Smart Watch', 3, 2500.00, 10, FALSE),
('iPhone 14 128GB', 4, 62000.00, 5, TRUE);

-- Insert data for Trade-ins
-- Two trade-ins for old iPhones
INSERT INTO trade_ins (customer_id, old_iphone_model, trade_in_date, evaluated_value) VALUES
(1, 'iPhone 11', '2025-05-05', 15000.00),
(2, 'iPhone 12', '2025-05-07', 20000.00);

-- Insert data for Orders
-- Three sample orders (two with Rider delivery, one Pickup Mtaani)
INSERT INTO orders (customer_id, employee_id, order_date, delivery_method, delivery_address) VALUES
(1, 2, '2025-05-10 10:00:00', 'Rider', 'Westlands, Nairobi'),
(2, 3, '2025-05-11 14:30:00', 'Pickup Mtaani', NULL),
(3, 2, '2025-05-12 09:15:00', 'Rider', 'South C, Nairobi');

-- Insert data for Order Items
-- Items for the orders (linked to products)
INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 2, 550.00), -- 2 Silicone Case iPhone
(1, 5, 1, 1600.00), -- 1 iPhone Charger
(2, 8, 3, 250.00), -- 3 Octobuddy
(3, 14, 1, 50000.00); -- 1 iPhone 14

-- Insert data for Deliveries
-- Deliveries for the orders (two Rider, one Pickup Mtaani)
INSERT INTO deliveries (order_id, rider_id, service, delivery_date, status) VALUES
(1, 1, 'Rider', '2025-05-10', 'Delivered'),
(2, NULL, 'Pickup Mtaani', '2025-05-11', 'Completed'),
(3, 2, 'Rider', NULL, 'Pending');
