SELECT ac.aircraft_code, ac.model, s.fare_conditions
FROM Aircrafts AS ac
INNER JOIN Seats AS s ON ac.aircraft_code = s.aircraft_code
GROUP BY ac.aircraft_code, ac.model, s.fare_conditions;
