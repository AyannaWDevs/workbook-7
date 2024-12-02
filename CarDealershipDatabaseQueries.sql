SELECT * FROM dealerships;

SELECT * FROM dealerships WHERE name = 'city motors';

SELECT * 
FROM vehicles
WHERE vin = '1HGCM82633A123456'; -- Replace with the desired VIN

SELECT d.*
FROM dealerships d
JOIN inventory i ON d.dealership_id = i.dealership_id
WHERE i.vin = '1HGCM82633A123456'; -- Replace with the desired VIN

SELECT DISTINCT d.*
FROM dealerships d
JOIN inventory i ON d.dealership_id = i.dealership_id
JOIN vehicles v ON i.vin = v.vin
WHERE v.body_style = 'Sedan'; -- Replace 'Sedan' with the desired body style

SELECT sc.*
FROM sales_contracts sc
JOIN inventory i ON sc.vin = i.vin
WHERE i.dealership_id = 1 -- Replace 1 with the desired dealership_id
  AND sc.sales_date BETWEEN '2023-11-01' AND '2023-11-30'; -- Replace with the desired date range
