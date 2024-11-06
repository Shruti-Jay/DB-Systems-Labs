SELECT DISTINCT a.aircraft_code
FROM AIRCRAFTS AS a
WHERE NOT EXISTS (
    SELECT 1
    FROM SEATS AS s
    WHERE a.aircraft_code = s.aircraft_code
    AND s.fare_conditions = 'Business'
);
