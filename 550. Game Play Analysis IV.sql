select round(count(distinct player_id)/(select count(distinct player_id) from activity),2) as fraction
from activity
where (player_id, DATE_SUB(event_date, INTERVAL 1 day)) in
(select player_id, min(event_date) as firstLoginDate
from activity a2
group by player_id
)
