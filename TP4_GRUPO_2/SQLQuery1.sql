CREATE DATABASE Viajes
GO
USE [Viajes]
GO

CREATE TABLE [dbo].[Provincias](
	[IdProvincia] [int] NOT NULL PRIMARY KEY,
	[NombreProvincia] [varchar](50) NULL,
 ) 
 
GO
INSERT [dbo].[Provincias] ([IdProvincia], [NombreProvincia]) VALUES (1, N'Buenos Aires')
INSERT [dbo].[Provincias] ([IdProvincia], [NombreProvincia]) VALUES (2, N'Entre Rios')
INSERT [dbo].[Provincias] ([IdProvincia], [NombreProvincia]) VALUES (3, N'Santa Fe')

GO
CREATE TABLE [dbo].[Localidades](
	[IdLocalidad] [int] NOT NULL PRIMARY KEY,
	[NombreLocalidad] [varchar](50) NULL,
	[IdProvincia] [int] NULL,
 ) 
GO
INSERT [dbo].[Localidades] ([IdLocalidad], [NombreLocalidad], [IdProvincia]) VALUES (1, N'Campana', 1)
INSERT [dbo].[Localidades] ([IdLocalidad], [NombreLocalidad], [IdProvincia]) VALUES (2, N'Pacheco', 1)
INSERT [dbo].[Localidades] ([IdLocalidad], [NombreLocalidad], [IdProvincia]) VALUES (3, N'Retiro', 1)
INSERT [dbo].[Localidades] ([IdLocalidad], [NombreLocalidad], [IdProvincia]) VALUES (4, N'San isidro', 1)
INSERT [dbo].[Localidades] ([IdLocalidad], [NombreLocalidad], [IdProvincia]) VALUES (5, N'Colon', 2)
INSERT [dbo].[Localidades] ([IdLocalidad], [NombreLocalidad], [IdProvincia]) VALUES (6, N'Concordia', 2)
INSERT [dbo].[Localidades] ([IdLocalidad], [NombreLocalidad], [IdProvincia]) VALUES (7, N'Gualeguay', 2)
INSERT [dbo].[Localidades] ([IdLocalidad], [NombreLocalidad], [IdProvincia]) VALUES (8, N'Gualeguaychu', 2)
INSERT [dbo].[Localidades] ([IdLocalidad], [NombreLocalidad], [IdProvincia]) VALUES (9, N'Arocena', 3)
INSERT [dbo].[Localidades] ([IdLocalidad], [NombreLocalidad], [IdProvincia]) VALUES (10, N'Rafaela', 3)
INSERT [dbo].[Localidades] ([IdLocalidad], [NombreLocalidad], [IdProvincia]) VALUES (11, N'Rosario', 3)