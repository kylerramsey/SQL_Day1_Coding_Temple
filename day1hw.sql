-- 1:
SELECT last_name
FROM actor
WHERE last_name = 'Wahlberg';

-- 2: 
SELECT COUNT(payment) as Payment
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

-- 3:
SELECT film_id, COUNT(film_id)
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;

-- 4:
SELECT last_name
FROM customer
WHERE last_name = 'William'; -- 0

-- 5:
SELECT staff_id, COUNT(rental)
FROM rental
GROUP BY staff_id; -- Staff ID 1 has more sales

-- 6:
SELECT COUNT(DISTINCT district)
FROM address; -- 378

-- 7:
SELECT film_id, COUNT(actor_id)
FROM film_actor
GROUP BY film_id
ORDER BY count DESC
LIMIT 1;

-- 8: 
SELECT last_name, COUNT(last_name)
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es'
GROUP BY last_name; -- 13

-- 9:
SELECT amount, COUNT(amount)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING count(amount) > 250; -- 3

-- 10:
SELECT DISTINCT rating, COUNT(film)
from film
GROUP BY rating
ORDER BY count DESC; -- 5 Individual Ratings, PG-13 has the most films
