-- Inserts

insert into CUSTOMERS (name, surname, age, phone_number)
values ('Alexey', 'Ivanov', 25, '+7(917)322-21-55');

insert into CUSTOMERS (name, surname, age, phone_number)
values ('Alexey', 'Petrov', 22, '+7(910)455-98-32');

-- Query 1
select product_name
from orders
where customer_id in (select id from customers where upper(name) = upper('alexey'));

-- Query 2
select product_name
from customers
         join orders on customers.id = orders.customer_id
where upper(name) = upper('alexey')