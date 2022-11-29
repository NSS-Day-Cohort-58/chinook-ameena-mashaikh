-- Which sales agent made the most in sales over all?

SELECT EmployeeName, MAX(TotalSales) AS TotalSales
FROM (
    SELECT
        e.firstName ||" "|| e.lastName as "EmployeeName",
        SUM(i.Total) AS TotalSales
    FROM Invoice i
    JOIN Customer c 
        ON c.CustomerId = i.CustomerId
    JOIN Employee e 
        ON c.SupportRepId = e.EmployeeId
    GROUP BY e.EmployeeId)
