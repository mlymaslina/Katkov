USE [Personal2]
GO
/****** Object:  Table [dbo].[Departament]    Script Date: 09.03.2023 10:33:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departament](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Dolgonost] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personality]    Script Date: 09.03.2023 10:33:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personality](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](200) NULL,
	[Name] [nvarchar](200) NULL,
	[Patronymic] [nvarchar](200) NULL,
	[Departament] [int] NULL,
	[post] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 09.03.2023 10:33:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Posted] [nvarchar](200) NULL,
	[Salary] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Using]    Script Date: 09.03.2023 10:33:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Using](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](200) NULL,
	[Password] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Departament] ON 

INSERT [dbo].[Departament] ([id], [Dolgonost]) VALUES (1, N'Отдел досуга и информации')
INSERT [dbo].[Departament] ([id], [Dolgonost]) VALUES (2, N'Художественно-технический отдел')
INSERT [dbo].[Departament] ([id], [Dolgonost]) VALUES (3, N'Отдел творческого потанциала')
INSERT [dbo].[Departament] ([id], [Dolgonost]) VALUES (4, N'Отдел информации и показа кино')
INSERT [dbo].[Departament] ([id], [Dolgonost]) VALUES (6, N'Отдел досуга и информации123')
SET IDENTITY_INSERT [dbo].[Departament] OFF
GO
SET IDENTITY_INSERT [dbo].[Personality] ON 

INSERT [dbo].[Personality] ([id], [Surname], [Name], [Patronymic], [Departament], [post]) VALUES (1, N'Смирнов', N'Андрей', N'Владимирович', 1, 2)
INSERT [dbo].[Personality] ([id], [Surname], [Name], [Patronymic], [Departament], [post]) VALUES (2, N'Катков', N'Вадим', N'Станиславович', 3, 4)
INSERT [dbo].[Personality] ([id], [Surname], [Name], [Patronymic], [Departament], [post]) VALUES (10, N'Алькин', N'Александр', N'Александрович', 4, 6)
SET IDENTITY_INSERT [dbo].[Personality] OFF
GO
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([id], [Posted], [Salary]) VALUES (1, N'Директор', 200.0000)
INSERT [dbo].[Post] ([id], [Posted], [Salary]) VALUES (2, N'Зам.Директора', 180.0000)
INSERT [dbo].[Post] ([id], [Posted], [Salary]) VALUES (3, N'Руководитель', 150.0000)
INSERT [dbo].[Post] ([id], [Posted], [Salary]) VALUES (4, N'Специалист', 160.0000)
INSERT [dbo].[Post] ([id], [Posted], [Salary]) VALUES (5, N'Программист', 170.0000)
INSERT [dbo].[Post] ([id], [Posted], [Salary]) VALUES (6, N'Художественный специалист', 172.0000)
INSERT [dbo].[Post] ([id], [Posted], [Salary]) VALUES (7, N'Специалист по фалькору', 50.0000)
INSERT [dbo].[Post] ([id], [Posted], [Salary]) VALUES (8, N'Заведующий', 60.0000)
INSERT [dbo].[Post] ([id], [Posted], [Salary]) VALUES (9, N'Аналитик', 80.0000)
INSERT [dbo].[Post] ([id], [Posted], [Salary]) VALUES (10, N'Убирщица', 50.0000)
SET IDENTITY_INSERT [dbo].[Post] OFF
GO
SET IDENTITY_INSERT [dbo].[Using] ON 

INSERT [dbo].[Using] ([Id], [Login], [Password]) VALUES (1, N'111', N'111')
INSERT [dbo].[Using] ([Id], [Login], [Password]) VALUES (2, N'Админ', N'123')
INSERT [dbo].[Using] ([Id], [Login], [Password]) VALUES (3, N'123', N'123')
INSERT [dbo].[Using] ([Id], [Login], [Password]) VALUES (4, N'1234', N'1234')
INSERT [dbo].[Using] ([Id], [Login], [Password]) VALUES (5, N'12345', N'12345')
INSERT [dbo].[Using] ([Id], [Login], [Password]) VALUES (6, N'123', N'123')
INSERT [dbo].[Using] ([Id], [Login], [Password]) VALUES (7, N'111', N'111')
SET IDENTITY_INSERT [dbo].[Using] OFF
GO
ALTER TABLE [dbo].[Personality]  WITH CHECK ADD FOREIGN KEY([Departament])
REFERENCES [dbo].[Departament] ([id])
GO
ALTER TABLE [dbo].[Personality]  WITH CHECK ADD FOREIGN KEY([post])
REFERENCES [dbo].[Post] ([id])
GO
