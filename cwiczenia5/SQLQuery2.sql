USE [cwiczenia5]
GO

/****** Object:  Table [dbo].[carrier]    Script Date: 11/29/2023 3:11:39 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIMCarrier](
    CarrierKey int identity(1,1),
	[carrier_id] [int] NULL,
	[carrier_name] [varchar](50) NULL,
	[address] [varchar](100) NULL,
	[tax_id] [int] NULL,
	[contact_person] [varchar](50) NULL
) ON [PRIMARY]
GO


