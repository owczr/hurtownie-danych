USE [projekt]
GO

/****** Object:  Table [dbo].[carrier]    Script Date: 12/6/2023 8:10:07 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIMCarrier](
	CarrierKey int identity(1,1),
	[carrier_id] [smallint] NULL,
	[carrier_name] [varchar](4) NULL,
	[address] [varchar](48) NULL,
	[tax_id] [int] NULL,
	[contact_person] [varchar](19) NULL,
	[start_date] [date] NULL,
	[end_date] [date] NULL
) ON [PRIMARY]
GO


