USE projekt
GO

SELECT 
    transactionID, 
    amount,
    PERCENT_RANK() OVER (ORDER BY amount) as PercentileRank
FROM 
    FactSales
ORDER BY PercentileRank DESC
GO	