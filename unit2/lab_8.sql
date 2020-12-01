# lab 8 Ranking + join

#1. Rank films by length (filter out the rows that have nulls or 0s in length column).
select title, length, rank() over (order by length desc) as ranking
from film
where length >0
limit 20;

#2. Rank films by length within the rating category (filter out the rows that have nulls or 0s in length column).

select title, length, rating, rank() over(partition by rating order by length desc) as ranking
from film;

#3.How many films are there for each of the categories in the category table. Use appropriate join to write this query
select category.name, count(film_id) as 'no_of_films'
from category join film_category using (category_id)
group by category.name
order by no_of_films desc

#4. Which actor has appeared in the most films?
select first_name, last_name, actor_id, count(actor_id) as 'actor_appeared_most'
from actor join film_actor using (`actor_id`)
group by actor_id
order by actor_appeared_most desc;

#5 Most active customer (the customer that has rented the most number of films)
select first_name, last_name, customer_id, count(rental_id) as 'no_of_rental'
from customer join rental using (customer_id)
group by customer_id
order by no_of_rental desc