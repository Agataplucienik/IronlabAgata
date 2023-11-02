use sakila;
CREATE VIEW customer_rental_summary AS
SELECT
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    c.email,
    COUNT(r.rental_id) AS rental_count
FROM
    customer c
LEFT JOIN
    rental r ON c.customer_id = r.customer_id
GROUP BY
    c.customer_id, customer_name, c.email;
    
    SELECT * FROM customer_rental_summary;
    
    CREATE TEMPORARY TABLE customer_payment_summary AS
SELECT
    crs.customer_id,
    crs.customer_name,
    SUM(p.amount) AS total_paid
FROM
    customer_rental_summary crs
JOIN
    payment p ON crs.customer_id = p.customer_id
GROUP BY
    crs.customer_id, crs.customer_name;
    
    SELECT * FROM customer_payment_summary;
    
    
    WITH customer_summary AS (
    SELECT
        crs.customer_name,
        crs.email,
        crs.rental_count,
        cps.total_paid
    FROM
        customer_rental_summary crs
    JOIN
        customer_payment_summary cps ON crs.customer_id = cps.customer_id
)

-- Query the CTE
SELECT * FROM customer_summary;