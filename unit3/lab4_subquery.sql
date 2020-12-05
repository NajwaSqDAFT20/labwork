#lab 4 subquery

#1- How many copies of the film Hunchback Impossible exist in the inventory system?

Select film_id
from film 
where title ='Hunchback Impossible'

select count(film_id)
from inventory
where film_id in (select film_id from film where title= 'Hunchback Impossible');

# 2- List all films whose length is longer than the average of all the films.
select title, length 
from film 
where length > (select avg(length) 
                from film)
limit 10

# 3- Use subqueries to display all actors who appear in the film Alone Trip.
Select film_id
from film 
where title ='Alone Trip'

select first_name, last_name
from actor 
where actor_id in (select actor_id from film_actor where film_id = (select film_id from film
					where title = 'Alone Trip'));
 
# 4- Sales have been lagging among young families, and you wish to target all family movies for a promotion. Identify all movies categorized as family films.

select title from film where film_id in (select film_id from film_category where category_id
											in (select category_id from category where name = 'family'));

#5- Get name and email from customers from Canada using subqueries. 

select first_name, last_name from customer 
		where address_id in (select address_id from address
							where city_id in (select city_id from city 
							where country_id in (select country_id from country where country = 'Canada')));
							
#8- Customers who spent more than the average payments

select customer_id, first_name, last_name from customer 
	where customer_id in (select customer_id from payment where sum(amount) > (select avg    		(total_payment) from payment group by customer_id))



