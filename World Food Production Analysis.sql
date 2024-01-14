
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


SELECT ENTITY, YEAR, MAX([Total Food Produced (tons)]) AS TotalFoodProducedinTons
From ['Working Sheet$']
GROUP BY Entity, YEAR
ORDER BY MAX([Total Food Produced (tons)]) DESC



SELECT *
FROM ['Working Sheet$']
WHERE ENTITY LIKE '%PUERTO RICO%' AND YEAR LIKE '%1997%'


SELECT ENTITY, YEAR, MIN([Total Food Produced (tons)]) AS TotalFoodProducedinTons
From ['Working Sheet$']
GROUP BY Entity, YEAR
ORDER BY MIN([Total Food Produced (tons)])


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


