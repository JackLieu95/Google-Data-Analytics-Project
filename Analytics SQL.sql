USE coursera;

SET GLOBAL interactive_timeout=60;

select count(*) from cyclic;

select * from cyclic limit 3;

select rideable_type, count(memeber_casual)  from cyclic group by rideable_type, memeber_casual;

CREATE VIEW calculated as
select *, timestampdiff(second, started_at, ended_at) as ride_length, weekday(started_at) as week_day
from cyclic;

select * from calculated limit 3;

select week_day, rideable_type, count(memeber_casual)  from calculated group by rideable_type, memeber_casual;

select week_day, ride_length from calculated group by week_day order by week_day;

select rideable_type, week_day, memeber_casual, avg(ride_length) as length from calculated where week_day in (1,3,6) AND ride_length >= 0   group by rideable_type, week_day, memeber_casual order by week_day, rideable_type, length;

select rideable_type, week_day, memeber_casual, max(ride_length) as length from calculated where week_day in (1,3,6)  group by rideable_type, week_day, memeber_casual order by week_day, rideable_type, length;

select count(*) from calculated where ride_length < 0 ;