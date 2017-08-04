USE [WebStore]
GO

/****** Object:  Table [dbo].[Products]    Script Date: 8/4/2017 12:56:38 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Products](
	[Id_Products] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](10) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [nchar](10) NOT NULL,
	[Stock] [nchar](10) NOT NULL,
	[Id_Category] [int] NOT NULL,
	[Id_User] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id_Products] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Category] FOREIGN KEY([Id_Category])
REFERENCES [dbo].[Category] ([Id_Category])
GO

ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Category]
GO

ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Users] FOREIGN KEY([Id_User])
REFERENCES [dbo].[Users] ([Id_User])
GO

ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Users]
GO


