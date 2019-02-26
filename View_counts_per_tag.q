insert into table tag_view_counts
select tag,sum(viewcount) as viewcount
from stackexchange LATERAL vIEW explode(split(substr(tags,2,LENGTH(tags)-2),"><")) virtual_table as tag
where tags!='-'
group by tag;
