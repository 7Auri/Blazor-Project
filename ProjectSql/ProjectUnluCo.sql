USE [aspnet-53bc9b9d-9d6a-45d4-8429-2a2761773502]
GO
/****** Object:  Schema [HangFire]    Script Date: 27.02.2022 13:17:41 ******/
CREATE SCHEMA [HangFire]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 27.02.2022 13:17:41 ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 27.02.2022 13:17:41 ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 27.02.2022 13:17:41 ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 27.02.2022 13:17:41 ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 27.02.2022 13:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 27.02.2022 13:17:41 ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 27.02.2022 13:17:41 ******/
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
	[EmailConfirmed] [bit] NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NULL,
	[TwoFactorEnabled] [bit] NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NULL,
	[AccessFailedCount] [int] NULL,
	[PasswordSalt] [nvarchar](max) NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 27.02.2022 13:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 27.02.2022 13:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[ImageUrl] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OfferFromz]    Script Date: 27.02.2022 13:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OfferFromz](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[ProductId] [int] NOT NULL,
	[Approval] [bit] NOT NULL,
 CONSTRAINT [PK_OfferFromz] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Offerz]    Script Date: 27.02.2022 13:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Offerz](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StatusOffer] [nvarchar](max) NULL,
	[PercentOffer] [float] NULL,
	[OfferPrice] [float] NULL,
	[ProductId] [int] NULL,
	[UserName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Offerz] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 27.02.2022 13:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] NOT NULL,
	[Brand] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[ImageUrl] [nvarchar](max) NOT NULL,
	[Color] [nvarchar](max) NULL,
	[OriginalPrice] [float] NOT NULL,
	[IsOfferable] [bit] NOT NULL,
	[usingStatus] [nvarchar](max) NULL,
	[CategoryId] [int] NOT NULL,
	[IsSold] [bit] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[AggregatedCounter]    Script Date: 27.02.2022 13:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[AggregatedCounter](
	[Key] [nvarchar](100) NOT NULL,
	[Value] [bigint] NOT NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_CounterAggregated] PRIMARY KEY CLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Counter]    Script Date: 27.02.2022 13:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Counter](
	[Key] [nvarchar](100) NOT NULL,
	[Value] [int] NOT NULL,
	[ExpireAt] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Hash]    Script Date: 27.02.2022 13:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Hash](
	[Key] [nvarchar](100) NOT NULL,
	[Field] [nvarchar](100) NOT NULL,
	[Value] [nvarchar](max) NULL,
	[ExpireAt] [datetime2](7) NULL,
 CONSTRAINT [PK_HangFire_Hash] PRIMARY KEY CLUSTERED 
(
	[Key] ASC,
	[Field] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Job]    Script Date: 27.02.2022 13:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Job](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[StateId] [bigint] NULL,
	[StateName] [nvarchar](20) NULL,
	[InvocationData] [nvarchar](max) NOT NULL,
	[Arguments] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_Job] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[JobParameter]    Script Date: 27.02.2022 13:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[JobParameter](
	[JobId] [bigint] NOT NULL,
	[Name] [nvarchar](40) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_HangFire_JobParameter] PRIMARY KEY CLUSTERED 
(
	[JobId] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[JobQueue]    Script Date: 27.02.2022 13:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[JobQueue](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[JobId] [bigint] NOT NULL,
	[Queue] [nvarchar](50) NOT NULL,
	[FetchedAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_JobQueue] PRIMARY KEY CLUSTERED 
(
	[Queue] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[List]    Script Date: 27.02.2022 13:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[List](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](100) NOT NULL,
	[Value] [nvarchar](max) NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_List] PRIMARY KEY CLUSTERED 
(
	[Key] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Schema]    Script Date: 27.02.2022 13:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Schema](
	[Version] [int] NOT NULL,
 CONSTRAINT [PK_HangFire_Schema] PRIMARY KEY CLUSTERED 
(
	[Version] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Server]    Script Date: 27.02.2022 13:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Server](
	[Id] [nvarchar](200) NOT NULL,
	[Data] [nvarchar](max) NULL,
	[LastHeartbeat] [datetime] NOT NULL,
 CONSTRAINT [PK_HangFire_Server] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Set]    Script Date: 27.02.2022 13:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Set](
	[Key] [nvarchar](100) NOT NULL,
	[Score] [float] NOT NULL,
	[Value] [nvarchar](256) NOT NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_Set] PRIMARY KEY CLUSTERED 
(
	[Key] ASC,
	[Value] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[State]    Script Date: 27.02.2022 13:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[State](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[JobId] [bigint] NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Reason] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NOT NULL,
	[Data] [nvarchar](max) NULL,
 CONSTRAINT [PK_HangFire_State] PRIMARY KEY CLUSTERED 
(
	[JobId] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220215182343_Proje', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220215184149_Proje', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220215203642_Proje', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220218184351_Proje', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220218210358_Proje444', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220218214417_Proje', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220219135425_ProjectUnluCo', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220219142700_Project', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220219143147_ProjectUnluCo', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220222140925_Project', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220222210902_ProjectUnluCo', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220223094953_Project', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220223112239_Project', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220223113317_ProjectUnluCo', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220223113556_Project', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220223131828_ProjectUnluCo', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220223132253_Project', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220223132739_ProjectUnluCo', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220223142833_Project', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220223143412_ProjectUnluCo', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220223144201_Project', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220223192847_ProjectUnluCo', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220223193239_project', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220223194257_ProjectUnluCo', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220223215032_Project', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220223223044_ProjectUnluCo', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220223223911_Projct', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220223224359_ProjectUnluCo', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220224085639_Project', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220224090212_Projct444', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220224105420_Project', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220224105959_ProjectUnluCo', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220224153633_Projct', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220224154849_ProjectUnluCo', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220224160325_Project', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220224160813_Project777', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220224161222_Project', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220224163218_Product', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220224163314_ProjectUnluCo', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220224163740_Project', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220224163916_ProjectUnluCo', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220224164239_ProjectUnlu', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220224164533_Project', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220224164907_Project77', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220224165517_Project', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220224165918_ProjectUnluCo', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220224170104_ProjectUnlu', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220224170606_Project777', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220224170913_ProjectUnluCo', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220224172333_ProjectUnlu', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220225113434_Project', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220225113901_ProjectUnluCo', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220225114928_Project', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220225115227_ProjectUnluCo', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220225134230_UnluCo', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220225152528_UnluC', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220225153021_UnluCo', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220225153717_UnluCo', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220225154014_UnluCoProject', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220225154306_Project', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220225154527_UnluCo', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220225160736_Prjct', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220225162046_UnluCo', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220225163140_Project', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220225180028_UnluCo', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220225181749_UnluCo', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220225183334_Project', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220225183432_UnluCo', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220225201414_UnluCoProjet', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220226132602_UnluCo', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220226212229_ProjectUnluCo', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220226214027_UnluCoProject', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220226214144_ProjectUnluCo', N'5.0.14')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [PasswordSalt], [Discriminator]) VALUES (N'f595362a-8a3f-41ac-a99f-a1fd8e5636d9', N'7Auri', N'7AURI', N'yesilalioglubusra@gmail.com', N'YESILALIOGLUBUSRA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEL37ub4B4xSfSOuCKSfCizl+Yh/2tGQZIXC0PCa10WNVNx/TUtBZeNE3YszMidNdsA==', N'CKXZ445FUHMAF73QRQRAQYGDTEBR5DUS', N'390a1cf6-a85d-4f1b-b428-c93537e95105', NULL, 0, 0, NULL, 1, 0, NULL, N'')
INSERT [dbo].[Categories] ([CategoryId], [Name], [ImageUrl]) VALUES (1, N'Dell', N'https://telecom-space.com/upload/iblock/593/mhzferw9o58r0blwypb0yeqyheofo0xl.jpg')
INSERT [dbo].[Categories] ([CategoryId], [Name], [ImageUrl]) VALUES (2, N'Lenovo', N'https://upload.wikimedia.org/wikipedia/commons/0/03/Lenovo_Global_Corporate_Logo.png')
INSERT [dbo].[Categories] ([CategoryId], [Name], [ImageUrl]) VALUES (3, N'Hp', N'https://smhttp-dih-ssl-51464.nexcesscdn.net/media/manufacturer/hp.jpg')
INSERT [dbo].[Categories] ([CategoryId], [Name], [ImageUrl]) VALUES (4, N'Apple', N'https://assets.entrepreneur.com/content/3x2/2000/20190110161503-Depositphotos-63712063-l-2015.jpeg')
INSERT [dbo].[Categories] ([CategoryId], [Name], [ImageUrl]) VALUES (5, N'Monster', N'https://avatars.mds.yandex.net/i?id=dc62298436bde7178f81e91d9961751e-5887371-images-thumbs&n=13')
INSERT [dbo].[Categories] ([CategoryId], [Name], [ImageUrl]) VALUES (92, N'Aryaa', N'deneme')
SET IDENTITY_INSERT [dbo].[OfferFromz] ON 

INSERT [dbo].[OfferFromz] ([Id], [UserName], [ProductId], [Approval]) VALUES (5, N'Auri7', 27, 1)
INSERT [dbo].[OfferFromz] ([Id], [UserName], [ProductId], [Approval]) VALUES (6, N'Auri7', 28, 1)
INSERT [dbo].[OfferFromz] ([Id], [UserName], [ProductId], [Approval]) VALUES (8, N'Auri7', 30, 1)
INSERT [dbo].[OfferFromz] ([Id], [UserName], [ProductId], [Approval]) VALUES (9, N'Auri7', 31, 1)
SET IDENTITY_INSERT [dbo].[OfferFromz] OFF
SET IDENTITY_INSERT [dbo].[Offerz] ON 

INSERT [dbo].[Offerz] ([Id], [StatusOffer], [PercentOffer], [OfferPrice], [ProductId], [UserName]) VALUES (53, NULL, 0, 20000, 9, N'Auri7')
INSERT [dbo].[Offerz] ([Id], [StatusOffer], [PercentOffer], [OfferPrice], [ProductId], [UserName]) VALUES (54, N'1', 0, 24000, 31, N'Berk')
INSERT [dbo].[Offerz] ([Id], [StatusOffer], [PercentOffer], [OfferPrice], [ProductId], [UserName]) VALUES (55, NULL, 0, 17590.5, 6, N'Auri7')
INSERT [dbo].[Offerz] ([Id], [StatusOffer], [PercentOffer], [OfferPrice], [ProductId], [UserName]) VALUES (56, NULL, 0, 13500, 14, N'Auri7')
INSERT [dbo].[Offerz] ([Id], [StatusOffer], [PercentOffer], [OfferPrice], [ProductId], [UserName]) VALUES (57, NULL, 0, 15000, 6, N'Auri7')
SET IDENTITY_INSERT [dbo].[Offerz] OFF
INSERT [dbo].[Products] ([Id], [Brand], [Name], [Description], [ImageUrl], [Color], [OriginalPrice], [IsOfferable], [usingStatus], [CategoryId], [IsSold]) VALUES (6, N'Dell', N'Dell', N'Ekran Kartı Hafızası4 GBİşletim SistemiWindows 11 HomeİşlemciR5-5600HRam (Sistem Belleği)8 GBİşlemci TipiAMD Ryzen 5Harddisk KapasitesiYokEkran Boyutu15,6 inçEkran KartıNvidia GeForce RTX 3050Tüm Özellikler
Dell Gaming G15 AMD Ryzen 5-5600H 8 GB 512 GB SSD RTX3050 4 GB VGA 15.6” FHD Windows 11 Home Taşınabilir Bilgisayar G15-FGR556W85N', N'https://productimages.hepsiburada.net/s/150/550/110000105626425.jpg/format:webp', N'Gray', 19545, 1, N'Used', 1, 0)
INSERT [dbo].[Products] ([Id], [Brand], [Name], [Description], [ImageUrl], [Color], [OriginalPrice], [IsOfferable], [usingStatus], [CategoryId], [IsSold]) VALUES (9, N'Dell', N'Dell Latitude 3520', N'Dell Latitude 3520 Intel Core i5 1135G7 8GB 256GB SSD Ubuntu 15.6" FHD Taşınabilir Bilgisayar N014L352015EMEA_U', N'https://productimages.hepsiburada.net/s/125/550/110000074750592.jpg/format:webp', N'White', 23567, 1, N'Used', 1, 0)
INSERT [dbo].[Products] ([Id], [Brand], [Name], [Description], [ImageUrl], [Color], [OriginalPrice], [IsOfferable], [usingStatus], [CategoryId], [IsSold]) VALUES (10, N'Lenovo', N'Lenovo IdeaPad Gaming 3', N'Lenovo IdeaPad Gaming 3 AMD Ryzen 7 5800H 16GB 512GB SSD RTX 3060 Freedos 15.6" FHD Taşınabilir Bilgisayar 82K200JUTX', N'https://productimages.hepsiburada.net/s/171/550/110000133909315.jpg/format:webp', N'Black', 8956, 1, N'Used', 2, 0)
INSERT [dbo].[Products] ([Id], [Brand], [Name], [Description], [ImageUrl], [Color], [OriginalPrice], [IsOfferable], [usingStatus], [CategoryId], [IsSold]) VALUES (11, N'Lenovo', N'Lenovo Ideapad 1', N'Lenovo Ideapad 1 14IGL05 Intel Celeron N4020 4 GB 128 GB SSD Windows 10 Home 14.0'''' Taşınabilir Bilgisayar 81VU00B5TX
', N'https://productimages.hepsiburada.net/s/137/550/110000089850069.jpg/format:webp', N'Gray', 17523, 0, N'New', 2, 0)
INSERT [dbo].[Products] ([Id], [Brand], [Name], [Description], [ImageUrl], [Color], [OriginalPrice], [IsOfferable], [usingStatus], [CategoryId], [IsSold]) VALUES (12, N'Lenovo', N'Lenovo V15 G2 ITL', N'Lenovo V15 G2 ITL Intel Core i5 1135G7 8GB 256GB SSD Windows 10 Home 15.6" FHD Taşınabilir Bilgisayar 82KB000RTX', N'https://productimages.hepsiburada.net/s/137/550/110000089760432.jpg/format:webp', N'Gray', 4512, 1, N'New', 2, 0)
INSERT [dbo].[Products] ([Id], [Brand], [Name], [Description], [ImageUrl], [Color], [OriginalPrice], [IsOfferable], [usingStatus], [CategoryId], [IsSold]) VALUES (13, N'Lenovo', N'Lenovo Thinkbook 15 Gen', N'Lenovo Thinkbook 15 Gen 2 Intel Core i5 1135G7 8GB 512GB SSD Nvidia GeForce MX450 Freedos Taşınabilir Bilgisayar 20VE00FTTX', N'https://productimages.hepsiburada.net/s/146/550/110000100940775.jpg/format:webp', N'Black', 21224, 0, N'Used', 2, 0)
INSERT [dbo].[Products] ([Id], [Brand], [Name], [Description], [ImageUrl], [Color], [OriginalPrice], [IsOfferable], [usingStatus], [CategoryId], [IsSold]) VALUES (14, N'Hp', N'Hp Pavilion 16-A0000NT', N'Hp Pavilion 16-A0000NT Intel Core I5 10300H 8gb 256GB SSD GTX1050 Freedos 16.1" Fhd Taşınabilir Bilgisayar 1Y7D5EA', N'https://productimages.hepsiburada.net/s/176/550/110000140251421.jpg/format:webp', N'Black', 15000, 1, N'Used', 3, 0)
INSERT [dbo].[Products] ([Id], [Brand], [Name], [Description], [ImageUrl], [Color], [OriginalPrice], [IsOfferable], [usingStatus], [CategoryId], [IsSold]) VALUES (15, N'Hp', N'Hp Omen 15-EK1001NT', N'Hp Omen 15-EK1001NT Intel Core I7 10870H 16GB 1tb SSD Rtx 3070 165 Hz Freedos 15.6 " Qhd Taşınabilir Bilgisayar 39C41EA', N'https://productimages.hepsiburada.net/s/176/550/110000139622519.jpg/format:webp', N'Black', 13564, 1, N'New', 3, 0)
INSERT [dbo].[Products] ([Id], [Brand], [Name], [Description], [ImageUrl], [Color], [OriginalPrice], [IsOfferable], [usingStatus], [CategoryId], [IsSold]) VALUES (16, N'Hp', N'HP Victus 16-E0012NT', N'HP Victus 16-E0012NT Amd Ryzen 5 5600H 8GB 256GB GTX1650 Freedos 16.1" FHD Taşınabilir Bilgisayar 4H0S3EA', N'https://productimages.hepsiburada.net/s/106/550/110000049085850.jpg/format:webp', N'Blue', 9875, 0, N'Used', 3, 0)
INSERT [dbo].[Products] ([Id], [Brand], [Name], [Description], [ImageUrl], [Color], [OriginalPrice], [IsOfferable], [usingStatus], [CategoryId], [IsSold]) VALUES (17, N'Apple', N'Apple MacBook M1 Pro', N'Apple MacBook M1 Pro Çip 16GB 512GB SSD macOS 14" QHD Taşınabilir Bilgisayar Uzay Grisi MKGP3TU/A', N'https://productimages.hepsiburada.net/s/131/550/110000081537720.jpg/format:webp', N'Gray', 50000, 1, N'New', 4, 0)
INSERT [dbo].[Products] ([Id], [Brand], [Name], [Description], [ImageUrl], [Color], [OriginalPrice], [IsOfferable], [usingStatus], [CategoryId], [IsSold]) VALUES (18, N'Apple', N'Apple MacBook Air M1', N'Apple MacBook Air M1 Çip 8GB 256GB SSD macOS 13" QHD Taşınabilir Bilgisayar Uzay Grisi MGN63TU/A', N'https://productimages.hepsiburada.net/s/49/550/10983949860914.jpg/format:webp', N'Gray', 23000, 0, N'Used', 4, 0)
INSERT [dbo].[Products] ([Id], [Brand], [Name], [Description], [ImageUrl], [Color], [OriginalPrice], [IsOfferable], [usingStatus], [CategoryId], [IsSold]) VALUES (19, N'Apple', N'Apple MacBook Pro', N'Apple MacBook Pro Intel Core i9 32GB 1TB SSD macOS 16" Taşınabilir Bilgisayar MVVK2TUV4', N'https://productimages.hepsiburada.net/s/44/550/10817626898482.jpg/format:webp', N'Pink', 78000, 1, N'New', 4, 0)
INSERT [dbo].[Products] ([Id], [Brand], [Name], [Description], [ImageUrl], [Color], [OriginalPrice], [IsOfferable], [usingStatus], [CategoryId], [IsSold]) VALUES (20, N'Apple', N'Apple Macbook Air M', N'Apple Macbook Air M1 Çip 16GB 256GB Macos 13" Qhd Taşınabilir Bilgisayar Altın - Z12AM116256-TQ6', N'https://productimages.hepsiburada.net/s/167/550/110000128977528.jpg/format:webp', N'Gold', 42300, 0, N'Used', 4, 0)
INSERT [dbo].[Products] ([Id], [Brand], [Name], [Description], [ImageUrl], [Color], [OriginalPrice], [IsOfferable], [usingStatus], [CategoryId], [IsSold]) VALUES (21, N'Monster', N'Monster Tulpar T5 V20.3', N'Monster Tulpar T5 V20.3 Intel Core i7 11800H 16GB 500GB SSD RTX 3060 Freedos 15.6'' FHD 144 Hz Taşınabilir Bilgisayar', N'https://productimages.hepsiburada.net/s/98/550/110000040847807.jpg/format:webp', N'Black', 75000, 1, N'New', 5, 0)
INSERT [dbo].[Products] ([Id], [Brand], [Name], [Description], [ImageUrl], [Color], [OriginalPrice], [IsOfferable], [usingStatus], [CategoryId], [IsSold]) VALUES (22, N'Monster', N'Monster Markut M7 V5.2', N'Monster Markut M7 V5.2 Intel Core I9 64GB 1tb SSD Windows 11 Pro 17.3" Taşınabilir Bilgisayar', N'https://productimages.hepsiburada.net/s/152/550/110000108001261.jpg/format:webp', N'Black', 28000, 0, N'Used', 5, 0)
INSERT [dbo].[Products] ([Id], [Brand], [Name], [Description], [ImageUrl], [Color], [OriginalPrice], [IsOfferable], [usingStatus], [CategoryId], [IsSold]) VALUES (23, N'Monster', N'Monster Abra A5 V16.7', N'Monster Abra A5 V16.7 Intel Core i5 11400H 8GB 500GB SSD GTX 1650 Freedos 15.6'''' FHD Taşınabilir Bilgisayar', N'https://productimages.hepsiburada.net/s/98/550/110000040847627.jpg/format:webp', N'Green', 54222, 1, N'New', 5, 0)
INSERT [dbo].[Products] ([Id], [Brand], [Name], [Description], [ImageUrl], [Color], [OriginalPrice], [IsOfferable], [usingStatus], [CategoryId], [IsSold]) VALUES (24, N'Monster', N'Monster Abra A7 V13.2.', N'Monster Abra A7 V13.2.1 Intel Core i5 11400H 16GB 500GB SSD RTX 3050Ti Windows 11 Home 17.3'''' FHD 144 Hz Taşınabilir Bilgisayar', N'https://productimages.hepsiburada.net/s/98/550/110000040847620.jpg/format:webp', N'Black', 14500, 0, N'New', 5, 0)
INSERT [dbo].[Products] ([Id], [Brand], [Name], [Description], [ImageUrl], [Color], [OriginalPrice], [IsOfferable], [usingStatus], [CategoryId], [IsSold]) VALUES (25, N'Lenovo', N'Lenovo IdeaPad', N'Lenovo IdeaPad Intel Core i3 1005G1 20GB 1TB SSD Windows 10 Pro 14" FHD Taşınabilir Bilgisayar 81WD00FDTX035', N'https://productimages.hepsiburada.net/s/173/550/110000137019274.jpg/format:webp', N'Red', 11000, 1, N'Used', 2, 0)
INSERT [dbo].[Products] ([Id], [Brand], [Name], [Description], [ImageUrl], [Color], [OriginalPrice], [IsOfferable], [usingStatus], [CategoryId], [IsSold]) VALUES (26, N'Dell', N'Dell Gaming', N'Dell Latitude 3520 Intel Core i5 1135G7 8GB 256GB SSD Ubuntu 15.6" FHD Taşınabilir Bilgisayar N014L352015EMEA_U', N'https://productimages.hepsiburada.net/s/150/550/110000105626425.jpg/format:webp', N'Black', 24000, 1, N'Used', 1, 0)
INSERT [dbo].[Products] ([Id], [Brand], [Name], [Description], [ImageUrl], [Color], [OriginalPrice], [IsOfferable], [usingStatus], [CategoryId], [IsSold]) VALUES (27, N'Dell', N'Dell Gaming', N'Dell Latitude 3520 Intel Core i5 1135G7 8GB 256GB SSD Ubuntu 15.6" FHD Taşınabilir Bilgisayar N014L352015EMEA_U', N'https://productimages.hepsiburada.net/s/150/550/110000105626425.jpg/format:webp', N'Black', 24000, 1, N'Used', 1, 0)
INSERT [dbo].[Products] ([Id], [Brand], [Name], [Description], [ImageUrl], [Color], [OriginalPrice], [IsOfferable], [usingStatus], [CategoryId], [IsSold]) VALUES (28, N'Lenovo', N'Lenovo Idepad', N'Lenovo Thinkbook 15 Gen 2 Intel Core i5 1135G7 8GB 512GB SSD Nvidia GeForce MX450 Freedos Taşınabilir Bilgisayar 20VE00FTTX', N'https://productimages.hepsiburada.net/s/146/550/110000100940775.jpg/format:webp', N'Gray', 13000, 1, N'New', 2, 0)
INSERT [dbo].[Products] ([Id], [Brand], [Name], [Description], [ImageUrl], [Color], [OriginalPrice], [IsOfferable], [usingStatus], [CategoryId], [IsSold]) VALUES (30, N'Apple', N'Apple Mac Pro', N'Apple MacBook M1 Pro Çip 16GB 512GB SSD macOS 14" QHD Taşınabilir Bilgisayar Uzay Grisi MKGP3TU/A', N'https://productimages.hepsiburada.net/s/167/550/110000128977528.jpg/format:webp', N'Gray', 48000, 1, N'New', 4, 0)
INSERT [dbo].[Products] ([Id], [Brand], [Name], [Description], [ImageUrl], [Color], [OriginalPrice], [IsOfferable], [usingStatus], [CategoryId], [IsSold]) VALUES (31, N'Apple', N'Apple Mac Pro', N'Apple MacBook M1 Pro Çip 16GB 512GB SSD macOS 14" QHD Taşınabilir Bilgisayar Uzay Grisi MKGP3TU/A', N'https://productimages.hepsiburada.net/s/167/550/110000128977528.jpg/format:webp', N'Gray', 34000, 1, N'Used', 4, 1)
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:succeeded', 78, NULL)
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:succeeded:2022-02-16', 8, CAST(N'2022-03-16T21:54:03.363' AS DateTime))
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:succeeded:2022-02-17', 30, CAST(N'2022-03-17T19:01:05.520' AS DateTime))
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:succeeded:2022-02-20', 19, CAST(N'2022-03-20T20:26:04.353' AS DateTime))
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:succeeded:2022-02-21', 3, CAST(N'2022-03-21T10:12:34.333' AS DateTime))
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:succeeded:2022-02-22', 1, CAST(N'2022-03-22T19:04:12.890' AS DateTime))
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:succeeded:2022-02-23', 10, CAST(N'2022-03-23T21:32:25.757' AS DateTime))
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:succeeded:2022-02-24', 5, CAST(N'2022-03-24T22:27:32.230' AS DateTime))
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:succeeded:2022-02-26', 6, CAST(N'2022-03-26T21:04:48.043' AS DateTime))
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:succeeded:2022-02-26-20', 3, CAST(N'2022-02-27T20:59:17.900' AS DateTime))
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:succeeded:2022-02-26-21', 3, CAST(N'2022-02-27T21:04:48.043' AS DateTime))
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:Deneme', N'CreatedAt', N'1645048819300', NULL)
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:Deneme', N'Cron', N'0 * * * *', NULL)
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:Deneme', N'Error', N'System.InvalidOperationException: Recurring job can''t be scheduled, see inner exception for details.
 ---> Hangfire.Common.JobLoadException: Could not load the job. See inner exception for the details.
 ---> System.IO.FileNotFoundException: Could not resolve assembly ''ProjectUnluCo''.
   at System.TypeNameParser.ResolveAssembly(String asmName, Func`2 assemblyResolver, Boolean throwOnError, StackCrawlMark& stackMark)
   at System.TypeNameParser.ConstructType(Func`2 assemblyResolver, Func`4 typeResolver, Boolean throwOnError, Boolean ignoreCase, StackCrawlMark& stackMark)
   at System.TypeNameParser.GetType(String typeName, Func`2 assemblyResolver, Func`4 typeResolver, Boolean throwOnError, Boolean ignoreCase, StackCrawlMark& stackMark)
   at System.Type.GetType(String typeName, Func`2 assemblyResolver, Func`4 typeResolver, Boolean throwOnError)
   at Hangfire.Common.TypeHelper.DefaultTypeResolver(String typeName)
   at Hangfire.Storage.InvocationData.DeserializeJob()
   --- End of inner exception stack trace ---
   at Hangfire.Storage.InvocationData.DeserializeJob()
   at Hangfire.RecurringJobEntity..ctor(String recurringJobId, IDictionary`2 recurringJob, ITimeZoneResolver timeZoneResolver, DateTime now)
   --- End of inner exception stack trace ---
   at Hangfire.Server.RecurringJobScheduler.ScheduleRecurringJob(BackgroundProcessContext context, IStorageConnection connection, String recurringJobId, RecurringJobEntity recurringJob, DateTime now)', NULL)
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:Deneme', N'Job', N'{"t":"ProjectUnluCo.Services.IEmailSender, ProjectUnluCo","m":"SendEmailAsync","p":["System.String","System.String","System.String"],"a":["\"unlucuproje@gmail.com\"","\"busracyefflfsgf\"","\"WELCOME =)\""]}', NULL)
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:Deneme', N'LastExecution', N'1645111456186', NULL)
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:Deneme', N'LastJobId', N'30', NULL)
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:Deneme', N'NextExecution', N'', NULL)
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:Deneme', N'Queue', N'root', NULL)
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:Deneme', N'RetryAttempt', N'5', NULL)
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:Deneme', N'TimeZoneId', N'UTC', NULL)
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:Deneme', N'V', N'2', NULL)
SET IDENTITY_INSERT [HangFire].[Job] ON 

INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (5, 26, N'Enqueued', N'{"t":"ProjectUnluCo.Services.IEmailSender, ProjectUnluCo","m":"SendEmailAsync","p":["System.String","System.String","System.String"]}', N'["\"unlucuproje@gmail.com\"","\"busracyefflfsgf\"","\"WELCOME =)\""]', CAST(N'2022-02-17T12:05:43.157' AS DateTime), NULL)
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (8, 35, N'Enqueued', N'{"t":"ProjectUnluCo.Services.IEmailSender, ProjectUnluCo","m":"SendEmailAsync","p":["System.String","System.String","System.String"]}', N'["\"unlucuproje@gmail.com\"","\"busracyefflfsgf\"","\"WELCOME =)\""]', CAST(N'2022-02-17T13:02:43.287' AS DateTime), NULL)
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (23, 92, N'Enqueued', N'{"t":"ProjectUnluCo.Services.IEmailSender, ProjectUnluCo","m":"SendEmailAsync","p":["System.String","System.String","System.String"]}', N'["\"unlucuproje@gmail.com\"","\"busracyefflfsgf\"","\"WELCOME =)\""]', CAST(N'2022-02-17T14:07:32.497' AS DateTime), NULL)
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (30, 117, N'Enqueued', N'{"t":"ProjectUnluCo.Services.IEmailSender, ProjectUnluCo","m":"SendEmailAsync","p":["System.String","System.String","System.String"]}', N'["\"unlucuproje@gmail.com\"","\"busracyefflfsgf\"","\"WELCOME =)\""]', CAST(N'2022-02-17T15:24:16.277' AS DateTime), NULL)
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (77, 305, N'Succeeded', N'{"t":"ProjectUnluCo.Services.IEmailSender, ProjectUnluCo","m":"SendEmailAsync","p":["System.String","System.String","System.String"]}', N'["\"yesilalioglubusra@gmail.com\"","\"7Auri\"","\"WELCOME =)\""]', CAST(N'2022-02-26T20:38:58.613' AS DateTime), CAST(N'2022-02-27T20:39:17.527' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (78, 309, N'Succeeded', N'{"t":"ProjectUnluCo.Services.IEmailSender, ProjectUnluCo","m":"SendEmailAsync","p":["System.String","System.String","System.String"]}', N'["\"yesilalioglubusra@gmail.com\"","\"7Auri\"","\"WELCOME =)\""]', CAST(N'2022-02-26T20:55:42.187' AS DateTime), CAST(N'2022-02-27T20:55:57.270' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (79, 313, N'Succeeded', N'{"t":"ProjectUnluCo.Services.IEmailSender, ProjectUnluCo","m":"SendEmailAsync","p":["System.String","System.String","System.String"]}', N'["\"yesilalioglubusra@gmail.com\"","\"Auri7\"","\"WELCOME =)\""]', CAST(N'2022-02-26T20:59:06.470' AS DateTime), CAST(N'2022-02-27T20:59:17.900' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (80, 317, N'Succeeded', N'{"t":"ProjectUnluCo.Services.IEmailSender, ProjectUnluCo","m":"SendEmailAsync","p":["System.String","System.String","System.String"]}', N'["\"yesilalioglubusra@gmail.com\"","\"7Auri\"","\"WELCOME =)\""]', CAST(N'2022-02-26T21:01:28.677' AS DateTime), CAST(N'2022-02-27T21:01:33.083' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (81, 321, N'Succeeded', N'{"t":"ProjectUnluCo.Services.IEmailSender, ProjectUnluCo","m":"SendEmailAsync","p":["System.String","System.String","System.String"]}', N'["\"yesilalioglubusra@gmail.com\"","\"7Auri\"","\"WELCOME =)\""]', CAST(N'2022-02-26T21:04:00.560' AS DateTime), CAST(N'2022-02-27T21:04:18.133' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (82, 325, N'Succeeded', N'{"t":"ProjectUnluCo.Services.IEmailSender, ProjectUnluCo","m":"SendEmailAsync","p":["System.String","System.String","System.String"]}', N'["\"yesilalioglubusra@gmail.com\"","\"7Auri\"","\"WELCOME =)\""]', CAST(N'2022-02-26T21:04:40.410' AS DateTime), CAST(N'2022-02-27T21:04:48.043' AS DateTime))
SET IDENTITY_INSERT [HangFire].[Job] OFF
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (5, N'CurrentCulture', N'"tr-TR"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (5, N'CurrentUICulture', N'"tr-TR"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (5, N'RecurringJobId', N'"Deneme"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (5, N'Time', N'1645099543')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (8, N'CurrentCulture', N'"tr-TR"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (8, N'CurrentUICulture', N'"tr-TR"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (8, N'RecurringJobId', N'"Deneme"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (8, N'Time', N'1645102963')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (23, N'CurrentCulture', N'"tr-TR"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (23, N'CurrentUICulture', N'"tr-TR"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (23, N'RecurringJobId', N'"Deneme"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (23, N'Time', N'1645106852')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (30, N'CurrentCulture', N'"tr-TR"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (30, N'CurrentUICulture', N'"tr-TR"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (30, N'RecurringJobId', N'"Deneme"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (30, N'Time', N'1645111456')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (77, N'CurrentCulture', N'"tr-TR"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (77, N'CurrentUICulture', N'"tr-TR"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (78, N'CurrentCulture', N'"tr-TR"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (78, N'CurrentUICulture', N'"tr-TR"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (79, N'CurrentCulture', N'"tr-TR"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (79, N'CurrentUICulture', N'"tr-TR"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (80, N'CurrentCulture', N'"tr-TR"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (80, N'CurrentUICulture', N'"tr-TR"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (81, N'CurrentCulture', N'"tr-TR"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (81, N'CurrentUICulture', N'"tr-TR"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (82, N'CurrentCulture', N'"tr-TR"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (82, N'CurrentUICulture', N'"tr-TR"')
SET IDENTITY_INSERT [HangFire].[JobQueue] ON 

INSERT [HangFire].[JobQueue] ([Id], [JobId], [Queue], [FetchedAt]) VALUES (9, 5, N'root', NULL)
INSERT [HangFire].[JobQueue] ([Id], [JobId], [Queue], [FetchedAt]) VALUES (12, 8, N'root', NULL)
INSERT [HangFire].[JobQueue] ([Id], [JobId], [Queue], [FetchedAt]) VALUES (27, 23, N'root', NULL)
INSERT [HangFire].[JobQueue] ([Id], [JobId], [Queue], [FetchedAt]) VALUES (34, 30, N'root', NULL)
SET IDENTITY_INSERT [HangFire].[JobQueue] OFF
INSERT [HangFire].[Schema] ([Version]) VALUES (7)
INSERT [HangFire].[Server] ([Id], [Data], [LastHeartbeat]) VALUES (N'zorbey:29048:76269d7d-01f2-4272-ab15-3bd370aa97fd', N'{"WorkerCount":20,"Queues":["default"],"StartedAt":"2022-02-27T08:56:26.7556678Z"}', CAST(N'2022-02-27T09:01:00.187' AS DateTime))
INSERT [HangFire].[Server] ([Id], [Data], [LastHeartbeat]) VALUES (N'zorbey:3616:bfde111d-53c7-454f-bc34-58eb206b55f2', N'{"WorkerCount":20,"Queues":["default"],"StartedAt":"2022-02-27T09:02:15.7740825Z"}', CAST(N'2022-02-27T09:02:46.293' AS DateTime))
INSERT [HangFire].[Set] ([Key], [Score], [Value], [ExpireAt]) VALUES (N'recurring-jobs', -1, N'Deneme', NULL)
SET IDENTITY_INSERT [HangFire].[State] ON 

INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (26, 5, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2022-02-17T12:05:43.183' AS DateTime), N'{"EnqueuedAt":"1645099543176","Queue":"root"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (35, 8, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2022-02-17T13:02:43.317' AS DateTime), N'{"EnqueuedAt":"1645102963309","Queue":"root"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (92, 23, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2022-02-17T14:07:32.523' AS DateTime), N'{"EnqueuedAt":"1645106852513","Queue":"root"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (117, 30, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2022-02-17T15:24:16.303' AS DateTime), N'{"EnqueuedAt":"1645111456294","Queue":"root"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (302, 77, N'Scheduled', NULL, CAST(N'2022-02-26T20:38:58.720' AS DateTime), N'{"EnqueueAt":"1645907940577","ScheduledAt":"1645907938577"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (303, 77, N'Enqueued', N'Triggered by DelayedJobScheduler', CAST(N'2022-02-26T20:39:14.570' AS DateTime), N'{"EnqueuedAt":"1645907954508","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (304, 77, N'Processing', NULL, CAST(N'2022-02-26T20:39:14.640' AS DateTime), N'{"StartedAt":"1645907954636","ServerId":"zorbey:37288:23513410-696c-4c49-b57e-ffb2caf500df","WorkerId":"ad8f2261-8b69-4ef1-8600-e3814a6ec5d2"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (305, 77, N'Succeeded', NULL, CAST(N'2022-02-26T20:39:17.527' AS DateTime), N'{"SucceededAt":"1645907957397","PerformanceDuration":"2754","Latency":"16030"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (306, 78, N'Scheduled', NULL, CAST(N'2022-02-26T20:55:42.257' AS DateTime), N'{"EnqueueAt":"1645908944150","ScheduledAt":"1645908942151"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (307, 78, N'Enqueued', N'Triggered by DelayedJobScheduler', CAST(N'2022-02-26T20:55:55.250' AS DateTime), N'{"EnqueuedAt":"1645908955208","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (308, 78, N'Processing', NULL, CAST(N'2022-02-26T20:55:55.287' AS DateTime), N'{"StartedAt":"1645908955285","ServerId":"zorbey:28464:44949d74-370b-4c1f-bcde-3fff80a1d2fd","WorkerId":"651ccffa-e7b3-4ebb-8dfb-2643f8990d4b"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (309, 78, N'Succeeded', NULL, CAST(N'2022-02-26T20:55:57.270' AS DateTime), N'{"SucceededAt":"1645908957251","PerformanceDuration":"1959","Latency":"13104"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (310, 79, N'Scheduled', NULL, CAST(N'2022-02-26T20:59:06.477' AS DateTime), N'{"EnqueueAt":"1645909148469","ScheduledAt":"1645909146469"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (311, 79, N'Enqueued', N'Triggered by DelayedJobScheduler', CAST(N'2022-02-26T20:59:16.450' AS DateTime), N'{"EnqueuedAt":"1645909156449","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (312, 79, N'Processing', NULL, CAST(N'2022-02-26T20:59:16.500' AS DateTime), N'{"StartedAt":"1645909156497","ServerId":"zorbey:28464:44949d74-370b-4c1f-bcde-3fff80a1d2fd","WorkerId":"7ecdf8ff-5ccd-4b6b-8f5f-36c08a2a752c"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (313, 79, N'Succeeded', NULL, CAST(N'2022-02-26T20:59:17.900' AS DateTime), N'{"SucceededAt":"1645909157896","PerformanceDuration":"1394","Latency":"10031"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (314, 80, N'Scheduled', NULL, CAST(N'2022-02-26T21:01:28.693' AS DateTime), N'{"EnqueueAt":"1645909290676","ScheduledAt":"1645909288676"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (315, 80, N'Enqueued', N'Triggered by DelayedJobScheduler', CAST(N'2022-02-26T21:01:31.577' AS DateTime), N'{"EnqueuedAt":"1645909291574","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (316, 80, N'Processing', NULL, CAST(N'2022-02-26T21:01:31.593' AS DateTime), N'{"StartedAt":"1645909291590","ServerId":"zorbey:28464:44949d74-370b-4c1f-bcde-3fff80a1d2fd","WorkerId":"d2285dbf-6755-46d7-b6f2-1c80b9fe2fc0"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (317, 80, N'Succeeded', NULL, CAST(N'2022-02-26T21:01:33.083' AS DateTime), N'{"SucceededAt":"1645909293083","PerformanceDuration":"1488","Latency":"2917"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (318, 81, N'Scheduled', NULL, CAST(N'2022-02-26T21:04:00.570' AS DateTime), N'{"EnqueueAt":"1645909442559","ScheduledAt":"1645909440559"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (319, 81, N'Enqueued', N'Triggered by DelayedJobScheduler', CAST(N'2022-02-26T21:04:16.720' AS DateTime), N'{"EnqueuedAt":"1645909456712","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (320, 81, N'Processing', NULL, CAST(N'2022-02-26T21:04:16.767' AS DateTime), N'{"StartedAt":"1645909456764","ServerId":"zorbey:28464:44949d74-370b-4c1f-bcde-3fff80a1d2fd","WorkerId":"bb4a4397-a622-4f4f-8ba7-398326a48b25"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (321, 81, N'Succeeded', NULL, CAST(N'2022-02-26T21:04:18.133' AS DateTime), N'{"SucceededAt":"1645909458128","PerformanceDuration":"1361","Latency":"16206"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (322, 82, N'Scheduled', NULL, CAST(N'2022-02-26T21:04:40.413' AS DateTime), N'{"EnqueueAt":"1645909482409","ScheduledAt":"1645909480409"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (323, 82, N'Enqueued', N'Triggered by DelayedJobScheduler', CAST(N'2022-02-26T21:04:46.790' AS DateTime), N'{"EnqueuedAt":"1645909486790","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (324, 82, N'Processing', NULL, CAST(N'2022-02-26T21:04:46.807' AS DateTime), N'{"StartedAt":"1645909486806","ServerId":"zorbey:28464:44949d74-370b-4c1f-bcde-3fff80a1d2fd","WorkerId":"4c55e1b6-be69-4908-b7e0-8992f3315f74"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (325, 82, N'Succeeded', NULL, CAST(N'2022-02-26T21:04:48.043' AS DateTime), N'{"SucceededAt":"1645909488042","PerformanceDuration":"1232","Latency":"6399"}')
SET IDENTITY_INSERT [HangFire].[State] OFF
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [Discriminator]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (N'') FOR [ImageUrl]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsSold]
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
ALTER TABLE [dbo].[OfferFromz]  WITH CHECK ADD  CONSTRAINT [FK_OfferFromz_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OfferFromz] CHECK CONSTRAINT [FK_OfferFromz_Products_ProductId]
GO
ALTER TABLE [dbo].[Offerz]  WITH CHECK ADD  CONSTRAINT [FK_Offerz_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Offerz] CHECK CONSTRAINT [FK_Offerz_Products_ProductId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Product_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Product_Categories_CategoryId]
GO
ALTER TABLE [HangFire].[JobParameter]  WITH CHECK ADD  CONSTRAINT [FK_HangFire_JobParameter_Job] FOREIGN KEY([JobId])
REFERENCES [HangFire].[Job] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [HangFire].[JobParameter] CHECK CONSTRAINT [FK_HangFire_JobParameter_Job]
GO
ALTER TABLE [HangFire].[State]  WITH CHECK ADD  CONSTRAINT [FK_HangFire_State_Job] FOREIGN KEY([JobId])
REFERENCES [HangFire].[Job] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [HangFire].[State] CHECK CONSTRAINT [FK_HangFire_State_Job]
GO
/****** Object:  StoredProcedure [dbo].[sp_category_add]    Script Date: 27.02.2022 13:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_category_add]
(
@category_id int,
@name nvarchar(15),
@image_url varchar(MAX)
)
AS
IF EXISTS(SELECT * FROM Categories WHERE  CategoryId=@category_id OR Name=@name)
BEGIN
PRINT 'Bu id`ye veya isme sahip bir categori var.'
END
ELSE
BEGIN
INSERT INTO Categories VALUES (@category_id,@name,@image_url)

END
GO
