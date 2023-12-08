SELECT TOP (1000) [date]
      ,[transactionID]
      ,[amount]
      ,[CustomersKey]
      ,[CarrierKey]
      ,[DateKey]
  FROM [projekt].[dbo].[FactSales]
  ORDER BY [transactionID] DESC
