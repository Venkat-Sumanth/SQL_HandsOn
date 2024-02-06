use suma;
/*primary key using column level*/
create table test(sno int primary key,name varchar(10), sal int);
insert into test(sno, name, sal)
values(3,'sumanth',50000),
(2,'sumanth',50000);

drop table test;

select * from test

/*primary key using tabel level*/
select * from test2
create table test2(sno int,name varchar(100), sal int,primary key(sno,name));
insert into test2(sno,name,sal)
values(3,'a',300),
(2,'a',300);
