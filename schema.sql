/** CREATE DNNSimpleArticle_Article Table **/



IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'{databaseOwner}[{objectQualifier}DNNSimpleArticle_Article]') AND type in (N'U'))

DROP TABLE {databaseOwner}[{objectQualifier}DNNSimpleArticle_Article]

GO



IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'{databaseOwner}[{objectQualifier}DNNSimpleArticle_Article]') and OBJECTPROPERTY(id, N'IsTable') = 1)

	BEGIN

		CREATE TABLE {databaseOwner}[{objectQualifier}DNNSimpleArticle_Article](

			[ID] [int] NOT NULL IDENTITY (1, 1),

			[Title] [nvarchar](max) NULL,

			[Description] [nvarchar](max) NULL,

			[Body] [nvarchar](max) NULL,

			[CreatedOnDate] [datetime] NULL,

			[LastModifiedOnDate] [datetime] NULL,

			[CreatedByUserID] [int] NULL,

			[LastModifiedByUserID] [int] NULL,

			[ModuleId] [int] NULL,

			[ContentItemId] [int] NULL



		 CONSTRAINT [PK_{objectQualifier}DNNSimpleArticle_Article] PRIMARY KEY CLUSTERED 

		(



			[ID] ASC{br}

		)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) 

		) 

	END

GO
