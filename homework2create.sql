CREATE TABLE [dbo].[Rendeles](
	[SORSZAM] [int] NOT NULL,
	[LOGIN] [nvarchar](255)  masked WITH (function = 'partial(1,"XXXX",1)' ) NULL,
	[REND_DATUM] [date] masked WITH (function = 'datetime("YM")' ) NULL,
	[SZALL_DATUM] [date] NULL,
	[SZALL_CIM] [nvarchar](255) masked WITH (function = 'partial(1,"XXX",1)' ) NULL,
	[SZALL_MOD] [nvarchar](255) NULL,
	[FIZ_MOD] [nvarchar](255) masked WITH (function = 'default()' ) NULL,
	[SZAMLA_CIM] [nvarchar](255) NULL,
 CONSTRAINT [PK_Rendeles] PRIMARY KEY CLUSTERED 
(
	[SORSZAM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]