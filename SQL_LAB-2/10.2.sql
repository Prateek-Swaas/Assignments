select *
from customers
left join orders on customers.CustomerID=orders.CustomerID
Where orders.OrderID is NULL