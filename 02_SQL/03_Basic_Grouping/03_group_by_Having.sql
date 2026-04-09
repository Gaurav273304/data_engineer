--group by + Having clause

select
staff_id,
sum(amount),
count(*),
date(payment_date)
from payment
where amount != 0
group by staff_id,date(payment_date)
having count(*) > 400
order by count(*) desc

---
select * from payment


select
customer_id,
date(payment_date),
Round(avg(amount),2) as avg_amount,
count(*)
from payment
where payment_date Between '2020-03-28' and '2020-05-01'
group by customer_id,date(payment_date)
having count(*) > 1
order by avg_amount DESC


