select
payment_id,
pa.customer_id,
amount,
first_name,last_name 
from payment pa 
inner join customer cu
on pa.customer_id = cu.customer_id


select
payment.*,first_name,last_name,email
from payment
Inner Join staff
On 
staff.staff_id = payment.staff_id
where staff.staff_id = 2



-- select * from seats
-- select * from boarding_passes
select
fare_conditions,
count(*)
from 
boarding_passes bd
Inner join seats st
On 
st.seat_no = bd.seat_no
group by fare_conditions
