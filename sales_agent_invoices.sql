SELECT Employee.FirstName AS EmployeeFirstName, Employee.LastName AS EmployeeLastName, InvoiceId FROM CUSTOMER
JOIN Invoice
    ON Customer.CustomerId = Invoice.CustomerId
JOIN Employee
    ON Customer.SupportRepId = Employee.EmployeeId
