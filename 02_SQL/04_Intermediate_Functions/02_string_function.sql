--String functions(upper and lower)
select 
Upper(email) as email_upper,
email,
length(email) as email_len
from customer
where length(email) < 30 

select
lower(first_name),
lower(last_name),
lower(email)
from customer
where length(first_name) > 10 
OR length(last_name) > 10


--Extract the text
--LEFT and RIGHT
--syntax

LEFT(text_column, integer)
RIGHT(text_column, integer)


select 
Right(LEFT(first_name,2),1),
Right(first_name,2),
first_name
from customer


--
select * from customer
--
select
right(email,5) as five_char,
left(Right(email,4),1) as dot
from customer

--Concatenate

select 
left(first_name,1) || '.' || left(last_name,1) || '.'
from customer

--create anonymized version of email address

select
email,
left(email,1) || '***' || right(email,19)
from customer


--POSITION(substring IN string)
--kisi given substring ka first occurrence ka index return karta hai.


