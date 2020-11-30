#lab1 + Lab2 
select * from film;
select * from customer;
select * from actor;
select title from film;
select name as language from language;
select distinct name as language
from language;
select count(staff_id) from staff;
select count(store_id) from store;
select first_name from staff;
select distinct left (rental_date,10) from rental;


#Lab2
select first_name AS ACTOR from actor where first_name = 'Scarlett';
select last_name AS ACTOR from actor where last_name = 'Johansson';
select distinct(count(inventory_id)) AS films_to_rent from inventory;
select count(rental_date) from rental;
select count(inventory_id) from rental;
select round(avg(length)/60,2) from film;
select min(rental_duration) as minimum_rental_duration,max(rental_duration) from film;
select min(length) as min_duration, max(length) as max_duration from film;
select ROUND(AVG(length),0) as avg_duration from film;
SELECT SEC_TO_TIME (ROUND(AVG(length *60),0)) FROM film;
SELECT MIN(length)FROM film;
SELECT SEC_TO_TIME(120 *60);
select count(film_id)from film where length > 3*60;
select concat (first_name, ' ', last_name) AS customer_info, email from customer; 
select MAX(length(title)) as longest film from film;

