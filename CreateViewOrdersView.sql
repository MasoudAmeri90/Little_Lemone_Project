--select * from [LittleLemonDB].[LittleLemonDM].[Orders]

Create view OrdersView as select Order_ID,Quantity,Total_Cost 
from [LittleLemonDB].[LittleLemonDM].[Orders] where Quantity > 2


Select * from OrdersView;