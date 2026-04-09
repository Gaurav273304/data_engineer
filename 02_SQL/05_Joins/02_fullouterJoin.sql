select
count(*)
from boarding_passes b
Full Outer Join
tickets t
on b.ticket_no = t.ticket_no
where b.ticket_no is Null