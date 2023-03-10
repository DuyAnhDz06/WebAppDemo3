USE [master]
GO
/****** Object:  Database [ASM-Final1670-Real]    Script Date: 3/1/2023 9:54:44 AM ******/
CREATE DATABASE [ASM-Final1670-Real]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ASM-Final1670-Real', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ASM-Final1670-Real.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ASM-Final1670-Real_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ASM-Final1670-Real_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ASM-Final1670-Real] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ASM-Final1670-Real].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ASM-Final1670-Real] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ASM-Final1670-Real] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ASM-Final1670-Real] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ASM-Final1670-Real] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ASM-Final1670-Real] SET ARITHABORT OFF 
GO
ALTER DATABASE [ASM-Final1670-Real] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ASM-Final1670-Real] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ASM-Final1670-Real] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ASM-Final1670-Real] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ASM-Final1670-Real] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ASM-Final1670-Real] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ASM-Final1670-Real] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ASM-Final1670-Real] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ASM-Final1670-Real] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ASM-Final1670-Real] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ASM-Final1670-Real] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ASM-Final1670-Real] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ASM-Final1670-Real] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ASM-Final1670-Real] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ASM-Final1670-Real] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ASM-Final1670-Real] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [ASM-Final1670-Real] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ASM-Final1670-Real] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ASM-Final1670-Real] SET  MULTI_USER 
GO
ALTER DATABASE [ASM-Final1670-Real] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ASM-Final1670-Real] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ASM-Final1670-Real] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ASM-Final1670-Real] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ASM-Final1670-Real] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ASM-Final1670-Real] SET QUERY_STORE = OFF
GO
USE [ASM-Final1670-Real]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3/1/2023 9:54:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 3/1/2023 9:54:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/1/2023 9:54:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/1/2023 9:54:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/1/2023 9:54:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/1/2023 9:54:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/1/2023 9:54:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 3/1/2023 9:54:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 3/1/2023 9:54:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[BookId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Author] [nvarchar](30) NOT NULL,
	[Description] [nvarchar](3000) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[Price] [float] NOT NULL,
	[PublishedDate] [nvarchar](max) NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[BookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/1/2023 9:54:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](15) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 3/1/2023 9:54:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BookId] [int] NOT NULL,
	[BookTitle] [nvarchar](max) NOT NULL,
	[Quantity] [int] NOT NULL,
	[OrderTime] [datetime2](7) NOT NULL,
	[TotalPrice] [float] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'6.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230227132650_intialCreate', N'6.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230227145101_Order', N'6.0.14')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'Ad', N'Admin', N'Admin', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'Us', N'User', N'User', N'User')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8b8cf045-b54a-43a8-a036-f2e0ebbc4281', N'Ad')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c016a1f6-9876-435d-b680-3cb4007d1cf0', N'Us')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'8b8cf045-b54a-43a8-a036-f2e0ebbc4281', N'a@gmail.com', N'A@GMAIL.COM', N'a@gmail.com', N'A@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEGWABtuua90XpoCTjwNO8zKqQNqwY9w349rA92qeRqM0iHPJbxvWBidV2T/VQes8KQ==', N'Q63BNYRK6Y7BNPJISPGRNZWIVSQI6RB3', N'6d82829e-549c-4813-9e8d-948ae271cfda', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c016a1f6-9876-435d-b680-3cb4007d1cf0', N'b@gmail.com', N'B@GMAIL.COM', N'b@gmail.com', N'B@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEOeK8pjkZowhd1d0Lr+MfPOmUYN1S8cjBRVsIVz1xeS72BFVoqRzBtLqldn4tBCSiA==', N'BXNZ2A77YEEANYRL3RU42VK7AYOBZY2A', N'00eac1d3-e9f1-4d19-b531-33edcc9f60ec', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([BookId], [Title], [Author], [Description], [Image], [Price], [PublishedDate], [CategoryId]) VALUES (1, N'Doraemon123', N'Duy Anh đẹp trai', N'I say A B C D E ', N'https://vn-live-01.slatic.net/p/1ec955dc4a874e4750eb7b82e68b1b12.jpg', 69, N'2023-02-28', 1)
INSERT [dbo].[Book] ([BookId], [Title], [Author], [Description], [Image], [Price], [PublishedDate], [CategoryId]) VALUES (2, N'Sach1111', N'Duy Anh đẹp trai', N'asdaslmdaqeklrjhqwel;rhqwe;lrkeqw', N'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/8939caba-2c60-4aeb-bb20-d61b0458b178/deetr0d-4c24c9e0-0440-458d-a24d-099131dbd156.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzg5MzljYWJhLTJjNjAtNGFlYi1iYjIwLWQ2MWIwNDU4YjE3OFwvZGVldHIwZC00YzI0YzllMC0wNDQwLTQ1OGQtYTI0ZC0wOTkxMzFkYmQxNTYucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.xdxHqWLdJHmA1gIY3QO22Q7CkYe-ZYdOHcLnYYt9WUU', 69, N'2023-03-22', 2)
SET IDENTITY_INSERT [dbo].[Book] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description]) VALUES (1, N'Japan comics', N'I say A B C D E ')
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description]) VALUES (2, N'Doraemon', N'I say A B C D E')
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description]) VALUES (3, N'Self-Help', N'I say A B C D E ')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Id], [BookId], [BookTitle], [Quantity], [OrderTime], [TotalPrice]) VALUES (1, 1, N'Doraemon', 1, CAST(N'2023-02-28T23:30:46.4350854' AS DateTime2), 69)
INSERT [dbo].[Order] ([Id], [BookId], [BookTitle], [Quantity], [OrderTime], [TotalPrice]) VALUES (2, 1, N'Doraemon', 1, CAST(N'2023-02-28T23:30:48.8755052' AS DateTime2), 69)
INSERT [dbo].[Order] ([Id], [BookId], [BookTitle], [Quantity], [OrderTime], [TotalPrice]) VALUES (3, 1, N'Doraemon', 1, CAST(N'2023-02-28T23:30:51.3317308' AS DateTime2), 69)
INSERT [dbo].[Order] ([Id], [BookId], [BookTitle], [Quantity], [OrderTime], [TotalPrice]) VALUES (4, 1, N'Doraemon', 1, CAST(N'2023-02-28T23:31:40.6137001' AS DateTime2), 69)
INSERT [dbo].[Order] ([Id], [BookId], [BookTitle], [Quantity], [OrderTime], [TotalPrice]) VALUES (5, 1, N'Doraemon', 6, CAST(N'2023-02-28T23:31:55.2203756' AS DateTime2), 414)
INSERT [dbo].[Order] ([Id], [BookId], [BookTitle], [Quantity], [OrderTime], [TotalPrice]) VALUES (6, 1, N'Doraemon', 6, CAST(N'2023-02-28T23:40:50.8362445' AS DateTime2), 414)
INSERT [dbo].[Order] ([Id], [BookId], [BookTitle], [Quantity], [OrderTime], [TotalPrice]) VALUES (7, 1, N'Doraemon', 1, CAST(N'2023-03-01T01:19:33.2437624' AS DateTime2), 69)
INSERT [dbo].[Order] ([Id], [BookId], [BookTitle], [Quantity], [OrderTime], [TotalPrice]) VALUES (8, 2, N'Sach1111', 1, CAST(N'2023-03-01T01:31:11.4422442' AS DateTime2), 192)
INSERT [dbo].[Order] ([Id], [BookId], [BookTitle], [Quantity], [OrderTime], [TotalPrice]) VALUES (9, 3, N'Sach2222', 1, CAST(N'2023-03-01T01:31:11.6712817' AS DateTime2), 192)
INSERT [dbo].[Order] ([Id], [BookId], [BookTitle], [Quantity], [OrderTime], [TotalPrice]) VALUES (10, 1, N'Doraemon', 2, CAST(N'2023-03-01T01:36:35.4700469' AS DateTime2), 138)
INSERT [dbo].[Order] ([Id], [BookId], [BookTitle], [Quantity], [OrderTime], [TotalPrice]) VALUES (11, 1, N'Doraemon123', 2, CAST(N'2023-03-01T09:44:08.4767060' AS DateTime2), 207)
INSERT [dbo].[Order] ([Id], [BookId], [BookTitle], [Quantity], [OrderTime], [TotalPrice]) VALUES (12, 2, N'Sach1111', 1, CAST(N'2023-03-01T09:44:08.6085375' AS DateTime2), 207)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 3/1/2023 9:54:44 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 3/1/2023 9:54:44 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 3/1/2023 9:54:44 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 3/1/2023 9:54:44 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 3/1/2023 9:54:44 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 3/1/2023 9:54:44 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 3/1/2023 9:54:44 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Book_CategoryId]    Script Date: 3/1/2023 9:54:44 AM ******/
CREATE NONCLUSTERED INDEX [IX_Book_CategoryId] ON [dbo].[Book]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Category_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Category_CategoryId]
GO
USE [master]
GO
ALTER DATABASE [ASM-Final1670-Real] SET  READ_WRITE 
GO
