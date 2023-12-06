USE [projekt]
GO

/****** Object:  Table [dbo].[customers]    Script Date: 12/6/2023 8:07:48 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIMCustomers](
	CustomersKey int identity(1,1),
	[id] [int] NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](100) NULL,
	[street] [varchar](100) NULL,
	[city] [varchar](100) NULL,
	[state] [varchar](50) NULL,
	[country] [varchar](100) NULL,
	[phone] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[start_date] [date] NULL,
	[end_date] [date] NULL
) ON [PRIMARY]
GO


