--What are the total sales for each year?

SELECT DISTINCT 
strftime('%Y', InvoiceDate) AS YEAR, 
SUM(total) AS EARNINGS 
FROM INVOICE
GROUP BY YEAR



--What are the respective total sales for each year 2009 and 2011?
SELECT 
    SUM(Total)
FROM Invoice
WHERE InvoiceDate LIKE "2009-%"; 

SELECT 
    SUM(Total)
FROM Invoice
WHERE InvoiceDate LIKE "2011-%"; 