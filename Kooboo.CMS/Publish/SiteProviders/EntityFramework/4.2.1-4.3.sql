
/****** Object:  Table [Kooboo_CMS_Sites_ABPageSettings] ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Kooboo_CMS_Sites_ABPageSettings](
	[UUID] [nvarchar](128) NOT NULL,
	[SiteName] [nvarchar](128) NOT NULL,
	[ObjectXml] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.Kooboo_CMS_Sites_ABPageSettings] PRIMARY KEY CLUSTERED 
(
	[UUID] ASC,
	[SiteName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [Kooboo_CMS_Sites_ABPageTestResults] ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Kooboo_CMS_Sites_ABPageTestResults](
	[UUID] [nvarchar](128) NOT NULL,
	[SiteName] [nvarchar](128) NOT NULL,
	[ObjectXml] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.Kooboo_CMS_Sites_ABPageTestResults] PRIMARY KEY CLUSTERED 
(
	[UUID] ASC,
	[SiteName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [Kooboo_CMS_Sites_ABRuleSettings] ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Kooboo_CMS_Sites_ABRuleSettings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UUID] [nvarchar](128) NOT NULL,
	[SiteName] [nvarchar](128) NULL,
	[ObjectXml] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.Kooboo_CMS_Sites_ABRuleSettings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [Kooboo_CMS_Sites_ABSiteSettings]   ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Kooboo_CMS_Sites_ABSiteSettings](
	[UUID] [nvarchar](128) NOT NULL,
	[SiteName] [nvarchar](128) NOT NULL,
	[ObjectXml] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.Kooboo_CMS_Sites_ABSiteSettings] PRIMARY KEY CLUSTERED 
(
	[UUID] ASC,
	[SiteName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [Kooboo_CMS_Sites_CustomErrors]    ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Kooboo_CMS_Sites_CustomErrors](
	[UUID] [nvarchar](128) NOT NULL,
	[SiteName] [nvarchar](128) NOT NULL,
	[ObjectXml] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.Kooboo_CMS_Sites_CustomErrors] PRIMARY KEY CLUSTERED 
(
	[UUID] ASC,
	[SiteName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Kooboo_CMS_Sites_Sites]   ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Kooboo_CMS_Sites_Sites](
	[FullName] [nvarchar](128) NOT NULL,
	[ParentName] [nvarchar](128) NULL,
	[ObjectXml] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Kooboo_CMS_Sites_Sites] PRIMARY KEY CLUSTERED 
(
	[FullName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Kooboo_CMS_Sites_UrlRedirects] ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Kooboo_CMS_Sites_UrlRedirects](
	[UUID] [nvarchar](128) NOT NULL,
	[SiteName] [nvarchar](128) NOT NULL,
	[ObjectXml] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.Kooboo_CMS_Sites_UrlRedirects] PRIMARY KEY CLUSTERED 
(
	[UUID] ASC,
	[SiteName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT INTO [__MigrationHistory]
           ([MigrationId]
           ,[ContextKey]
           ,[Model]
           ,[ProductVersion])
     VALUES
           (CONVERT(varchar(100), GETDATE(), 112) + '99999999_4.2.1_4.3'
           ,'Kooboo.CMS.Sites.Persistence.EntityFramework.SiteDBContext'
           ,CONVERT(varbinary(max),'1F8B0800000000000400ED5DCD72DB3610BE77A6EFC0E1A93D44549C1E920C958C2DDBAD2771EC31ED4C6F194884643624A01290C77AB61EFA487D8582127F400224409192CC8837135C7CBBC07EC4EFAEFCDF3FFFDA1F9F03DF788221F1301A99AF0743D380688A5D0FCD47E692CE5EBD353F7EF8F927FBC20D9E8DAF89DC9B488ED54464643E52BA786F5964FA0803400681370D31C1333A98E2C0022EB64E86C377D6EBD716641026C3320CFB6E89A817C0F5037B1C6334850BBA04FE3576A14FE272F6C659A31A5F4000C9024CE1C81C33894B2F24342D338D53DF03CC1207FA33D30008610A28B3F3FD03810E0D319A3B0B5600FCFBD50232B919F0098CED7F9F89EB3665781235C5CA2A6ED51566DA48D6CC0BD61D741599B76EEAC8BC0573B829E4E598E427B8CA15B0A2DB102F604857777016D7763C0AA3BF4CC3520B5F2E7D5F266C5B455D6965414D64397BA621A38D695C83E7CF10CDE92323D4C95BD3B8F49EA19B94C49DFF803CC6325689864BF6F8851901263E4CDF5B959A339BF7ADF9168410D1C83D2DE8AE567545CEE10C2C7D9A683AC3D88700D5B6F966F2179CD23F03BFC264F6676D936D2BE3AD92CDE72198D19ED23DA57F0C4AFF4103FFCCC7D3EF7BA274D7E87C18AD67D85D1D8A116340E11C87AB3D112251D73562E4EDDEAD766DDF7D0613E81FF04BAEF47097BCABD23A3CF96D97A4DA7F83BF027F59D5E29D0E39919FD91E27DC137323555D1B6E329BF7ADF9E04B94A8D3B767C6F66BE843AF645BD2FDC2BDFB10FA77D0F54266C5F64E7E78B83AD7FAF4CBC609351B362AF6CD84C30D386D12A39DC5CD7849280E2EC2103798287AA61C01534ECFEE963E7420A5CC8EEDB972E5D6777E5467D30B5788BE3991B4883BD775280EE1EF10C190ADFBDC5B40290C5184013736ABD6045D275AF778159D2E35E6553F061DC5181471E51E127A07C9D2EF17373D5DAAE912F5463FB4F45C29E1CA18230A3CB6544856C3C9FD71FAA2C0974D35C6A8E255AC07896964AA36F7CD03EEA6B6D82132A4EC1AAC1C8EBF2A5361E6EF21E498C5BB0A1566EE245B0E5938EC562166E7AB7238FEFC5585953BF492C315CEC5741015689A48C54DB91C50DCBA2B3D52D8C2953845D8E8A970C505BF1C59B631506317177D65D8E2E2500FBBB048A88217D6136A0DC579A50C5E9C7FA4A3533ADCA4EF6C6B13DD1217D85649188C7D0D160B86CE85C5C4258613C7C4BC72EAC7A0041B0C6B4A24A128A9B5A926B6E54A47BAF42D379C9E030A26201A9BC76E502EA61C75138592C1B7383B67CE482A457F1786F9E8711D2634288BA9E17BF492353260BBC8757B616A5479404E5CDD99021F84A573EF18FBCB00A98EDCCB91B223551EA9EC88B60A89BFECE7B1F8727D34EE3E9F07E38AF5B1B8F5028FC5158B58B655F05B912296C091C2AAADC83B6D56E627F216A8591A20B306D4E16725424FD22323A9B8326C48D2CA909735A08AA44A84DD935444A98BB08931E11136252FC6F1C2F2BDA1DFAB025BB4DCAE02D8BDD7F341273C5A5518CD017D98DF3035746069748B96F72A6B77E183CD8243648EAF8314077BF03071D18B218EB03B6EC89DAA10132DFAA80076CFA02C0484472A0B66A942EAD0EC9F3BD36881038DFC5FD7F76DAF24452CBEFC87F4BFEC24AA210D1411275A6CD0C028FD8CD7E7E7B94F587A685F8ED0DE90D22122C88E0E9B2E08AB034AB488A081D113A15522C8CF7A1B52411931A245062D94D2EDBD5BD8D70BD1273D99764026D9E17E633229C24434C9A481D2D361077490DCC7B4C288EA60901AA45003F5BC689917B25BB4C6A450847C68324203A5A7C31674106E3C8B22A9F6F4E6B370C369C7B78D357E0D20B97EDC889806EBA427CF8DAE1E9D15A13018440203E76F7FEC7BACBD99C03540DE8C8D0BF7F83B4423F364387C5BF841812D92FB2D425CFF07CCF0474F209C3E82508C1F6A98EDDC1AB098CCAC03BD55EEF2C4A3CD83A212EB7E09C0F3AFD5261D41BA7DCFAF2EF0AB9BB9EFAD516027A07CE6FA2E7CD6E9ECF4D67A59967CBE25789F5BBEF7CF6A9D3CDE3033BC35737389DFBBF8623B9BDCDD5A171773B75B03DECB2CF952D2AF5B5EFAD485DE2A636D17FEE862C2746BBEDBD937AAEFBA634B61EE7D979C01BE80A4622F3AF251A60DD79D9F5E8AB7DB1D638F2FD3B7FF542BAE717A0776C9815DCC863D6AEF95E6A7A6095579CBD28B17F11EA13A397573333232DD0966ADD858FB09E309C6DFC6D7CEB7A8EFC8B7A802A999C85AA63827A1AD7D5D4B6D8290D32A982048689990D6529B50CC81152C280A6819B03E2E8A6B7A1ABEC8A5CE0A26E4DEEAEB57AB2DA6D80A9A8B025ACA934A7AFA2B75D7D6ABD629C9DB15544B64B42CE0EA69304F4CF415C927CA6819C2D5531B22CD0B164C914A691993ABA9638E249558628E444AD31CAEA6AE3962EA718945A2600DA3B2CA3A76497296254649A4342DE26A12F964A8910E2D0601D816FF8F03EC7348BC790611FD1B01C4BE1F0FA30C3491B942339C4CEACC32DEA244A430E75F430A5C36079F86D49B812965AFA79090F54F58AC0F7F47E6453081EE15BA59D2C5929E120283899F3B52B7AD6AFDEB9CEFBCCDF6CD227A226D348199E9B126C01B74B6F47C37B5FB52B2482981889623F1969959E5D068EB3C5FA5485F30D2048ABBEF1C2E208A36DCF73058F80C8CDC20073CC172DBD47D98EF31FBDC03F3100424C6C8EAB347463F3778FEF03F9CAB3F6AFA620000',2)
           ,'6.0.0-rc1-20726')