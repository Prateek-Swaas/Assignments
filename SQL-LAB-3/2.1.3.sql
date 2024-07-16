delimiter #
CREATE PROCEDURE supplier_list()
begin
 select * 
 from suppliers 
 INNER JOIN products ON suppliers.SupplierID= products.SupplierID
 WHERE ProductName ='Product 1';
 
 END #
 
 delimiter ;
 
 
