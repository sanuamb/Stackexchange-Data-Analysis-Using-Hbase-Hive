create view highest_count_view
as
select month, max(cnt) AS max_cnt
from tag_month_count_view
group by month;