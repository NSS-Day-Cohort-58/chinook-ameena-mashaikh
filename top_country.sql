--Which country's customers spent the most?

SELECT CustomerName, MAX(TotalSpent)
FROM (
    SELECT 
        c.firstName ||" "|| c.lastName as "CustomerName", 
        SUM(i.Total) AS TotalSpent
    FROM Invoice i
    JOIN Customer c  
        ON i.CustomerId = c.CustomerId
    GROUP BY c.CustomerId
)