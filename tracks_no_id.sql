/*
Provide a query that shows all the Tracks, but displays no IDs. 
The resultant table should include:
Album name
Media type
Genre
*/

SELECT a.Title as AlbumName, m.Name AS MediaFormat, g.Name AS Genre
FROM Track t
JOIN Album a
    ON t.AlbumId = a.AlbumId
JOIN MediaType m 
    ON m.MediaTypeId = t.MediaTypeId
JOIN Genre g 
    ON g.GenreId = t.GenreId