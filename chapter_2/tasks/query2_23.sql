-- Write an SQL statement to display all data on products having a QuantityOnHand
-- greater than 0
use cape_codd;

select *
from inventory
where QuantityOnHand > 0;