UPDATE FS
SET
	FS.amount = FSU.amount
	FS.date = FSU.date
	FS.DateKey = FSU.DateKey
FROM [FactSales] FS
INNER JOIN [FactSales_Update] FSU ON FS.transactionID = FSU.transactionID