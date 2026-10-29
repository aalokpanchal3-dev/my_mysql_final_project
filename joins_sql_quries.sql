-- Q1. INNER JOIN — Display customer names and their order IDs.
SELECT c.customer_name, o.order_id
FROM customers c
INNER JOIN orders o
    ON c.customer_id = o.customer_id;


-- Q2. INNER JOIN — Display order IDs, product names, and quantities.
SELECT od.order_id, p.product_name, od.quantity
FROM order_details od
INNER JOIN products p
    ON od.product_id = p.product_id;


-- Q3. INNER JOIN — Display customer names, order dates, and order amounts.
SELECT c.customer_name, o.order_date, o.total_amount
FROM customers c
INNER JOIN orders o
    ON c.customer_id = o.customer_id;


-- Q4. INNER JOIN — Display customer names, order IDs, and product names.
SELECT c.customer_name, o.order_id, p.product_name
FROM customers c
INNER JOIN orders o
    ON c.customer_id = o.customer_id
INNER JOIN order_details od
    ON o.order_id = od.order_id
INNER JOIN products p
    ON od.product_id = p.product_id;


-- Q5. LEFT JOIN — Display all customers, including those who have not placed any orders.
SELECT c.customer_id, c.customer_name, o.order_id
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id;


-- Q6. LEFT JOIN — Display all products, including products that have never been ordered.
SELECT p.product_id, p.product_name, od.order_id
FROM products p
LEFT JOIN order_details od
    ON p.product_id = od.product_id;


-- Q7. LEFT JOIN — Find customers who have never placed an order.
SELECT c.customer_id, c.customer_name
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;


-- Q8. RIGHT JOIN — Display all orders and their customer names.
SELECT c.customer_name, o.order_id, o.order_date
FROM customers c
RIGHT JOIN orders o
    ON c.customer_id = o.customer_id;


-- Q9. RIGHT JOIN — Display all products and their order details, including products with no matching order details.
SELECT p.product_name, od.order_id, od.quantity
FROM order_details od
RIGHT JOIN products p
    ON od.product_id = p.product_id;


-- Q10. JOIN with GROUP BY — Display each customer's total spending, highest spending first.
SELECT c.customer_id, c.customer_name,
       SUM(o.total_amount) AS total_spending
FROM customers c
INNER JOIN orders o
    ON c.customer_id = o.customer_id
WHERE o.order_status = 'Delivered'
GROUP BY c.customer_id, c.customer_name
ORDER BY total_spending DESC;