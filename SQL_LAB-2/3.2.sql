select customers.Name,
products.ProductName,
orders.OrderDate,
orders.OrderID
from customers 
right join orders on customers.CustomerID=orders.CustomerID
right join orderdetails on orders.OrderID=orderdetails.OrderID
right join products on orderdetails.ProductID= products.ProductID