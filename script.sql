create database toy_comp;

use toy_comp;
create table product_info
(
product_id int primary key,
product_name varchar(255),
product_description varchar(255),
product_price float,
product_stock int
);

use toy_comp;
create table toy_category
(
category_id int primary key,
category_name varchar(255),
category_description varchar(255)
);

use toy_comp;
create table toy_prodouct_transact
(
transaction_id int primary key,
category_id int,
product_id int,
foreign key (category_id) references toy_category(category_id),
foreign key (product_id) references product_info(product_id)
 );

use toy_comp;
create table user_account_details
(user_id int primary key,
user_name varchar(255),
user_phone varchar(255),
user_location varchar(255),
user_email varchar(255)
);

use toy_comp;
create table user_order_details
(order_id int primary key,
user_id int,
product_id int,
product_qty int,
prod_price float,
foreign key (user_id) references user_account_details(user_id),
foreign key (product_id) references product_info(product_id)
);
use toys;
select * from prod_info;

use toys;
select * from toy_cat;

use toys;
select * from toy_prod_transaction;

use toys;
select * from user_account;

use toys;
select * from user_order_details;











use toys;
insert into toy_cat values ('1','Action figure','Superheros and other collectables');
insert into toy_cat values ('2','Airplanes','Airplane set with different attachments');
insert into toy_cat values ('3','Soft toys','Soft toys for kids');


use toys;
insert into prod_info values ('1','Spiderman','Spiderman new imporved home coming spiderman','20','1000');
insert into prod_info values ('2','Airplanes','Airplane set with different attachments','15','500');
insert into prod_info values ('3','Super hero Set','Different super hero set','25','700');


use toys;
insert into toy_prod_transaction values ('1','1','1');
insert into toy_prod_transaction values ('2','2','2');
insert into toy_prod_transaction values ('3','1','3');


use toys;
insert into user_account values ('1','John Doe','123456789','Atlanta','John_doe@gmail.com');
insert into user_account values ('2','Mary Jane','778458954','Ohio','Maryjane@gmail.com');
insert into user_account values ('3','Sam Willam','778454664','Illinois','sam_william@yahoo.com');


use toys;
insert into user_order_details values ('1','1','1','2','40');
insert into user_order_details values ('2','2','2','1','15');
insert into user_order_details values ('3','3','3','4','100');























