
SELECT COUNTRY, PEOPLE_VACCINATED_PER_HUNDRED, DATE
FROM CountryVaccinations$
WHERE (people_vaccinated_per_hundred IS NOT NULL
AND DATEPART(YY, date) = 2022
AND DATEPART(mm, date) = 03
AND DATEPART(dd, date) = 29)
ORDER BY people_vaccinated_per_hundred DESC


SELECT COUNTRY, CountryVaccinations$.DAILY_VACCINATIONS,CountryVaccinationsManufacturer$.VACCINE, CountryVaccinationsManufacturer$.TOTAL_VACCINATIONS,CountryVaccinations$.DATE
FROM CountryVaccinations$
JOIN CountryVaccinationsManufacturer$ ON CountryVaccinations$.DATE = CountryVaccinationsManufacturer$.DATE
WHERE COUNTRY LIKE '%United States%'
ORDER BY DATE

SELECT COUNTRY, CountryVaccinations$.iso_code AS COUNTRY_CODE, MAX(countryvaccinationsmanufacturer$.TOTAL_VACCINATIONS) AS TOTAL_VACCINATIONS, VACCINE
FROM CountryVaccinations$
JOIN CountryVaccinationsManufacturer$ ON CountryVaccinations$.DATE = CountryVaccinationsManufacturer$.DATE
WHERE VACCINE LIKE '%MODERNA%'
GROUP BY COUNTRY, VACCINE, iso_code

SELECT COUNTRY, MAX(total_vaccinations) AS TOTAL_VACCINATED, MAX(PEOPLE_FULLY_VACCINATED) AS PEOPLE_FULLY_VACCINATED
FROM CountryVaccinations$
GROUP BY COUNTRY
ORDER BY MAX(total_vaccinations) DESC




