SELECT * FROM CONTACT_CUSTOMER;
SELECT * FROM CUSTOMER_INFO;

--INNER JOIN
SELECT customer_info.customer_id, customer_info.name, contact_customer.role
FROM customer_info
INNER JOIN contact_customer
ON customer_info.customer_id = contact_customer.customer_id;

--LEFT JOIN
SELECT customer_info.customer_id, customer_info.name, contact_customer.role
FROM customer_info
LEFT JOIN contact_customer
ON customer_info.customer_id = contact_customer.customer_id;

--RIGHT JOIN
SELECT customer_info.customer_id, customer_info.name, contact_customer.role
FROM customer_info
RIGHT JOIN contact_customer
ON customer_info.customer_id = contact_customer.customer_id;

--FULL OUTER JOIN
SELECT customer_info.customer_id, customer_info.name, contact_customer.role
FROM customer_info
FULL OUTER JOIN contact_customer
ON customer_info.customer_id = contact_customer.customer_id
ORDER BY customer_info.customer_id;
