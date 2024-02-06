select * from mon;

begin tran;

delete from mon
where salary = 200;
rollback;
commit;