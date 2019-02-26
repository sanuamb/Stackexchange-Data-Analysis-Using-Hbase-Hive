LOAD DATA LOCAL INPATH '/N/u/sambavan/posts_stripped.csv' OVERWRITE INTO TABLE stackexchange;

select count(id) from stackexchange;