SELECT Employee.FirstName AS EmployeeFirstName, Employee.LastName AS EmployeeLastName, 
Customer.FirstName AS CustomerFirstName, Customer.LastName AS CustomerLastName,
SUM(Total) AS InvoiceTotal FROM CUSTOMER
JOIN Invoice
    ON Customer.CustomerId = Invoice.CustomerId
JOIN Employee
    ON Customer.SupportRepId = Employee.EmployeeId
GROUP BY Customer.CustomerId