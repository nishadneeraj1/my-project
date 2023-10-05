show tables
select * from movies where genre like 'Horror' or genre like 'Comedy'
select name, genre from movies where genre not in ("Comedy","Horror") order by name	
select * from movies where star like '%Robert%'
select * from movies where name like '_____'
select name, abs(gross - budget) as profit from movies
select * from movies
select name,round(gross/50) as bdt from movies 																		
smovieselect name,substr(name,1,4) as short from movies
select max(budget) from movies
select name,(gross - budget) as profit from movies order by profit Desc limit 5

select star,count(*) as num_movies from movies group by star order by num_movies desc limit 5

select genre,sum(budget-gross) as total_profit from movies group by genre order by total_profit desc limit 5

select director,avg(budget-gross) as avg_profit from movies group by director order by avg_profit desc limit 5

select name,max(budget) as max_bt from movies group by name order by max_bt limit 5

select name,budget from movies group by name order by budget desc limit 5
SELECT name, budget
FROM movies
ORDER BY budget DESC
LIMIT 3;

select * from movies
select star,director,sum(gross-budget) as total_profit from movies group by star,director order by total_profit desc limit 5
select star,sum(gross-budget) as total_profit from movies group by star order by total_profit desc limit 5
SHOW TABLES
select name,(gross-budget) as profit,
case
	when (gross-budget) > 1000000000 then "super hit"
    when (gross-budget) >250000000 and (gross-budget) < 1000000000 then "hit"
	when (gross-budget) >0 and (gross-budget) < 250000000 then "average"

    else "flop"
end as vedict
from movies