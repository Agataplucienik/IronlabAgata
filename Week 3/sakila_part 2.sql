use sakila;
SELECT COUNT(rental_id) as number_of_rentals
from rental;

SELECT count(DISTINCT last_name) AS count_last_names
from actor;
#6
SELECT title, length
from film
ORDER BY length DESC
LIMIT 10;
#7 
SELECT first_names, last_name
FROM actor
WHERE first_name="SCARLLET";

SELECT title
FROM film
WHERE title LIKE "%ARMAGEDON%" AND length > 100;

SELECT COUNT(film_id) AS count_films
FROM film;

SELECT MIN(length) as min_duration, MAX(length) as max_duration
FROM film;

SELECT FLOOR(AVG(length)/60), "hours", ROUND(AVG(length)%60), "minutes" as avarage_duration
FROM film;

SELECT DATEDIFF(MAX(rental_date), MIN(rental_date)) as days
FROM rentals;

SELECT rental_date, DATE_FORMAT(rental_date, "M" AS rental_month)
FROM rental
LIMIT 20;

SELECT rental_date,
CASE
	WHEN DATE_FORMAT( rental_date, "%M")= "Sunday" or "Saturday" THEN "Weekend"
    ELSE "Workday"
END as DAY_type
FROM rental;

SELECT title, IFNULL(rental_duration, "Not Available") as rental_duration
FROM film
ORDER BY title ASC;

SELECT COUNT(film_id)
FROM film;

SELECT COUNT(film_id) AS film_per_category
FROM film
GROUP BY rating;

SELECT COUNT(film_id) as total_rented
FROM film
GROUP BY rating
ORDER BY total_rented DESC;

SELECT rating, ROUND(AVG(length), 2) as mean_duration
FROM film
GROUP BY rating
ORDER BY mean_duration DESC;

SELECT rating ROUND(AVG(length), 2) as mean_duartion
FROM film;
