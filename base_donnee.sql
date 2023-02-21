
CREATE TABLE items (
  item_id SERIAL PRIMARY KEY,
  item_name VARCHAR(50) NOT NULL,
  price INTEGER NOT NULL
);

INSERT INTO items (item_name, price)VALUES 
('Small Desk', 100),
('Large Desk', 300),
('Fan', 80);

CREATE TABLE customers (
  customer_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL
);

INSERT INTO customers (first_name, last_name)
VALUES 
('Greg', 'Jones'),
('Sandra', 'Jones'),
('Scott', 'Scott'),
('Trevor', 'Green'),
('Melanie', 'Johnson');

SELECT * FROM items;

SELECT * FROM items WHERE price > 80;

SELECT * FROM items WHERE price <= 300;

SELECT * FROM customers WHERE last_name = 'Smith';

SELECT * FROM customers WHERE last_name = 'Jones';

SELECT * FROM customers WHERE first_name != 'Scott';

SELECT first_name, last_name FROM customers ORDER BY last_name LIMIT 4;

SELECT first_name, last_name, birth_date FROM customers ORDER BY birth_date LIMIT 1;

SELECT first_name, last_name FROM customers ORDER BY last_name OFFSET 2 LIMIT 3;