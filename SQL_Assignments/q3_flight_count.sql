
SELECT A.airport_name, COUNT(F.flight_id) AS flight_count
FROM Airports A
LEFT JOIN Flights F ON A.airport_code = F.arrival_airport
WHERE F.status = 'Departed'
GROUP BY A.airport_name
HAVING COUNT(F.flight_id) > 0;

