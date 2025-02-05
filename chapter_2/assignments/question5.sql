-- Driver with the highest revenue in Lagos
-- Expected result table:

select drivers.DriverID, drivers.Name, sum(rides.Fare) as TotalRevenue
from drivers
join rides on drivers.DriverID = rides.DriverID
group by drivers.DriverID, drivers.Name
order by TotalRevenue desc