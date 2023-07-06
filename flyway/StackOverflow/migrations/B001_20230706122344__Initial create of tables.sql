/****** Object:  Table [dbo].[Badges]    Script Date: 06/07/2023 13:27:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Badges](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](40) NOT NULL,
	[UserId] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_Badges__Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [StackOverflow2010]
GO

/****** Object:  Table [dbo].[Comments]    Script Date: 06/07/2023 13:29:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[PostId] [int] NOT NULL,
	[Score] [int] NULL,
	[Text] [nvarchar](700) NOT NULL,
	[UserId] [int] NULL,
 CONSTRAINT [PK_Comments__Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [StackOverflow2010]
GO

/****** Object:  Table [dbo].[LinkTypes]    Script Date: 06/07/2023 13:29:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[LinkTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](50) NOT NULL,
 CONSTRAINT [PK_LinkTypes__Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[PostLinks]    Script Date: 06/07/2023 13:29:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PostLinks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[PostId] [int] NOT NULL,
	[RelatedPostId] [int] NOT NULL,
	[LinkTypeId] [int] NOT NULL,
 CONSTRAINT [PK_PostLinks__Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[Posts]    Script Date: 06/07/2023 13:30:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Posts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AcceptedAnswerId] [int] NULL,
	[AnswerCount] [int] NULL,
	[Body] [nvarchar](max) NOT NULL,
	[ClosedDate] [datetime] NULL,
	[CommentCount] [int] NULL,
	[CommunityOwnedDate] [datetime] NULL,
	[CreationDate] [datetime] NOT NULL,
	[FavoriteCount] [int] NULL,
	[LastActivityDate] [datetime] NOT NULL,
	[LastEditDate] [datetime] NULL,
	[LastEditorDisplayName] [nvarchar](40) NULL,
	[LastEditorUserId] [int] NULL,
	[OwnerUserId] [int] NULL,
	[ParentId] [int] NULL,
	[PostTypeId] [int] NOT NULL,
	[Score] [int] NOT NULL,
	[Tags] [nvarchar](150) NULL,
	[Title] [nvarchar](250) NULL,
	[ViewCount] [int] NOT NULL,
 CONSTRAINT [PK_Posts__Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


/****** Object:  Table [dbo].[PostTypes]    Script Date: 06/07/2023 13:30:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PostTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PostTypes__Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Users]    Script Date: 06/07/2023 13:31:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AboutMe] [nvarchar](max) NULL,
	[Age] [int] NULL,
	[CreationDate] [datetime] NOT NULL,
	[DisplayName] [nvarchar](40) NOT NULL,
	[DownVotes] [int] NOT NULL,
	[EmailHash] [nvarchar](40) NULL,
	[LastAccessDate] [datetime] NOT NULL,
	[Location] [nvarchar](100) NULL,
	[Reputation] [int] NOT NULL,
	[UpVotes] [int] NOT NULL,
	[Views] [int] NOT NULL,
	[WebsiteUrl] [nvarchar](200) NULL,
	[AccountId] [int] NULL,
 CONSTRAINT [PK_Users_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


/****** Object:  Table [dbo].[Votes]    Script Date: 06/07/2023 13:31:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Votes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PostId] [int] NOT NULL,
	[UserId] [int] NULL,
	[BountyAmount] [int] NULL,
	[VoteTypeId] [int] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Votes__Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[VoteTypes]    Script Date: 06/07/2023 13:31:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[VoteTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_VoteType__Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


















