select customers.Name,products.ProductName
from customers
inner join orders on customers.CustomerID=orders.CustomerID
inner join orderdetails on orders.OrderID = orderdetails.OrderID
inner join products on orderdetails.ProductID=products.ProductID
where products.ProductName='Laptop'