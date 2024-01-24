--Q1
select P.name,P.ProductNumber,UnitPrice from dbo.product P cross join dbo.SalesOrderDetail;

--Q2
select P.Name,S.UnitPrice from dbo.Product p inner join SalesOrderDetail s
on P.ProductID = S.ProductID;

--Q3
select P.name,s.UnitPrice from dbo.Product P left join SalesOrderDetail s 
on P.ProductID = s.ProductID;

--Q4
select P.name,s.UnitPrice from Product p right join SalesOrderDetail s
on p.productid = s.ProductID;

--Q5
select c.firstname,c.lastname,s.orderdate from Customer c right join SalesOrderHeader s
on c.ModifiedDate = s.ModifiedDate;

--Q6
select s.salesorderid,p.productid,p.name,p.productnumber from Product p  join SalesOrderDetail s 
on p.productid =s.ProductID;

--Q7
select p.productid,p.name,p.productnumber,s.salesorderid,s.orderQty from Product p inner join SalesOrderDetail s
on p.productid = s.ProductID;

vffduyggugyugud