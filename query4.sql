--Find the ID and name of each customer whose name has the letter ‘a’ or ‘A’ anywhere in it, and who
--bought tickets to at least 2 different movies. Careful; a customer who bought 2 or more tickets to the
--same movie doesn't qualify. No duplicates should appear in your answer


SELECT DISTINCT c.customerID,c.name
FROM Customers c, Movies m, Tickets t, Showings s
WHERE (c.name LIKE '%a%' OR c.name LIKE '%A%')
	AND c.customerID=t.customerID AND t.showingDate=s.showingDate  
	AND t.startTime=s.startTime AND t.theaterID=s.theaterID AND s.movieID=m.movieID
GROUP BY c.customerID,c.name 
HAVING COUNT(DISTINCT m.movieID)>=2;
