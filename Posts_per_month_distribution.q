select month(creationdate),count(creationdate)
from stackexchange
group by month(creationdate);

##Output
1	23256
2	22055
3	22960
4	23420
5	23962
6	19710
7	19357
8	20543
9	18526
10	19689
11	19876
12	19591