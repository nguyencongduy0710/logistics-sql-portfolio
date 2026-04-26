-- ============================================
-- SAMPLE DATA: Logistics Portfolio Database
-- Run this file first to set up all tables
-- ============================================

CREATE TABLE trucks (
    truck_id INT PRIMARY KEY,
    truck_type VARCHAR(50),
    capacity_tons DECIMAL(5,2),
    home_base VARCHAR(100)
);

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(100),
    contract_tier VARCHAR(20)
);

CREATE TABLE shipments (
    shipment_id INT PRIMARY KEY,
    truck_id INT,
    customer_id INT,
    origin VARCHAR(100),
    destination VARCHAR(100),
    departure_date DATE,
    delivery_date DATE,
    status VARCHAR(20)
);

-- Insert trucks
INSERT INTO trucks VALUES (42, 'container', 20.5, 'Ho Chi Minh');
INSERT INTO trucks VALUES (43, 'flatbed', 15.0, 'Binh Duong');
INSERT INTO trucks VALUES (44, 'refrigerated', 10.0, 'Dong Nai');
INSERT INTO trucks VALUES (45, 'container', 20.5, 'Ho Chi Minh');

-- Insert customers
INSERT INTO customers VALUES (7, 'Samsung VN', 'Dong Nai', 'premium');
INSERT INTO customers VALUES (8, 'Nike VN', 'Ho Chi Minh', 'standard');
INSERT INTO customers VALUES (9, 'Unilever VN', 'Binh Duong', 'basic');
INSERT INTO customers VALUES (10, 'Adidas VN', 'Hanoi', 'premium');

-- Insert shipments
INSERT INTO shipments VALUES (1001, 42, 7, 'Ho Chi Minh', 'Hanoi', '2024-01-10', '2024-01-12', 'complete');
INSERT INTO shipments VALUES (1002, 43, 8, 'Binh Duong', 'Da Nang', '2024-01-11', '2024-01-15', 'complete');
INSERT INTO shipments VALUES (1003, 42, 7, 'Dong Nai', 'Hanoi', '2024-01-13', '2024-01-14', 'complete');
INSERT INTO shipments VALUES (1004, 44, 9, 'Ho Chi Minh', 'Can Tho', '2024-01-14', '2024-01-16', 'failed');
INSERT INTO shipments VALUES (1005, 43, 8, 'Binh Duong', 'Hanoi', '2024-01-15', '2024-01-17', 'complete');
INSERT INTO shipments VALUES (1006, 42, 10, 'Ho Chi Minh', 'Da Nang', '2024-01-16', '2024-01-19', 'complete');
INSERT INTO shipments VALUES (1007, 44, 7, 'Dong Nai', 'Hanoi', '2024-01-17', '2024-01-20', 'pending');
INSERT INTO shipments VALUES (1008, 43, 9, 'Binh Duong', 'Can Tho', '2024-01-18', '2024-01-19', 'complete');
