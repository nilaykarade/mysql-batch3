/*

MySQL's aggregate function is used to perform calculations on 
multiple values and return the result in a single value like the average of all values, 
the sum of all values, and maximum & minimum value among certain groups of values. 

We mostly use the aggregate functions with SELECT statements
in the data query languages.

*/

# count

select * from customers;

select count(*) from customers;

select count(customer_fullname) from customers;

select count(*) from products;

select count(*) from customers
where customer_address='Johannesburg';


describe products;


select * from products;
select product_category from products;

select count(product_category) from products;

select distinct product_category from products;

select count(distinct(product_category)) from products;

select * from products where product_category ='Computers';

select count(*) from products where product_category ='Computers';

select count(*) as "# of Computer products" from products
where product_category ='Computers';


select product_category ,count(*) as "# of Computer products" from products
where product_category ='Computers';

#Task -  get count of 'Kithen & Home' products

select distinct product_category from products;

select product_category
from products
group by product_category;


select product_category, count(*) as '# of products'
from products
group by product_category;


select product_category, count(*) as '# of products'
from products
group by product_category
order by count(*) desc;

#Task - get list of customer_address using distinct

#Task - get list of customer_address using group by

#Task - get list of customer_address using group by and the count of customer in each customer_address

select product_category, count(*) as product_count
from products
group by product_category;

select product_category, count(*) as product_count
from products
where unit_price>=100
group by product_category;

select product_category, count(*) as product_count
from products
where unit_price>=100 and (product_category in ('Office Consumables','Kithen & Home'))
group by product_category;

select product_category, count(*) as product_count
from products
group by product_category;

#sum()

select * from products;

select sum(unit_price) from products;

select sum(unit_price) 
from products
where product_category='computers';

select product_category, sum(unit_price) 
from products
group by product_category;

#avg

select avg(unit_price) from products;

select avg(unit_price) 
from products
where product_category='computers';

select product_category, avg(unit_price) 
from products
group by product_category;

#max()

select max(unit_price) from products;


select product_category, max(unit_price) 
from products
group by product_category;


select product_category,product_name, max(unit_price) 
from products
group by product_category;


select product_category, max(unit_price) 
from products
where product_category='Computers';


select product_name, product_category, max(unit_price) 
from products
where product_category='Computers'
group by product_category;


#min()

select min(unit_price) from products;

# perform similar mysql quries for min() from above examples of max()

#limit

select * from products; 
select * from products limit 5;

















