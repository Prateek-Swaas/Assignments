delimiter #
create procedure place1(
in supplierid int,
in orderdate date,
in totalamount float,
in productid int,
in quantity int,
in unitprice float
)
 
begin
declare lastorderid int;
insert into orders (  SupplierID,OrderDate, TotalAmount) values
(  supplierid,orderdate,totalamount);
set lastorderid = LAST_INSERT_ID();

insert into orderitems( OrderID, ProductID,Quantity,UnitPrice) values
( lastorderid, productid, quantity,unitprice);

select suppliers.SupplierID,suppliers.SupplierName,suppliers.ContactName,suppliers.ContactEmail,
suppliers.ContactPhone, orders.OrderID,orders.OrderDate,orders.TotalAmount
from suppliers
inner join orders on  suppliers.SupplierID = orders.SupplierID
where orders.OrderID = lastorderid;
end #
delimiter ;  