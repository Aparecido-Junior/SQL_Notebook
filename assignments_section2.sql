-- Connect to database
USE maven_advanced_sql;

-- ASSIGNMENT 1: Basic Joins
-- Looking at the orders and products tables, which products exist in one table, but not the other?

-- View the orders and products tables


-- Join the tables using various join types & note the number of rows in the output

        
-- View the products that exist in one table, but not the other


-- Pick a final JOIN type to join products and orders


-- ASSIGNMENT 2: Self Joins
-- Which products are within 25 cents of each other in terms of unit price?

-- View the products table
SELECT * FROM products;

-- Join the products table with itself so each candy is paired with a different candy
SELECT		p1.product_name, p1.unit_price, 
			p2.product_name, p2.unit_price,
            p1.unit_price - p2.unit_price AS price_diff
FROM products p1
INNER JOIN products p2 ON p1.product_id < p2.product_id;
        
-- Calculate the price difference, do a self join, and then return only price differences under 25 cents
SELECT		p1.product_name, p1.unit_price, 
			p2.product_name, p2.unit_price,
            p1.unit_price - p2.unit_price AS price_diff
FROM products p1
INNER JOIN products p2 ON p1.product_id < p2.product_id
WHERE		p1.unit_price <> p2.unit_price AND
			p1.unit_price - p2.unit_price BETWEEN -0.25 AND  0.25
ORDER BY p1.unit_price DESC;
/*
+-----------------------------------+------------+-----------------------------------+------------+------------+
| product_name                      | unit_price | product_name                      | unit_price | price_diff |
+-----------------------------------+------------+-----------------------------------+------------+------------+
| Wonka Bar - Fudge Mallows         |       3.60 | Wonka Bar - Nutty Crunch Surprise |       3.49 |       0.11 |
| Wonka Bar - Fudge Mallows         |       3.60 | Wonka Bar - Triple Dazzle Caramel |       3.75 |      -0.15 |
| Wonka Bar - Fudge Mallows         |       3.60 | Fizzy Lifting Drinks              |       3.75 |      -0.15 |
| Wonka Bar - Scrumdiddlyumptious   |       3.60 | Wonka Bar - Triple Dazzle Caramel |       3.75 |      -0.15 |
| Wonka Bar - Scrumdiddlyumptious   |       3.60 | Fizzy Lifting Drinks              |       3.75 |      -0.15 |
| Wonka Bar - Nutty Crunch Surprise |       3.49 | Wonka Bar - Scrumdiddlyumptious   |       3.60 |      -0.11 |
| Wonka Bar - Nutty Crunch Surprise |       3.49 | Kazookles                         |       3.25 |       0.24 |
| Wonka Bar - Milk Chocolate        |       3.25 | Wonka Bar - Nutty Crunch Surprise |       3.49 |      -0.24 |
| Fun Dip                           |       1.50 | Pixy Stix                         |       1.25 |       0.25 |
| Nerds                             |       1.50 | Pixy Stix                         |       1.25 |       0.25 |
| Wonka Gum                         |       1.25 | Fun Dip                           |       1.50 |      -0.25 |
| Wonka Gum                         |       1.25 | Nerds                             |       1.50 |      -0.25 |
| Wonka Gum                         |       1.25 | SweeTARTS                         |       1.50 |      -0.25 |
| Pixy Stix                         |       1.25 | SweeTARTS                         |       1.50 |      -0.25 |
+-----------------------------------+------------+-----------------------------------+------------+------------+
*/