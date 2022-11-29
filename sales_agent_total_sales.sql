/*
Provide a query that shows total sales made by each sales agent. 
The resultant table should include:
Employee full name
Total sales for each employee (all time)
*/

SELECT 
    e.FirstName, 
    e.LastName,
    SUM(i.Total) AS TotalSales
FROM Invoice i
JOIN Customer c 
    ON c.CustomerId = i.CustomerId
JOIN Employee e 
    ON c.SupportRepId = e.EmployeeId

GROUP BY e.EmployeeId