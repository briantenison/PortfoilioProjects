--RECORD AMOUNT OF MAIZE EVER PRODUCED IN A YEAR
Select MAX([Maize Production (tons)]) as MaximumMaizeProducedinOneYear, Entity, Year
From ['Working Sheet$']
WHERE Entity not like '%asia%'
AND Entity not like '%africa%'
AND Entity not like '%oceania%'
AND Entity not like '%north america%'
AND Entity not like '%europe%'
AND Entity not like '%south america%'
AND Entity not like '%americas%'
GROUP BY  Entity, Year
ORDER BY MAX([Maize Production (tons)]) DESC

--RECORD AMOUNT OF FOOD PRODUCED IN A YEAR BY ANY COUNTRY
SELECT ENTITY, YEAR, MAX([Total Food Produced (tons)]) AS TotalFoodProducedinTons
From ['Working Sheet$']
GROUP BY Entity, YEAR
ORDER BY MAX([Total Food Produced (tons)]) DESC


--PUERTO RICO'S PRODUCTS IN THEIR RECORD YEAR OF 1997
SELECT *
FROM ['Working Sheet$']
WHERE ENTITY LIKE '%PUERTO RICO%' AND YEAR LIKE '%1997%'

--LEAST AMOUNT OF FOOD PRODUCED IN A YEAR BY ANY COUNTRY
SELECT ENTITY, YEAR, MIN([Total Food Produced (tons)]) AS TotalFoodProducedinTons
From ['Working Sheet$']
GROUP BY Entity, YEAR
ORDER BY MIN([Total Food Produced (tons)])


--COUNTRIES WITH THE HIGHEST AVERAGE FOOD PRODUCTION ACROSS ALL YEARS
SELECT ENTITY, AVG([Total Food Produced (tons)]) as AVGFoodProduced
FROM ['Working Sheet$']
WHERE Entity not like '%asia%'
AND Entity not like '%africa%'
AND Entity not like '%oceania%'
AND Entity not like '%north america%'
AND Entity not like '%europe%'
AND Entity not like '%south america%'
AND Entity not like '%americas%'
GROUP BY ENTITY
ORDER BY AVGFoodProduced DESC

--CONTINENTS WITH THE HIGHEST AVERAGE FOOD PRODUCTION ACROSS ALL YEARS
SELECT ENTITY, AVG([Total Food Produced (tons)]) as AVGFoodProduced
FROM ['Working Sheet$']
WHERE Entity like '%asia%'
OR Entity like 'africa'
OR Entity like '%oceania%'
OR Entity like '%north america%'
OR Entity like '%europe%'
OR Entity like '%south america%'
OR Entity like '%americas%'
GROUP BY ENTITY
ORDER BY AVGFoodProduced DESC


