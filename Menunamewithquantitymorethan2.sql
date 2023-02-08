select Description as MenuName from LittleLemonDM.Menu m
inner join LittleLemonDM.MenuItem mi on m.Menu_ID = mi.Menu_ID
where mi.MenuItem_ID in (select LittleLemonDM.Orders.MenuItem_ID 
from LittleLemonDM.Orders where Quantity > 2)  