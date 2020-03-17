--Find all the theaters that have a broken seat. No duplicates should appear in your answer.

SELECT DISTINCT t.theaterID,t.address 
FROM Theaters t, TheaterSeats ts 
WHERE t.theaterID=ts.theaterID AND ts.brokenSeat=True;
