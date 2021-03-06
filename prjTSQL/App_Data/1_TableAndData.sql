

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Order_Date] [date] NOT NULL,
	[Cust_Name] [nvarchar](10) NOT NULL,
	[Qty] [int] NOT NULL,
	[Price] [int] NULL
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Specialty](
	[EmpName] [nvarchar](10) NOT NULL,
	[Major] [varchar](20) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Orders] ([Order_Date], [Cust_Name], [Qty], [Price]) VALUES (CAST(N'2009-08-01' AS Date), N'李先生', 118, 100)
GO
INSERT [dbo].[Orders] ([Order_Date], [Cust_Name], [Qty], [Price]) VALUES (CAST(N'2009-08-02' AS Date), N'李先生', 145, 100)
GO
INSERT [dbo].[Orders] ([Order_Date], [Cust_Name], [Qty], [Price]) VALUES (CAST(N'2009-08-03' AS Date), N'李先生', 353, 50)
GO
INSERT [dbo].[Orders] ([Order_Date], [Cust_Name], [Qty], [Price]) VALUES (CAST(N'2009-08-01' AS Date), N'張先生', 13, 250)
GO
INSERT [dbo].[Orders] ([Order_Date], [Cust_Name], [Qty], [Price]) VALUES (CAST(N'2009-08-03' AS Date), N'張先生', 253, 100)
GO
INSERT [dbo].[Orders] ([Order_Date], [Cust_Name], [Qty], [Price]) VALUES (CAST(N'2009-08-02' AS Date), N'曹先生', 37, 250)
GO
INSERT [dbo].[Orders] ([Order_Date], [Cust_Name], [Qty], [Price]) VALUES (CAST(N'2009-08-03' AS Date), N'曹先生', 53, 100)
GO
INSERT [dbo].[Orders] ([Order_Date], [Cust_Name], [Qty], [Price]) VALUES (CAST(N'2009-08-01' AS Date), N'陳先生', 231, 100)
GO
INSERT [dbo].[Specialty] ([EmpName], [Major]) VALUES (N'陳先生', N'Oracle')
GO
INSERT [dbo].[Specialty] ([EmpName], [Major]) VALUES (N'陳先生', N'MSSQL')
GO
INSERT [dbo].[Specialty] ([EmpName], [Major]) VALUES (N'陳先生', N'DB2')
GO
INSERT [dbo].[Specialty] ([EmpName], [Major]) VALUES (N'林先生', N'MSSQL')
GO
INSERT [dbo].[Specialty] ([EmpName], [Major]) VALUES (N'林先生', N'MySQL')
GO
INSERT [dbo].[Specialty] ([EmpName], [Major]) VALUES (N'張先生', N'Teradata')
GO
INSERT [dbo].[Specialty] ([EmpName], [Major]) VALUES (N'江先生', N'Oracle')
GO
INSERT [dbo].[Specialty] ([EmpName], [Major]) VALUES (N'江先生', N'MySQL')
GO
INSERT [dbo].[Specialty] ([EmpName], [Major]) VALUES (N'方先生', N'MSSQL')
GO
INSERT [dbo].[Specialty] ([EmpName], [Major]) VALUES (N'方先生', N'Oracle')
GO
INSERT [dbo].[Specialty] ([EmpName], [Major]) VALUES (N'方先生', N'DB2')
GO
