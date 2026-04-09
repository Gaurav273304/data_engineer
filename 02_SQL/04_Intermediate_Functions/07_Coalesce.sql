select * from flights

select 
count(*) as flights,
case
when actual_departure is NuLl then 'No departure'
when actual_departure - scheduled_departure < '00:05' Then 'On time'
when actual_departure - scheduled_departure < '01:00' Then 'A liitle bit late'
else 'very Late'
end as Is_late
from flights
group by Is_late


select 
Coalesce(actual_arrival - scheduled_arrival,'0:0')
from flights

select 
Coalesce(Cast(actual_arrival - scheduled_arrival as Varchar),'not arrived')
from flights

-- only for postgres ->select id, amount_text::integer from orders;
select 
Coalesce((actual_arrival - scheduled_arrival)::VARCHAR,'not arrived')
from flights

