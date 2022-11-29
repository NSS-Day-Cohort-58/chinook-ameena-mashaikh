/*
Provide a query that shows the total number of tracks in each playlist. 
The resultant table should include:
Playlist name
Total number of tracks on each playlist
*/

SELECT p.Name as PlaylistName, COUNT(t.TrackId) AS TotalTracks
FROM PlaylistTrack pt 
JOIN Playlist p 
    ON pt.PlaylistId = p.PlaylistId
JOIN Track t 
    ON t.TrackId = pt.TrackId
GROUP BY p.Name