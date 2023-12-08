USE projekt
GO

SELECT 
    c.CustomersKey, 
    c.first_name, 
	c.last_name, 
    SUM(s.amount) as TotalSales,
    RANK() OVER (ORDER BY SUM(s.amount) DESC) as SalesRank
FROM 
    FactSales s
JOIN 
    DIMCustomers c ON s.CustomersKey = c.CustomersKey
GROUP BY 
    c.CustomersKey, c.first_name, c.last_name;
GO