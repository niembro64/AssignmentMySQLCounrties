-- 1. What query would you run to get all the countries that speak Slovene? Your query should return the name of the country, language and language percentage. Your query should arrange the result by language percentage in descending order. (1)
SELECT countries.name, languages.language, languages.percentage
FROM countries
INNER JOIN languages on languages.country_code = countries.code
WHERE languages.language = "Slovene"
ORDER BY languages.percentage DESC;

-- 2. What query would you run to display the total number of cities for each country? Your query should return the name of the country and the total number of cities. Your query should arrange the result by the number of cities in descending order. (3)
SELECT countries.name, COUNT(*)
FROM cities 
LEFT JOIN countries ON  countries.code = cities.country_code
GROUP BY cities.country_code
ORDER BY COUNT(*) DESC;

-- 3. What query would you run to get all the cities in Mexico with a population of greater than 500,000? Your query should arrange the result by population in descending order. (1)
SELECT cities.name, cities.population
FROM cities
LEFT JOIN countries ON cities.country_code = countries.code
WHERE countries.name = "Mexico" AND cities.population > 500000
ORDER BY cities.population DESC;

-- 4. What query would you run to get all languages in each country with a percentage greater than 89%? Your query should arrange the result by percentage in descending order. (1)
SELECT country.name, languages.language, languages.percentage
FROM languages
LEFT JOIN country ON country.code = languages.country_code
WHERE percentage > 89
ORDER BY percentage DESC;

-- 5. What query would you run to get all the countries with Surface Area below 501 and Population greater than 100,000? (2)
SELECT countries.name, countries.surface_area, countries.population
FROM countries
WHERE countries.surface_area < 501 and countries.population > 100000
ORDER BY countries.surface_area DESC;

-- 6. What query would you run to get countries with only Constitutional Monarchy with a capital greater than 200 and a life expectancy greater than 75 years? (1)
SELECT countries.name
FROM countries
WHERE countries.government_form = "Constitutional Monarchy" AND countries.life_expectancy > 75;


-- 7. What query would you run to get all the cities of Argentina inside the Buenos Aires district and have the population greater than 500, 000? The query should return the Country Name, City Name, District and Population. (2)

-- 8. What query would you run to summarize the number of countries in each region? The query should display the name of the region and the number of countries. Also, the query should arrange the result by the number of countries in descending order. (2)

-- Note: You may download this PDF file displaying the expected results from the quer