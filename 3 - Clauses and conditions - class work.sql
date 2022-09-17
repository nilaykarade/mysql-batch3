
/*
Clauses - MySQL system clauses are keywords or statements to handle information. 
It helps to operate a group of the data and apply it to require conditions. 
The clauses apply conditions or select patterns to get information.
*/

/*
 From clause - The MySQL FROM Clause is used to select some records from a table.
 It can also be used to retrieve records from multiple tables using JOIN condition.
*/

#shows data for one column
select customer_fullname from customers;

#shows data for multiple columns of your intrest
select customer_fullname, customer_address from customers;

#shows data for all columns
select * from customers;

/*
where clause - MySQL WHERE Clause is used with SELECT, INSERT, UPDATE 
and DELETE to filter the results. 

It specifies a specific position where you have to do the operation.
*/

select * from customers;

select * from customers 
where customer_address='Abuja';

desc customers; 
select * from customers 
where customer_joining_date='2019-08-15';



#MySQL ORDER BY Clause
#The MYSQL ORDER BY Clause is used to sort the records in ascending or descending order.
/*
Syntax:
SELECT expressions  
FROM tables  
[WHERE conditions]  
ORDER BY expression [ ASC | DESC ];
*/
select *  from customers;

select *  from customers 
order by customer_address;

select *  from customers 
order by premium_membership;


select product_name,unit_price  from products;
#Task - list of product name, their price, ordered by product price

select *  from customers 
order by customer_address desc;

#Task - list of product name, their price, ordered by product price in descending

select *  from customers 
where premium_membership=1;

select *  from customers 
where premium_membership=1 
order by customer_address ;

select *  from products;

select *  from products
where product_category="Computers";

select *  from products
where product_category="Computers" 
order by unit_price ;

select *  from products;

select *  from products
order by product_category;

select *  from products
order by product_category,unit_price;

#task - show product name, praduct category, unit price  and order them by 
#unit price in descending order

/*
Distinct clause - MySQL DISTINCT clause is used to remove 
duplicate records from the table and fetch only the unique records. 
The DISTINCT clause is only used with the SELECT statement.
*/

select customer_address   
from customers;  

select distinct customer_address   
from customers;  

select distinct customer_address   
from customers  
order by customer_address;

select product_category from products;

#Task - show distinct product categories

/*
Group by clause - The MYSQL GROUP BY Clause is used to collect data 
from multiple records and group the result by one or more column. 

It is generally used in a SELECT statement.

You can also use some aggregate functions like 
COUNT, SUM, MIN, MAX, AVG etc. on the grouped column.
*/




/*
Conditions - The MySQL conditions are used to add one or more conditions 
in a SELECT, INSERT, UPDATE, or DELETE statement
*/
select * from customers; 

select * from customers 
where customer_address='Johannesburg';

select * from customers 
where customer_address='Johannesburg' and premium_membership=true;

#get customers from 2 cities
select * from customers 
where customer_address='Johannesburg' and customer_address='Lagos';

#get customers from either of 2 cities
select * from customers 
where customer_address='Johannesburg' or customer_address='Lagos';

select * from customers 
where customer_address='Johannesburg' 
or customer_address='Lagos' 
order by customer_address;

#task - list of products having product category as computers & 
#Accessories and then order them by price

select * from customers 
where  premium_membership=true 
and (customer_address='Johannesburg' or customer_address='Lagos');

describe products;


select * from products 
where unit_price=100;

select product_name from products where unit_price=100;

select product_name, unit_price from products where unit_price!=100;

select product_name, unit_price from products where unit_price<>100;

select product_name, unit_price from products where unit_price<=100;

select product_name, unit_price from products where unit_price<=100
order by unit_price desc;

select * from products where unit_price>100 and product_category='computers';

#comparing strings, = compares the entire string while LIKE compares one character at a time. 

select * from products where product_category like 'computers';

select * from products 
where unit_price>100 and product_category like 'computers';

#Task - show list of products having unit price less than 200 and 
# category is kitchen and home

#wildcard characters

select * from customers 
where customer_address like 'a%';

select * from customers 
where customer_address like 'ab%';

select * from customers 
where customer_address like '%a';


select * from customers 
where customer_address like '%o%';

select * from customers 
where customer_address like '%oh%';

select * from customers 
where customer_address like '_a%';

select * from customers 
where customer_address like '__go%';

select * from customers 
where (customer_address like 'j%' ) 
or  (customer_address like 'l%' );

select * from customers 
where (customer_address like 'j%' ) 
or  (customer_address like 'l%' ) 
order by customer_address;

select * from customers 
where (customer_address like 'Lagos') 
or (customer_address like 'Adda') 
or (customer_address like 'Pretoria');

select * from customers 
where customer_address in ('Lagos','Adda','Pretoria');

#Task - list prducts from accessories, mens clothing, women clothing using in 

select distinct product_category from products;

select * from products 
where category in  ('Computers','Office consumables');

select * from products 
where category in  ('Computers','Office consumables') 
and unit_price<150;

select * from products 
where category in  ('Computers','Office consumables') 
and unit_price<150 
order by unit_price;

