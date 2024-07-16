select customers.Name
from customers
inner join orders on customers.CustomerID=orders.CustomerID
inner join orderdetails on orders.OrderID = orderdetails.OrderID
inner join products on orderdetails.ProductID=products.ProductID
where orders.OrderDate='2024-07-02'