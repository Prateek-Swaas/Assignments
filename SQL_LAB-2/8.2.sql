select customers.Name,customers.Email,customers.CustomerID,customers.Phone,products.ProductName
from customers
inner join orders on customers.CustomerID=orders.CustomerID
inner join orderdetails on orders.OrderID = orderdetails.OrderID
inner join products on orderdetails.ProductID=products.ProductID