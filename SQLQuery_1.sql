-- -- Most death by year--
-- SELECT Year, SUM(Deaths_per_100_000) AS total_death FROM death_rate
-- GROUP BY Year
-- ORDER BY total_death DESC;


-- --Which age group had the most death
-- SELECT SUM(Age_70_years) AS seventies FROM death_by_age
-- ;

-- SELECT SUM(Age_50_69_years) AS fiftiesToSixties FROM death_by_age
-- ;

-- SELECT SUM(Age_15_49_years) AS midAge FROM death_by_age;

-- SELECT SUM(Age_5_14_years) AS children FROM death_by_age
-- ;


-- --which country had the least death
-- SELECT Entity, SUM(Annual_Death) AS total_death FROM deathbycountry
-- Group By Entity
-- ORDER BY total_death;


--which country had the most death
SELECT Entity, SUM(Annual_Death) AS total_death FROM deathbycountry
Group By Entity
ORDER BY total_death DESC;

-- -- Top 10 year that had the most children to teen death rate--
-- SELECT Year, SUM(Age_5_14_years) AS children_teen FROM death_by_age
-- GROUP BY Year
-- ORDER BY children_teen DESC
-- offset 0 rows
-- fetch next 10 rows only;

-- --which country had the most death of people with age 70s and above
-- SELECT death_by_Age.Entity AS Country, SUM(Age_70_years) AS seventies from death_by_age
-- INNER JOIN deathbycountry
-- ON deathbycountry.Code = death_by_age.Code
-- GROUP BY death_by_age.Entity
-- ORDER BY seventies DESC;


-- --which country had the most death of children
-- SELECT death_by_Age.Entity AS Country, SUM(Age_Under_5) AS children from death_by_age
-- INNER JOIN deathbycountry
-- ON deathbycountry.Code = death_by_age.Code
-- GROUP BY death_by_age.Entity
-- ORDER BY children DESC;










