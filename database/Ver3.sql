CREate database [FINAL_SE]
go
USE [FINAL_SE]
GO
/****** Object:  Table [dbo].[ACCOUNTANT]    Script Date: 5/3/2023 4:12:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ACCOUNTANT](
	[Accountant_ID] [varchar](300) NOT NULL,
	[Accountant_Name] [varchar](500) NULL,
	[Gender] [varchar](6) NULL,
	[Accountant_Birth] [date] NULL,
	[Accountant_Address] [varchar](200) NULL,
	[Accountant_Email] [varchar](100) NULL,
	[Accountant_Phone] [varchar](20) NULL,
	[Accountant_UserName] [varchar](100) NULL,
	[Accountant_Password] [varchar](100) NULL,
	[Accountant_Image] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Accountant_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AGENT]    Script Date: 5/3/2023 4:12:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AGENT](
	[Agent_ID] [varchar](300) NOT NULL,
	[Agent_Name] [varchar](500) NULL,
	[Agent_Address] [varchar](200) NULL,
	[Agent_Email] [varchar](100) NULL,
	[Agent_Phone] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Agent_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AGENT_ACCOUNT]    Script Date: 5/3/2023 4:12:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AGENT_ACCOUNT](
	[UserName] [varchar](300) NOT NULL,
	[Agent_ID] [varchar](300) NULL,
	[Account_Password] [varchar](200) NULL,
	[Agent_Level] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CUSTOMER]    Script Date: 5/3/2023 4:12:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUSTOMER](
	[Customer_ID] [varchar](300) NOT NULL,
	[Customer_Name] [varchar](100) NULL,
	[Customer_Birth] [date] NULL,
	[Customer_Gender] [varchar](6) NULL,
	[Customer_Address] [varchar](200) NULL,
	[Customer_Email] [varchar](100) NULL,
	[Customer_Phone] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Customer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CUSTOMER_ACCOUNT]    Script Date: 5/3/2023 4:12:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUSTOMER_ACCOUNT](
	[UserName] [varchar](300) NOT NULL,
	[Customer_ID] [varchar](300) NULL,
	[Account_Password] [varchar](200) NULL,
	[Customer_Level] [int] NULL,
	[code_forgot_pass] [varchar](200) NULL,
	[Date_Create_Code_Forgot] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GOOD_DELIVERY]    Script Date: 5/3/2023 4:12:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GOOD_DELIVERY](
	[Good_Delivery_ID] [varchar](300) NOT NULL,
	[Transaction_ID] [varchar](300) NULL,
	[Accountant_ID] [varchar](300) NULL,
	[OrderList_ID] [varchar](300) NULL,
	[Date_Created_Good_Delivery] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Good_Delivery_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INVOICE]    Script Date: 5/3/2023 4:12:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INVOICE](
	[Invoice_ID] [varchar](300) NOT NULL,
	[OrderList_ID] [varchar](300) NULL,
	[Date_Created_Invoice] [date] NULL,
	[Status_Invoice] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Invoice_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MOBILE_PRODUCT]    Script Date: 5/3/2023 4:12:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MOBILE_PRODUCT](
	[Product_ID] [varchar](300) NOT NULL,
	[Product_Name] [varchar](500) NULL,
	[TypeProduct_ID] [varchar](300) NULL,
	[Supplier_ID] [varchar](300) NULL,
	[Unit] [varchar](20) NULL,
	[Price] [money] NULL,
	[Product_Quantities] [int] NULL,
	[Image_Product] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Product_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORDER_LIST]    Script Date: 5/3/2023 4:12:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER_LIST](
	[OrderList_ID] [varchar](300) NOT NULL,
	[UserName_Agent] [varchar](300) NULL,
	[UserName_Customer] [varchar](300) NULL,
	[Date_Created_OrderList] [date] NULL,
	[Note] [varchar](500) NULL,
	[Status_OrderList] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderList_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORDER_LIST_DETAILS]    Script Date: 5/3/2023 4:12:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER_LIST_DETAILS](
	[Product_ID] [varchar](300) NOT NULL,
	[OrderList_ID] [varchar](300) NOT NULL,
	[Quantities] [int] NULL,
	[Delivery_Date] [date] NULL,
	[Total_Money] [money] NULL,
	[Remain_Quantities] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Product_ID] ASC,
	[OrderList_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PAYMENT_METHOD]    Script Date: 5/3/2023 4:12:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAYMENT_METHOD](
	[PaymentMethod_ID] [varchar](100) NOT NULL,
	[Method_Name] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentMethod_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RECEIPT_DETAILS]    Script Date: 5/3/2023 4:12:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RECEIPT_DETAILS](
	[Receipt_ID] [varchar](300) NOT NULL,
	[Product_ID] [varchar](300) NOT NULL,
	[Price] [money] NULL,
	[Quantities] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Receipt_ID] ASC,
	[Product_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SUPPLIER]    Script Date: 5/3/2023 4:12:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SUPPLIER](
	[Supplier_ID] [varchar](300) NOT NULL,
	[Supplier_Name] [varchar](500) NULL,
	[Supplier_Address] [varchar](200) NULL,
	[Supplier_Email] [varchar](100) NULL,
	[Suppler_Phone] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Supplier_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRANSACTION]    Script Date: 5/3/2023 4:12:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRANSACTION](
	[Transaction_ID] [varchar](300) NOT NULL,
	[PaymentMethod_ID] [varchar](100) NULL,
	[Date_Created_Transaction] [date] NULL,
	[Status_Transaction] [varchar](20) NULL,
	[Invoice_ID] [varchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[Transaction_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TYPE_PRODUCT]    Script Date: 5/3/2023 4:12:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TYPE_PRODUCT](
	[TypeProduct_ID] [varchar](300) NOT NULL,
	[TypeProductName] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[TypeProduct_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WAREHOUSE_RECEIPT]    Script Date: 5/3/2023 4:12:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WAREHOUSE_RECEIPT](
	[Receipt_ID] [varchar](300) NOT NULL,
	[Accountant_ID] [varchar](300) NULL,
	[Date_Created_Receipt] [date] NULL,
	[Driver_Name] [varchar](100) NULL,
	[WareHouse_Address] [varchar](100) NULL,
	[Total] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[Receipt_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ACCOUNTANT] ([Accountant_ID], [Accountant_Name], [Gender], [Accountant_Birth], [Accountant_Address], [Accountant_Email], [Accountant_Phone], [Accountant_UserName], [Accountant_Password], [Accountant_Image]) VALUES (N'AC00000001', N'Michael Kors', N'Male', CAST(N'1992-02-22' AS Date), N'America', N'michaelkors@gmail.com', N'+12019058727', N'kors123', N'123', NULL)
INSERT [dbo].[ACCOUNTANT] ([Accountant_ID], [Accountant_Name], [Gender], [Accountant_Birth], [Accountant_Address], [Accountant_Email], [Accountant_Phone], [Accountant_UserName], [Accountant_Password], [Accountant_Image]) VALUES (N'AC00000002', N'John Wick', N'Male', CAST(N'1991-08-14' AS Date), N'America', N'johnwick23@gmail.com', N'+12012771413', N'wick23', N'456', NULL)
INSERT [dbo].[ACCOUNTANT] ([Accountant_ID], [Accountant_Name], [Gender], [Accountant_Birth], [Accountant_Address], [Accountant_Email], [Accountant_Phone], [Accountant_UserName], [Accountant_Password], [Accountant_Image]) VALUES (N'AC00000003', N'Kylian Mbappe', N'Male', CAST(N'1999-12-05' AS Date), N'France', N'kylian05@gmail.com', N'+33644628731', N'kylian05', N'678', NULL)
INSERT [dbo].[ACCOUNTANT] ([Accountant_ID], [Accountant_Name], [Gender], [Accountant_Birth], [Accountant_Address], [Accountant_Email], [Accountant_Phone], [Accountant_UserName], [Accountant_Password], [Accountant_Image]) VALUES (N'AC00000004', N'Marleen Lohse', N'Female', CAST(N'1984-02-28' AS Date), N'Germany', N'lohsemarlen28@gmail.com', N'+32468799067', N'marlen28', N'8910', NULL)
GO
INSERT [dbo].[AGENT] ([Agent_ID], [Agent_Name], [Agent_Address], [Agent_Email], [Agent_Phone]) VALUES (N'AG000000001', N'Mark Co.', N'America', N'markcompany@gmail.com', N'18212752273')
INSERT [dbo].[AGENT] ([Agent_ID], [Agent_Name], [Agent_Address], [Agent_Email], [Agent_Phone]) VALUES (N'AG000000002', N'Lyly Co.', N'America', N'lylycompany@gmail.com', N'18245752273')
INSERT [dbo].[AGENT] ([Agent_ID], [Agent_Name], [Agent_Address], [Agent_Email], [Agent_Phone]) VALUES (N'AG000000003', N'Dat Co.', N'Viet Nam', N'Datcorp@gmail.com', N'0913557123')
INSERT [dbo].[AGENT] ([Agent_ID], [Agent_Name], [Agent_Address], [Agent_Email], [Agent_Phone]) VALUES (N'AG000000004', N'Power Co.', N'Australia', N'powercompany@gmail.com', N'97212752273')
GO
INSERT [dbo].[AGENT_ACCOUNT] ([UserName], [Agent_ID], [Account_Password], [Agent_Level]) VALUES (N'dat@09', N'AG000000003', N'445', 2)
INSERT [dbo].[AGENT_ACCOUNT] ([UserName], [Agent_ID], [Account_Password], [Agent_Level]) VALUES (N'lyly@12', N'AG000000002', N'423', 1)
INSERT [dbo].[AGENT_ACCOUNT] ([UserName], [Agent_ID], [Account_Password], [Agent_Level]) VALUES (N'mark44', N'AG000000001', N'123', 1)
INSERT [dbo].[AGENT_ACCOUNT] ([UserName], [Agent_ID], [Account_Password], [Agent_Level]) VALUES (N'power_45', N'AG000000004', N'667', 3)
GO
INSERT [dbo].[CUSTOMER] ([Customer_ID], [Customer_Name], [Customer_Birth], [Customer_Gender], [Customer_Address], [Customer_Email], [Customer_Phone]) VALUES (N'C000000001', N'Ta Tien Dat', CAST(N'2003-05-02' AS Date), N'Male', N'Go Vap', N'tatiendat@gmail.com', N'0901776891')
INSERT [dbo].[CUSTOMER] ([Customer_ID], [Customer_Name], [Customer_Birth], [Customer_Gender], [Customer_Address], [Customer_Email], [Customer_Phone]) VALUES (N'C000000002', N'Tang Thieu Phong', CAST(N'2003-02-22' AS Date), N'Male', N'TPHCM', N'tangthieuphong123@gmail.com', N'0938860238')
INSERT [dbo].[CUSTOMER] ([Customer_ID], [Customer_Name], [Customer_Birth], [Customer_Gender], [Customer_Address], [Customer_Email], [Customer_Phone]) VALUES (N'C000000003', N'Lam Nguyen Anh Thy', CAST(N'2003-06-01' AS Date), N'Female', N'Tra Vinh', N'anhthy06@gmail.com', N'0901876191')
GO
INSERT [dbo].[CUSTOMER_ACCOUNT] ([UserName], [Customer_ID], [Account_Password], [Customer_Level], code_forgot_pass, Date_Create_Code_Forgot) VALUES (N'anhthy06', N'C000000003', N'anhthy@123', 3, null, null)
INSERT [dbo].[CUSTOMER_ACCOUNT] ([UserName], [Customer_ID], [Account_Password], [Customer_Level], code_forgot_pass, Date_Create_Code_Forgot) VALUES (N'phong2202', N'C000000002', N'phong@123', 2, null, null)
INSERT [dbo].[CUSTOMER_ACCOUNT] ([UserName], [Customer_ID], [Account_Password], [Customer_Level], code_forgot_pass, Date_Create_Code_Forgot) VALUES (N'tiendat09', N'C000000001', N'dat@123', 1, null, null)
GO
INSERT [dbo].[GOOD_DELIVERY] ([Good_Delivery_ID], [Transaction_ID], [Accountant_ID], [OrderList_ID], [Date_Created_Good_Delivery]) VALUES (N'GD00000001', N'TR00000010', NULL, N'OR00000010', CAST(N'2023-05-02' AS Date))
INSERT [dbo].[GOOD_DELIVERY] ([Good_Delivery_ID], [Transaction_ID], [Accountant_ID], [OrderList_ID], [Date_Created_Good_Delivery]) VALUES (N'GD00000002', N'TR00000011', NULL, N'OR00000011', CAST(N'2023-05-03' AS Date))
GO
INSERT [dbo].[INVOICE] ([Invoice_ID], [OrderList_ID], [Date_Created_Invoice], [Status_Invoice]) VALUES (N'IV00000001', N'OR00000001', CAST(N'2023-01-22' AS Date), N'Completed')
INSERT [dbo].[INVOICE] ([Invoice_ID], [OrderList_ID], [Date_Created_Invoice], [Status_Invoice]) VALUES (N'IV00000002', N'OR00000002', CAST(N'2023-02-22' AS Date), N'Completed')
INSERT [dbo].[INVOICE] ([Invoice_ID], [OrderList_ID], [Date_Created_Invoice], [Status_Invoice]) VALUES (N'IV00000003', N'OR00000003', CAST(N'2023-03-23' AS Date), N'Completed')
INSERT [dbo].[INVOICE] ([Invoice_ID], [OrderList_ID], [Date_Created_Invoice], [Status_Invoice]) VALUES (N'IV00000004', N'OR00000004', CAST(N'2023-03-25' AS Date), N'Completed')
INSERT [dbo].[INVOICE] ([Invoice_ID], [OrderList_ID], [Date_Created_Invoice], [Status_Invoice]) VALUES (N'IV00000005', N'OR00000005', CAST(N'2023-04-26' AS Date), N'Completed')
INSERT [dbo].[INVOICE] ([Invoice_ID], [OrderList_ID], [Date_Created_Invoice], [Status_Invoice]) VALUES (N'IV00000006', N'OR00000006', CAST(N'2023-04-27' AS Date), N'Completed')
INSERT [dbo].[INVOICE] ([Invoice_ID], [OrderList_ID], [Date_Created_Invoice], [Status_Invoice]) VALUES (N'IV00000007', N'OR00000007', CAST(N'2023-04-28' AS Date), N'Completed')
INSERT [dbo].[INVOICE] ([Invoice_ID], [OrderList_ID], [Date_Created_Invoice], [Status_Invoice]) VALUES (N'IV00000008', N'OR00000008', CAST(N'2023-04-29' AS Date), N'Completed')
INSERT [dbo].[INVOICE] ([Invoice_ID], [OrderList_ID], [Date_Created_Invoice], [Status_Invoice]) VALUES (N'IV00000009', N'OR00000009', CAST(N'2023-04-30' AS Date), N'Completed')
INSERT [dbo].[INVOICE] ([Invoice_ID], [OrderList_ID], [Date_Created_Invoice], [Status_Invoice]) VALUES (N'IV00000010', N'OR00000010', CAST(N'2023-05-02' AS Date), N'Completed')
INSERT [dbo].[INVOICE] ([Invoice_ID], [OrderList_ID], [Date_Created_Invoice], [Status_Invoice]) VALUES (N'IV00000011', N'OR00000011', CAST(N'2023-05-03' AS Date), N'Completed')
GO
INSERT [dbo].[MOBILE_PRODUCT] ([Product_ID], [Product_Name], [TypeProduct_ID], [Supplier_ID], [Unit], [Price], [Product_Quantities], [Image_Product]) VALUES (N'PR00000001', N'IPHONE X 32GB', N'TP00000001', N'SP00000001', N'USD', 200.0000, 25, N'ipx32gb.jpg')
INSERT [dbo].[MOBILE_PRODUCT] ([Product_ID], [Product_Name], [TypeProduct_ID], [Supplier_ID], [Unit], [Price], [Product_Quantities], [Image_Product]) VALUES (N'PR00000002', N'IPHONE X 64GB', N'TP00000001', N'SP00000001', N'USD', 250.0000, 30, N'ipx64gb.jpg')
INSERT [dbo].[MOBILE_PRODUCT] ([Product_ID], [Product_Name], [TypeProduct_ID], [Supplier_ID], [Unit], [Price], [Product_Quantities], [Image_Product]) VALUES (N'PR00000003', N'IPHONE 12 64GB', N'TP00000001', N'SP00000001', N'USD', 400.0000, 1, N'ip12_64gb.jpg')
INSERT [dbo].[MOBILE_PRODUCT] ([Product_ID], [Product_Name], [TypeProduct_ID], [Supplier_ID], [Unit], [Price], [Product_Quantities], [Image_Product]) VALUES (N'PR00000004', N'IPHONE 12 256GB', N'TP00000001', N'SP00000001', N'USD', 450.0000, 25, N'ip12_256gb.jpg')
INSERT [dbo].[MOBILE_PRODUCT] ([Product_ID], [Product_Name], [TypeProduct_ID], [Supplier_ID], [Unit], [Price], [Product_Quantities], [Image_Product]) VALUES (N'PR00000005', N'IPHONE 13 128GB', N'TP00000001', N'SP00000001', N'USD', 550.0000, 20, N'ip13_128gb.jpg')
INSERT [dbo].[MOBILE_PRODUCT] ([Product_ID], [Product_Name], [TypeProduct_ID], [Supplier_ID], [Unit], [Price], [Product_Quantities], [Image_Product]) VALUES (N'PR00000006', N'IPHONE 14 512GB', N'TP00000001', N'SP00000001', N'USD', 799.0000, 15, N'ip14_512gb.jpg')
INSERT [dbo].[MOBILE_PRODUCT] ([Product_ID], [Product_Name], [TypeProduct_ID], [Supplier_ID], [Unit], [Price], [Product_Quantities], [Image_Product]) VALUES (N'PR00000007', N'SAMSUNG GALAXY S22 256GB', N'TP00000007', N'SP00000002', N'KRW', 900000.0000, 4, N'sg_s22_256gb.jpg')
INSERT [dbo].[MOBILE_PRODUCT] ([Product_ID], [Product_Name], [TypeProduct_ID], [Supplier_ID], [Unit], [Price], [Product_Quantities], [Image_Product]) VALUES (N'PR00000008', N'SAMSUNG GALAXY S22 512GB', N'TP00000007', N'SP00000002', N'KRW', 950000.0000, 3, N'sg_s22_512gb.jpg')
INSERT [dbo].[MOBILE_PRODUCT] ([Product_ID], [Product_Name], [TypeProduct_ID], [Supplier_ID], [Unit], [Price], [Product_Quantities], [Image_Product]) VALUES (N'PR00000009', N'SAMSUNG GALAXY S23 128GB', N'TP00000008', N'SP00000002', N'KRW', 1200000.0000, 0, N'sg_s23_128gb.jpg')
INSERT [dbo].[MOBILE_PRODUCT] ([Product_ID], [Product_Name], [TypeProduct_ID], [Supplier_ID], [Unit], [Price], [Product_Quantities], [Image_Product]) VALUES (N'PR00000010', N'SAMSUNG GALAXY S23 256GB', N'TP00000008', N'SP00000002', N'KRW', 1250000.0000, 1, N'sg_s23_256gb.jpg')
INSERT [dbo].[MOBILE_PRODUCT] ([Product_ID], [Product_Name], [TypeProduct_ID], [Supplier_ID], [Unit], [Price], [Product_Quantities], [Image_Product]) VALUES (N'PR00000011', N'SAMSUNG GALAXY S23 ULTRA 256GB', N'TP00000009', N'SP00000002', N'USD', 700.0000, 0, N'sg_s23_u_256gb.jpg')
INSERT [dbo].[MOBILE_PRODUCT] ([Product_ID], [Product_Name], [TypeProduct_ID], [Supplier_ID], [Unit], [Price], [Product_Quantities], [Image_Product]) VALUES (N'PR00000012', N'SAMSUNG GALAXY S23 ULTRA 512GB', N'TP00000009', N'SP00000002', N'USD', 750.0000, 25, N'sg_s23_u_521gb.jpg')
INSERT [dbo].[MOBILE_PRODUCT] ([Product_ID], [Product_Name], [TypeProduct_ID], [Supplier_ID], [Unit], [Price], [Product_Quantities], [Image_Product]) VALUES (N'PR00000013', N'SAMSUNG NOTE 8 64GB', N'TP00000010', N'SP00000002', N'USD', 300.0000, 100, N'ss_n8_64gb.jpg')
INSERT [dbo].[MOBILE_PRODUCT] ([Product_ID], [Product_Name], [TypeProduct_ID], [Supplier_ID], [Unit], [Price], [Product_Quantities], [Image_Product]) VALUES (N'PR00000014', N'SAMSUNG NOTE 8 32GB', N'TP00000010', N'SP00000002', N'USD', 350.0000, 200, N'ss_n8_32gb.jpg')
INSERT [dbo].[MOBILE_PRODUCT] ([Product_ID], [Product_Name], [TypeProduct_ID], [Supplier_ID], [Unit], [Price], [Product_Quantities], [Image_Product]) VALUES (N'PR00000015', N'SAMSUNG NOTE 8 128GB', N'TP00000010', N'SP00000002', N'USD', 375.0000, 50, N'ss_n8_128gb.jpg')
INSERT [dbo].[MOBILE_PRODUCT] ([Product_ID], [Product_Name], [TypeProduct_ID], [Supplier_ID], [Unit], [Price], [Product_Quantities], [Image_Product]) VALUES (N'PR00000016', N'SAMSUNG NOTE 10 64GB', N'TP00000011', N'SP00000002', N'USD', 400.0000, 150, N'ss_n10_64gb.jpg')
INSERT [dbo].[MOBILE_PRODUCT] ([Product_ID], [Product_Name], [TypeProduct_ID], [Supplier_ID], [Unit], [Price], [Product_Quantities], [Image_Product]) VALUES (N'PR00000017', N'SAMSUNG NOTE 10 128GB', N'TP00000011', N'SP00000002', N'USD', 450.0000, 12, N'ss_n10_128gb.jpg')
INSERT [dbo].[MOBILE_PRODUCT] ([Product_ID], [Product_Name], [TypeProduct_ID], [Supplier_ID], [Unit], [Price], [Product_Quantities], [Image_Product]) VALUES (N'PR00000018', N'SAMSUNG NOTE 10 256GB', N'TP00000011', N'SP00000002', N'USD', 470.0000, 18, N'ss_n10_256gb.jpg')
INSERT [dbo].[MOBILE_PRODUCT] ([Product_ID], [Product_Name], [TypeProduct_ID], [Supplier_ID], [Unit], [Price], [Product_Quantities], [Image_Product]) VALUES (N'PR00000019', N'SAMSUNG NOTE 12 256GB', N'TP00000012', N'SP00000002', N'USD', 500.0000, 9, N'ss_n12_256gb.jpg')
INSERT [dbo].[MOBILE_PRODUCT] ([Product_ID], [Product_Name], [TypeProduct_ID], [Supplier_ID], [Unit], [Price], [Product_Quantities], [Image_Product]) VALUES (N'PR00000020', N'SAMSUNG NOTE 12 512GB', N'TP00000012', N'SP00000002', N'USD', 550.0000, 26, N'ss_n12_512gb.jpg')
GO
INSERT [dbo].[ORDER_LIST] ([OrderList_ID], [UserName_Agent], [UserName_Customer], [Date_Created_OrderList], [Note], [Status_OrderList]) VALUES (N'OR00000001', NULL, N'tiendat09', CAST(N'2023-01-22' AS Date), N'Note Something Here', N'Paid')
INSERT [dbo].[ORDER_LIST] ([OrderList_ID], [UserName_Agent], [UserName_Customer], [Date_Created_OrderList], [Note], [Status_OrderList]) VALUES (N'OR00000002', NULL, N'tiendat09', CAST(N'2023-02-22' AS Date), N'Note Something Here', N'Paid')
INSERT [dbo].[ORDER_LIST] ([OrderList_ID], [UserName_Agent], [UserName_Customer], [Date_Created_OrderList], [Note], [Status_OrderList]) VALUES (N'OR00000003', NULL, N'phong2202', CAST(N'2023-03-23' AS Date), N'Note Something Here', N'Paid')
INSERT [dbo].[ORDER_LIST] ([OrderList_ID], [UserName_Agent], [UserName_Customer], [Date_Created_OrderList], [Note], [Status_OrderList]) VALUES (N'OR00000004', NULL, N'anhthy06', CAST(N'2023-05-06' AS Date), N'Note Something Here', N'Paid')
INSERT [dbo].[ORDER_LIST] ([OrderList_ID], [UserName_Agent], [UserName_Customer], [Date_Created_OrderList], [Note], [Status_OrderList]) VALUES (N'OR00000005', NULL, N'phong2202', CAST(N'2023-04-26' AS Date), N'Note Something Here', N'Paid')
INSERT [dbo].[ORDER_LIST] ([OrderList_ID], [UserName_Agent], [UserName_Customer], [Date_Created_OrderList], [Note], [Status_OrderList]) VALUES (N'OR00000006', N'mark44', NULL, CAST(N'2023-04-27' AS Date), N'Note Something Here', N'Paid')
INSERT [dbo].[ORDER_LIST] ([OrderList_ID], [UserName_Agent], [UserName_Customer], [Date_Created_OrderList], [Note], [Status_OrderList]) VALUES (N'OR00000007', N'lyly@12', NULL, CAST(N'2023-04-28' AS Date), N'Note Something Here', N'Paid')
INSERT [dbo].[ORDER_LIST] ([OrderList_ID], [UserName_Agent], [UserName_Customer], [Date_Created_OrderList], [Note], [Status_OrderList]) VALUES (N'OR00000008', N'dat@09', NULL, CAST(N'2023-04-29' AS Date), N'Note Something Here', N'Paid')
INSERT [dbo].[ORDER_LIST] ([OrderList_ID], [UserName_Agent], [UserName_Customer], [Date_Created_OrderList], [Note], [Status_OrderList]) VALUES (N'OR00000009', N'power_45', NULL, CAST(N'2023-04-30' AS Date), N'Note Something Here', N'Paid')
INSERT [dbo].[ORDER_LIST] ([OrderList_ID], [UserName_Agent], [UserName_Customer], [Date_Created_OrderList], [Note], [Status_OrderList]) VALUES (N'OR00000010', NULL, N'anhthy06', CAST(N'2023-05-02' AS Date), N'Please delivery within 3 day', N'Paid')
INSERT [dbo].[ORDER_LIST] ([OrderList_ID], [UserName_Agent], [UserName_Customer], [Date_Created_OrderList], [Note], [Status_OrderList]) VALUES (N'OR00000011', NULL, N'anhthy06', CAST(N'2023-05-03' AS Date), NULL, NULL)
INSERT [dbo].[ORDER_LIST] ([OrderList_ID], [UserName_Agent], [UserName_Customer], [Date_Created_OrderList], [Note], [Status_OrderList]) VALUES (N'OR00000012', NULL, N'anhthy06', NULL, NULL, NULL)
GO
INSERT [dbo].[ORDER_LIST_DETAILS] ([Product_ID], [OrderList_ID], [Quantities], [Delivery_Date], [Total_Money], [Remain_Quantities]) VALUES (N'PR00000001', N'OR00000001', 3, CAST(N'2023-01-22' AS Date), 600.0000, 0)
INSERT [dbo].[ORDER_LIST_DETAILS] ([Product_ID], [OrderList_ID], [Quantities], [Delivery_Date], [Total_Money], [Remain_Quantities]) VALUES (N'PR00000001', N'OR00000003', 3, CAST(N'2023-03-23' AS Date), 750.0000, 0)
INSERT [dbo].[ORDER_LIST_DETAILS] ([Product_ID], [OrderList_ID], [Quantities], [Delivery_Date], [Total_Money], [Remain_Quantities]) VALUES (N'PR00000002', N'OR00000001', 6, CAST(N'2023-01-22' AS Date), 1500.0000, 0)
INSERT [dbo].[ORDER_LIST_DETAILS] ([Product_ID], [OrderList_ID], [Quantities], [Delivery_Date], [Total_Money], [Remain_Quantities]) VALUES (N'PR00000003', N'OR00000002', 2, CAST(N'2023-02-22' AS Date), 800.0000, 0)
INSERT [dbo].[ORDER_LIST_DETAILS] ([Product_ID], [OrderList_ID], [Quantities], [Delivery_Date], [Total_Money], [Remain_Quantities]) VALUES (N'PR00000003', N'OR00000010', 2, CAST(N'2023-05-03' AS Date), 880.0000, 1)
INSERT [dbo].[ORDER_LIST_DETAILS] ([Product_ID], [OrderList_ID], [Quantities], [Delivery_Date], [Total_Money], [Remain_Quantities]) VALUES (N'PR00000004', N'OR00000002', 2, CAST(N'2023-02-22' AS Date), 1000.0000, 0)
INSERT [dbo].[ORDER_LIST_DETAILS] ([Product_ID], [OrderList_ID], [Quantities], [Delivery_Date], [Total_Money], [Remain_Quantities]) VALUES (N'PR00000004', N'OR00000010', 5, CAST(N'2023-05-03' AS Date), 2475.0000, 25)
INSERT [dbo].[ORDER_LIST_DETAILS] ([Product_ID], [OrderList_ID], [Quantities], [Delivery_Date], [Total_Money], [Remain_Quantities]) VALUES (N'PR00000005', N'OR00000003', 2, CAST(N'2023-03-23' AS Date), 1100.0000, 0)
INSERT [dbo].[ORDER_LIST_DETAILS] ([Product_ID], [OrderList_ID], [Quantities], [Delivery_Date], [Total_Money], [Remain_Quantities]) VALUES (N'PR00000005', N'OR00000012', 1, NULL, 583.0000, NULL)
INSERT [dbo].[ORDER_LIST_DETAILS] ([Product_ID], [OrderList_ID], [Quantities], [Delivery_Date], [Total_Money], [Remain_Quantities]) VALUES (N'PR00000007', N'OR00000005', 1, CAST(N'2023-04-26' AS Date), 900000.0000, 0)
INSERT [dbo].[ORDER_LIST_DETAILS] ([Product_ID], [OrderList_ID], [Quantities], [Delivery_Date], [Total_Money], [Remain_Quantities]) VALUES (N'PR00000009', N'OR00000011', 2, CAST(N'2023-05-04' AS Date), 2640000.0000, 0)
INSERT [dbo].[ORDER_LIST_DETAILS] ([Product_ID], [OrderList_ID], [Quantities], [Delivery_Date], [Total_Money], [Remain_Quantities]) VALUES (N'PR00000013', N'OR00000006', 15, CAST(N'2023-04-26' AS Date), 4500.0000, 0)
INSERT [dbo].[ORDER_LIST_DETAILS] ([Product_ID], [OrderList_ID], [Quantities], [Delivery_Date], [Total_Money], [Remain_Quantities]) VALUES (N'PR00000013', N'OR00000007', 20, CAST(N'2023-04-28' AS Date), 6000.0000, 0)
INSERT [dbo].[ORDER_LIST_DETAILS] ([Product_ID], [OrderList_ID], [Quantities], [Delivery_Date], [Total_Money], [Remain_Quantities]) VALUES (N'PR00000014', N'OR00000006', 20, CAST(N'2023-04-26' AS Date), 7000.0000, 0)
INSERT [dbo].[ORDER_LIST_DETAILS] ([Product_ID], [OrderList_ID], [Quantities], [Delivery_Date], [Total_Money], [Remain_Quantities]) VALUES (N'PR00000014', N'OR00000008', 35, CAST(N'2023-04-29' AS Date), 12250.0000, 0)
INSERT [dbo].[ORDER_LIST_DETAILS] ([Product_ID], [OrderList_ID], [Quantities], [Delivery_Date], [Total_Money], [Remain_Quantities]) VALUES (N'PR00000015', N'OR00000007', 20, CAST(N'2023-04-28' AS Date), 6000.0000, 0)
INSERT [dbo].[ORDER_LIST_DETAILS] ([Product_ID], [OrderList_ID], [Quantities], [Delivery_Date], [Total_Money], [Remain_Quantities]) VALUES (N'PR00000016', N'OR00000007', 25, CAST(N'2023-04-28' AS Date), 10000.0000, 0)
INSERT [dbo].[ORDER_LIST_DETAILS] ([Product_ID], [OrderList_ID], [Quantities], [Delivery_Date], [Total_Money], [Remain_Quantities]) VALUES (N'PR00000016', N'OR00000008', 30, CAST(N'2023-04-29' AS Date), 12000.0000, 0)
INSERT [dbo].[ORDER_LIST_DETAILS] ([Product_ID], [OrderList_ID], [Quantities], [Delivery_Date], [Total_Money], [Remain_Quantities]) VALUES (N'PR00000017', N'OR00000008', 10, CAST(N'2023-04-29' AS Date), 4500.0000, 0)
INSERT [dbo].[ORDER_LIST_DETAILS] ([Product_ID], [OrderList_ID], [Quantities], [Delivery_Date], [Total_Money], [Remain_Quantities]) VALUES (N'PR00000019', N'OR00000009', 6, CAST(N'2023-04-30' AS Date), 3000.0000, 0)
INSERT [dbo].[ORDER_LIST_DETAILS] ([Product_ID], [OrderList_ID], [Quantities], [Delivery_Date], [Total_Money], [Remain_Quantities]) VALUES (N'PR00000020', N'OR00000009', 20, CAST(N'2023-04-30' AS Date), 11000.0000, 0)
GO
INSERT [dbo].[PAYMENT_METHOD] ([PaymentMethod_ID], [Method_Name]) VALUES (N'PM001', N'VNPay')
INSERT [dbo].[PAYMENT_METHOD] ([PaymentMethod_ID], [Method_Name]) VALUES (N'PM002', N'Cash')
GO
INSERT [dbo].[SUPPLIER] ([Supplier_ID], [Supplier_Name], [Supplier_Address], [Supplier_Email], [Suppler_Phone]) VALUES (N'SP00000001', N'APPLE', N'America', N'support@apple.com', N'+18002752273')
INSERT [dbo].[SUPPLIER] ([Supplier_ID], [Supplier_Name], [Supplier_Address], [Supplier_Email], [Suppler_Phone]) VALUES (N'SP00000002', N'SAMSUNG', N'South Korea', N'support.kr@samsung.com', N'1800588889')
INSERT [dbo].[SUPPLIER] ([Supplier_ID], [Supplier_Name], [Supplier_Address], [Supplier_Email], [Suppler_Phone]) VALUES (N'SP00000003', N'LG', N'South Korea', N'lgcarecenter@lge.com', N'18001503')
INSERT [dbo].[SUPPLIER] ([Supplier_ID], [Supplier_Name], [Supplier_Address], [Supplier_Email], [Suppler_Phone]) VALUES (N'SP00000004', N'ASUS', N'Taiwan', N'asuscenter@gmail.com', N'+862134074610')
INSERT [dbo].[SUPPLIER] ([Supplier_ID], [Supplier_Name], [Supplier_Address], [Supplier_Email], [Suppler_Phone]) VALUES (N'SP00000005', N'OPPO', N'Chinese', N'oppocenter@gmail.com', N'1800956396')
INSERT [dbo].[SUPPLIER] ([Supplier_ID], [Supplier_Name], [Supplier_Address], [Supplier_Email], [Suppler_Phone]) VALUES (N'SP00000006', N'HUAWEI', N'Chinese', N'huaweicenter@gmail.com', N'1847956396')
GO
INSERT [dbo].[TRANSACTION] ([Transaction_ID], [PaymentMethod_ID], [Date_Created_Transaction], [Status_Transaction], [Invoice_ID]) VALUES (N'TR00000001', N'PM002', CAST(N'2023-01-22' AS Date), N'Finished', N'IV00000001')
INSERT [dbo].[TRANSACTION] ([Transaction_ID], [PaymentMethod_ID], [Date_Created_Transaction], [Status_Transaction], [Invoice_ID]) VALUES (N'TR00000002', N'PM002', CAST(N'2023-02-22' AS Date), N'Finished', N'IV00000002')
INSERT [dbo].[TRANSACTION] ([Transaction_ID], [PaymentMethod_ID], [Date_Created_Transaction], [Status_Transaction], [Invoice_ID]) VALUES (N'TR00000003', N'PM002', CAST(N'2023-03-23' AS Date), N'Finished', N'IV00000003')
INSERT [dbo].[TRANSACTION] ([Transaction_ID], [PaymentMethod_ID], [Date_Created_Transaction], [Status_Transaction], [Invoice_ID]) VALUES (N'TR00000004', N'PM001', CAST(N'2023-03-25' AS Date), N'Finished', N'IV00000004')
INSERT [dbo].[TRANSACTION] ([Transaction_ID], [PaymentMethod_ID], [Date_Created_Transaction], [Status_Transaction], [Invoice_ID]) VALUES (N'TR00000005', N'PM001', CAST(N'2023-04-26' AS Date), N'Finished', N'IV00000005')
INSERT [dbo].[TRANSACTION] ([Transaction_ID], [PaymentMethod_ID], [Date_Created_Transaction], [Status_Transaction], [Invoice_ID]) VALUES (N'TR00000006', N'PM002', CAST(N'2023-04-26' AS Date), N'Finished', N'IV00000006')
INSERT [dbo].[TRANSACTION] ([Transaction_ID], [PaymentMethod_ID], [Date_Created_Transaction], [Status_Transaction], [Invoice_ID]) VALUES (N'TR00000007', N'PM001', CAST(N'2023-04-28' AS Date), N'Finished', N'IV00000007')
INSERT [dbo].[TRANSACTION] ([Transaction_ID], [PaymentMethod_ID], [Date_Created_Transaction], [Status_Transaction], [Invoice_ID]) VALUES (N'TR00000008', N'PM002', CAST(N'2023-04-29' AS Date), N'Finished', N'IV00000008')
INSERT [dbo].[TRANSACTION] ([Transaction_ID], [PaymentMethod_ID], [Date_Created_Transaction], [Status_Transaction], [Invoice_ID]) VALUES (N'TR00000009', N'PM002', CAST(N'2023-04-30' AS Date), N'Finished', N'IV00000009')
INSERT [dbo].[TRANSACTION] ([Transaction_ID], [PaymentMethod_ID], [Date_Created_Transaction], [Status_Transaction], [Invoice_ID]) VALUES (N'TR00000010', N'PM002', CAST(N'2023-05-02' AS Date), N'Finished', N'IV00000010')
INSERT [dbo].[TRANSACTION] ([Transaction_ID], [PaymentMethod_ID], [Date_Created_Transaction], [Status_Transaction], [Invoice_ID]) VALUES (N'TR00000011', N'PM002', CAST(N'2023-05-03' AS Date), N'Finished', N'IV00000011')
GO
INSERT [dbo].[TYPE_PRODUCT] ([TypeProduct_ID], [TypeProductName]) VALUES (N'TP00000001', N'IPHONE X')
INSERT [dbo].[TYPE_PRODUCT] ([TypeProduct_ID], [TypeProductName]) VALUES (N'TP00000002', N'IPHONE XS MAX')
INSERT [dbo].[TYPE_PRODUCT] ([TypeProduct_ID], [TypeProductName]) VALUES (N'TP00000003', N'IPHONE 11')
INSERT [dbo].[TYPE_PRODUCT] ([TypeProduct_ID], [TypeProductName]) VALUES (N'TP00000004', N'IPHONE 12')
INSERT [dbo].[TYPE_PRODUCT] ([TypeProduct_ID], [TypeProductName]) VALUES (N'TP00000005', N'IPHONE 13')
INSERT [dbo].[TYPE_PRODUCT] ([TypeProduct_ID], [TypeProductName]) VALUES (N'TP00000006', N'IPHONE 14')
INSERT [dbo].[TYPE_PRODUCT] ([TypeProduct_ID], [TypeProductName]) VALUES (N'TP00000007', N'SAMSUNG GALAXY S22')
INSERT [dbo].[TYPE_PRODUCT] ([TypeProduct_ID], [TypeProductName]) VALUES (N'TP00000008', N'SAMSUNG GALAXY S23')
INSERT [dbo].[TYPE_PRODUCT] ([TypeProduct_ID], [TypeProductName]) VALUES (N'TP00000009', N'SAMSUNG GALAXY S23 ULTRA')
INSERT [dbo].[TYPE_PRODUCT] ([TypeProduct_ID], [TypeProductName]) VALUES (N'TP00000010', N'SAMSUNG NOTE 8')
INSERT [dbo].[TYPE_PRODUCT] ([TypeProduct_ID], [TypeProductName]) VALUES (N'TP00000011', N'SAMSUNG NOTE 10')
INSERT [dbo].[TYPE_PRODUCT] ([TypeProduct_ID], [TypeProductName]) VALUES (N'TP00000012', N'SAMSUNG NOTE 12')
INSERT [dbo].[TYPE_PRODUCT] ([TypeProduct_ID], [TypeProductName]) VALUES (N'TP00000013', N'SAMSUNG A04')
INSERT [dbo].[TYPE_PRODUCT] ([TypeProduct_ID], [TypeProductName]) VALUES (N'TP00000014', N'SAMSUNG GALAXY A13')
INSERT [dbo].[TYPE_PRODUCT] ([TypeProduct_ID], [TypeProductName]) VALUES (N'TP00000015', N'SAMSUNG GALAXY A23')
INSERT [dbo].[TYPE_PRODUCT] ([TypeProduct_ID], [TypeProductName]) VALUES (N'TP00000016', N'SAMSUNG GALAXY A53')
INSERT [dbo].[TYPE_PRODUCT] ([TypeProduct_ID], [TypeProductName]) VALUES (N'TP00000017', N'SAMSUNG GALAXY A73')
INSERT [dbo].[TYPE_PRODUCT] ([TypeProduct_ID], [TypeProductName]) VALUES (N'TP00000018', N'LG V10')
INSERT [dbo].[TYPE_PRODUCT] ([TypeProduct_ID], [TypeProductName]) VALUES (N'TP00000019', N'LG Q7')
INSERT [dbo].[TYPE_PRODUCT] ([TypeProduct_ID], [TypeProductName]) VALUES (N'TP00000020', N'LG W30')
INSERT [dbo].[TYPE_PRODUCT] ([TypeProduct_ID], [TypeProductName]) VALUES (N'TP00000021', N'LG W41')
INSERT [dbo].[TYPE_PRODUCT] ([TypeProduct_ID], [TypeProductName]) VALUES (N'TP00000022', N'ASUS ZenFone 7')
INSERT [dbo].[TYPE_PRODUCT] ([TypeProduct_ID], [TypeProductName]) VALUES (N'TP00000023', N'ASUS ZenFone 7 Pro')
INSERT [dbo].[TYPE_PRODUCT] ([TypeProduct_ID], [TypeProductName]) VALUES (N'TP00000024', N'ASUS Zenfone 8 Flip')
INSERT [dbo].[TYPE_PRODUCT] ([TypeProduct_ID], [TypeProductName]) VALUES (N'TP00000025', N'ASUS Zenfone 8')
INSERT [dbo].[TYPE_PRODUCT] ([TypeProduct_ID], [TypeProductName]) VALUES (N'TP00000026', N'ASUS Zenfone 9')
INSERT [dbo].[TYPE_PRODUCT] ([TypeProduct_ID], [TypeProductName]) VALUES (N'TP00000027', N'ASUS ROG Phone 6')
INSERT [dbo].[TYPE_PRODUCT] ([TypeProduct_ID], [TypeProductName]) VALUES (N'TP00000028', N'ASUS ROG Phone 6D Ultimate')
INSERT [dbo].[TYPE_PRODUCT] ([TypeProduct_ID], [TypeProductName]) VALUES (N'TP00000029', N'ASUS ROG Phone 6D')
INSERT [dbo].[TYPE_PRODUCT] ([TypeProduct_ID], [TypeProductName]) VALUES (N'TP00000030', N'ASUS ROG Phone 7')
INSERT [dbo].[TYPE_PRODUCT] ([TypeProduct_ID], [TypeProductName]) VALUES (N'TP00000031', N'ASUS ROG Phone 7 Ultimate')
INSERT [dbo].[TYPE_PRODUCT] ([TypeProduct_ID], [TypeProductName]) VALUES (N'TP00000032', N'OPPO Reno8 T 5G')
INSERT [dbo].[TYPE_PRODUCT] ([TypeProduct_ID], [TypeProductName]) VALUES (N'TP00000033', N'OPPO A55')
INSERT [dbo].[TYPE_PRODUCT] ([TypeProduct_ID], [TypeProductName]) VALUES (N'TP00000034', N'OPPO A16K')
INSERT [dbo].[TYPE_PRODUCT] ([TypeProduct_ID], [TypeProductName]) VALUES (N'TP00000035', N'OPPO Find N2 Flip')
INSERT [dbo].[TYPE_PRODUCT] ([TypeProduct_ID], [TypeProductName]) VALUES (N'TP00000036', N'HUAWEI P40 Pro')
INSERT [dbo].[TYPE_PRODUCT] ([TypeProduct_ID], [TypeProductName]) VALUES (N'TP00000037', N'HUAWEI P40 Pro+')
INSERT [dbo].[TYPE_PRODUCT] ([TypeProduct_ID], [TypeProductName]) VALUES (N'TP00000038', N'Huawei Nova 10 Pro')
INSERT [dbo].[TYPE_PRODUCT] ([TypeProduct_ID], [TypeProductName]) VALUES (N'TP00000039', N'Huawei Pocket S')
INSERT [dbo].[TYPE_PRODUCT] ([TypeProduct_ID], [TypeProductName]) VALUES (N'TP00000040', N'Huawei P30')
INSERT [dbo].[TYPE_PRODUCT] ([TypeProduct_ID], [TypeProductName]) VALUES (N'TP00000041', N'Huawei P30 Lite')
INSERT [dbo].[TYPE_PRODUCT] ([TypeProduct_ID], [TypeProductName]) VALUES (N'TP00000042', N'Huawei Nova 9 SE')
GO
ALTER TABLE [dbo].[AGENT_ACCOUNT]  WITH CHECK ADD  CONSTRAINT [FK_AGENTACCOUNT_AGENT] FOREIGN KEY([Agent_ID])
REFERENCES [dbo].[AGENT] ([Agent_ID])
GO
ALTER TABLE [dbo].[AGENT_ACCOUNT] CHECK CONSTRAINT [FK_AGENTACCOUNT_AGENT]
GO
ALTER TABLE [dbo].[CUSTOMER_ACCOUNT]  WITH CHECK ADD  CONSTRAINT [FK_CUSTOMERACCOUNT_CUSTOMER] FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[CUSTOMER] ([Customer_ID])
GO
ALTER TABLE [dbo].[CUSTOMER_ACCOUNT] CHECK CONSTRAINT [FK_CUSTOMERACCOUNT_CUSTOMER]
GO
ALTER TABLE [dbo].[GOOD_DELIVERY]  WITH CHECK ADD  CONSTRAINT [FK_GOODDELIVERY_ACCOUNTANT] FOREIGN KEY([Accountant_ID])
REFERENCES [dbo].[ACCOUNTANT] ([Accountant_ID])
GO
ALTER TABLE [dbo].[GOOD_DELIVERY] CHECK CONSTRAINT [FK_GOODDELIVERY_ACCOUNTANT]
GO
ALTER TABLE [dbo].[GOOD_DELIVERY]  WITH CHECK ADD  CONSTRAINT [FK_GOODDELIVERY_ORDERLIST] FOREIGN KEY([OrderList_ID])
REFERENCES [dbo].[ORDER_LIST] ([OrderList_ID])
GO
ALTER TABLE [dbo].[GOOD_DELIVERY] CHECK CONSTRAINT [FK_GOODDELIVERY_ORDERLIST]
GO
ALTER TABLE [dbo].[GOOD_DELIVERY]  WITH CHECK ADD  CONSTRAINT [FK_GOODDELIVERY_TRANSACTION] FOREIGN KEY([Transaction_ID])
REFERENCES [dbo].[TRANSACTION] ([Transaction_ID])
GO
ALTER TABLE [dbo].[GOOD_DELIVERY] CHECK CONSTRAINT [FK_GOODDELIVERY_TRANSACTION]
GO
ALTER TABLE [dbo].[INVOICE]  WITH CHECK ADD  CONSTRAINT [FK_INVOICE_ORDERLIST] FOREIGN KEY([OrderList_ID])
REFERENCES [dbo].[ORDER_LIST] ([OrderList_ID])
GO
ALTER TABLE [dbo].[INVOICE] CHECK CONSTRAINT [FK_INVOICE_ORDERLIST]
GO
ALTER TABLE [dbo].[MOBILE_PRODUCT]  WITH CHECK ADD  CONSTRAINT [FK_MOBILEPRODUCT_Supplier] FOREIGN KEY([Supplier_ID])
REFERENCES [dbo].[SUPPLIER] ([Supplier_ID])
GO
ALTER TABLE [dbo].[MOBILE_PRODUCT] CHECK CONSTRAINT [FK_MOBILEPRODUCT_Supplier]
GO
ALTER TABLE [dbo].[MOBILE_PRODUCT]  WITH CHECK ADD  CONSTRAINT [FK_MOBILEPRODUCT_TYPEPRODUCT] FOREIGN KEY([TypeProduct_ID])
REFERENCES [dbo].[TYPE_PRODUCT] ([TypeProduct_ID])
GO
ALTER TABLE [dbo].[MOBILE_PRODUCT] CHECK CONSTRAINT [FK_MOBILEPRODUCT_TYPEPRODUCT]
GO
ALTER TABLE [dbo].[ORDER_LIST]  WITH CHECK ADD  CONSTRAINT [FK_ORDERLIST_AGENTACCOUNT] FOREIGN KEY([UserName_Agent])
REFERENCES [dbo].[AGENT_ACCOUNT] ([UserName])
GO
ALTER TABLE [dbo].[ORDER_LIST] CHECK CONSTRAINT [FK_ORDERLIST_AGENTACCOUNT]
GO
ALTER TABLE [dbo].[ORDER_LIST]  WITH CHECK ADD  CONSTRAINT [FK_ORDERLIST_CUSTOMERACCOUNT] FOREIGN KEY([UserName_Customer])
REFERENCES [dbo].[CUSTOMER_ACCOUNT] ([UserName])
GO
ALTER TABLE [dbo].[ORDER_LIST] CHECK CONSTRAINT [FK_ORDERLIST_CUSTOMERACCOUNT]
GO
ALTER TABLE [dbo].[ORDER_LIST_DETAILS]  WITH CHECK ADD  CONSTRAINT [FK_ORDERLISTDETAILS_MOBILEPRODUCTS] FOREIGN KEY([Product_ID])
REFERENCES [dbo].[MOBILE_PRODUCT] ([Product_ID])
GO
ALTER TABLE [dbo].[ORDER_LIST_DETAILS] CHECK CONSTRAINT [FK_ORDERLISTDETAILS_MOBILEPRODUCTS]
GO
ALTER TABLE [dbo].[ORDER_LIST_DETAILS]  WITH CHECK ADD  CONSTRAINT [FK_ORDERLISTDETAILS_ORDER_LIST] FOREIGN KEY([OrderList_ID])
REFERENCES [dbo].[ORDER_LIST] ([OrderList_ID])
GO
ALTER TABLE [dbo].[ORDER_LIST_DETAILS] CHECK CONSTRAINT [FK_ORDERLISTDETAILS_ORDER_LIST]
GO
ALTER TABLE [dbo].[RECEIPT_DETAILS]  WITH CHECK ADD  CONSTRAINT [FK_RECEIPTDETAILS_MOBILEPRODUCTS] FOREIGN KEY([Product_ID])
REFERENCES [dbo].[MOBILE_PRODUCT] ([Product_ID])
GO
ALTER TABLE [dbo].[RECEIPT_DETAILS] CHECK CONSTRAINT [FK_RECEIPTDETAILS_MOBILEPRODUCTS]
GO
ALTER TABLE [dbo].[RECEIPT_DETAILS]  WITH CHECK ADD  CONSTRAINT [FK_RECEIPTDETAILS_WAREHOUSE_RECEIPT] FOREIGN KEY([Receipt_ID])
REFERENCES [dbo].[WAREHOUSE_RECEIPT] ([Receipt_ID])
GO
ALTER TABLE [dbo].[RECEIPT_DETAILS] CHECK CONSTRAINT [FK_RECEIPTDETAILS_WAREHOUSE_RECEIPT]
GO
ALTER TABLE [dbo].[TRANSACTION]  WITH CHECK ADD  CONSTRAINT [FK_TRANSACTION_INVOICE] FOREIGN KEY([Invoice_ID])
REFERENCES [dbo].[INVOICE] ([Invoice_ID])
GO
ALTER TABLE [dbo].[TRANSACTION] CHECK CONSTRAINT [FK_TRANSACTION_INVOICE]
GO
ALTER TABLE [dbo].[TRANSACTION]  WITH CHECK ADD  CONSTRAINT [FK_TRANSACTION_PAYMENTMETHOD] FOREIGN KEY([PaymentMethod_ID])
REFERENCES [dbo].[PAYMENT_METHOD] ([PaymentMethod_ID])
GO
ALTER TABLE [dbo].[TRANSACTION] CHECK CONSTRAINT [FK_TRANSACTION_PAYMENTMETHOD]
GO
ALTER TABLE [dbo].[WAREHOUSE_RECEIPT]  WITH CHECK ADD  CONSTRAINT [FK_WAREHOUSERECEIPT_ACCOUNTANT] FOREIGN KEY([Accountant_ID])
REFERENCES [dbo].[ACCOUNTANT] ([Accountant_ID])
GO
ALTER TABLE [dbo].[WAREHOUSE_RECEIPT] CHECK CONSTRAINT [FK_WAREHOUSERECEIPT_ACCOUNTANT]
GO
