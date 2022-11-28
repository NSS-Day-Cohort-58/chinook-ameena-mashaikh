SELECT FirstName, LastName, InvoiceId, InvoiceDate, BillingCountry  FROM Customer
JOIN Invoice
    ON Invoice.CustomerId = Customer.CustomerId
WHERE country = "Brazil"