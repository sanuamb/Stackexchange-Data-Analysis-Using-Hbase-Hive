select tag_month_count_view.month, tag_month_count_view.tag, highest_count_view.max_cnt
from tag_month_count_view JOIN highest_count_view
ON (tag_month_count_view.cnt=highest_count_view.max_cnt and
tag_month_count_view.month=highest_count_view.month)
SORT BY tag_month_count_view.month;

