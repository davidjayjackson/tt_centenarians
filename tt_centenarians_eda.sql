SELECT place_of_death_or_residence , count(*) as count
FROM centenarians c 
group by place_of_death_or_residence
ORDER BY count DESC ;

SELECT still_alive,count(*)
FROM centenarians c 
GROUP BY still_alive ;

SELECT CAST(birth_date as year) as year,count(*) as yr_count
FROM centenarians c
GROUP BY year 
ORDER  BY yr_count desc ;

SELECT (CAST(strftime('%Y', birth_date) AS INTEGER) / 10) * 10 AS decade,
       COUNT(*) AS decade_count
FROM centenarians c
GROUP BY decade
ORDER BY decade_count DESC;

SELECT gender,(CAST(strftime('%Y', birth_date) AS INTEGER) / 10) * 10 AS decade,
       COUNT(*) AS decade_count
FROM centenarians c
GROUP BY gender,decade
ORDER BY decade_count DESC;
