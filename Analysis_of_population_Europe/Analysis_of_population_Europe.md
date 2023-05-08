# 🇪🇺 Population in Europe

**1. What is the average population density, average grown rate and total population in Europe**

````sql
SELECT AVG(population_per_sq_km) AS average_population_per_sq_km, AVG(birth_rate-death_rate) as average_population_growth, SUM(population) AS population_of_europe
FROM population_data p
JOIN lifespan l ON  p.country_name=l.country_name;
````

**Answer:**

![obraz](https://user-images.githubusercontent.com/100040541/236873979-01557dba-77cb-48c2-9d2d-a0665d3c4eb3.png)

- The average population density is about 160 km², the growth rate is negative and the population is almost 600 million.

***

**2.Show countries with positive population growth and at least 5 million population **

````sql
SELECT  p.country_name AS country, population, birth_rate-death_rate AS population_growth
FROM population_data p
JOIN lifespan l ON  p.country_name=l.country_name
WHERE population_growth>0 and population>=5000000
ORDER BY population_growth DESC;
````

**Answer:**
![obraz](https://user-images.githubusercontent.com/100040541/236878242-0837c451-70ea-4409-bc31-331fa245b68d.png)


- There are only 5 countries in Europe with positive population growth and a population of at least 5 million. Norway wins this ranking because it has one of the best HDI indicators, so it attracts immigrants to live in the country.

***

**3. Group countries by  range population and show the 5 most populous countries**

````sql
SELECT country_name, population,
    CASE
        WHEN population > '10000000' THEN "above 50 million"
        WHEN population > '10000000' THEN "above 10 million"
        WHEN population > '1000000' THEN "1-10 million"
        WHEN population > '100000' THEN "100,000-1 million"
        WHEN population > '10000' THEN "10,000-100,000"
        ELSE "below 10,000"
    END "population range"
    FROM population_data
    ORDER BY population DESC
    LIMIT 5;
````

**Answer:**

![obraz](https://user-images.githubusercontent.com/100040541/235235949-21a80aac-4b78-482e-b266-0604f230624a.png)

- Germany is the most populous country in Europe. Germany is followed by France, United Kingdom, Italy and Spain. The top five countries together hold a 57% share of the Europe population. As of 2021, 14 countries have a population above 10 million.

***

**4. Show the five countries with the lowest population growth**

````sql
SELECT country_name, birth_rate-death_rate as population_growth
FROM lifespan
ORDER BY population_growth ASC
LIMIT 5;
````

**Answer:**

![obraz](https://user-images.githubusercontent.com/100040541/235245678-1a6bc289-5644-4f68-b4d4-1682542388e1.png)

- The top five countries with the fastest shrinking populations are mostly in Eastern Europe. Bulgaria's population decreases by almost 10%.

***

**5. Which five countries have the largest gender gap in life expectancy?**

````sql
SELECT country_name, female_life_expectancy-male_life_expectancy as gender_difference_life_expectancy
FROM lifespan
ORDER BY gender_difference_life_expectancy DESC
LIMIT 5;
````

**Answer:**

![obraz](https://user-images.githubusercontent.com/100040541/235245878-702129cb-f5ce-48d3-909b-20464189d2eb.png)

- Interestingly, the five countries with the largest differences in life expectancy between men and women were in the former Soviet Union. It is worth mentioning that the greatest diversification of the gap in the life expectancy of women and men in the world occurs in Russia.

***

**6. Check if there is a country in Europe where the life expectancy of men is higher than that of women**

````sql
SELECT country_name
FROM lifespan
WHERE EXISTS (
  SELECT female_life_expectancy-male_life_expectancy as difference_life_expectancy
  FROM countries
  WHERE difference_life_expectancy < 0
);
````

**Answer:**

![obraz](https://user-images.githubusercontent.com/100040541/236861055-bbbab9d0-ab67-48d2-915e-130c8188c4a6.png)

- It's no secret that women generally live longer. There is no European country where male life expectancy is greater than female life expectancy.

***

**7.Show countries with an area of over 300,000 km² and a population of over 50 million starting with the country with the largest area in this group**

````sql
SELECT country_name, area_km², population
FROM population_data
WHERE area_km² > 300000  and population > 40000000 
ORDER BY area_km² DESC;
````

**Answer:**

![obraz](https://user-images.githubusercontent.com/100040541/236867491-b5095880-4b4f-4087-ae18-d8e1aa713b24.png)

- Ukraine stands out in this group with the largest area, but with almost twice as much population compared to the European leader in terms of population, which is Germany.

***

**8.Show the 5 least densely populated countries**

````sql
SELECT country_name, population_per_sq_km
FROM population_data
ORDER BY population_per_sq_km ASC
LIMIT 5;
````

**Answer:**

![obraz](https://user-images.githubusercontent.com/100040541/236870967-92dbded2-fa96-4895-8f74-40a0d97db190.png)

- The least populous are the Scandinavian countries.


