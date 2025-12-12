-- Retrieve all data from the film table.
SELECT * FROM film;

-- Retrieve the first_name and last_name from the customer table.
SELECT first_name, last_name FROM customer;

-- Retrieve all unique rating values from the film table.
SELECT DISTINCT rating FROM film;

-- Retrieve all films with a rental_rate greater than 4.00.
SELECT * FROM film WHERE rental_rate > 4.00;

-- Retrieve the actors whose first_name is exactly 'PENELOPE'.
SELECT * FROM actor WHERE first_name = 'PENELOPE';

-- Insert a new actor with first_name 'LUCY' and last_name 'VAN PELT'.
INSERT INTO actor (first_name, last_name) VALUES ('LUCY', 'VAN PELT');

-- Retrieve the film with the title exactly 'ACADEMY DINOSAUR'.
SELECT * FROM film WHERE title = 'ACADEMY DINOSAUR';

-- Retrieve all actors whose last_name is 'NOLTE'.
SELECT * FROM actor WHERE last_name = 'NOLTE';

-- Retrieve all films with a replacement_cost less than 10.00.
SELECT * FROM film WHERE replacement_cost < 10.00;

-- Insert a new language named 'FINNISH'.
INSERT INTO language (name) VALUES ('FINNISH');

-- Retrieve the title and release_year of all films.
SELECT title, release_year FROM film;

-- Retrieve all unique language_id values from the film table.
SELECT DISTINCT language_id FROM film;

-- Retrieve customers with customer_id equal to 50.
SELECT * FROM customer WHERE customer_id = 50;

-- Retrieve all films released in the year 2006.
SELECT * FROM film WHERE release_year = 2006;

-- Retrieve all actors whose first_name is exactly 'SANDRA'.
SELECT * FROM actor WHERE first_name = 'SANDRA';

-- Insert a new category with the name 'MYSTERY'.
INSERT INTO category (name) VALUES ('MYSTERY');

-- Retrieve all films with a rental_duration equal to 6.
SELECT * FROM film WHERE rental_duration = 6;

-- Retrieve the customer_id, first_name, and email of all customers.
SELECT customer_id, first_name, email FROM customer;

-- Retrieve all unique combinations of rating and rental_duration from the film table.
SELECT DISTINCT rating, rental_duration FROM film;

-- Retrieve all actors whose first_name is 'WHOOPI'.
SELECT * FROM actor WHERE first_name = 'WHOOPI';

-- Insert a new film with the title 'THE GREAT ESCAPE' and language_id 1.
INSERT INTO film (title, language_id) VALUES ('THE GREAT ESCAPE', 1);

-- Retrieve all films with a rating of 'G', 'PG', or 'PG-13'.
SELECT * FROM film WHERE rating IN ('G','PG','PG-13');

-- Retrieve all customers whose store_id is 1.
SELECT * FROM customer WHERE store_id = 1;

-- Retrieve all actors whose last_name is 'DEGENERES'.
SELECT * FROM actor WHERE last_name = 'DEGENERES';

-- Retrieve all films with a rental_rate between 1.00 and 3.00.
SELECT * FROM film WHERE rental_rate BETWEEN 1.00 AND 3.00;

-- Insert a new actor with first_name 'CHARLIE'.
INSERT INTO actor (first_name) VALUES ('CHARLIE');

-- Retrieve all films with a replacement_cost between 12.00 and 18.00.
SELECT * FROM film WHERE replacement_cost BETWEEN 12.00 AND 18.00;

-- Retrieve all actors ordered by their last_name.
SELECT * FROM actor ORDER BY last_name;

-- Retrieve all films ordered by their title in descending order.
SELECT * FROM film ORDER BY title DESC;

-- Retrieve all customers ordered by their first_name.
SELECT * FROM customer ORDER BY first_name;

-- Insert two new actors: ('BILL', 'MURRAY'), ('SIGOURNEY', 'WEAVER').
INSERT INTO actor (first_name, last_name) VALUES ('BILL','MURRAY'), ('SIGOURNEY','WEAVER');

-- Retrieve all films with a rating of 'R' ordered by title.
SELECT * FROM film WHERE rating = 'R' ORDER BY title;

-- Retrieve actors whose first_name is 'SUSAN' ordered by last_name descending.
SELECT * FROM actor WHERE first_name = 'SUSAN' ORDER BY last_name DESC;

-- Retrieve customers living in district 'Texas'.
SELECT * FROM customer WHERE district = 'Texas';

-- Retrieve films with a rating of 'PG' AND a rental_rate less than 3.50.
SELECT * FROM film WHERE rating = 'PG' AND rental_rate < 3.50;

-- Insert a new language named 'SWEDISH'.
INSERT INTO language (name) VALUES ('SWEDISH');

-- Retrieve actors whose first_name is 'ED' OR last_name is 'GUINESS'.
SELECT * FROM actor WHERE first_name = 'ED' OR last_name = 'GUINESS';

-- Retrieve customers with store_id equal to 2 OR active equal to 0.
SELECT * FROM customer WHERE store_id = 2 OR active = 0;

-- Retrieve films with a rating that is NOT 'NC-17'.
SELECT * FROM film WHERE rating != 'NC-17';

-- Retrieve actors whose first_name is NOT 'FRED'.
SELECT * FROM actor WHERE first_name != 'FRED';

-- Insert a new category named 'THRILLER'.
INSERT INTO category (name) VALUES ('THRILLER');

-- Retrieve customers who are NOT active.
SELECT * FROM customer WHERE active = 0;

-- Retrieve films with a rental_duration greater than 4 AND a replacement_cost less than 20.00.
SELECT * FROM film WHERE rental_duration > 4 AND replacement_cost < 20.00;

-- Retrieve actors whose last_name is 'WAHLBERG' OR first_name is 'JULIA'.
SELECT * FROM actor WHERE last_name = 'WAHLBERG' OR first_name = 'JULIA';

-- Retrieve customers with store_id 1 AND (active is 1 OR first_name is 'JENNIFER').
SELECT * FROM customer WHERE store_id = 1 AND (active = 1 OR first_name = 'JENNIFER');

-- Insert a new film with title 'SPACE ODYSSEY' and language_id 1.
INSERT INTO film (title, language_id) VALUES ('SPACE ODYSSEY', 1);

-- Retrieve films that are NOT rated 'G' AND NOT rated 'PG-13'.
SELECT * FROM film WHERE rating NOT IN ('G','PG-13');

-- Retrieve actors whose first_name is 'JENNIFER' OR (last_name is 'DAVIS' AND first_name is NOT 'WALTER').
SELECT * FROM actor WHERE first_name = 'JENNIFER' OR (last_name = 'DAVIS' AND first_name != 'WALTER');

-- Retrieve films released in 2006 that have a 'PG' rating and a rental_rate less than 3.00.
SELECT * FROM film WHERE release_year = 2006 AND rating = 'PG' AND rental_rate < 3.00;

-- Retrieve actors whose first_name is NOT 'CARY' AND (last_name is 'NOLTE' OR last_name is 'DEGENERES').
SELECT * FROM actor WHERE first_name != 'CARY' AND (last_name = 'NOLTE' OR last_name = 'DEGENERES');

-- Insert two new languages: ('DUTCH'), ('PORTUGUESE').
INSERT INTO language (name) VALUES ('DUTCH'), ('PORTUGUESE');

-- Retrieve the titles of all films that have the special feature exactly 'Trailers'.
SELECT title FROM film WHERE FIND_IN_SET('Trailers', special_features);

-- Retrieve the first and last names of all actors who appeared in films with a rating equal to 'G'.
SELECT DISTINCT a.first_name, a.last_name
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
JOIN film f ON fa.film_id = f.film_id
WHERE f.rating = 'G';

-- Retrieve the emails of all active customers.
SELECT email FROM customer WHERE active = 1;

-- Retrieve the titles of all films that have a rental duration equal to 7.
SELECT title FROM film WHERE rental_duration = 7;

-- Insert three new categories: ('CRIME'), ('FANTASY'), ('MUSICAL').
INSERT INTO category (name) VALUES ('CRIME'), ('FANTASY'), ('MUSICAL');

-- Retrieve the first and last names of all actors whose last name is 'HARRIS'.
SELECT * FROM actor WHERE last_name = 'HARRIS';

-- Retrieve the titles of all films where the description is exactly 'A Epic Drama of a Feminist And a Mad Scientist who must Battle a Woman in A Jet Boat'.
SELECT title FROM film WHERE description = 'A Epic Drama of a Feminist And a Mad Scientist who must Battle a Woman in A Jet Boat';

-- Retrieve the customer IDs of all inactive customers whose email address is '[email address removed]'.
SELECT customer_id FROM customer WHERE active = 0 AND email = '[email address removed]';

-- Retrieve the titles of all films that have the special feature 'Trailers' AND the special feature 'Commentaries'.
SELECT title FROM film WHERE FIND_IN_SET('Trailers', special_features) AND FIND_IN_SET('Commentaries', special_features);

-- Insert a new actor with first_name 'WOODY'.
INSERT INTO actor (first_name) VALUES ('WOODY');

-- Retrieve the first and last names of all actors whose first name is 'JOHNNY' and last name is 'CAGE'.
SELECT * FROM actor WHERE first_name = 'JOHNNY' AND last_name = 'CAGE';

-- Retrieve the titles of all films released in 2006 that have a 'R' rating and a replacement cost greater than 20.00.
SELECT * FROM film WHERE release_year = 2006 AND rating = 'R' AND replacement_cost > 20.00;

-- Retrieve all data from the language table.
SELECT * FROM language;

-- Retrieve the names of all categories.
SELECT name FROM category;

-- Retrieve all film_id and title from the film table where the rental_duration is greater than 5.
SELECT film_id, title FROM film WHERE rental_duration > 5;

-- Insert a new film with title 'THE INVISIBLE MAN', language_id 1, and rental_duration 5.
INSERT INTO film (title, language_id, rental_duration) VALUES ('THE INVISIBLE MAN', 1, 5);

-- Retrieve all actors whose actor_id is less than 10.
SELECT * FROM actor WHERE actor_id < 10;

-- Retrieve all customers whose address_id is greater than 300.
SELECT * FROM customer WHERE address_id > 300;

-- Retrieve all films that have a special feature of 'Behind the Scenes'.
SELECT title FROM film WHERE FIND_IN_SET('Behind the Scenes', special_features);

-- Insert a new actor with first_name 'OLIVIA' and last_name 'NEWTON-JOHN'.
INSERT INTO actor (first_name, last_name) VALUES ('OLIVIA', 'NEWTON-JOHN');

-- Retrieve the title of all films that have a rating of 'PG-13' and a rental_rate less than 3.00.
SELECT title FROM film WHERE rating = 'PG-13' AND rental_rate < 3.00;

-- Retrieve the first_name and last_name of all actors whose last name is 'SWAYZE'.
SELECT * FROM actor WHERE last_name = 'SWAYZE';

-- Retrieve all films where the replacement_cost is greater than twice the rental_rate.
SELECT * FROM film WHERE replacement_cost > 2 * rental_rate;

-- Insert a new language named 'JAPANESE'.
INSERT INTO language (name) VALUES ('JAPANESE');

-- Retrieve all customers whose first_name is 'KEVIN'.
SELECT * FROM customer WHERE first_name = 'KEVIN';

-- Retrieve all films that were released in 2006 and have a rental_duration equal to 7.
SELECT * FROM film WHERE release_year = 2006 AND rental_duration = 7;

-- Retrieve the first_name of all actors whose last_name is 'TEMPLE'.
SELECT first_name FROM actor WHERE last_name = 'TEMPLE';

-- Retrieve all films with a rating of 'G' and a replacement_cost less than 12.00.
SELECT * FROM film WHERE rating = 'G' AND replacement_cost < 12.00;

-- Insert a new category named 'ADVENTURE'.
INSERT INTO category (name) VALUES ('ADVENTURE');

-- Retrieve all customers whose email address is '[email address removed]'.
SELECT * FROM customer WHERE email = '[email address removed]';

-- Retrieve the title and rating of all films ordered by rating in ascending order.
SELECT title, rating FROM film ORDER BY rating ASC;

-- Retrieve the first_name and last_name of all actors ordered by first_name descending.
SELECT first_name, last_name FROM actor ORDER BY first_name DESC;

-- Retrieve all films with a rental_rate greater than (SELECT AVG(rental_rate) FROM film).
SELECT * FROM film WHERE rental_rate > (SELECT AVG(rental_rate) FROM film);

-- Insert a new film with title 'TIME TRAVELERS', language_id 1, and replacement_cost 25.99.
INSERT INTO film (title, language_id, replacement_cost) VALUES ('TIME TRAVELERS', 1, 25.99);

-- Retrieve all actors whose first_name is 'CARY' OR first_name is 'AUDREY'.
SELECT * FROM actor WHERE first_name IN ('CARY','AUDREY');

-- Retrieve all customers who are active AND whose last_name is 'WILLIAMS'.
SELECT * FROM customer WHERE active = 1 AND last_name = 'WILLIAMS';

-- Retrieve all films that have the special feature 'Commentaries' AND a rental_rate less than 3.50.
SELECT * FROM film WHERE FIND_IN_SET('Commentaries', special_features) AND rental_rate < 3.50;

-- Insert a new actor with first_name 'CLINT'.
INSERT INTO actor (first_name) VALUES ('CLINT');

-- Retrieve the title of all films that have a replacement_cost greater than 15.00 AND a rating of 'R'.
SELECT title FROM film WHERE replacement_cost > 15 AND rating = 'R';

-- Retrieve the customer_id and first_name of all customers whose address_id is less than 100.
SELECT customer_id, first_name FROM customer WHERE address_id < 100;

-- Retrieve all films where the special features are NULL.
SELECT * FROM film WHERE special_features IS NULL;

-- Insert a new language named 'KOREAN'.
INSERT INTO language (name) VALUES ('KOREAN');

-- Retrieve all actors whose last_name is 'NOLTE'.
SELECT * FROM actor WHERE last_name = 'NOLTE';

-- Retrieve all films with a rental_duration greater than or equal to 4 AND a rental_duration less than or equal to 6 AND a rating equal to 'PG'.
SELECT * FROM film WHERE rental_duration BETWEEN 4 AND 6 AND rating = 'PG';

-- Insert a new category named 'ANIMATION'.
INSERT INTO category (name) VALUES ('ANIMATION');

-- Retrieve all customers whose email address is '[email address removed]'.
SELECT * FROM customer WHERE email = '[email address removed]';

-- Retrieve the title of all films where the description is exactly 'A Fast-Paced Documentary of a Pastry Chef And a Dentist who must лицевой бой a Dentist in A Jet Boat'.
SELECT title FROM film WHERE description = 'A Fast-Paced Documentary of a Pastry Chef And a Dentist who must лицевой бой a Dentist in A Jet Boat';

-- Insert a new actor with first_name 'GRACE' and last_name 'KELLY'.
INSERT INTO actor (first_name, last_name) VALUES ('GRACE','KELLY');

-- Retrieve all films released in 2006 that have a replacement_cost greater than (SELECT AVG(replacement_cost) FROM film).
SELECT * FROM film WHERE release_year = 2006 AND replacement_cost > (SELECT AVG(replacement_cost) FROM film);
