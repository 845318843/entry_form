USE [master]
GO
/****** Object:  Database [student]    Script Date: 09/24/2016 20:04:48 ******/
CREATE DATABASE [student] ON  PRIMARY 
( NAME = N'student', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\student.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'student_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\student_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [student] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [student].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [student] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [student] SET ANSI_NULLS OFF
GO
ALTER DATABASE [student] SET ANSI_PADDING OFF
GO
ALTER DATABASE [student] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [student] SET ARITHABORT OFF
GO
ALTER DATABASE [student] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [student] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [student] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [student] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [student] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [student] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [student] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [student] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [student] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [student] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [student] SET  DISABLE_BROKER
GO
ALTER DATABASE [student] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [student] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [student] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [student] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [student] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [student] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [student] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [student] SET  READ_WRITE
GO
ALTER DATABASE [student] SET RECOVERY FULL
GO
ALTER DATABASE [student] SET  MULTI_USER
GO
ALTER DATABASE [student] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [student] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'student', N'ON'
GO
USE [student]
GO
/****** Object:  User [ww]    Script Date: 09/24/2016 20:04:48 ******/
CREATE USER [ww] FOR LOGIN [ww] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[student]    Script Date: 09/24/2016 20:04:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[class] [nvarchar](50) NULL,
	[sex] [nvarchar](50) NULL,
	[tel] [nvarchar](50) NULL,
	[qq] [nvarchar](50) NULL,
	[remark1] [nvarchar](max) NULL,
	[remark2] [nvarchar](max) NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[student] ON
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (6, N'', N'', N'男', N'', N'', N'', N'')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (8, N'张袁歌', N'数字媒体', N'男', N'15660001865', N'32392927187', N'我会用最认真的态度去完成每一件事情。', N'1606965002')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (11, N'赵松松', N'通信2班', N'男', N'15139053177', N'1413363812', N'对此工作室十分感兴趣！早已按耐不住我体内的洪荒之力了', N'1606735048')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (14, N'打酱油', N'计科', N'女', N'1568685586623', N'25257666685', N'啦啦啦', N'1602356023')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (17, N'全昱卫', N'数字媒体技术', N'男', N'13213708902', N'751803465', N'本人热爱玩电脑，喜欢清爽人性化的程序界面，喜欢好莱坞特效，喜欢创意创新', N'16069655010')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (19, N'张小富', N'通信二班', N'男', N'13271398067', N'110503515', N'想学习C语言！喜欢编程！', N'1606735021')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (20, N'李俊鑫', N'通信二班', N'男', N'15716633654', N'952142283', N'积极勇敢，健康向上，想利用十一学编程。', N'1606735019')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (21, N'姚佳楠', N'通信二班', N'女', N'15139089326', N'1306533140', N'我没啥特长，但我会努力学习。', N'1606735087')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (23, N'代彩红', N'通信二班', N'女', N'15139073200', N'1234372899', N'对计算机不了解，现在想多学点东西，充实自己', N'1606735073')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (24, N'黄广', N'计科一班', N'男', N'15207772794', N'1159352742', N'我很喜欢计算机 尤其是可以学习的时候  比如新接触C语言或其他语言，我将会投入极大的热情和精力去学习，希望加入贵工作室和各位小伙伴一起学习交流。', N'1606915015')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (25, N'文磊', N'计科2班', N'男', N'18336274540', N'251714944', N'敢于挑战', N'1606915061')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (26, N'宋晓凤', N'通信一班', N'女', N'13037656961', N'910735443', N'我想好好学习', N'1606735043')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (27, N'石晶晶', N'通信一班', N'女', N'13037652530', N'595266790', N'希望成为实力派', N'1606735042')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (28, N'李臻', N'通信1班', N'女', N'15139059301', N'1912834222', N'尽力给自己一个美好未来', N'1606735055')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (29, N'张文政', N'物联网一班', N'男', N'13262033835', N'2681645642', N'我想要进九州通工作室向各位学长学姐学习，我零基础，但是我想努力学习，提高自己的能力！PS(外貌特征：我比较瘦，戴着眼镜。:-D)', N'1606955021')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (30, N'曲利', N'通信①班', N'男', N'13623996499', N'1152489652', N'本人想通过这一平台把自己的学习学的更好，把自己的专业知识能够很好的应用，给自己增加更多的实习经验。学习踏实，能吃苦，能坚持，是自己的优点，希望自己能够成为九州通工作室的一员。。', N'1606735085')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (31, N'孟丹', N'数媒', N'女', N'13262021712', N'1192389354', N'', N'1606965006')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (32, N'叶林峰', N'物联网二班', N'男', N'15139072865', N'1464225439', N'个人对网页、IT类的敢兴趣，希望加入我们群，学习更多的知识，并同时感受家的温暖！', N'1606955071')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (34, N'吴秉珅', N'物联网二班', N'男', N'13461913525', N'1749288646', N'', N'1606955080')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (35, N'李红宇', N'计科数字媒体', N'女', N'13137795881', N'2268695639', N'虽然对电脑不是很熟，但是很喜欢通过自己努力做出让别人喜欢的东西，所以希望参加工作室提高自己', N'1606965031')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (36, N'熊倩', N'物联网二班', N'女', N'13271318905', N'1786628430', N'', N'1606955095')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (38, N'李昭静', N'物联网二班', N'女', N'13183303692', N'1181831590', N'逗', N'1606955082')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (39, N'孙熔杰', N'物联网二班', N'女', N'13137095934', N'1308116458', N'我是一个大大咧咧的北方姑娘。很努力，很上进，吃苦耐劳，希望加入这个工作室，脚踏实地的干，发挥自己的才能。??', N'1606955019')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (41, N'雷君', N'大一', N'男', N'13137097661', N'1138563234', N'喜爱运动，坚持刻苦，团结合作', N'1606915063')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (42, N'张加壮', N'通信一班', N'男', N'15139061236', N'1426812963', N'感兴趣，想提前接触学习，会认真对待', N'1606735060')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (45, N'杨雷', N'数媒', N'女', N'13137789360', N'1348341403', N'我对计算机一窍不通，但我会努力学习的，希望学姐学长们多多指教。', N'1606965029')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (48, N'彭超', N'计科二班', N'男', N'15514267362', N'1411825457', N'本人学习态度端正，性格开朗，勇于接受新事物，希望能在本工作室得到锻炼，不断突破自己，学有所成', N'1606915064')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (49, N'曾庆涛', N'计科2班', N'男', N'15139081582', N'453395742', N'       追求前沿，爱生活', N'1606915058')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (51, N'王娟', N'信息', N'女', N'13103680181', N'1654745199', N'希望可以加入你们这个大家庭也希望能锻炼锻炼自己', N'1606915129')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (62, N'赵红升', N'计科一班', N'男', N'13592171306', N'1169938684', N'积极健康向上      ', N'1606915028')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (63, N'李腾', N'计科一班', N'男', N'13037685512', N'304489022', N'', N'1606915036')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (64, N'张悦', N'中兴通信二班', N'女', N'13271788362', N'1063712123', N'活泼好动，喜欢交友，喜欢挑战', N'1606735030')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (65, N'段盈盈', N'16中兴通信2班', N'女', N'13213720603', N'2395023691', N'刚开始会比较内向，到时间长了会比较活泼，正常情况下，做事比较认真，自己想在这条路上走下去，会努力的做出一些成绩。', N'1606735032')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (66, N'许欣欣', N'中兴通信二班', N'女', N'15716633945', N'1601180552', N'好动  看起来文静  其实真的。。。。      爱学习爱跑步  ', N'1606735020')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (69, N'肖卓成', N'中兴通信2班', N'男', N'13037626195', N'635274740', N'', N'13037626195')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (70, N'陈珍珍', N'数媒', N'女', N'13193653010', N'1368806479', N'', N'1606965034')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (72, N'李坤键', N'通信2班', N'女', N'15517736168', N'727421213', N'', N'1606735014')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (73, N'赵辑淼', N'计科一班', N'男', N'13037679661', N'1462242659', N'', N'1606915034')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (74, N'李爽', N'计科一班', N'女', N'13103687235', N'1916530284', N'', N'1606915052')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (77, N'赵普', N'通信一班', N'男', N'13137077273', N'3446759943', N'身高175.比较喜欢运动', N'1606735077')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (78, N'侯朝辉', N'计科(信息)', N'男', N'15776164756', N'961212719', N'想要好好学习，', N'1606915151')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (79, N'赵则干', N'信息班', N'男', N'13183307802', N'1045039373', N'十分想加入组织。', N'1606915141')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (80, N'朱存金', N'通信工程2班', N'男', N'13087039187', N'1905618919', N'', N'1606735066')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (82, N'张凯', N'数学媒体', N'男', N'18368961721', N'183793649', N'不太懂  会认真学', N'1606965044')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (83, N'姚子涵', N'计科2班', N'男', N'13262073207', N'819068958', N'对编程有一定的兴趣。', N'1606915094')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (84, N'何江涛', N'16，信息', N'男', N'13737773054', N'3238551236', N'我就是我，不一样的烟火。', N'1606915125')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (85, N'郭战祥', N'通信一班', N'男', N'13101776510', N'1454331294', N'', N'1606735068')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (87, N'温延刚', N'数字媒体技术', N'男', N'13271362672', N'977879865', N'', N'1606965049')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (88, N'李超', N'计科二班', N'男', N'18272773280', N'3073971437', N'对于计算机毫无基础', N'1606915065')
INSERT [dbo].[student] ([id], [name], [class], [sex], [tel], [qq], [remark1], [remark2]) VALUES (89, N'童欣', N'计科一班', N'男', N'13262057981', N'826389503', N'', N'1606915005')
SET IDENTITY_INSERT [dbo].[student] OFF
