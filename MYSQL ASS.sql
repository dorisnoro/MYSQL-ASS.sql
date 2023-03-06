-- 1.
 SELECT COUNT("USA")
 from city
 where CountryCode = "USA";
 
 -- 2.
Select Name, LifeExpectancy, avg(lifeExpectancy)as AVERAGE,Population
from country
where code = "ARG";

-- 3.
select name as country, lifeExpectancy
from country
where LifeExpectancy is not null
order by LifeExpectancy desc
limit 6;

-- 4.
select country.name as country,city.name as capital
from country left join city on country.Capital= city.id
where country.Name="SPAIN";

-- 5.
select countrylanguage.Language,country.Region
 from country left join countrylanguage
 on country.Code ="southeast Asia"