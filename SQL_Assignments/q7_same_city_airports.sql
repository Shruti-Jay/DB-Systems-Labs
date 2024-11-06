SELECT DISTINCT a1.city, a1.airport_name AS airport_name_1, a2.airport_name AS airport_name_2
FROM Airports AS a1
INNER JOIN Airports AS a2 ON a1.city = a2.city AND a1.airport_code < a2.airport_code;
