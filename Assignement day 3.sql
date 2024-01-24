--***************************Assignement Day 3**************************
--1- write a sql to get all the orders where customers name has "a" as second character and "d" as fourth character(58 rows)
select *
from Orders
where Customer_Name like '_a_d%';
--2- write a sql to get all the orders placed in the month of dec 2020 (352 rows)
select*
from Orders
where Order_Date  between '2020-12-01' and '2020-12-31' ;
--3- write a query to get all the orders where ship_mode is neither in 'Standard Class' nor in 'First Class' and ship_date is after nov 2020 (944 rows)
select *
from Orders
where Ship_Mode <>'Standard Class' AND Ship_Mode <>'First Class'
AND Ship_Date >'2020-11-30'
--4- write a query to get all the orders where customer name neither start with "A" and nor ends with "n" (9815 rows)
select*
from Orders
where Customer_Name not like 'A%n'; 
--5- write a query to get all the orders where profit is negative (1871 rows)
select*
from Orders
where profit<0;
--6- write a query to get all the orders where either quantity is less than 3 or profit is 0 (3348)
select *
from Orders
where Quantity <3 or Profit=0;
--7- your manager handles the sales for South region and he wants you to create a report of all the orders in his region where some discount is provided to the customers (815 rows)
select *
from Orders
where Region = 'South' and Discount >0
--8- write a query to find top 5 orders with highest sales in furniture category
select top 5 Sales
from Orders
order by Sales desc;
--9- write a query to find all the records in technology and furniture category for the orders placed in the year 2020 only (1021 rows)
select *
from Orders
where Category in('Technology','Furniture') and Order_Date between '2020-01-01' and '2020-12-31'
s

--10-write a query to find all the orders where order date is in year 2020 but ship date is in 2021 (33 rows)
select *
from Orders
where Order_Date between '2020-01-01' and '2020-12-31' and Ship_Date between '2021-01-01' and '2021-12-31';