#lab 7
#1. In the table actor, which are the actors whose last names are not repeated?
select last_name as 'last name' from actor
group by last_name
having count(last_name)=1

#2. Which last names appear more than once? 
select last_name as 'last name' from actor
group by last_name
having count(last_name)>1
order by last_name;

#3. Using the rental table, find out how many rentals were processed by each employee
select staff_id, count(rental_id) as 'no of rentals' from rental 
group by staff_id;

#4. Using the film table, find out how many films were released each year.
select release_year, count(film_id) as 'no of films' from film
group by release_year;

#5. Using the film table, find out for each rating how many films were there.
select rating, count(film_id) as 'no of films' from film
group by rating
order by count(film_id) desc;

#6. What is the mean length of the film for each rating type. Round off the average lengths to two decimal places
select rating, round(avg(length),2) as 'avg_length' from film
group by rating 
order by avg_length desc;

#7 Which kind of movies (rating) have a mean duration of more than two hours?
select rating, round(avg(length),2) as 'avg_length' from film
group by rating 
having avg_length > 120


