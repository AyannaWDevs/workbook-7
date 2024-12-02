CREATE DATABASE CarDealership;
USE CarDealership;
CREATE TABLE dealerships (
    dealership_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    address VARCHAR(50),
    phone VARCHAR(12)
);

CREATE TABLE vehicles (
    vin VARCHAR(17) PRIMARY KEY,
    make VARCHAR(50),
    model VARCHAR(50),
    year INT,
    price DECIMAL(10, 2),
    sold BOOLEAN,
    color VARCHAR(25),
    body_style VARCHAR(25)
);
CREATE TABLE inventory (
    dealership_id INT NOT NULL,
    vin VARCHAR(17) NOT NULL,
    FOREIGN KEY (dealership_id) REFERENCES dealerships(dealership_id),
    FOREIGN KEY (vin) REFERENCES vehicles(vin)
);

CREATE TABLE sales_contracts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(17) NOT NULL,
    customer_id INT NOT NULL,
    sales_date DATE NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    salesperson_id INT NOT NULL,
    FOREIGN KEY (vin) REFERENCES vehicles(vin)
);
CREATE TABLE lease_contracts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(17) NOT NULL,
    customer_id INT NOT NULL,
    lease_start_date DATE NOT NULL,
    lease_end_date DATE NOT NULL,
    monthly_payment DECIMAL(10, 2) NOT NULL,
    salesperson_id INT NOT NULL,
    FOREIGN KEY (vin) REFERENCES vehicles(vin)
);
INSERT INTO dealerships (name, address, phone)
VALUES
('City Motors', '123 Main St', '555-1234'),
('Auto Hub', '456 Elm St', '555-5678'),
('Car World', '789 Oak St', '555-9012');

INSERT INTO vehicles (vin, make, model, year, price, sold, color, body_style)
VALUES
('1HGCM82633A123456', 'Honda', 'Accord', 2020, 25000.00, FALSE, 'Black', 'Sedan'),
('1N4AL3AP9DN567890', 'Nissan', 'Altima', 2021, 23000.00, TRUE, 'White', 'Sedan'),
('2T1BURHE0GC789123', 'Toyota', 'Corolla', 2019, 18000.00, FALSE, 'Blue', 'Sedan');

INSERT INTO inventory (dealership_id, vin)
VALUES
(1, '1HGCM82633A123456'),
(2, '1N4AL3AP9DN567890'),
(3, '2T1BURHE0GC789123');

INSERT INTO sales_contracts (vin, customer_id, sales_date, price, salesperson_id)
VALUES
('1N4AL3AP9DN567890', 101, '2023-11-15', 23000.00, 1001),
('2T1BURHE0GC789123', 102, '2023-11-20', 18000.00, 1002);

INSERT INTO lease_contracts (vin, customer_id, lease_start_date, lease_end_date, monthly_payment, salesperson_id)
VALUES
('1HGCM82633A123456', 103, '2023-12-01', '2026-12-01', 400.00, 1003),
('2T1BURHE0GC789123', 104, '2023-11-01', '2025-11-01', 350.00, 1002);
