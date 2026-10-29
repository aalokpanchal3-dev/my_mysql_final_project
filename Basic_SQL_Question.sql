-- Q1. Display all customer records.
SELECT * FROM customers;

-- Q2. Display products whose price is greater than ₹2,000.
SELECT product_name, category, price
FROM products
WHERE price > 2000;

-- Q3. Display all products in descending order of price.
SELECT product_name, price
FROM products
ORDER BY price DESC;


-- Q4. Find the total number of customers.
SELECT COUNT(*) AS total_customers
FROM customers;


-- Q5. Find the average price of all products.
SELECT AVG(price) AS average_price
FROM products;


-- Q6. Display the number of customers in each city.
SELECT city, COUNT(*) AS total_customers
FROM customers
GROUP BY city;


-- Q7. Display product categories having an average price greater than ₹2,000.
SELECT category, AVG(price) AS average_price
FROM products
GROUP BY category
HAVING AVG(price) > 2000;


-- Q8. Insert a new customer into the customers table.
INSERT INTO customers
(customer_id, customer_name, email, phone, city, registration_date)
VALUES
(26, 'Rohan Verma', 'rohan26@gmail.com',
 '9876500026', 'Indore', '2025-06-01');


-- Q9. Update the city of customer ID 26.
UPDATE customers
SET city = 'Bhopal'
WHERE customer_id = 26;


-- Q10. Delete product ID 26.
DELETE FROM products
WHERE product_id = 26;