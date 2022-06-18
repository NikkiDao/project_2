--Create tables for data
CREATE TABLE big_city (
city VARCHAR,
medical_cause VARCHAR,
measure FLOAT);

CREATE TABLE fast_food (
city VARCHAR,
restaurant_count INT);



--Combine both tables
SELECT big_city.city, big_city.medical_cause, big_city.measure, fast_food.restaurant_count
FROM big_city
JOIN fast_food
ON big_city.city = fast_food.city;













