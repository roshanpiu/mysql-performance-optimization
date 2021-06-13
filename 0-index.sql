show index from film;

create index idx_film_length on film (length);

select film_id, length
from film
where length = 100;

explain select film_id, length
from film
where length = 100;

-- Optimization

analyze table film;

optimize table film;

alter table film;

-- drop and recreate indexes
drop index idx_film_length on film;
create index film_length_index on film (length);

-- review your indexes using
-- information schema
show table status;
show index in film;

-- remove duplicate indexes

-- slow running query check list
-- check for excessive indexing on the table
-- create new appropriate indexes
-- check index maintenance job
-- additional tuning tricks
-- drop unused indexes
-- drop least used indexes
-- narrow width indexes are preferred

-- index maintenance
-- rebuild indexes at well defined intervals
-- update statistics
-- optimize table to reduce fragmentation manually

-- show full process list and examine the state of every query
-- and the states the query stays in for a long time
SHOW FULL PROCESSLIST;

