SELECT TOP (1000) [CarrierKey]
      ,[carrier_id]
      ,[carrier_name]
      ,[address]
      ,[tax_id]
      ,[contact_person]
      ,[start_date]
      ,[end_date]
  FROM [projekt].[dbo].[DIMCarrier]
  ORDER BY [carrier_id] DESC