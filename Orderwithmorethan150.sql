Select c.Customer_ID as CustomerID,c.Customer_Name as FullName,o.Order_ID as OrderID,o.Total_Cost as Cost,m.Description as MenuName,mi.Courses as CourseName from LittleLemonDM.Orders o
inner join LittleLemonDM.Customers c on o.Customer_ID = c.Customer_ID
inner join LittleLemonDM.MenuItem mi on mi.MenuItem_ID = o.MenuItem_ID
inner join LittleLemonDM.Menu m on m.Menu_ID = mi.Menu_ID
where o.Total_Cost > 150