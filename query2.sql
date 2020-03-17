--Find the name and year of all movies for which a customer named Donald Duck bought a ticket. No duplicates should appear in your answer.

SELECT DISTINCT m.name, m.year           
FROM Tickets t, Customers c, Showings s, Movies m
WHERE t.customerID=c.customerID 
	AND c.name='Donald Duck' 
	AND t.showingDate=s.showingDate 
	AND t.theaterID=s.theaterId 
	AND t.startTime=s.startTime
	AND s.movieID=m.movieID;
