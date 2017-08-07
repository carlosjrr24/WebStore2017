USE [WebStore]
GO

/****** Object:  Table [dbo].[Users]    Script Date: 8/4/2017 12:59:34 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Users](
	[Id_User] [int] NOT NULL,
	[UserName] [nvarchar](30) NOT NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[LastName] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Salt] [nvarchar](max) NOT NULL,
	[Enabled] [bit] NOT NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [nvarchar](max) NULL,
	[LastModificationDate] [datetime] NULL,
	[LastModificationUser] [nvarchar](max) NOT NULL,
	[PasswordExpirationDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id_User] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


