#coding along with Andres 

select f.film_id, 
		f.title, 
        f.description,
        fc.category_id,
        f.language_id,
        f.length/60 as hours_length,
        f.rental_duration,
        f.release_year, 
		f.rating, 
        f.special_features,
        avg(f.rental_duration) * 24  as avg_hours_rental_allowed,
		avg(f.replacement_cost) as avg_replacement_cost,
        count(fa.actor_id) as actors_in_film
from film f
join film_category fc on f.film_id=fc.film_id
join film_actor fa on fa.film_id=f.film_id
group by 1,	2,3,4,5,6,7,8,9,10; 

select i.film_id,
       count(r.rental_id) as num_rent_times,
       p.amount as rental_cost, 
       TIMESTAMPDIFF (hour, r.rental_date, r.return_date) as avg_hours_rented from rental r
join payment p on p.rental_id=r.rental_id
join inventory i on i.inventory_id=r.inventory_id
group by 1;


SELECT  i.film_id, COUNT(r.rental_id) AS num_rented_times, p.amount AS rental_cost, AVG(TIMESTAMPDIFF(hour, r.rental_date, r.return_date)) AS avg_hours_rented FROM rental r JOIN inventory i USING(inventory_id) JOIN payment p USING(rental_id) GROUP BY i.film_id, p.amount;