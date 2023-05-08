Week 5 - Wednesday Questions

1. List all customers who live in Texas (use
JOINs)

SELECT *
FROM customer
RIGHT JOIN address
ON customer.address_id = address.address_id
WHERE district = 'Texas'

2. Get all payments above $6.99 with the Customer's Full
Name

SELECT first_name, last_name
FROM customer
RIGHT JOIN payment
ON payment.customer_id = customer.customer_id
WHERE amount > 6.99


3. Show all customers names who have made payments over $175(use
subqueries)

SELECT first_name, last_name
FROM customer
WHERE customer_id IN 
(SELECT customer_id FROM payment WHERE amount > 175);
-- checking answer
SELECT customer_id, amount FROM payment WHERE amount > 175;
SELECT first_name, last_name FROM customer where customer_id = 1;

4. List all customers that live in Nepal (use the city
table)

SELECT first_name, last_name, city.city
from customer
INNER JOIN address on customer.address_id = address.address_id
INNER JOIN city on address.address_id = city.city_id
where city like 'N%';

5. Which staff member had the most
transactions?

SELECT first_name, last_name, count(staff.staff_id)
FROM staff
INNER JOIN rental
on staff.staff_id = rental.staff_id
GROUP BY staff.staff_id;

6. How many movies of each rating are
there?

SELECT rating,count(rating)
FROM film
GROUP BY rating;
-- To make sure it was correct 
SELECT count(rating)
FROM film
where rating = 'R';

7.Show all customers who have made a single payment
above $6.99 (Use Subqueries)
SELECT first_name, last_name
from customer
where customer_id in 
(SELECT distinct customer_id
FROM payment
where amount > 6.99);

8. How many free rentals did our stores give away?
SELECT count(amount)
FROM payment
where amount < 0;
