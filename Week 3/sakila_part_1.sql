USE sakila;
SHOW TABLES ;
#2 Retrieve all the data from the tables actor, film and customer
SELECT *
FROM actor;
SELECT *
FROM film;
SELECT *
FROM customer;
#3 3.1 Titles of all films from the film table
SELECT title
FROM film;
select rating, count(film_id) as films
from film
group by rating;
select rating, count(film_id) as films
from film
group by rating
order by count(film_id) desc;
# Using the film table, determine:
# 2.1 The mean film duration for each rating, and sort the results in descending order of the mean duration.
# Round off the average lengths to two decimal places. This will help identify popular movie lengths for each category.
# 2.2 Identify which ratings have a mean duration of over two hours in order to help select films for customers
# who prefer longer movies.
select rating, round(avg(length), 2)
from film
group by rating
order by avg(length) desc;
select rating, round(avg(length), 2) as avg_length
from film
group by rating
having avg_length > 120;