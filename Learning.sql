-- create database test;
-- drop database test;
-- create database acme;

-- use acme;

/*
create table customers(
	id int not null auto_increment,
    firstName varchar(255),
    email varchar(255),
    address varchar(255),
    city varchar(255),
    state varchar(255),
    zipcode varchar(255),
	primary key(id)
);
*/

-- ALTER TABLE customers ADD lastName varchar(255);

-- ALTER TABLE customers MODIFY lastName varchar(255) AFTER firstName;

-- insert into customers (firstName, lastName, email, address, city, state, zipcode) 
-- values ('Joe', 'Cocker', 'jcocker@gmail.com', 'Pekarska 20', 'Lviv', 'Lvivska obl', '79000' );

-- select * from customers;

/*
insert into customers (firstName, lastName, email, address, city, state, zipcode) 
values ('Jimmy', 'Handrix', 'handrix@gmail.com', 'Polo 2', 'Mexico', 'Porto obl', '12311' ), 
('W.C. ', 'Handy', 'Handy@gmail.com', 'Street 1', 'Rostov', 'A', '23423' ),
('Son ', 'House', 'House@gmail.com', 'Street 1', 'Moscow', 'S', '23442' ),
('Bessie ', 'Smith', 'Smith@gmail.com', 'Street 15', 'London', 'D', '12455' ),
('Robert', 'Johnson', 'Johnson@gmail.com', 'Street 1', 'New York', 'G', '23423' ),
('B.B.', 'King', 'King@gmail.com', 'Street 1', 'D City', 'D', '23423' ),
('T-Bone', ' Walker', 'Walker@gmail.com', 'Street 11', 'Alabama', 'F', '64443' ),
('Muddy', ' Waters', 'Waters@gmail.com', 'Street 1', 'London', 'G', '23442' ),
('Little', ' Walter', 'Walter@gmail.com', 'Street 12', 'Mexico', 'H', '23566' ),
('Lonnie', ' Johnson', 'Johnson@gmail.com', 'Street 1', 'London', 'W', '22233' ),
('John', ' Lee Hooker', 'Hooker@gmail.com', 'Street 1', 'Rostov', 'F', '23423' ),
('Blind', ' Lemon Jefferson', 'Jefferson@gmail.com', 'Street 11', 'G', '', '11111' ),
('Elmore', ' James', 'James@gmail.com', 'Street 30', 'New City', 'G', '77889' ),
('Willie', ' Dixon', 'Dixon@gmail.com', 'Street 141', 'Yourk', 'E', '89998' );
*/

-- update customers set email = 'test@gmail.com' where id = 3;

-- delete from customers where id = 1;

-- select * from customers;

-- alter table customers add testCol varchar(200);

-- alter table customers modify testCol int(11); 

-- alter table customers drop testCol;

-- select * from customers;

-- select * from customers where firstName = 'Jimmy';

-- select firstName, lastName, email from customers where firstName = 'Jimmy';
-- select * from customers order by email 
-- select * from customers order by email desc;


-- select state from customers;

-- select distinct state from customers;

-- select distinct state from customers order by state desc;

-- alter table customers add column age int;

-- select * from customers where age < 30 order by age;

-- select * from customers where age between 12 and 24;

-- select * from customers where (city = 'London' or city = 'Moscow') and age = 23;

-- select * from customers where city like 'L%n';

-- select * from custoproductsmers where city like '%N%';

-- select * from customers where city NOT like '%N%';

-- select * from customers where city in ('London', 'Mexico', 'Rostov');

-- -----------------------------------------------------------------------
-- create index CIndex on customers(city);
-- select city from customers;
-- drop index idx_customers_firstName_lastName on customers;

/*
create table products (
	id INT NOT NULL auto_increment,
    name varchar(255),
    price INT,
    primary key(id)
);
*/

/*
create table orders (
	id int not null auto_increment,
    orderNumber int,
    productId int,
    customerId int,
    orderDate datetime default current_timestamp,
    primary key(id),
    foreign key(customerId) references customers(id),
    foreign key(productId) references products(id)
);
*/

/*
insert into orders (orderNumber,productId,customerId) values 
(001,1,4),
(002,3,12),
(003,1,12),
(004,1,2),
(005,1,14),
(006,1,6),
(007,4,4),
(008,4,5),
(009,1,7);

*/

/*
select customers.firstName, customers.lastName, orders.orderNumber
from customers
join orders
on customers.id = orders.customerId
order by customers.lastName;
*/

/*
select orders.orderNumber, customers.firstName, customers.lastName, products.name
from orders
	inner join products
		on orders.productId = products.id
	inner join customers
		on orders.customerId = customers.id
order by orders.orderNumber
*/

/*
select 
firstName as 'First Name', 
lastName as 'Last Name'
from customers;
*/

/*
select concat(firstName, ' ', lastName) as 'Full Name',
concat(address, ' ', city, ' - ', state) as 'Full Address'
from customers;
*/

/*
select o.id, o.orderNumber, c.firstName, c.lastName
from customers as c, orders as o

select min(age), max(age), avg(age), count(age), sum(age) from customers;

select age, count(age) from customers 
group by age
having count(age) >= 2;
*/

select ucase(firstName), lcase(lastName) from customers;
