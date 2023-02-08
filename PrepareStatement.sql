PrePare statement GetOrderDetail From 'Select Order_ID as OrderID, Quantity, Total_Cost as Cost from LittleLemonDM.Orders where Order_ID = ? '
SET @id = 1

EXECUTE GetOrderDetail USING @id


DEALLOCATE PREPARE GetOrderDetail;

