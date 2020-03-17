--Find the ID, name, year and length for every movie which was longer than the 2011 movie Avengers. In
--your result, movies with the largest year should appear first; within each year, movies should be in
--alphabetized by name. No duplicates should appear in your answer.


SELECT DISTINCT m2.movieID,m2.name,m2.year,m2.length
FROM Movies m, Movies m2
WHERE (m2.name!='Avengers' OR m2.year!='2011') 
	AND m.name='Avengers' 
	AND m.year='2011' 
	AND m.length<m2.length
ORDER BY m2.year DESC, m2.name ASC; 
