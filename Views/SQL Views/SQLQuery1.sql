use sample
select * from employee1
-----simple view
create view v1 as select * from employee1
select * from v1

insert v1 values (105 ,'kk',35000)
update v1 set salary = 45000 where empid = 103
delete from v1 where empid = 105

----complex view

create table emp_hyd(eid int , ename varchar(40),sal money)
create table emp_chennai(eid int , ename varchar(40), sal money)
select * from emp_hyd
select * from emp_chennai

create view cv1 as 
select * from emp_hyd
union
select * from emp_chennai
select * from cv1

