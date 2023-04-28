# 🇪🇺 Population in Europe

**1. Group countries by  range population and show the 5 most populous countries**

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
    FROM population
    ORDER BY population DESC
    LIMIT 5;
````

**Answer:**

![obraz](https://user-images.githubusercontent.com/100040541/235235949-21a80aac-4b78-482e-b266-0604f230624a.png)

- Germany is the most populous country in Europe. Germany is followed by France, United Kingdom, Italy and Spain. The top five countries together hold a 57% share of the Europe population. As of 2021, 14 countries have a population above 10 million.

***

**2. Show the five countries with the lowest population growth**

````sql
SELECT country_name, birth_rate-death_rate as population_growth
FROM countries
ORDER BY population_growth ASC
LIMIT 5;
````

**Answer:**

![obraz](https://user-images.githubusercontent.com/100040541/235245678-1a6bc289-5644-4f68-b4d4-1682542388e1.png)

- The top five countries with the fastest shrinking populations are mostly in Eastern Europe. Bulgaria's population decreases by almost 10%.

***

**3. Which five countries have the largest gender gap in life expectancy?**

````sql
SELECT country_name, female_life_expectancy-male_life_expectancy as gender_difference_life_expectancy
FROM countries
ORDER BY gender_difference_life_expectancy DESC
LIMIT 5;
````

**Answer:**

![obraz](https://user-images.githubusercontent.com/100040541/235245878-702129cb-f5ce-48d3-909b-20464189d2eb.png)

- Interestingly, the five countries with the largest differences in life expectancy between men and women were in the former Soviet Union. It is worth mentioning that the greatest diversification of the gap in the life expectancy of women and men in the world occurs in Russia.

***


