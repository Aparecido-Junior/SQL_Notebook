-- Connect to database
USE maven_advanced_sql;

-- ASSIGNMENT 1: Subqueries in the SELECT clause

-- View the products table
SELECT * FROM products LIMIT 5;

-- View the average unit price
SELECT AVG(unit_price) FROM products;

-- Return the product id, product name, unit price, average unit price,
-- and the difference between each unit price and the average unit price
SELECT		product_id, product_name, unit_price,
			(SELECT AVG(unit_price) FROM products) AS avg_total,
            unit_price - (SELECT AVG(unit_price) FROM products) AS diff_avg_total
FROM		products LIMIT 10; 


-- Order the results from most to least expensive
SELECT		product_id, product_name, unit_price,
			(SELECT AVG(unit_price) FROM products) AS avg_total,
            unit_price - (SELECT AVG(unit_price) FROM products) AS diff_avg_total
FROM		products 
ORDER BY	unit_price DESC
LIMIT 10; 

-- Final table
/*
+---------------+-----------------------------------+------------+-----------+----------------+
| product_id    | product_name                      | unit_price | avg_total | diff_avg_total |
+---------------+-----------------------------------+------------+-----------+----------------+
| OTH-LIC-15000 | Lickable Wallpaper                |      20.00 |  4.172353 |      15.827647 |
| SUG-EVE-47000 | Everlasting Gobstopper            |      10.00 |  4.172353 |       5.827647 |
| SUG-HAI-55000 | Hair Toffee                       |       4.50 |  4.172353 |       0.327647 |
| CHO-TRI-54000 | Wonka Bar - Triple Dazzle Caramel |       3.75 |  4.172353 |      -0.422353 |
| OTH-FIZ-56000 | Fizzy Lifting Drinks              |       3.75 |  4.172353 |      -0.422353 |
| CHO-FUD-51000 | Wonka Bar - Fudge Mallows         |       3.60 |  4.172353 |      -0.572353 |
| CHO-SCR-58000 | Wonka Bar - Scrumdiddlyumptious   |       3.60 |  4.172353 |      -0.572353 |
| CHO-NUT-13000 | Wonka Bar - Nutty Crunch Surprise |       3.49 |  4.172353 |      -0.682353 |
| CHO-MIL-31000 | Wonka Bar - Milk Chocolate        |       3.25 |  4.172353 |      -0.922353 |
| OTH-KAZ-38000 | Kazookles                         |       3.25 |  4.172353 |      -0.922353 |
+---------------+-----------------------------------+------------+-----------+----------------+
*/

-- ASSIGNMENT 2: Subqueries in the FROM clause

-- Return the factories, product names from the factory
-- and number of products produced by each factory


-- All factories and products


-- All factories and their total number of products


-- Final query with subqueries


-- ASSIGNMENT 3: Subqueries in the WHERE clause

-- View all products from Wicked Choccy's


-- Return products where the unit price is less than
-- the unit price of all products from Wicked Choccy's


-- ASSIGNMENT 4: CTEs

-- View the orders and products tables


-- Calculate the amount spent on each product, within each order


-- Return all orders over $200


-- Return the number of orders over $200


-- ASSIGNMENT 5: Multiple CTEs

-- Copy over Assignment 2 (Subqueries in the FROM clause) solution


-- Rewrite the Assignment 2 subquery solution using CTEs instead


