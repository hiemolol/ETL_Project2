select * from values

select min(countries) as countries, 
	avg(happiness_score) as happiness_score from (
		SELECT country.code, country.countries, values.year, values.happiness_score, values.military_interference, values.foreigners_visit
		FROM country
		INNER JOIN values ON country.code=values.code
		WHERE happiness_score<=5
) as results group by countries
;

SELECT country.code, country.countries, values.year, values.happiness_score, values.military_interference, values.foreigners_visit
FROM country
INNER JOIN values ON country.code=values.code
WHERE year=2008
AND happiness_score<=5
;