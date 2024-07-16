select customers.Name,
products.ProductName,
orders.OrderDate,
orders.OrderID
from customers 
left join orders on customers.CustomerID=orders.CustomerID
left join orderdetails on orders.OrderID=orderdetails.OrderID
left join products on orderdetails.ProductID= products.ProductID