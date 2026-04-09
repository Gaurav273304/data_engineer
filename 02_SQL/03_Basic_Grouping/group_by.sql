--Group by 

select * from payment

select
customer_id,
sum(amount),
from payment
group by customer_id
order by sum(amount) asc

select staff_id,
sum(amount),
count(*)
from payment
group by staff_id
order by sum(amount) Desc
limit 2

select Date(payment_date)
from payment

--Multiple columns
select 
staff_id,
customer_id,
sum(amount),
count(*)
from payment
Group by staff_id,customer_id
order by count(*) desc

--Employee had the highest sales amount in a single day
select
staff_id,
sum(amount),
count(*),
date(payment_date)
from payment
group by staff_id,date(payment_date)
order by sum(amount) desc


--which employee had the most sales in a single day (not counting payment with amount 0)

select
staff_id,
sum(amount),
count(*),
date(payment_date)
from payment
where amount != 0
group by staff_id,date(payment_date)
order by count(*) desc
