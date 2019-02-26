create view tag_month_count_view
AS
select tag,month,count(*) as cnt
from (
select tag,month(creationDate) as month
from stackexchange LATERAL VIEW explode(split(substr(tags,2,LENGTH(tags)-2),"><")) virtual_table as tag
where tags!='-'
)tag_month_table
group by tag,month;