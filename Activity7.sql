use Prathibha_Activities;
-- Write an SQL statement to find the total purchase amount of all orders.
select sum(purchase_amount) as total_amount from orders;
-- Write an SQL statement to find the average purchase amount of all orders.
select avg(purchase_amount) as average_amount from orders;
-- Write an SQL statement to get the maximum purchase amount of all the orders.
select max(purchase_amount) as maximum from orders;
-- Write an SQL statement to get the minimum purchase amount of all the orders.
select min(purchase_amount) as minimum from orders;
-- Write an SQL statement to find the number of salesmen listed in the table.
select * from orders;
select count(distinct salesman_id) as count_salesman from orders;