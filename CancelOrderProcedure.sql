
Create Procedure  CancelOrder (@orderid INT) AS
Begin
Delete LittleLemonDM.Orders where Order_ID = @orderid
End 


call CancelOrder(5)