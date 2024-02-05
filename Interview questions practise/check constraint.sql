
/*check constraint using column level*/
create table mon(sno int,salary int check(salary<5000));

select * from mon;

insert into mon
values(5,3000);
/*check constraint using table level*/
create table mon2(sno int,name varchar(200),salary int, check(name=upper(name) and salary>1500));
select * from mon2;
insert into mon2
values(4,'s',1600);
