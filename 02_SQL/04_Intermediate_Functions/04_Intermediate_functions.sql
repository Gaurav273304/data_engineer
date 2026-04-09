select 
film_id,
rental_rate as old_rental_rate,
Round(rental_rate * 1.4,2) as new_rental_rate
from film

select * from film

select 
film_id,
Round(rental_rate / replacement_cost * 100,2) as percentage
from film
where Round(rental_rate / replacement_cost * 100,2) < 4
order by 2 Asc


---CASE WHEN
--SYNTAX
-- CASE
--     WHEN condition1 THEN result1
--     WHEN condition2 THEN result2
--     ELSE default_result
-- END


select
amount,
case
when amount < 2 Then 'low amount'
when amount < 5 Then 'medium amount'
else 'high amount'
End
from payment





