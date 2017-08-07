USE [WebStore]
GO

/****** Object:  Table [dbo].[RoleAction]    Script Date: 8/4/2017 12:58:01 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[RoleAction](
	[Id_Role] [int] NOT NULL,
	[Id_Action] [int] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RoleAction]  WITH CHECK ADD  CONSTRAINT [FK_RoleAction_Action] FOREIGN KEY([Id_Action])
REFERENCES [dbo].[Action] ([Id_Action])
GO

ALTER TABLE [dbo].[RoleAction] CHECK CONSTRAINT [FK_RoleAction_Action]
GO

ALTER TABLE [dbo].[RoleAction]  WITH CHECK ADD  CONSTRAINT [FK_RoleAction_Role] FOREIGN KEY([Id_Role])
REFERENCES [dbo].[Role] ([Id_Role])
GO

ALTER TABLE [dbo].[RoleAction] CHECK CONSTRAINT [FK_RoleAction_Role]
GO


