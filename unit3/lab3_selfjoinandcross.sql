
#lab 3 self join and cross join 

#1- Get all pairs of actors that worked together:

select fa1.actor_id,fa2.actor_id, fa1.film_id
from film_actor fa1 
inner join film_actor fa2 on (fa1.film_id= fa2.film_id) and (fa1.actor_id <>fa2.actor_id);
# how would i replace the actor_id with the first_name ?inner join actor a on (fa1.actor_id=a.actor_id) and (fa2.actor_id = a.actor_id); let's join 2 tables on top. 

select concat(a1.first_name, ' ', a1.last_name) as a1actor,
       concat(a2.first_name, ' ', a2.last_name) as a2actor,
       a1.film_id
from (select a.actor_id,a.first_name,a.last_name, fa.film_id
       from actor as a 
       inner join film_actor fa using (actor_id)) as a1
       inner join (select a.actor_id,a.first_name,a.last_name, fa.film_id
       from actor as a 
       inner join film_actor fa using (actor_id)) as a2 on(a1.film_id = a2.film_id) and (a1.actor_id<>a2.actor_id) 


#2- Get all pairs of customers that have rented the same film more than 3 times:
      
select c1.customer_id,
       c2.customer_id,
       count(*) as timesrentedfilm
from(select c.customer_id, f.film_id
      from customer as c
      inner join rental as r using (customer_id)
      inner join inventory as i using (inventory_id)
      inner join film as f using (film_id)) as c1
  #selfjoin 
      inner join (select c.customer_id, f.film_id
      from customer as c
      inner join rental as r using (customer_id)
      inner join inventory as i using (inventory_id)
      inner join film as f using (film_id)) as c2 on (c1.film_id=c2.film_id) and c1.customer_id != c2.customer_id  
group by c1.customer_id, c2.customer_id
having count(*)>3
order by count(*)desc  


#3 Get all possible pairs of actors and films.
#cross join no need for on...

select first_name, last_name, title 
from actor 
cross join film;
