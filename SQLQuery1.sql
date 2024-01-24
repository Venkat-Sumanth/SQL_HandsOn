--Q13
select productmodel,count(1) as totalcount from ProductandDescription b inner join product a
on a.productid = b.productid
where b.description like '%aluminum%' and a.color ='black'
group by productmodel;

--Q15
select a.customerid,a.firstname,a.lastname,a.emailaddress,a.companyname from dbo.customer a left join dbo.CustomerAddress b
on a.CustomerID = b.CustomerID
where b.CustomerID is null;

--Q16
select top 10 companyname,sum(b.LineTotal) as Total_order_values from dbo.SalesOrderHeader c inner join dbo.Customer a 
on c.CustomerID = a.CustomerID
inner join dbo.SalesOrderDetail b
on c.SalesOrderID = b.SalesOrderID
group by a.CompanyName
order by 2 desc;

--Q17
select top 4 companyname,sum(b.LineTotal) as Total_order_values from dbo.SalesOrderHeader c inner join dbo.Customer a 
on c.CustomerID = a.CustomerID
inner join dbo.SalesOrderDetail b
on c.SalesOrderID = b.SalesOrderID
group by a.CompanyName
order by 2 asc;

--Q18
select top 5 customerid from dbo.customer a




 
gsgdcvvdchhdcbdchjdscgcgcgucgu