/*
Provide a query that shows the invoices associated with each sales agent. The resultant table should include:
Sales Agent's full name
Invoice ID
*/
SELECT 
    e.firstName ||" "|| e.lastName as "EmployeeName",
    i.InvoiceId 
FROM CUSTOMER c
JOIN Invoice i
    ON c.CustomerId = i.CustomerId
JOIN Employee e
    ON c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId
