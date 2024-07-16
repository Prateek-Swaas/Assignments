select customers.CustomerID,customers.Name,customers.Email,customers.Phone
from customers
inner join orders on customers.CustomerID=orders.CustomerID
inner join orderdetails on orders.OrderID = orderdetails.OrderID
inner join products on orderdetails.ProductID=products.ProductID
where orderdetails.Quantity= (select max(Quantity)from orderdetails);