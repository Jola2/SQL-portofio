-- Table: population

CREATE TABLE population
(
  country_name VARCHAR(50),
  region VARCHAR(50),
  area VARCHAR(40),
  population_country numeric,
  population_per_sq_km numeric,
  male_life_expectancy numeric,
  female_life_expectancy numeric,
  birth_rate numeric,
  death_rate numeric
);

-- Copy over data from CSV
\copy population FROM 'population.csv' DELIMITER ',' CSV HEADER;
