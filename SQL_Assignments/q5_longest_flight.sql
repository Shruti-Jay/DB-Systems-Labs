SELECT model,range
FROM Aircrafts
WHERE range = (SELECT MAX(range) FROM Aircrafts);
