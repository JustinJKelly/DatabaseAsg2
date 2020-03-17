--For each ticket for which all of the following are true:
--a) the ticket was bought by a customer whose name starts with ‘D’ (capital D),
--b) the ticket is for a showing whose price code isn't NULL, and
--c) the ticket is on a date between June 1, 2019 and June 30, 2019 (including those dates), and
--d) the ticket is for a theater that has more than 5 seats,
--Output the ID, name and address of the customer, the address and number of seats of the theater, and the
--price code for the showing. The 6 attributes in your result should appear as custID, custName,
--custAddress, theaterAddress, theaterSeats and priceCode. No duplicates should appear in your result.

SELECT c.customerID AS custID,c.name AS custName,c.address AS custAddress,th.address AS theaterAddress,
th.numSeats AS theaterSeats,s.priceCode AS priceCode 
FROM Customers c,Tickets t,Showings s,Theaters th
WHERE t.customerID=c.customerID AND c.name LIKE 'D%' 
	AND s.priceCode is not NULL AND t.showingDate>='2019-06-01' 
	AND t.showingDate<='2019-06-30' AND th.numSeats>5 
	AND t.startTime=s.startTime AND t.showingDate=s.showingDate 
	AND s.theaterID=t.theaterID AND th.theaterID=t.theaterID;

