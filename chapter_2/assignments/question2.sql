select DriverID, avg(Rating) as avg_rating
from rides
group by DriverID
order by avg_rating desc
limit 5;