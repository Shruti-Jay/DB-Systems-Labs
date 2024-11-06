
SELECT t.passenger_name, f.flight_no, COUNT(*) AS flying_count
FROM Flights f
INNER JOIN Ticket_Flights tf ON f.flight_id = tf.flight_id
INNER JOIN Tickets t ON tf.ticket_no = t.ticket_no
WHERE f.status = 'Arrived'
GROUP BY t.passenger_name, f.flight_no
HAVING COUNT(*) > 20;
