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

- The top 5 most populous European countries include: Germany, France, United Kingdom, Italy and Spain.

***

**2. What is the number of nodes per region?**

 --Group countries by population using CASE and show 5 countries with the largest population
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
