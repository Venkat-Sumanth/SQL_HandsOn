CREATE TABLE item_audit
(
	item_audit_id		int		identity(1,1)		not null primary key,
	item_id				int							not null,
	item_name			varchar(30)					not null,
	item_type			varchar(30)					not null,
	price				decimal(6,2)				not null,
	operation			varchar(6)					NOT NULL ,
	create_date			datetime					not null default getdate(),
	user_id				varchar(30)					not null default system_user
);

select * from item_audit;

alter table item_audit
add constraint chk_operartion check(operation in('insert', 'update', 'delete'));

insert into item_audit(item_id,item_name,item_type,price,operation)
values(22,'sumun1','sumunnnnn',222.00,'insert');

insert into item_audit(item_id,item_name,item_type,price,operation)
values(22,'sumun1','sumunnnnn',222.00,'insert');

insert into item_audit(item_id,item_name,item_type,price,operation)
values(22,'sumun1','sumunnnnn',222.00,'raana');  --it doesnt execute

drop table item_audit;