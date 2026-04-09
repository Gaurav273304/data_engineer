-- where 
select 
* 
from payment
where amount = 10.99

select
first_name,
last_name
from customer
where first_name = 'ADAM'

select
last_name
from customer
where first_name = 'ERICA'


select * from customer


select
count(customer_id)
from payment
where customer_id = 100

--where operators(filtering)

select 
* 
from payment
where amount = 10.99

select 
* 
from payment
where amount > 10.99
order by amount 

select 
count(*)
from rental
where return_date is Null

select 
payment_id,
amount
from payment
where amount <= 2


---Where with And OR(used to connect two conditions)
--for And all condtions must be true
--for Or either one condition must be true

select
* 
from payment
where amount = 10.99
or amount = 9.99

select 
* 
from payment
where (customer_id = 30
OR customer_id = 31)
And amount = 2.99


--where + between
-- In between the last value is not included
select * from rental 
where rental_date Between '2005-05-24' And '2005-05-26'
order by rental_date DESC

select count(*) from payment
where payment_date Between '2020-01-26' And '2020-01-27'
and amount Between 1.99 and 3.99


--In
select * from customer
where first_name In ('LYDIA','MATTHEW')

select * from payment
where customer_id In (12,25,67,93,124,134)
and amount In (4.99,7.99,9.99)
and payment_date Between '2020-01-01' and '2020-02-01'

--Like
select * from film
where description Like '%Drama%'
and title like 'T%'
