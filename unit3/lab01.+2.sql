#day 1 third week lab 1 joins and 2 multiple joins

-- 1. number of films per category
select c.name as category_name, count(film_id) as num_films
from category as c 
inner join film_category as fc on c.category_id=fc.category_id
group by name
order by num_films desc;

#--2. Display the first and last names, as well as the address, of each staff member
select s.first_name, s.last_name, a.address
from staff as s
inner join address as a
using (address_id)
order by first_name;

#--3 Display the total amount rung up by each staff member in August of 2005.
#display the total amount
select p.staff_id, p.payment_date, s.first_name, s.last_name, sum(p.amount)
from payment as p
inner join staff as s 
using (staff_id)
where month(p.payment_date) = 08
group by staff_id

select p.staff_id, p.payment_date, p.amount, s.first_name, s.last_name, sum(p.amount) 
from payment p
inner join staff s
on p.staff_id = s.staff_id
where month (p.payment_date)= 08; # where p.payment_date like '2005-08%';

#-- 4 List each film and the number of actors who are listed for that film #
select f.title, count(fa.actor_id)
from film as f
inner join film_actor as fa using (film_id)
group by f.title limit 10;

#--5 list the total paid by each customer
select c.customer_id, c.first_name, c.lat_name, sum(p.amount) as 'total amount paid'
from customer as c
inner join payment as p using (customer_id)
group by customer_id
order by last_name ;

# lab 2 on multiple tables joins
#--1Write a query to display for each store its store ID, city, and country

select s.store_id, c.city, co.country 
from store s
join address as a on s.address_id = a.address_id
join city as c on a.city_id= c.city_id
join country as co on c.country_id= co.country_id;

#--2 Write a query to display how much business, in dollars, each store brought in.

select st.store_id, round(sum(p.amount),2) as 'total sum'
from store as st
join customer as c on st.store_id= c.store_id
join payment as p on c.customer_id=p.customer_id
join rental as r on p.rental_id=r.rental_id
group by store_id; 

#--3What is the average running time of films by category?
select c.name, avg(f.length) as 'avg length'
from category as c 
join film_category as fc on c.category_id= fc.category_id
join film as f on fc.film_id=f.film_id
group by c.name
order by avg(f.length) desc;

#--4Which film categories are longest?
#see above


#--5Display the most frequently rented movies in descending order.

#--6List the top five genres in gross revenue in descending order.


#--7Is "Academy Dinosaur" available for rent from Store 1?

