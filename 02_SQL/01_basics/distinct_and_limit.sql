--Distinct and Limit

select distinct
first_name,last_name
from actor
order by first_name

select distinct rating,
rental_duration
from film

select distinct amount
from payment
order by amount desc
limit 5