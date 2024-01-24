use movies;

select title, budget,runtime,round((budget/runtime),0) from movie; 

select title,budget from movie
order by budget desc
limit 5;

select release_date,title,(year(curdate())-year(release_date)) as age from movie
order by age asc
limit 10;

select distinct year(release_date) as moviess from movie
order by moviess;

select m.title,m.budget,g.genre_name from movie m
inner join movie_genres mg on m.movie_id = mg.movie_id
inner join genre g on mg.genre_id = g.genre_id
where m.budget < 50000
order by m.budget desc
limit 10;

select p.person_name,l.language_name, count(*) as movie_count, sum(m.popularity) from movie m
join movie_crew mc on m.movie_id = mc.movie_id
join person p on mc.person_id =p.person_id
join movie_languages ml on m.movie_id = ml.movie_id
join language l on ml.language_id = l.language_id
group by l.language_name,p.person_name
having l.language_name in('English','French')
limit 1;

select p.person_name,m.title from movie m
inner join movie_crew mc on m.movie_id = mc.movie_id
inner join person p on mc.person_id = p.person_id
where mc.job = 'characters' and m.release_date > '2010-01-01'
group by p.person_name,m.title,mc.job


