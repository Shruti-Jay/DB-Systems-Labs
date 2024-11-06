SELECT DISTINCT s1.fare_conditions
FROM SEATS AS s1
WHERE NOT EXISTS (
    SELECT a.aircraft_code
    FROM AIRCRAFTS AS a
    WHERE NOT EXISTS (
        SELECT s2.aircraft_code
        FROM SEATS AS s2
        WHERE s2.fare_conditions = s1.fare_conditions
        AND s2.aircraft_code = a.aircraft_code
    )
);
