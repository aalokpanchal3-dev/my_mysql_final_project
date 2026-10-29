
USE ecommerce_db;

-- =====================================
-- 1. CUSTOMERS: 25 ROWS
-- =====================================

INSERT INTO customers
(customer_id, customer_name, email, phone, city, registration_date)
VALUES
(1,'Aarav Sharma','aarav1@gmail.com','9876500001','Indore','2025-01-05'),
(2,'Priya Verma','priya2@gmail.com','9876500002','Bhopal','2025-01-08'),
(3,'Rahul Patel','rahul3@gmail.com','9876500003','Ratlam','2025-01-12'),
(4,'Sneha Gupta','sneha4@gmail.com','9876500004','Delhi','2025-01-15'),
(5,'Aman Singh','aman5@gmail.com','9876500005','Mumbai','2025-01-20'),
(6,'Neha Joshi','neha6@gmail.com','9876500006','Pune','2025-01-22'),
(7,'Rohit Jain','rohit7@gmail.com','9876500007','Jaipur','2025-02-01'),
(8,'Pooja Yadav','pooja8@gmail.com','9876500008','Indore','2025-02-04'),
(9,'Karan Mehta','karan9@gmail.com','9876500009','Surat','2025-02-10'),
(10,'Anjali Soni','anjali10@gmail.com','9876500010','Ujjain','2025-02-14'),
(11,'Vikas Rao','vikas11@gmail.com','9876500011','Nagpur','2025-02-18'),
(12,'Simran Kaur','simran12@gmail.com','9876500012','Chandigarh','2025-02-20'),
(13,'Mohit Agarwal','mohit13@gmail.com','9876500013','Lucknow','2025-03-01'),
(14,'Kavita Mishra','kavita14@gmail.com','9876500014','Kanpur','2025-03-05'),
(15,'Deepak Kumar','deepak15@gmail.com','9876500015','Patna','2025-03-09'),
(16,'Riya Shah','riya16@gmail.com','9876500016','Ahmedabad','2025-03-12'),
(17,'Sahil Khan','sahil17@gmail.com','9876500017','Hyderabad','2025-03-16'),
(18,'Meera Nair','meera18@gmail.com','9876500018','Kochi','2025-03-20'),
(19,'Arjun Das','arjun19@gmail.com','9876500019','Kolkata','2025-03-24'),
(20,'Tanya Roy','tanya20@gmail.com','9876500020','Ranchi','2025-04-01'),
(21,'Varun Kapoor','varun21@gmail.com','9876500021','Delhi','2025-04-05'),
(22,'Isha Patel','isha22@gmail.com','9876500022','Vadodara','2025-04-09'),
(23,'Nitin Sahu','nitin23@gmail.com','9876500023','Raipur','2025-04-12'),
(24,'Divya Choudhary','divya24@gmail.com','9876500024','Jodhpur','2025-04-18'),
(25,'Manish Tiwari','manish25@gmail.com','9876500025','Gwalior','2025-04-22');


-- =====================================
-- 2. PRODUCTS: 25 ROWS
-- =====================================

INSERT INTO products
(product_id, product_name, category, price, stock_quantity)
VALUES
(1,'Laptop','Electronics',55000,20),
(2,'Smartphone','Electronics',25000,35),
(3,'Headphones','Electronics',1500,60),
(4,'Wireless Mouse','Electronics',700,80),
(5,'Keyboard','Electronics',1200,45),
(6,'Smart Watch','Electronics',3500,30),
(7,'Bluetooth Speaker','Electronics',2200,25),
(8,'Tablet','Electronics',18000,15),
(9,'USB Drive','Accessories',500,100),
(10,'Power Bank','Accessories',1200,50),
(11,'T-Shirt','Clothing',599,70),
(12,'Jeans','Clothing',1499,40),
(13,'Jacket','Clothing',2499,25),
(14,'Running Shoes','Footwear',2999,30),
(15,'Sandals','Footwear',799,55),
(16,'Backpack','Accessories',1299,40),
(17,'Office Chair','Furniture',6500,12),
(18,'Study Table','Furniture',8500,10),
(19,'Water Bottle','Home',399,90),
(20,'Coffee Maker','Home',3200,18),
(21,'Mixer Grinder','Appliances',2800,22),
(22,'Electric Kettle','Appliances',1500,28),
(23,'Bedsheet','Home',999,35),
(24,'Wall Clock','Home',650,45),
(25,'Sunglasses','Fashion',1100,32);


-- =====================================
-- 3. ORDERS: 25 ROWS
-- =====================================

INSERT INTO orders
(order_id, customer_id, order_date, total_amount, order_status)
VALUES
(1,1,'2025-05-01',55000,'Delivered'),
(2,2,'2025-05-02',25000,'Delivered'),
(3,3,'2025-05-03',1500,'Shipped'),
(4,4,'2025-05-04',700,'Pending'),
(5,5,'2025-05-05',1200,'Delivered'),
(6,6,'2025-05-06',3500,'Delivered'),
(7,7,'2025-05-07',2200,'Shipped'),
(8,8,'2025-05-08',18000,'Delivered'),
(9,9,'2025-05-09',500,'Cancelled'),
(10,10,'2025-05-10',1200,'Delivered'),
(11,11,'2025-05-11',599,'Pending'),
(12,12,'2025-05-12',1499,'Delivered'),
(13,13,'2025-05-13',2499,'Shipped'),
(14,14,'2025-05-14',2999,'Delivered'),
(15,15,'2025-05-15',799,'Delivered'),
(16,16,'2025-05-16',1299,'Pending'),
(17,17,'2025-05-17',6500,'Delivered'),
(18,18,'2025-05-18',8500,'Shipped'),
(19,19,'2025-05-19',399,'Delivered'),
(20,20,'2025-05-20',3200,'Pending'),
(21,21,'2025-05-21',2800,'Delivered'),
(22,22,'2025-05-22',1500,'Shipped'),
(23,23,'2025-05-23',999,'Delivered'),
(24,24,'2025-05-24',650,'Cancelled'),
(25,25,'2025-05-25',1100,'Delivered');


-- =====================================
-- 4. ORDER_DETAILS: 25 ROWS
-- =====================================

INSERT INTO order_details
(detail_id, order_id, product_id, quantity, unit_price)
VALUES
(1,1,1,1,55000),
(2,2,2,1,25000),
(3,3,3,1,1500),
(4,4,4,1,700),
(5,5,5,1,1200),
(6,6,6,1,3500),
(7,7,7,1,2200),
(8,8,8,1,18000),
(9,9,9,1,500),
(10,10,10,1,1200),
(11,11,11,1,599),
(12,12,12,1,1499),
(13,13,13,1,2499),
(14,14,14,1,2999),
(15,15,15,1,799),
(16,16,16,1,1299),
(17,17,17,1,6500),
(18,18,18,1,8500),
(19,19,19,1,399),
(20,20,20,1,3200),
(21,21,21,1,2800),
(22,22,22,1,1500),
(23,23,23,1,999),
(24,24,24,1,650),
(25,25,25,1,1100);

