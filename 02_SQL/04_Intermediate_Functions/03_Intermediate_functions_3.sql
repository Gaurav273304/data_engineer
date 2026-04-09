--Extract
select 
extract(day from rental_date),
count(*)
from rental
group by extract(day from rental_date)

select * from payment

--highest total payment amount
select
extract(month from payment_date),
sum(amount)
from payment
group by extract(month from payment_date)
order by sum(amount) DESC

--highest amount has spend in a week
select
customer_id,
extract(week from payment_date) as week_of_year,
sum(amount)
from payment
group by week_of_year,customer_id
order by sum(amount) desc


--
select
extract(DOW from payment_date) as day_of_week,
sum(amount)
from payment
group by day_of_week
order by sum(amount) DESC



--To char
--syntax -> to_char(source_value, 'format_mask')

select
sum(amount),
To_char(payment_date,'DD-Month-YYYY')
from payment
group by To_char(payment_date,'DD-Month-YYYY')

select
sum(amount),
To_char(payment_date,'Dy,DD/MM/YYYY') as day
from payment
group by day

select
sum(amount),
To_char(payment_date,'Mon, YYYY') as mon_year
from payment
group by mon_year
order by sum(amount) ASC


select TIMEOFDAY()