# lab 5 & 6 

#to delete the column 

ALTER TABLE staff
DROP COLUMN picture;
  
select* from customer 
where first_name = 'Charlotte';

insert into rental (rental_date, inventory_id, customer_id, staff_id)
values (NOW(), 1, 130, 1);

update film set rental_duration = 3, rental_rate = 2.99, replacement_cost = 8.99;

update inventory set store_id = 1;

#extra
select * from category f
join film_category l on f.category_id = l.category_id
where f.category_id=3;

select * from actor a
join film_actor f
on a.actor_id=f.actor_id;

select count(distinct(actor_id)) from actor;
select count(distinct(actor_id)) from film_actor;

#Lab6
#Importing file:
show variables like 'local_infile';
set global local_infile = 1;
# i used the wizard however, please make sure to delete the empty columns otherwise we’re getting errors. 

#load data local infile './films_2020.csv' -- provide the complete path of the file
#into table film


