select v.customer_id, count(*) as count_no_trans
from Visits v
left join Transactions t
on v.visit_id=t.visit_id
where amount is null
group by v.customer_id;

-- when there is a null value in amount column
-- select v.customer_id, count(*) as count_no_trans
-- from Visits v
-- where visit_id not in(select visit_id from transactions)
