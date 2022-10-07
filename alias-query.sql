/** 
Alias
Sometimes, column names are so technical that make the query’s output very difficult to understand. To give a column a descriptive name, you can use a column alias.

**/

use classicmodels;

select
     concat_ws(',',lastName,firstName) As `Full Name`
from
   employees;


select 
      concat_ws(',',lastName,firstName) As `Full Name`
from 
      employees

order by `Full Name`;




SELECT
	customerName,
	COUNT(orders.orderNumber) total
FROM
	customers
INNER JOIN orders ON customers.customerNumber = orders.customerNumber
GROUP BY
	customerName
ORDER BY
	total DESC;

/**using alias**/

SELECT
	customerName,
	COUNT(o.orderNumber) total
FROM
	customers c
INNER JOIN orders o ON c.customerNumber = o.customerNumber
GROUP BY
	customerName
ORDER BY
	total DESC;





