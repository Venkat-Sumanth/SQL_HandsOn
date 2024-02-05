/*Foreign key using column level*/
create table master(sno int primary key,name varchar(100));
insert into master
values(1,'A'),
(2,'B'),
(3,'C');

SELECT * FROM MASTER;

create table child(sno int references master (sno),name varchar(10));

select * from child;
insert into child
values(1,'G');

delete from master
where sno=3;

/*Foreign key using table level*/
create table parent(sno int , name varchar(100), age int, primary key(name,age));
insert into parent
values(1,'su',33),(2,'na',34),(3,'ka',35);

select * from parent;

select * from children;
create table children(sno int, name varchar(100), age int, foreign key(name,age) references parent(name,age));
insert into children
values(3,'ka',35);

delete from parent
where sno = 3;