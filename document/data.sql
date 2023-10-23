USE [asmJava4]
GO
/****** Object:  Table [dbo].[Favorites]    Script Date: 30/07/2023 8:45:49 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favorites](
	[FavoriteId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[VideoId] [nvarchar](50) NULL,
	[LikedDate] [date] NULL,
 CONSTRAINT [PK_Favorites] PRIMARY KEY CLUSTERED 
(
	[FavoriteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shares]    Script Date: 30/07/2023 8:45:49 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shares](
	[ShareId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[VideoId] [nvarchar](50) NULL,
	[Emails] [nvarchar](150) NULL,
	[SharedDate] [date] NULL,
 CONSTRAINT [PK_Shares] PRIMARY KEY CLUSTERED 
(
	[ShareId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 30/07/2023 8:45:49 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Username] [nvarchar](50) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Passwords] [varchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Admin] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Videos]    Script Date: 30/07/2023 8:45:49 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Videos](
	[VideoId] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Poster] [nvarchar](150) NOT NULL,
	[Views] [int] NOT NULL,
	[Decscription] [nvarchar](1500) NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Videos] PRIMARY KEY CLUSTERED 
(
	[VideoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Favorites] ON 
GO
INSERT [dbo].[Favorites] ([FavoriteId], [Username], [VideoId], [LikedDate]) VALUES (1, N'user2', N'5gTu7Ua6tuY', CAST(N'2021-11-13' AS Date))
GO
INSERT [dbo].[Favorites] ([FavoriteId], [Username], [VideoId], [LikedDate]) VALUES (2, N'user3', N'5VMyXGCHOwA', CAST(N'2022-10-02' AS Date))
GO
INSERT [dbo].[Favorites] ([FavoriteId], [Username], [VideoId], [LikedDate]) VALUES (3, N'user5', N'FhEzJ8Oe71s', CAST(N'2022-05-19' AS Date))
GO
INSERT [dbo].[Favorites] ([FavoriteId], [Username], [VideoId], [LikedDate]) VALUES (4, N'user3', N'mo0hX4W2E1g', CAST(N'2023-03-20' AS Date))
GO
INSERT [dbo].[Favorites] ([FavoriteId], [Username], [VideoId], [LikedDate]) VALUES (5, N'user3', N'pQC1rS9vtQQ', CAST(N'2022-01-09' AS Date))
GO
INSERT [dbo].[Favorites] ([FavoriteId], [Username], [VideoId], [LikedDate]) VALUES (6, N'user1', N'5gTu7Ua6tuY', CAST(N'2020-08-23' AS Date))
GO
INSERT [dbo].[Favorites] ([FavoriteId], [Username], [VideoId], [LikedDate]) VALUES (7, N'user6', N'5gTu7Ua6tuY', CAST(N'2021-07-12' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Favorites] OFF
GO
INSERT [dbo].[Users] ([Username], [Fullname], [Passwords], [Email], [Admin]) VALUES (N'admin1', N'fullname_admin1', N'admin1', N'baokha2923@gmail.com', 1)
GO
INSERT [dbo].[Users] ([Username], [Fullname], [Passwords], [Email], [Admin]) VALUES (N'admin2', N'fullname_admin2', N'admin2', N'admin2@gmail.com', 1)
GO
INSERT [dbo].[Users] ([Username], [Fullname], [Passwords], [Email], [Admin]) VALUES (N'admin3', N'fullname_admin3', N'admin3', N'admin3@gmail.com', 1)
GO
INSERT [dbo].[Users] ([Username], [Fullname], [Passwords], [Email], [Admin]) VALUES (N'anhtaivo43@gmai.com', N'Võ Anh Tài', N'123', N'anhtaivo43@gmai.com', 0)
GO
INSERT [dbo].[Users] ([Username], [Fullname], [Passwords], [Email], [Admin]) VALUES (N'user1', N'fullname_user1', N'user1', N'baokhays@gmail.com', 0)
GO
INSERT [dbo].[Users] ([Username], [Fullname], [Passwords], [Email], [Admin]) VALUES (N'user2', N'fullname_user2', N'user2', N'user2@gmail.com', 0)
GO
INSERT [dbo].[Users] ([Username], [Fullname], [Passwords], [Email], [Admin]) VALUES (N'user3', N'fullname_user3', N'user3', N'user3@gmail.com', 0)
GO
INSERT [dbo].[Users] ([Username], [Fullname], [Passwords], [Email], [Admin]) VALUES (N'user4', N'user4', N'user4', N'user4@gmail.com', 0)
GO
INSERT [dbo].[Users] ([Username], [Fullname], [Passwords], [Email], [Admin]) VALUES (N'user5', N'user5', N'user5', N'user5@gmail.com', 0)
GO
INSERT [dbo].[Users] ([Username], [Fullname], [Passwords], [Email], [Admin]) VALUES (N'user6', N'user62', N'user6', N'user6@gmail.com', 0)
GO
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Decscription], [Active]) VALUES (N'3zU3c_VGAwI', N'Mụ Phù Thủy Trong Ngôi Nhà Bánh Kẹo', N'https://img.youtube.com/vi/3zU3c_VGAwI/maxresdefault.jpg', 100, N'test', 1)
GO
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Decscription], [Active]) VALUES (N'5gTu7Ua6tuY', N'Kid Đối Đầu Đội Thám Tử Tứ Linh', N'https://img.youtube.com/vi/5gTu7Ua6tuY/maxresdefault.jpg', 101, N'test', 1)
GO
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Decscription], [Active]) VALUES (N'5VMyXGCHOwA', N'Tội Ác Với Xác Suất Chứng Minh Là 0', N'https://img.youtube.com/vi/5VMyXGCHOwA/maxresdefault.jpg', 100, N'test', 1)
GO
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Decscription], [Active]) VALUES (N'dQUNN4xiUPs', N'Ngôi Nhà Có Hồ Thủy Sinh', N'https://img.youtube.com/vi/dQUNN4xiUPs/maxresdefault.jpg', 100, N'test', 1)
GO
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Decscription], [Active]) VALUES (N'e1hpExzJNDw', N'Trận Chiến Kho Báu Trong Nhà Kho Quái Vật', N'https://img.youtube.com/vi/e1hpExzJNDw/maxresdefault.jpg', 100, N'test', 1)
GO
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Decscription], [Active]) VALUES (N'EqVnGeQusMA', N'Mục Tiêu Run Rẩy Trong Sắc Đỏ', N'https://img.youtube.com/vi/EqVnGeQusMA/maxresdefault.jpg', 100, N'test', 1)
GO
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Decscription], [Active]) VALUES (N'FA-8y2PUVpw', N'Đôi Cánh Icarus', N'https://img.youtube.com/vi/FA-8y2PUVpw/maxresdefault.jpg', 2, N'test', 1)
GO
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Decscription], [Active]) VALUES (N'FhEzJ8Oe71s', N'Thuật Dịch Chuyển Tức Thời', N'https://img.youtube.com/vi/FhEzJ8Oe71s/maxresdefault.jpg', 2, N'test', 1)
GO
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Decscription], [Active]) VALUES (N'GOo0_nkr6sU', N'Truy Tìm Dấu Vết', N'https://img.youtube.com/vi/GOo0_nkr6sU/maxresdefault.jpg', 1, N'test', 1)
GO
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Decscription], [Active]) VALUES (N'h0z8Qt32nVU', N'13 Chiếc Áo Thun Đỏ', N'https://img.youtube.com/vi/h0z8Qt32nVU/maxresdefault.jpg', 100, N'test', 1)
GO
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Decscription], [Active]) VALUES (N'hmH0G6UtZb0', N'Công Tố Viên Là Nhân Chứng', N'https://img.youtube.com/vi/hmH0G6UtZb0/maxresdefault.jpg', 100, N'test', 1)
GO
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Decscription], [Active]) VALUES (N'Iy_Kx2_PZ1I', N'Siêu Trộm Và Màn Trình Diễn Đi Trên Không Trung', N'https://img.youtube.com/vi/Iy_Kx2_PZ1I/maxresdefault.jpg', 100, N'test', 1)
GO
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Decscription], [Active]) VALUES (N'JFs762h30d4', N'Cạm Bẫy Ở Nông Trại Tầng Thượng', N'https://img.youtube.com/vi/JFs762h30d4/maxresdefault.jpg', 100, N'test', 1)
GO
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Decscription], [Active]) VALUES (N'KLpapbh-BsI', N'Mục Đích Của Kẻ Đánh Bom', N'https://img.youtube.com/vi/KLpapbh-BsI/maxresdefault.jpg', 100, N'test', 1)
GO
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Decscription], [Active]) VALUES (N'klujtydJ42U', N'Bùa Hộ Mệnh Ở Đâu', N'https://img.youtube.com/vi/klujtydJ42U/maxresdefault.jpg', 100, N'test', 1)
GO
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Decscription], [Active]) VALUES (N'kZ7v0IziaZQ', N'Chiếc Sừng Kỳ Lân Biến Mất Trong Bóng Tối', N'https://img.youtube.com/vi/kZ7v0IziaZQ/maxresdefault.jpg', 100, N'test', 1)
GO
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Decscription], [Active]) VALUES (N'mB6fA148HV0', N'Vết Sẹo', N'https://img.youtube.com/vi/mB6fA148HV0/maxresdefault.jpg', 1, N'test', 1)
GO
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Decscription], [Active]) VALUES (N'Mie7WypdyXs', N'Thanh Tra Shiratori Đánh Mất Tình Yêu', N'https://img.youtube.com/vi/Mie7WypdyXs/maxresdefault.jpg', 100, N'test', 1)
GO
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Decscription], [Active]) VALUES (N'ML7kfZy_ymQ', N'Ngã tư tử thần', N'https://img.youtube.com/vi/ML7kfZy_ymQ/maxresdefault.jpg', 1, N'test', 1)
GO
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Decscription], [Active]) VALUES (N'mo0hX4W2E1g', N'Bi Kịch Trên Mỏm Đá', N'https://img.youtube.com/vi/mo0hX4W2E1g/maxresdefault.jpg', 2, N'test', 1)
GO
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Decscription], [Active]) VALUES (N'pQC1rS9vtQQ', N'Hãy Tin Vào Ngày Mai', N'https://img.youtube.com/vi/pQC1rS9vtQQ/maxresdefault.jpg', 100, N'test', 1)
GO
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Decscription], [Active]) VALUES (N'raquTqNjbos', N'Hai Ngày Với Hung Thủ', N'https://img.youtube.com/vi/raquTqNjbos/maxresdefault.jpg', 1, N'test', 1)
GO
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Decscription], [Active]) VALUES (N'S84mLFUvT9g', N'Chứng Cứ Ngoại Phạm Của Chiếc Váy Đen', N'https://img.youtube.com/vi/S84mLFUvT9g/maxresdefault.jpg', 100, N'test', 1)
GO
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Decscription], [Active]) VALUES (N'syb3AbJ4lWo', N'Ngày Sinh Nhật Tồi Tệ Nhất', N'https://img.youtube.com/vi/syb3AbJ4lWo/maxresdefault.jpg', 100, N'test', 1)
GO
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Decscription], [Active]) VALUES (N'TN_Pkz4ttdY', N'Ngọn Lửa Màu Xanh Của Sự Hận Thù', N'https://img.youtube.com/vi/TN_Pkz4ttdY/maxresdefault.jpg', 100, N'test', 1)
GO
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Decscription], [Active]) VALUES (N'u8YeJAckEpY', N'Ngôi Nhà Nhện Quỷ', N'https://img.youtube.com/vi/u8YeJAckEpY/maxresdefault.jpg', 1, N'test', 1)
GO
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Decscription], [Active]) VALUES (N'UV-YB2rR-dE', N'Đêm Xác Sống Diệt Vong', N'https://img.youtube.com/vi/UV-YB2rR-dE/maxresdefault.jpg', 100, N'test', 1)
GO
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Decscription], [Active]) VALUES (N'VngY1h821Rw', N'Kẻ Sát Nhân Kudo Shinichi', N'https://img.youtube.com/vi/VngY1h821Rw/maxresdefault.jpg', 1, N'test', 1)
GO
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Decscription], [Active]) VALUES (N'wF7J6_DWAxU', N'Bóng Ma Trường Trung Học', N'https://img.youtube.com/vi/wF7J6_DWAxU/maxresdefault.jpg', 1, N'test', 1)
GO
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Decscription], [Active]) VALUES (N'WrAywNLdo8Q', N'Chuyện Tình Của Cô Kobayashi', N'https://img.youtube.com/vi/WrAywNLdo8Q/maxresdefault.jpg', 100, N'test', 1)
GO
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Decscription], [Active]) VALUES (N'y87gAXfGvS8', N'Bí Ẩn Chuyến Tham Quan Thời Đại Meiji', N'https://img.youtube.com/vi/y87gAXfGvS8/maxresdefault.jpg', 100, N'test', 1)
GO
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Decscription], [Active]) VALUES (N'Z6yk7tlNs5c', N'Kaito Kid Với Két Sắt Tanuki', N'https://img.youtube.com/vi/Z6yk7tlNs5c/maxresdefault.jpg', 1, N'test', 1)
GO
INSERT [dbo].[Videos] ([VideoId], [Title], [Poster], [Views], [Decscription], [Active]) VALUES (N'ZnxUdKX7Jhc', N'Vị Hành Khách Bí Ẩn', N'https://img.youtube.com/vi/ZnxUdKX7Jhc/maxresdefault.jpg', 1, N'test', 1)
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD FOREIGN KEY([Username])
REFERENCES [dbo].[Users] ([Username])
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD FOREIGN KEY([VideoId])
REFERENCES [dbo].[Videos] ([VideoId])
GO
ALTER TABLE [dbo].[Shares]  WITH CHECK ADD FOREIGN KEY([Username])
REFERENCES [dbo].[Users] ([Username])
GO
ALTER TABLE [dbo].[Shares]  WITH CHECK ADD FOREIGN KEY([VideoId])
REFERENCES [dbo].[Videos] ([VideoId])
GO


UPDATE Videos
SET Views = ABS(CHECKSUM(NEWID())) % 401 + 100;


INSERT INTO Shares (Username, VideoId, Emails, SharedDate)
SELECT TOP 10 u.Username, v.VideoId, CONCAT('email', ABS(CHECKSUM(NEWID())) % 1000, '@gmail.com'),
       DATEADD(day, ABS(CHECKSUM(NEWID())) % (DATEDIFF(day, '2020-01-01', '2023-12-31')), '2020-01-01')
FROM
  (SELECT Username, ROW_NUMBER() OVER (ORDER BY NEWID()) AS rn FROM Users) u
JOIN
  (SELECT VideoId, ROW_NUMBER() OVER (ORDER BY NEWID()) AS rn FROM Videos) v
ON u.rn = v.rn;




INSERT INTO Favorites (Username, VideoId, LikedDate)
SELECT TOP 10 u.Username, v.VideoId,
       DATEADD(day, ABS(CHECKSUM(NEWID())) % (DATEDIFF(day, '2020-01-01', '2023-12-31')), '2020-01-01')
FROM
  (SELECT Username, ROW_NUMBER() OVER (ORDER BY NEWID()) AS rn FROM Users) u
JOIN
  (SELECT VideoId, ROW_NUMBER() OVER (ORDER BY NEWID()) AS rn FROM Videos) v
ON u.rn = v.rn;


-- favorite
SELECT Videos.VideoId, Videos.Title, Videos.Views, Videos.Active
FROM Favorites
INNER JOIN Videos ON Favorites.VideoId = Videos.VideoId
WHERE Favorites.Username = 'user3';


--share

select Shares.Username,Videos.Title  from Shares
inner join Videos on Shares.VideoId = Videos.VideoId 
where Videos.Title like N'Ngày Sinh Nhật Tồi Tệ Nhất'