select * from actor
where first_name='NICK';

show tables;

select * from film
where rental_rate<4.99;

select * from customer
where store_id=1;

select * from film where length<60;

select payment_id, amount from payment
where amount>5;

select * from actor
where last_name='SMITH';

select * from film
where rating = 'PG';

select * from customer
where active=1;

select * from film
where replacement_cost >= 20;

select * from rental
where rental_date<='2005-06-01';

select * from staff
where store_id=2;

select * from film
where rental_duration = 7;

select * from customer
where last_name = 'DAVIS';

select * from customer
where store_id=1 AND active=1;

select * from film
where length>100 and replacement_cost>20; 

select * from payment
where payment_id>5 and staff_id=1;

select title,rating,length from film
where rating= 'PG' and length between 90 and 120
order by length;

select * from customer
where store_id in (1, 2) and last_name LIKE's%'
order by last_name asc;

select title, rental_rate, rating from film
where rating != 'R' and rental_rate>2.99;

select * from rental
where return_date is NULL
order by rental_date desc;

select * from actor
where first_name like 'A%' and last_name like '%N';

select payment_id,amount,staff_id from payment
where payment_id between 2 and 5 and staff_id =1
order by amount desc;

select * from film
where rating = 'PG' or 'G' 
order by title limit 5;

select * from customer
where email like '%gmail.org%' and active=1;

select title,rating, length from film
where rating!='NC-17'
order by length desc
limit 10;

select * from customer
where first_name like"M%" or last_name like "%D"		
order by first_name DESC
limit 10;

-- Day 3 practice start
-- jai shree Ganesha🙏🙏

select * from film;

SELECT rating, COUNT(film_id) AS total_films
FROM film GROUP BY rating;

select * from customer;

select COUNT(customer_id) as Total_customer
FROM customer;

SELECT AVG(rental_date) as Rental_Duration
FROM rental;

SELECT SUM(rental_rate) as Rental_rate
FROM film;
select * FROM film;

SELECT MIN(replacement_cost) AS min_replacement_cost
FROM film;

select rating, count(film_id) as TotalFilms
FROM film
GROUP By rating;

select rating, AVG(rental_rate) as AverageRental
from film
GROUP By rating
order by rating DESC;

select rental_duration, COUNT(rental_duration) as FilmCount
from film
GROUP By rental_duration
order by rental_duration ASC;

SELECT  rental_duration, COUNT(*) AS film_count FROM film
GROUP BY rental_duration
ORDER BY rental_duration ASC;

select store_id, COUNT(*) as c from customer
GROUP By store_id
order by store_id ASC;

select * from payment;

select staff_id, SUM(amount) as AmountCollected from payment
GROUP BY staff_id
order by amount ASC;

select * from film;
select rating, count(*) from film
group by rating having count(*) >50; 

select * from customer;
select * from rental;

select customer_id, count(*) from customer
group by customer_id;

SELECT c.customer_id,c.first_name, c.last_name, COUNT(r.rental_id) AS total_rentals
FROM customer c
JOIN rental r ON c.customer_id = r.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING COUNT(r.rental_id) > 30
ORDER BY total_rentals DESC;

select c.customer_id,c.first_name, COUNT(r.rental_id) as total_rentals
from customer c
JOIN rental r on c.customer_id = r.customer_id
group by c.customer_id, c.first_name
order by total_rentals Desc;

select * from category;
select * from film;

SELECT s.first_name,s.last_name,SUM(p.amount) AS total_payments
FROM staff s JOIN payment p ON s.staff_id = p.staff_id
GROUP BY s.staff_id, s.first_name, s.last_name
HAVING SUM(p.amount) > 5000 ORDER BY total_payments DESC;

select f.title, count(f.film_id) as Films from film f
JOIN category c on f.film_id = c.category_id;

SELECT c.name AS category_name, COUNT(fc.film_id) AS total_films FROM category c
JOIN film_category fc ON c.category_id = fc.category_id
GROUP BY c.name
HAVING COUNT(fc.film_id) > 60
ORDER BY total_films DESC;

select c.name as categoryName, count(fc.film_id) as total from category c
join film_category fc ;
select * from customer;
select * from payment;
select c.first_name,sum(p.amount) total from customer c join payment p on c.customer_id=p.customer_id group by c.first_name, p.customer_id having total>100;





