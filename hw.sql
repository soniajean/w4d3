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

4. List all customers that live in Nepal (use the city
table)

5. Which staff member had the most
transactions?

6. How many movies of each rating are
there?

7.Show all customers who have made a single payment
above $6.99 (Use Subqueries)

8. How many free rentals did our stores give away?