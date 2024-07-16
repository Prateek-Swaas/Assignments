delimiter #
create procedure delete_item(IN supplier1 int)
begin
delete from suppliers
where SupplierID=supplier1;
end #
delimiter ;
