SELECT * FROM employees WHERE first_name <> 'Freddy';
-- Get Orders placed this year

SELECT * FROM customers LIMIT 0,100;
SELECT * FROM Customers WHERE birth_date > '1990-01-01';
-- Get Orders placed this year
SELECT * FROM customers LIMIT 4;
SELECT * FROM customers ORDER BY points DESC;
USE sql_hr;
SELECT * FROM employees e 
JOIN employees m ON e.reports_to = m.employee_id;
SELECT * FROM sql_store.orders;
SELECT * FROM Customers WHERE birth_date > '1990-01-01';

-- Get Orders placed this year

SELECT *
FROM orders
WHERE
    order_date >= '2019-01-01'
    AND points > 1000;

SELECT *
FROM orders
WHERE
    order_date >= '2019-01-01'
    OR points > 1000;

SELECT *
FROM orders
WHERE
    NOT (
        order_date >= '2019-01-01'
        AND points > 1000
        AND state = 'TX'
    );
    SELECT * FROM customers ORDER BY first_name;
SELECT * FROM orders o, customers c 
WHERE o.customer_id = c.customer_id;
--OUTER JOIN
SELECT c.customer_id, c.first_name, o.order_id
FROM customers c           
LEFT JOIN orders o               
    ON c.customer_id = o.customer_id
    ORDER BY c.customer_id;
USE sql_hr;
SELECT 
    e.employee_id,e.first_name,
    m.first_name AS manager 
 FROM employees e LEFT JOIN employees m 
    ON e.reports_to = m.employee_id;
SELECT first_name, last_name FROM customers UNION SELECT first_name FROM customers;
SELECT customer_id, first_name, points,
 'Bronze' AS TYPE
 FROM customers WHERE points BETWEEN 2000 AND 3000
 UNION
 ORDER BY first_name;
INSERT INTO shippers(name)
VALUES ('SHIPPER 5'),('SHIPPER 6'), ('SHIPPER 7');
CREATE TABLE products_archive AS SELECT * FROM products;
USE sql_invoicing;
CREATE TABLE invoices_archivd AS 
SELECT
    i.invoice_id,
    i.number,
    c.name AS client,
    i.invoice_total,
    i.payment_total,
    i.invoice_date,
    i.payment_date,
    i.due_date
FROM invoices i
JOIN clients c
    USING (client_id)
WHERE payment_date IS NOT NULL;
UPDATE payment_methods
SET name = 'Check'
WHERE payment_method_id = 6;
UPDATE invoices
SET
    payment_total = invoice_total * 0.5
    payment_date = due_date
WHERE client_id = 3;
USE sql_store;
UPDATE customers 
SET points = points + 60
WHERE birth_date < '1990-06-05';
DELETE FROM invoices
    WHERE client_id = ( 
SELECT * FROM clients WHERE name = 'Myworks');

