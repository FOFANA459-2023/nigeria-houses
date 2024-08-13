--Average price of houses in each state:
SELECT state, AVG(price) AS average_price
FROM nigeria_houses_data$
GROUP BY state;

--Houses with more than 4 bedrooms in Lagos:
SELECT COUNT(*) AS house_count
FROM nigeria_houses_data$
WHERE bedrooms > 4 AND state = 'Lagos';

--Total number of parking spaces in Abuja:
SELECT SUM(parking_space) AS total_parking_spaces
FROM nigeria_houses_data$
WHERE state = 'Abuja';

--Top 5 most expensive houses and their details:
SELECT TOP 5 *
FROM nigeria_houses_data$
ORDER BY price DESC


--Average number of bathrooms in houses priced above 100,000,000:
SELECT AVG(bathrooms) AS average_bathrooms
FROM nigeria_houses_data$
WHERE price > 100000000;

--Number of houses in each town:
SELECT town, COUNT(*) AS house_count
FROM nigeria_houses_data$
GROUP BY town;

--Average price of houses with at least 3 parking spaces:
SELECT AVG(price) AS average_price
FROM nigeria_houses_data$
WHERE parking_space >= 3;

--House with the highest number of toilets and its details:
SELECT TOP 1 *
FROM nigeria_houses_data$
ORDER BY toilets DESC

--Total price of all houses in Lagos:
SELECT SUM(price) AS total_price
FROM nigeria_houses_data$
WHERE state = 'Lagos';

--Titles of houses with more than 5 bedrooms in Abuja:
SELECT title
FROM nigeria_houses_data$
WHERE bedrooms > 5 AND state = 'Abuja';

--Average number of bedrooms in houses with the title 'Detached Duplex':
SELECT AVG(bedrooms) AS average_bedrooms
FROM nigeria_houses_data$
WHERE title = 'Detached Duplex';

--Houses with the same number of bedrooms and bathrooms:
SELECT COUNT(*) AS house_count
FROM nigeria_houses_data$
WHERE bedrooms = bathrooms;

--Average price of houses in each town in Lagos:
SELECT town, AVG(price) AS average_price
FROM nigeria_houses_data$
WHERE state = 'Lagos'
GROUP BY town;

--Most common title of houses in Abuja:
SELECT TOP 5 title, COUNT(*) AS title_count
FROM nigeria_houses_data$
WHERE state = 'Abuja'
GROUP BY title
ORDER BY title_count DESC


--Details of houses with more than 4 bedrooms, more than 4 bathrooms, and priced below 500,000,000:
SELECT *
FROM nigeria_houses_data$
WHERE bedrooms > 4 AND bathrooms > 4 AND price < 500000000;