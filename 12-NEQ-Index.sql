USE sakila;

SELECT *
FROM customer
WHERE store_id <> 2;

EXPLAIN SELECT *
FROM customer
WHERE store_id <> 2;

SELECT DISTINCT store_id 
FROM customer;

SELECT *
FROM customer
WHERE store_id = 1;

EXPLAIN SELECT *
FROM customer
WHERE store_id = 1;

-- use explain to check the execution plan
-- avoid using <> operator as it igonores the index
-- use union all if you don't care about duplicate data
-- always test the QUERY on your development server with test data before promoting to production











