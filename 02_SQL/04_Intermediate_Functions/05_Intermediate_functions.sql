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


select * from bookings

SELECT
    count(*),
    CASE
        WHEN total_amount < 20000 THEN 'Low Price Ticket'
        WHEN total_amount < 150000 THEN 'Mid Price Ticket'
        WHEN total_amount >= 150000 THEN 'High Price Ticket'
        ELSE 'Normal'
    END AS price_cat
FROM
    bookings
GROUP BY
    price_cat


SELECT 
count(*) as flights,
    CASE 
        WHEN EXTRACT(MONTH FROM scheduled_departure) In (12,1,2) THEN 'Winter'
		When EXTRACT(MONTH FROM scheduled_departure) <=5 THEN 'Spring'
		When EXTRACT(MONTH FROM scheduled_departure) <=8 THEN 'Summer'
        ELSE 'Fall'
    END AS season
FROM flights
group by season


--Case when + sum

select * from film