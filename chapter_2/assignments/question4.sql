select DistanceKM, count(*) as ride_count
from rides
group by DistanceKM
order by ride_count desc
-- limit 1;