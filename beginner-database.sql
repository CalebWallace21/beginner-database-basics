-- SECTION 1
CREATE TABLE person (
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(250),
	last_name  VARCHAR(250),
	age INT,
	height INT,
	city VARCHAR(250), 
	favorite_color VARCHAR(250)
);

INSERT INTO person (first_name, last_name, age, height, city, favorite_color)
VALUES ('Joey', 'lastname', 30, 180, 'layton', 'blue'), ('Steve', 'Long', 23, 200, 'syracuse', 'red'),
('Bob', 'Smalls', 21, 170, 'Ogden', 'cyan'), ('Sara', 'Smalls', 22, 150, 'Ogden', 'red'), 
('Sheila', 'Bean', 27, 170, 'Provo', 'black')

SELECT * FROM person ORDER BY height DESC
SELECT * FROM person ORDER BY height ASC

SELECT * FROM person WHERE age > 20
SELECT * FROM person WHERE age = 18
SELECT * FROM person WHERE age < 20 AND age > 30
SELECT * FROM person WHERE age != 27
SELECT * FROM person WHERE favorite_color != 'red'
SELECT * FROM person WHERE favorite_color != 'red' AND favorite_color != 'blue'
SELECT * FROM person WHERE favorite_color = 'orange' OR favorite_color = 'green'
SELECT * FROM person WHERE favorite_color IN ('orange', 'green', 'blue');
SELECT * FROM person WHERE favorite_color IN ('purple', 'yellow');

-- Section 2
CREATE TABLE orderss (
order_id SERIAL PRIMARY KEY,
person_id INT,
product_name VARCHAR(200),
product_price decimal,
quantity INT
);

INSERT INTO orderss (person_id, product_name, product_price, quantity) 
VALUES (1, 'crayons', 2.99, 1), (3, 'crayons', 2.99, 3), (1, 'pencils', .99, 2), (2, 'pen', 1.99, 1),
(5, 'quill', 12.99, 1)

SELECT * FROM orderss
SELECT sum(quantity) FROM orderss
SELECT sum(product_price * quantity) FROM orderss
SELECT sum(product_price * quantity) FROM orderss WHERE person_id = 1

-- SECTION 3
INSERT INTO artist (name) VALUES ('Big C')
SELECT * FROM artist ORDER BY name desc LIMIT 10
SELECT * FROM artist ORDER BY name ASC LIMIT 5
SELECT * FROM artist WHERE name LIKE 'Black%'
SELECT * FROM artist WHERE name LIKE '%Black%'

-- SECTION 4
SELECT first_name, last_name FROM employee WHERE city = 'Calgary'
SELECT MAX(birth_date) FROM employee 
SELECT MIN(birth_date) FROM employee 
 SELECT * from employee WHERE first_name = 'Nancy' AND last_name = 'Edwards'
SELECT * FROM employee WHERE reports_to = 2
SELECT COUNT(city) FROM employee WHERE city ='Lethbridge'

-- SECTION 5
SELECT COUNT(billing_country) FROM invoice WHERE billing_country = 'USA'
SELECT MAX(total) FROM invoice
SELECT MIN(total) FROM invoice
SELECT * FROM invoice WHERE total > 5
SELECT COUNT(total) FROM invoice WHERE total < 5
SELECT COUNT(billing_state) FROM invoice WHERE billing_state IN ('CA', 'TX', 'AZ');
SELECT avg(total) FROM invoice
SELECT sum(total) FROM invoice