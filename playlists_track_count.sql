SELECT p.Name as PlaylistName, COUNT(t.TrackId) AS TotalTracks
FROM PlaylistTrack pt 
JOIN Playlist p 
    ON pt.PlaylistId = p.PlaylistId
JOIN Track t 
    ON t.TrackId = pt.TrackId
GROUP BY p.Name