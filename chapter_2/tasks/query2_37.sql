-- Write an SQL statement to display the WarehouseID and the sum of QuantityOn-
-- Hand grouped by WarehouseID. Omit all SKU items that have three or more items
-- on hand from the sum, name the sum TotalItemsOnHandLT3, and display the results
-- in descending order of TotalItemsOnHandLT3.
use cape_codd;

select WarehouseID, sum(QuantityOnHand) as TotalItemsOnHandLT3
from inventory
where QuantityOnHand < 3
group by WarehouseID
order by TotalItemsOnHandLT3 desc;