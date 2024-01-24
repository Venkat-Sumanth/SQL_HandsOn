select * from people;

select * from sales;

select geoid, amount,customers from sales;

select saledate amount,boxes,amount/boxes 'sumanth' from sales;

select * from sales
where amount > 10000
order by amount desc;

select * from sales
where PID = 'p22'
order by geoid,pid;

select * from sales 
where amount > 10000 and saledate > '2022-01-01';

select amount,saledate from sales
where Amount > 10000 and year(SaleDate) < 2022
order by amount desc;

select * from sales
where Boxes>0 and boxes < 50;

select * from sales
where boxes between 0 and 50
order by boxes desc;

select saledate,amount,boxes,weekday(saledate) as 'day of week' from sales
where weekday(saledate) = 4;

select * from people
where team= 'delish' or team = 'jucies';

select * from people
where team in('delish','jucies');

select * from people 
where Salesperson like '%b%';

SELECT 
    SaleDate,
    amount,
    CASE
        WHEN amount < 1000 THEN 'under 1k'
        WHEN amount < 5000 THEN 'under 5k'
        WHEN amount < 10000 THEN 'under 10k'
        ELSE '20k more than'
    END AS 'category of amount'
FROM 
    sales;
    
select s.saledate,s.amount,p.Salesperson,p.spid from sales s
join people p on s.spid = p.spid;

select s.saledate,s.amount,pr.product from sales s
left join products pr on s.pid = pr.pid;

select s.saledate,s.amount,p.salesperson,p.team,pr.product,g.geo from sales s
inner join people p on p.spid = s.spid
inner join products pr on pr.pid = s.pid
inner join geo g on g.geoid = s.GeoID
where s.amount > 500 and p.team = '' and (g.geo = 'new zealand' or g.geo = 'india')
order by s.saledate;

select geoid , sum(amount),avg(amount),sum(boxes) from sales
group by geoid;

select g.geo,sum(amount),avg(amount), sum(boxes) from sales s
inner join geo g on g.geoid = s.geoid
group by g.geo;

select pr.category,p.team,sum(amount),sum(boxes) from sales s
inner join people p on p.spid = s.spid
inner join products pr on pr.pid = s.pid
where p.team <>''
group by pr.category,p.team
order by pr.category,p.team;

