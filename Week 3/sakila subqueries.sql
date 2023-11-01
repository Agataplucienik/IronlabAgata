use sakila;

#Determine the number of copies of the film "Hunchback Impossible" that exist in the inventory system.
select COUNT(film_id)
from inventory
where inventory_id IN (SELECT inventory_id
from inventory
WHERE film_id=(
SELECT film_id
from film
WHERE title="Hunchback Impossible"));

#List all films whose length is longer than the average length of all the films in the Sakila database.

select title
from film
WHERE length> (SELECT AVG(length)
from film);

#Use a subquery to display all actors who appear in the film "Alone Trip"
select first_name, last_name
from actor
WHERE actor_id IN (SELECT actor_id
				from film_actor
                WHERE film_id=(
SELECT film_id
from film
WHERE title="Alone Trip" ));

#Sales have been lagging among young families, 
#and you want to target family movies for a promotion. Identify all movies categorized as family films.

SELECT title
from film
WHERE film_id IN (SELECT film_id
from film_category
where category_id=(SELECT category_id
from category
WHERE name="Family"));





SELECT *
FROM category;

