-- Write an SQL statement to display the SKU and SKU_Description for products 
-- having QuantityOnHand equal to 0.
use cape_codd;

select SKU, SKU_Description
from inventory
where QuantityOnHand = 0;
