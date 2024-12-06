INSERT INTO vehicles (vin, make, model, year, price, sold, color, body_style)
VALUES
('1HGCM82633A123456', 'Honda', 'Accord', 2020, 25000.00, 0, 'Blue', 'Sedan'),
('1C4RJFAG3CC123456', 'Jeep', 'Grand Cherokee', 2021, 32000.50, 1, 'Black', 'SUV'),
('2T1BURHE3JC123456', 'Toyota', 'Corolla', 2019, 22000.00, 0, 'White', 'Sedan'),
('1FTRX12W37FB12345', 'Ford', 'F-150', 2022, 28000.75, 1, 'Red', 'Truck'),
('3CZRU6H52JM123456', 'Honda', 'CR-V', 2023, 31000.00, 0, 'Gray', 'SUV'),
('5N1AL0MM3EC123456', 'Nissan', 'Altima', 2020, 27000.00, 0, 'Silver', 'Sedan'),
('4T1BE46K67U123456', 'Toyota', 'Camry', 2021, 29000.00, 0, 'White', 'Sedan'),
('2FMDK4KC3BBA12345', 'Ford', 'Edge', 2019, 26000.00, 0, 'Black', 'SUV'),
('1G1BE5SMXH7134567', 'Chevrolet', 'Malibu', 2022, 24000.00, 0, 'Blue', 'Sedan'),
('WVWZZZ3CZEE123456', 'Volkswagen', 'Passat', 2023, 31000.00, 0, 'Gray', 'Sedan');

INSERT INTO inventory (dealership_id, vin)
VALUES
(1, '1HGCM82633A123456'),
(2, '1C4RJFAG3CC123456'),
(3, '2T1BURHE3JC123456'),
(4, '1FTRX12W37FB12345'),
(5, '3CZRU6H52JM123456'),
(6, '5N1AL0MM3EC123456'),
(7, '4T1BE46K67U123456'),
(8, '2FMDK4KC3BBA12345'),
(9, '1G1BE5SMXH7134567'),
(10, 'WVWZZZ3CZEE123456');

INSERT INTO lease_contracts (id, vin, customer_id, lease_start_date, lease_end_date, monthly_payment, salesperson_id)
VALUES
(1, '1HGCM82633A123456', 101, '2023-01-01', '2026-01-01', 299.99, 201),
(2, '1C4RJFAG3CC123456', 102, '2023-05-15', '2027-05-15', 349.50, 202),
(3, '2T1BURHE3JC123456', 103, '2022-09-01', '2025-09-01', 275.00, 203),
(4, '1FTRX12W37FB12345', 104, '2024-02-01', '2028-02-01', 399.99, 204),
(5, '3CZRU6H52JM123456', 105, '2023-07-10', '2026-07-10', 320.00, 205);

INSERT INTO sales_contracts (id, vin, customer_id, sales_date, price, salesperson_id)
VALUES
(1, '1C4RJFAG3CC123456', 201, '2023-03-10', 32000.50, 301),
(2, '1FTRX12W37FB12345', 202, '2023-06-20', 28000.75, 302),
(3, '5N1AL0MM3EC123456', 203, '2023-08-15', 27000.00, 303),
(4, '2FMDK4KC3BBA12345', 204, '2023-09-10', 26000.00, 304),
(5, 'WVWZZZ3CZEE123456', 205, '2023-10-05', 31000.00, 305);