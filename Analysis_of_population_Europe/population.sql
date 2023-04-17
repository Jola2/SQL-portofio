-- Table: population_europe

CREATE TABLE population_europe
(
  country_name VARCHAR(50),
  region VARCHAR(50),
  area VARCHAR(40),
  population numeric,
  population_per_sq_km numeric,
  male_life_expectancy numeric,
  female_life_expectancy numeric,
  birth_rate numeric,
  death_rate numeric
);

-- Copy over data from CSV
\copy population_europe FROM 'population_europe.csv' DELIMITER ',' CSV HEADER;
