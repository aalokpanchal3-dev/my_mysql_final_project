-- Q1. Create a stored procedure to display all customers.
DELIMITER //

CREATE PROCEDURE get_all_customers()
BEGIN
    SELECT * FROM customers;
END //

DELIMITER ;

CALL get_all_customers();


-- Q2. Create a stored procedure to display all products in a given category.
DELIMITER //

CREATE PROCEDURE get_products_by_category(
    IN p_category VARCHAR(50)
)
BEGIN
    SELECT *
    FROM products
    WHERE category = p_category;
END //

DELIMITER ;

CALL get_products_by_category('Electronics');


-- Q3. Create a stored procedure to display orders by status.
DELIMITER //

CREATE PROCEDURE get_orders_by_status(
    IN p_status VARCHAR(30)
)
BEGIN
    SELECT *
    FROM orders
    WHERE order_status = p_status;
END //

DELIMITER ;

CALL get_orders_by_status('Delivered');


-- Q4. Create a stored procedure to display orders for a specific customer.
DELIMITER //

CREATE PROCEDURE get_customer_orders(
    IN p_customer_id INT
)
BEGIN
    SELECT *
    FROM orders
    WHERE customer_id = p_customer_id;
END //

DELIMITER ;

CALL get_customer_orders(1);


-- Q5. Create a stored procedure to display products below a specified price.
DELIMITER //

CREATE PROCEDURE get_products_below_price(
    IN p_price DECIMAL(10,2)
)
BEGIN
    SELECT product_name, price
    FROM products
    WHERE price < p_price
    ORDER BY price;
END //

DELIMITER ;

CALL get_products_below_price(2000);


-- Q6. Create a stored procedure to insert a new customer.
DELIMITER //

CREATE PROCEDURE insert_customer(
    IN p_id INT,
    IN p_name VARCHAR(100),
    IN p_email VARCHAR(100),
    IN p_phone VARCHAR(15),
    IN p_city VARCHAR(50),
    IN p_date DATE
)
BEGIN
    INSERT INTO customers
    (customer_id, customer_name, email, phone, city, registration_date)
    VALUES
    (p_id, p_name, p_email, p_phone, p_city, p_date);
END //

DELIMITER ;

CALL insert_customer(
    26, 'Rohan Verma', 'rohan26@gmail.com',
    '9876500026', 'Indore', '2025-06-01'
);


Run this only if customer ID 26 and the email are not already present.
-- Q7. Create a stored procedure to update a customer's city.
DELIMITER //

CREATE PROCEDURE update_customer_city(
    IN p_id INT,
    IN p_city VARCHAR(50)
)
BEGIN
    UPDATE customers
    SET city = p_city
    WHERE customer_id = p_id;
END //

DELIMITER ;

CALL update_customer_city(26, 'Bhopal');


-- Q8. Create a stored procedure to delete a customer.
DELIMITER //

CREATE PROCEDURE delete_customer(
    IN p_id INT
)
BEGIN
    DELETE FROM customers
    WHERE customer_id = p_id;
END //

DELIMITER ;

CALL delete_customer(26);


Only delete customers who have no associated orders. Otherwise, the foreign key may prevent the deletion.
-- Q9. Create a stored procedure to insert a new product.
DELIMITER //

CREATE PROCEDURE insert_product(
    IN p_id INT,
    IN p_name VARCHAR(100),
    IN p_category VARCHAR(50),
    IN p_price DECIMAL(10,2),
    IN p_stock INT
)
BEGIN
    INSERT INTO products
    (product_id, product_name, category, price, stock_quantity)
    VALUES
    (p_id, p_name, p_category, p_price, p_stock);
END //

DELIMITER ;

CALL insert_product(
    26, 'Gaming Mouse', 'Electronics', 1800, 40
);


-- Q10. Create a stored procedure to update a product's price.
DELIMITER //

CREATE PROCEDURE update_product_price(
    IN p_id INT,
    IN p_price DECIMAL(10,2)
)
BEGIN
    UPDATE products
    SET price = p_price
    WHERE product_id = p_id;
END //

DELIMITER ;

CALL update_product_price(26, 1600);


-- Q11. Create a stored procedure to delete a product.
DELIMITER //

CREATE PROCEDURE delete_product(
    IN p_id INT
)
BEGIN
    DELETE FROM products
    WHERE product_id = p_id;
END //

DELIMITER ;

CALL delete_product(26);


If the product is referenced in order_details, delete the related detail records first if appropriate for your data.
-- Q12. Create a stored procedure to update an order's status.
DELIMITER //

CREATE PROCEDURE update_order_status(
    IN p_order_id INT,
    IN p_status VARCHAR(30)
)
BEGIN
    UPDATE orders
    SET order_status = p_status
    WHERE order_id = p_order_id;
END //

DELIMITER ;

CALL update_order_status(4, 'Delivered');


-- Q13. Create a function to calculate the total number of customers.
DELIMITER //

CREATE FUNCTION total_customers()
RETURNS INT
NOT DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE total INT;

    SELECT COUNT(*)
    INTO total
    FROM customers;

    RETURN total;
END //

DELIMITER ;

SELECT total_customers() AS customer_count;


-- Q14. Create a function to calculate the total stock quantity of a product.
DELIMITER //

CREATE FUNCTION get_product_stock(
    p_product_id INT
)
RETURNS INT
NOT DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE stock INT DEFAULT 0;

    SELECT COALESCE(MAX(stock_quantity), 0)
    INTO stock
    FROM products
    WHERE product_id = p_product_id;

    RETURN stock;
END //

DELIMITER ;

SELECT get_product_stock(1) AS available_stock;


-- Q15. Create a function to calculate the total delivered spending of a customer.
DELIMITER //

CREATE FUNCTION customer_total_spending(
    p_customer_id INT
)
RETURNS DECIMAL(12,2)
NOT DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE total DECIMAL(12,2) DEFAULT 0;

    SELECT COALESCE(SUM(total_amount), 0)
    INTO total
    FROM orders
    WHERE customer_id = p_customer_id
      AND order_status = 'Delivered';

    RETURN total;
END //

DELIMITER ;