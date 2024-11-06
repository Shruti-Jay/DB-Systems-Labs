SELECT DISTINCT A.airport_name
FROM Airports A
JOIN Flights F ON A.airport_code = F.arrival_airport
WHERE A.city = 'Moscow' AND F.status = 'Departed';

