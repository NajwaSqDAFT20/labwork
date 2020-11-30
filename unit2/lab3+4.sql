#lab 3 and 4

select count(distinct (last_name)) from actor; 
Select Count(distinct(Language_id)) from film;

select count(*) from film
where rating = "PG-13";

select title, length from film
where release_year = 2006
order by length desc
limit 10;

select DATEDIFF( max(rental_date), min(rental_date))
from rental;

select max(date_format(convert(rental_date,date),'%Y-%M-%D')) from rental 
limit 10;

select min(rental_date) from rental 

select date_format(convert(rental_date,date), '%Y-%M-%W') from rental;

Select rental_date as DateTime from rental 
       Datename(day,rental_date) as Date,
       month(rental_date) as Month,
       datename(year,rental_date) as Year,
       Datename(weekday,rental_date) as DayName,
       
 SELECT date_format(convert(rental_date,date),'%Y-%M-%W') AS date, DAYOFWEEK (rental_date) AS weekday, Month (rental_date) AS month, 
 case 
     when DAYOFWEEK(rental_date) between 2 and 6 then'workday'
     ELSE 'WEEKEND'
 END
 AS day_type
 from rental
 #1=Sunday, 2=Monday, 3=Tuesday, 4=Wednesday, 5=Thursday, 6=Friday, 7=Saturday.
 #The MONTH() function returns the month part for a given date (a number from 1 to 12).

SELECT date_format(convert(rental_date,date),'%Y-%M-%W') AS date, DAYOFWEEK (rental_date) AS weekday, Month (rental_date) AS month from rental 
order by month(rental_date) desc;

Select date_format(convert(rental_date,date), '%y-%m-%d') from rental
order by YEAR(rental_date) desc, Month(rental_date) 

SELECT Month(rental_date) from rental 
where Month (rental_date) = 2

SELECT COUNT(Month(rental_date)) from rental 
where Month(rental_date) = 2

#Lab4 

select distinct rating as rating from film

select distinct release_year from film 
limit 20


select * from film
where title regexp 'ARMAGEDDON';

select * from film
where title regexp 'APOLLO';

select * from film
where title regexp 'APOLLO$';

select * from film
where title regexp 'ARMAGEDDON';

select DATEDIFF( max(rental_date), min(rental_date))
from rental

select title from sakila.film
where title like '%DATE%'
       
 SELECT date_format(convert(rental_date,date),'%Y-%M-%W') AS date, DAYOFWEEK (rental_date) AS weekday, Month (rental_date) AS month, 
 case 
     when DAYOFWEEK(rental_date) between 2 and 6 then'workday'
     ELSE 'WEEKEND'
 END
 AS day_type
 from rental
 #1=Sunday, 2=Monday, 3=Tuesday, 4=Wednesday, 5=Thursday, 6=Friday, 7=Saturday.
 #The MONTH() function returns the month part for a given (a number from 1 to 12).

SELECT date_format(convert(rental_date,date),'%Y-%M-%W') AS date, DAYOFWEEK (rental_date) AS weekday, Month (rental_date) AS month from rental 
order by month(rental_date) desc;

SELECT COUNT(Month(rental_date)) from rental 
wherte Month(rental_date) = 8


SELECT Month(rental_date)) from rental 
where Month (rental_date) = 8

select rating as rating from film

select release_year from film 
limit 20


select * from film
where title regexp 'ARMAGEDDON';

select * from film
where title regexp 'APOLLO';

select * from film
where title regexp 'APOLLO$';

select * from film
where title regexp 'DATE';

select DATEDIFF( max(rental_date), min(rental_date))
from rental

select count(film_id) from film
where special_features regexp 'Behind the Scenes'
	#List films ordered by release year and title in alphabetical order.
	
select * from film
order by release_year, title desc

SELECT date_format(convert(rental_date,date),'%Y-%M-%W') AS date, DAYOFWEEK (rental_date) AS weekday, Month (rental_date) AS month from rental
 limit 20

select title, length from film
order by length desc 
limit 10

select max(length(title)) from film

select title, length(title) as length from film
order by length(title) desc
limit 10

select * from film
order by release_year, title asc

select date_format(convert(rental_date,date), '%Y-%M-%W') from rental;

SELECT *, date_format(convert(rental_date,date),'%Y-%M-%W') AS date, DAYOFWEEK (rental_date) AS weekday, Month (rental_date) AS month from rental
 limit 20

