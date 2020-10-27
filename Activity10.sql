use Prathibha_Activities;
-- Write a query to find all the orders issued against the salesman who may works for customer whose id is 3007.
select * from orders where salesman_id =(select distinct salesman_id from orders where customer_id = 30007);
-- Write a query to find all orders attributed to a salesman in New York.
select * from orders where salesman_id in (select distinct salesman_id from customers where city = 'New York');
-- Write a query to count the customers with grades above New York's average.
select grade, count(*) from customers GROUP BY grade HAVING grade>(SELECT AVG(grade) FROM customers WHERE city='New York');
-- Write a query to extract the data from the orders table for those salesman who earned the maximum commission
select * from orders where salesman_id IN( SELECT salesman_id FROM salesman
WHERE commission=( SELECT MAX(commission) FROM salesman));