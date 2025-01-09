# Questions difficulty: Easy

# List all cities in the database along with their country codes.
select name, countrycode
from city;

# Find the total population of all cities in the 'Uttarakhand' district.
select sum(population) as total_population
from city
where district = 'Dhaka';

# Display the country name, continent, and population of all countries in the 'Asia' continent.
select name, continent, population
from country
where continent = 'Asia';

# Find the names of cities with a population greater than 1,000,000.
select name from city
where population > 1000000;

# List the official languages spoken in 'India' along with the percentage of speakers.
select language, percentage
from countrylanguage
where countrycode = 'IND' and isofficial = 'T';

# Retrieve the names of all countries along with their head of state.
select name, headofstate
from country;

# Calculate the average life expectancy of countries in the 'South America' continent.
select avg(lifeexpectancy) as average_lifeExpectancy
from country
where continent = 'south america';

# List the names of countries that gained independence after the year 1950.
select name from country
where indepyear >= 1950;

# Find the total GNP of all countries in the 'Europe' region.
select sum(gnp) as total_gnp from country
where continent = 'europe';

# Display the names and populations of cities in 'India' sorted by population in descending order.
select name, population
from city
where countrycode = (select code from country where name = 'India');
