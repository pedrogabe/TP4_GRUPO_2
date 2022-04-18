CREATE DATABASE [Libreria]
GO
USE [Libreria]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[idVenta] [int] NOT NULL,
	[idLibro] [smallint] NULL,
	[cliente] [nvarchar](50) NULL,
	[fecha] [datetime] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Ventas] ([idVenta], [idLibro], [cliente], [fecha]) VALUES (1, 1, N'11', CAST(0x00009ECB00000000 AS DateTime))

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[Usuario] [nvarchar](50) NULL,
	[Clave] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Telefono] [nvarchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Usuarios] ([Usuario], [Clave], [Email], [Telefono]) VALUES (N'usuario1', N'clave1', N'emai1@gmail.com', N'4444-4444')
INSERT [dbo].[Usuarios] ([Usuario], [Clave], [Email], [Telefono]) VALUES (N'usuario2', N'clave2', N'email2@gmail.com', N'5555-5555')
INSERT [dbo].[Usuarios] ([Usuario], [Clave], [Email], [Telefono]) VALUES (N'usuario3', N'clave3', N'email3@gmail.com', N'6666-6666')


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Temas](
	[IdTema] [int] NULL,
	[Tema] [nvarchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Temas] ([IdTema], [Tema]) VALUES (1, N'Tema 1')
INSERT [dbo].[Temas] ([IdTema], [Tema]) VALUES (2, N'Tema 2')
INSERT [dbo].[Temas] ([IdTema], [Tema]) VALUES (3, N'Tema 3')


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Libros](
	[IdLibro] [int] NULL,
	[IdTema] [int] NULL,
	[Titulo] [nvarchar](50) NULL,
	[Precio] [money] NULL,
	[Autor] [nvarchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Libros] ([IdLibro], [IdTema], [Titulo], [Precio], [Autor]) VALUES (1, 1, N'Libro1', 100.0000, N'Autor1')
INSERT [dbo].[Libros] ([IdLibro], [IdTema], [Titulo], [Precio], [Autor]) VALUES (2, 1, N'Libro2', 800000.0000, N'Autor2')
INSERT [dbo].[Libros] ([IdLibro], [IdTema], [Titulo], [Precio], [Autor]) VALUES (3, 3, N'Libro3', 90.0000, N'Autor3')
INSERT [dbo].[Libros] ([IdLibro], [IdTema], [Titulo], [Precio], [Autor]) VALUES (4, 3, N'Libro4', 1260.0000, N'Autor4')
INSERT [dbo].[Libros] ([IdLibro], [IdTema], [Titulo], [Precio], [Autor]) VALUES (5, 1, N'Libro5', 120.0000, N'Autor5')
INSERT [dbo].[Libros] ([IdLibro], [IdTema], [Titulo], [Precio], [Autor]) VALUES (6, 2, N'Libro6', 70.0000, N'Autor6')
INSERT [dbo].[Libros] ([IdLibro], [IdTema], [Titulo], [Precio], [Autor]) VALUES (7, 2, N'Libro7', 50.0000, N'Autor7')
GO

CREATE PROCEDURE spInsertarLibro
(
@IDLIBRO INT,
@TITULO NVARCHAR(50),
@PRECIO MONEY,
@AUTOR NVARCHAR(50)
)
AS
INSERT INTO Libros
(
IdLibro,
Titulo,
Precio,
Autor
)
VALUES
(
@IDLIBRO,
@TITULO,
@PRECIO,
@AUTOR
)RETURN

GO

CREATE PROCEDURE spActualizarLibro
(
@IDLIBRO INT,
@TITULO NVARCHAR(50),
@PRECIO MONEY,
@AUTOR NVARCHAR(50)
)
AS
UPDATE Libros
SET
Titulo=@TITULO,
Precio=@PRECIO,
Autor=@AUTOR
WHERE IDLIBRO=@IDLIBRO
RETURN

GO

CREATE PROCEDURE spEliminarLibro
(
@IDLIBRO INT
) 
AS
DELETE FROM LIBROS
WHERE IDLIBRO=@IDLIBRO
RETURN


GO

CREATE PROCEDURE [dbo].[spActualizarLibroConTema]
(
@IDLIBRO INT,
@IDTEMA INT,
@TITULO NVARCHAR(50),
@PRECIO MONEY,
@AUTOR NVARCHAR(50)
)
AS
UPDATE Libros
SET
Titulo=@TITULO,
IdTema=@IDTEMA,
Precio=@PRECIO,
Autor=@AUTOR
WHERE IDLIBRO=@IDLIBRO
RETURN