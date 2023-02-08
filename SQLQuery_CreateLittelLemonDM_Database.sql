
-- CREATE SCHEMA LittleLemonDM
/*
CREATE TABLE LittleLemonDM.Menu (
  Menu_ID INT NOT NULL,
  Cuisines VARCHAR(45) NOT NULL,
  Starters VARCHAR(45) NOT NULL,
  Courses VARCHAR(45) NOT NULL,
  Drinks VARCHAR(45) NOT NULL,
  Desserts VARCHAR(45) NOT NULL,
  PRIMARY KEY (Menu_ID)) 
*/
/*
CREATE TABLE LittleLemonDM.Customers (
  Customer_ID INT NOT NULL,
  Customer_Name VARCHAR(45) NOT NULL,
  Phone INT NOT NULL,
  Email INT NOT NULL,
  PRIMARY KEY (Customer_ID))
*/
/*
CREATE TABLE LittleLemonDM.Orders (
  Order_ID INT NOT NULL,
  Order_Date DATE NOT NULL,
  Quantity INT NOT NULL,
  Total_Cost DECIMAL NOT NULL,
  Customer_ID INT NOT NULL,
  Menu_ID INT NOT NULL,
  PRIMARY KEY (Order_ID),
  
  CONSTRAINT fk_CustomerID
    FOREIGN KEY (Customer_ID)
    REFERENCES LittleLemonDM.Customers (Customer_ID)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_MenuID
    FOREIGN KEY (Menu_ID)
    REFERENCES LittleLemonDM.Menu (Menu_ID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
*/
/*
CREATE TABLE LittleLemonDM.Order_Delivery_Status (
  Order_Delivery_Status_ID INT NOT NULL ,
  Date DATE NOT NULL,
  Status VARCHAR(45) NOT NULL,
  Order_ID INT NOT NULL,
  PRIMARY KEY (Order_Delivery_Status_ID),
  
  CONSTRAINT fk_OrderID
    FOREIGN KEY (Order_ID)
    REFERENCES LittleLemonDM.Orders (Order_ID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
*/
/*
CREATE TABLE LittleLemonDM.Staff (
  Staff_ID INT NOT NULL ,
  Staff_Name VARCHAR(45) NOT NULL,
  Role VARCHAR(45) NOT NULL,
  Salary DECIMAL NOT NULL,
  PRIMARY KEY (Staff_ID))
*/
/*
CREATE TABLE LittleLemonDM.Bookings (
  Booking_ID INT NOT NULL ,
  Date DATE NOT NULL,
  Table_Number INT NOT NULL,
  Customer_ID INT NOT NULL,
  Staff_ID INT NOT NULL,
  PRIMARY KEY (Booking_ID),
  
  CONSTRAINT fk_CustomerIDforBooking
    FOREIGN KEY (Customer_ID)
    REFERENCES LittleLemonDM.Customers (Customer_ID)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_StaffID
    FOREIGN KEY (Staff_ID)
    REFERENCES LittleLemonDM.Staff (Staff_ID)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
*/
/*
CREATE TABLE LittleLemonDM.MenuItem (
  MenuItem_ID INT NOT NULL,
  Menu_ID INT NOT NULL,
  Cuisines VARCHAR(45) NOT NULL,
  Starters VARCHAR(45) NOT NULL,
  Courses VARCHAR(45) NOT NULL,
  Drinks VARCHAR(45) NOT NULL,
  Desserts VARCHAR(45) NOT NULL,
  PRIMARY KEY (MenuItem_ID),
  CONSTRAINT fk_MenuIDinmenuitem
    FOREIGN KEY (Menu_ID)
    REFERENCES LittleLemonDM.Menu(Menu_ID)
	ON DELETE NO ACTION
    ON UPDATE NO ACTION)
*/

