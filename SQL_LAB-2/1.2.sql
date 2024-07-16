select customers.Name,
orders.OrderDate,
orderdetails.Quantity,
products.ProductName,
products.Price 

from orderdetails

inner join orders on orderdetails.OrderID=orders.OrderID
inner join products on orderdetails.ProductID=products.ProductID
inner join customers  on orders.CustomerID=customers.customerID;

