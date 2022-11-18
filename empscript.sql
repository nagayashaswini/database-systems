create database employee;

use employee;
create table customer
(
id int primary key,
empid int,
FIRSTNAME varchar(255)
,LASTNAME varchar(255)
,WORKDEPT varchar(40)
,PHONE varchar(10)
,HIREDATE date
,SEX varchar(10)
,SALARY float
)









1)
use employee;
INSERT INTO empdetails(id,FIRSTNAME,LASTNAME,WORKDEPT,PHONE,HIREDATE,SEX,SALARY)
value
('1','suresh','babu','IT','3546278450','1997-12-01','MALE','87000'),
('2','ramesh','pandu','Admin','2345123214','1988-09-09','MALE','95000'),
('3','rajesh','babu','Accounts','8474643555','1987-09-30','MALE','50000');











2)
INSERT INTO empdetails(id,FIRSTNAME,LASTNAME,WORKDEPT,PHONE,HIREDATE,SEX,SALARY)
value
('4','Alex','buddy','IT','5637399211','2003-07-06','MALE','72000');













3)
SELECT * FROM empdetails

















4)
use employee;
UPDATE empdetails
SET HIREDATE= '1989-09-09', LASTNAME='PANDU'
WHERE id='2';














5)
use employee;
update empdetails set location='Chicago' where id=3











6)
use employee;
DELETE FROM empdetails WHERE ENUM=('101' & '102' & '103' & ' 104');








7)
use employee;
ALTER TABLE empdetails
ALTER LOCATION SET DEFAULT 'Chicago';


use employee;
select * from empdetails














8)
use employee;
SELECT * FROM empdetails 
LEFT JOIN customer 
ON empdetails.id =customer.empid
;











9)
use employee
SELECT * FROM orders
FULL OUTER JOIN products
ON orders.orderId = products.orderId
ORDER BY orderId;

10) 
SELECT *
FROM empdetails AS stat
CROSS APPLY sys.dm_db_stats_properties(stat.customerid, stat.orderid) AS sp;

11)
SELECT FIRSTNAME, PHONE, SALARY FROM employee.INNODB_TABLESTATS where name= location;

12)
ALTER TABLE employee AUTO_INCREMENT=101;

13)

SELECT * FROM empdetails.STATISTICS WHERE empdetails = 'orders' AND customer;


