SELECT F.flight_no, AC.model, DA.city AS departure_city, AA.city AS arrival_city
FROM Flights F
JOIN Airports DA ON F.departure_airport = DA.airport_code
JOIN Airports AA ON F.arrival_airport = AA.airport_code
JOIN Aircrafts AC ON F.aircraft_code = AC.aircraft_code
WHERE F.status = 'Departed';
-- gives 58 rows of output. After entering the psql, it outputs some of the required result.
-- To see the rest and the number of rows, you need to click and hold enter.