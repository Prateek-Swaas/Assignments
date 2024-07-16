Delimiter #
CREATE procedure INSERT_NEW(
IN SupplierName VARCHAR(100),
IN ContactName VARCHAR(100),
IN  ContactEmail VARCHAR(100),
IN ContactPhone VARCHAR(20),
OUT new_ID  VARCHAR(100))
  BEGIN
  INSERT INTO suppliers (SupplierName, ContactName, ContactEmail, ContactPhone)values
  (SupplierName,ContactName,ContactEmail,ContactPhone);
  SET new_ID = last_insert_id();
  END #
  Delimiter ;
   
