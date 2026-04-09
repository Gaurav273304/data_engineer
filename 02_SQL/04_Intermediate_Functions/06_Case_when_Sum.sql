--Case When + sum

select 
Sum(case
when rating in ('PG','G') Then 1 else 0
End )as rating_cat_with_g_or_pg
from film

select 
rating,
count(*)
from film
Group by rating

select 
sum(case when rating = 'G' then 1 else 0 End) as "G",
sum(case when rating = 'R' then 1 else 0 End) as "R"
from film