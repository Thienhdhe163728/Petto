USE [Petto]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 7/18/2022 11:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[isSell] [int] NULL,
	[isAdmin] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/18/2022 11:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [int] NOT NULL,
	[cname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 7/18/2022 11:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NULL,
	[sell_ID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (1, N'admin', N'123456', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (2, N'petto', N'petto', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (3, N'thien', N'123', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (4, N'vippro', N'123', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (5, N'hungvp', N'123', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (6, N'trungkute', N'123', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (7, N'cmeng', N'123', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (8, N'thienvip', N'123', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (9, N'thienvip', N'123', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (10, N'ngoc', N'vippro', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (11, N'superadmin', N'123', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (12, N'hmm', N'123', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (13, N'hello', N'123', 0, 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
INSERT [dbo].[Category] ([cid], [cname]) VALUES (1, N'Chó Cảnh')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (2, N'Mèo Cảnh')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (3, N'Phụ Kiện - Đồ chơi')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (4, N'Khác')
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1, N'Cá Koi FPT', N'img\276044467_5692216310807923_1943839325276978523_n.jpg', 89.0000, N'1 Cá = 1 Môn ', N'Trường rất biết cách đầu tư vào những thứ khiến cho học sinh đau khổ :<', 4, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (2, N'Cheems', N'img\shiba-cheems-meme-dog-balltze-4-1.jpg', 519.0000, N'Just your usual Doge', N'✔️ Giống: chó Shiba Inu Nhật Bản.

✔️ Màu sắc: vàng trắng (red).

✔️ Giới tính: Cái.

✔️ Tuổi: 17 tuổi.

✔️ Nguồn gốc: Nhật Bản.
✔️ Tiêm phòng: 2 mũi vắc xin 7 bệnh.', 1, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (3, N'Chó Corgi lai Shiba', N'https://i.ibb.co/BrM9PP9/cogie-shiba.jpg', 399.0000, N'Corba', N'✔️ Giống: chó Corgi và Shiba Nhật.

✔️ Màu sắc: vàng trắng (red).

✔️ Giới tính: Cái.

✔️ Tuổi: <1 tuổi.

✔️ Nguồn gốc: nhân giống tại Trang trại Đà Lạt (thành viên Hiệp hội những người nuôi chó giống Việt Nam – VKA)

✔️ Giấy tờ: Giấy chứng nhận nguồn gốc của Hiệp hội những người nuôi chó giống tại Việt Nam (VKA) & microchip kèm theo. Hợp đồng mua bán, sổ sức khỏe.

✔️ Tiêm phòng: 2 mũi vắc xin 7 bệnh.', 1, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (4, N'Mèo Anh Lông Ngắn', N'img\meo-anh-long-ngan-nhap-khau-17.jpg', 499.0000, N'Mèo Anh Lông Ngắn Xám Xanh', N'✔️ Giống: mèo Anh lông ngắn (British Shorthair, Aln).

✔️ Màu sắc: xám xanh.

✔️ Giới tính: đực.

✔️ Tuổi: 10 tháng.

✔️ Nguồn gốc: nhập khẩu châu Âu (liên bang Nga)', 2, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (5, N'Mèo Munchkin ', N'img\meo-chan-ngan-tai-cup-silver-2.jpg', 399.0000, N'Mèo Munchkin Silver tai cụp', N'✔️ Giống: mèo Munchkin.

✔️ Màu sắc: Silver.

✔️ Giới tính: đực.

✔️ Tuổi: 2 tháng.

✔️ Nguồn gốc: nhân giống tại Dogily Cattery Đà Lạt.

✔️ Đặc điểm: chân ngắn, tai cụp sát, mũi hồng, mặt bánh bao.', 2, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (6, N'Chó Akita ', N'img\medium_60c1a35ba7e69f288f945889_read_these_akita_inu_facts_to_learn_more_about_this_beautiful_mammal_a2bbd2437c.jpg', 559.0000, N'Akita Inu vàng trắng (red)', N'✔️ Giống: chó Akita Inu Nhật Bản.

✔️ Màu sắc: vàng trắng (red).

✔️ Giới tính: đực giống.

✔️ Tuổi: 04 tháng.

✔️ Nguồn gốc: nhập khẩu châu Âu (liên bang Nga).

✔️ Giấy tờ: Giấy chứng nhận nguồn gốc của FCI (phả AKIHO) & microchip kèm theo. Hợp đồng mua bán, sổ sức khỏe.

✔️ Tiêm phòng: 2 mũi vắc xin 7 bệnh.

✔️ Tẩy giun: 2 lần.', 1, 5)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (7, N'Chó Husky Sibir', N'img\cho-husky-mau-den-trang-2-thang-tuoi-12.jpg', 499.0000, N'Husky Sibir đen trắng', N'✔️ Giống: chó Husky Sibir.

✔️ Màu sắc: đen trắng.

✔️ Giới tính: đực.

✔️ Tuổi: 02 tháng.

✔️ Nguồn gốc: nhân giống tại Trang trại Dogily Kennel Đà Lạt (thành viên Hiệp hội những người nuôi chó giống Việt Nam – VKA).', 1, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (8, N'Chó Husky Sibir ', N'img\cho-husky-con-mau-xam-trang-2-thang-tuoi-8.jpg', 599.0000, N'Husky Sibir xám trắng', N'✔️ Giống: chó Husky Sibir.

✔️ Màu sắc: trắng (white).

✔️ Giới tính: đực.

✔️ Tuổi: 02 tháng.

✔️ Nguồn gốc: nhân giống tại Trang trại Dogily Kennel Đà Lạt (thành viên Hiệp hội những người nuôi chó giống Việt Nam – VKA).', 1, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (36, N'Đồ ăn cho chó', N'img\hat-smart-heart-vi-thit-bo-nuong-400g-6.jpg', 10.0000, N'very good food for you and your dog', N'đồ ăn từ china 100% bảo quản', 3, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (23, N'Balo trong suốt', N'img\balo-trong-suot-1.jpg', 19.9900, NULL, N'Thông tin sản phẩm:

Xuất xứ: Trung Quốc

Chất liệu: Vải, nhựa

Công dụng 

Phù hợp với các giống chó, mèo nhỏ hoặc vừa.
Dùng để vận chuyển chó mèo.
Thiết kế khoa học, tiện lợi giúp thú cưng ngồi thoải mái, không bị chật hay khó chịu.
Kiểu dáng phi hành gia độc đáo, bắt mắt.', 3, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (24, N'Mèo Anh Lông Ngắn', N'img\meo-anh-long-ngan-aln-mau-bicolor-chocolate-8.jpg', 499.9900, N'Mèo Anh Lông Ngắn Chocolate Bicolor', N'THÔNG TIN
✔️ Giống: mèo Anh lông ngắn (British Shorthair, Aln).

✔️ Màu sắc: bi-choco, chocolate (socola, sô cô la, choco).

✔️ Giới tính: đực.

✔️ Tuổi: 3 tháng.

✔️ Nguồn gốc: nhân giống tại Dogily Cattery Đà Lạt.', 2, 3)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (27, N'Mèo Ba Tư ', N'img\exotic-041119-nền-nâu-4-1.jpg', 699.0000, N'Mèo Ba Tư Exotic nhập khẩu', N'Tên: Dora
Giống: mèo Ba Tư (Persian, mèo 34)
Màu sắc: trắng
Giới tính: đực
Tuổi: 6 tháng.
Tình trạng: có sẵn.
Sổ sức khỏe: có
Tiêm vacxin: 2 mũi
Tẩy giun: lần 1.
Xuất xứ, nguồn gốc: nhập khẩu Nga.
Giấy Tica, Wcf: không
Bảo hành: 15-45 ngày tùy gói.
Vận chuyển: miễn phí toàn quốc.
Tặng kèm phụ kiện: voucher 1 triệu: mua đồ dùng thú cưng của Dogily Pet Mart, khám chữa bệnh tại phòng khám thú y Dogily Vet, tắm sấy, cắt tỉa tại Dogily Spa & Grooming.', 2, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (28, N'Mèo Ba Tư', N'img\IMG_0637.jpeg', 499.0000, N'Mèo Ba Tư màu trắng', N'THÔNG TIN
✔️ Giống: mèo Ba Tư 34

✔️ Màu sắc: trắng

✔️ Giới tính: cái.

✔️ Tuổi: 2 tháng.

✔️ Nguồn gốc: nhân giống tại Dogily Cattery Đà Lạt.', 2, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (9, N'Chó Corgi', N'img\cho-corgi-mau-vang-trang-duc-3-3.png', 499.0000, N'Corgi Pembroke Vàng Trắng', N'✔️ Giống: chó Corgi Pembroke.

✔️ Màu sắc: vàng trắng.

✔️ Giới tính: đực.

✔️ Tuổi: 2 tháng tuổi.

✔️ Nguồn gốc: nhân giống tại Trang trại Dogily Kennel Đà Lạt (thành viên Hiệp hội những người nuôi chó giống Việt Nam – VKA).', 1, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (10, N'Chó Corgi ', N'img\cho-corgi-pembroke-nhap-khau-chau-au.jpg', 499.0000, N'Corgi Pembroke Vàng Trắng nhập khẩu', N'✔️ Giống: chó Corgi Pembroke.

✔️ Màu sắc: vàng trắng (red).

✔️ Giới tính: đực.

✔️ Tuổi: 8 tháng.

✔️ Nguồn gốc: nhập khẩu châu Âu (liên bang Nga, đầy đủ giấy FCI, Microchip).', 1, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (11, N'Chó Shiba ', N'img\Mau-long-cho-shiba-black-and-Tan.jpg', 499.0000, N'Shiba Inu đen trắng', N'✔️ Giống: chó Shiba Inu Nhật Bản.

✔️ Màu sắc: đen trắng (black)

✔️ Giới tính: đực.

✔️ Nguồn gốc: nhân giống tại Trang trại Dogily Kennel Đà Lạt (thành viên Hiệp hội những người nuôi chó giống Việt Nam – VKA). Chó bố mẹ nhập khẩu châu Âu.

✔️ Giấy tờ: Giấy chứng nhận nguồn gốc của Hiệp hội những người nuôi chó giống tại Việt Nam (VKA) & microchip kèm theo. Hợp đồng mua bán, sổ sức khỏe.

✔️ Tiêm phòng: 2 mũi vắc xin 7 bệnh.

✔️ Tẩy giun: 2 lần.', 1, 5)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (12, N'Chó Chihuahua', N'img\a65bc8ce9804fde50ece905a784f3da8.jpg', 189.0000, N'Chó Chihuahua lông dài', N'✔️ Giống: chó Chihuahua.

✔️ Màu sắc: vàng trắng.

✔️ Giới tính: đực.

✔️ Tuổi: 1tuổi.

✔️ Nguồn gốc: nhân giống tại Trang trại Dogily Kennel Đà Lạt (thành viên Hiệp hội những người nuôi chó giống Việt Nam – VKA).', 1, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (37, N'Bát ăn cho chó mèo ', N'img\bat-an-sau-long-0083-4.jpg', 5.0000, N'bát ăn cho chó ', N'made in china', 3, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (25, N'Mèo Anh lông Ngắn', N'img\aln-silver-duc-1-1.jpg', 499.0000, N'Mèo Anh lông ngắn Silver', N'THÔNG TIN
✔️ Giống: Mèo Anh lông ngắn Aln (British Shorthair)

✔️ Giới tính: đực.

✔️ Tuổi: 2 tháng.

✔️ Nguồn gốc: nhân giống tại Dogily Cattery Đà Lạt.

✔️ Đặc điểm: tai cụp, tai thẳng, lông ngắn, dài.', 2, 3)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (26, N'Mèo Anh lông dài', N'img\ald-trang-duc-6.png', 499.0000, N'Mèo Anh lông dài màu trắng', N'THÔNG TIN
✔️ Giống: mèo Anh lông dài (British Longhair), Ald

✔️ Màu sắc: trắng

✔️ Giới tính: đực.

✔️ Tuổi: 2 tháng.

✔️ Nguồn gốc: nhân giống tại Dogily Cattery Đà Lạt.', 2, 3)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (13, N'Hạt Royal Canin Kitten Brishtish Shorthair 2kg', N'img\pet-food1.png', 22.9000, NULL, N'Thông tin sản phẩm:

Xuất xứ: Pháp

Thương hiệu: Royal Canin – thương hiệu nổi tiếng trên toàn cầu về việc cung cấp dinh dưỡng sức khỏe vật nuôi.

Khối lượng: 2kg

Thành phần: Protein gia cầm đã khử nước, gạo, protein thực vật cô lập *, mỡ động vật, ngô, protein động vật thủy phân, gluten ngô, bột mì, củ cải đường, sợi thực vật, dầu cá, khoáng chất, dầu đậu nành, men và các bộ phận của chúng, vỏ trấu và hạt (0,5%), fructo-oligo-saccharides, men thủy phân (nguồn gốc của manno-oligosaccharides), chiết xuất men (nguồn betaglucans), dầu borage, chiết xuất cúc vạn thọ (nguồn lutein), động vật giáp xác thủy phân (nguồn glucosamine), sụn thủy phân (nguồn của chondroitin).

Hạt Royal Canin Kitten British Shorthair được sản xuất trên dây chuyền công nghệ hiện đại. Với những nguyên liệu chất lượng cao, cân bằng và đa dạng, giúp hỗ trợ mèo Anh lông ngắn phát triển toàn diện, khỏe mạnh.

Công dụng 

Dành riêng cho giống mèo Anh lông ngắn British shorthair
Kích thước hạt thiết kế có hình thù đặc biệt, nhỏ phù hợp với kết cấu cơ hàm của giống mèo Anh lông ngắn
Công thức dinh dưỡng với protein dễ tiêu kèm prebiotics hỗ trợ tiêu hóa cho mèo
Cân bằng hỗ trợ sự phát triển của cơ bắp và xương khỏe mạnh cho sự phát triển lành mạnh lâu dài của giống mèo Anh lông ngắn.
Cách Sử Dụng
Chỉ sử dụng cho mèo Anh lông ngắn dưới 1 năm tuổi.
Đổ trực tiếp ra bát cho mèo ăn.
Bảo quản nơi khô ráo, thoáng mát. Bịt kín miệng túi sau khi lấy hạt ra.
Có thể ngâm mềm với canh / sữa tùy thích hoăc trộn thêm với thức ăn mềm, rau củ quả bổ sung theo khẩu vị của mèo.
Cho mèo cưng ăn Hạt Royal Canin Kitten British Shorthair với khẩu phần thích hợp tuỳ theo mức độ hoạt động, cân nặng, độ tuổi của mèo (có hướng dẫn chi tiết trên bao bì sản phẩm hoặc tham khảo ý kiến của bác sĩ thú y).', 3, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (14, N'Hạt Royal Cannin Second Age Kitten 2kg', N'img\hat-royal-canin-second-age-kitten-2-kg-1-1.jpg', 17.5000, NULL, N'Thông tin sản phẩm:

Xuất xứ: Pháp

Thương hiệu: Royal Canin – thương hiệu nổi tiếng trên toàn cầu về việc cung cấp dinh dưỡng sức khỏe vật nuôi.

Khối lượng: 2kg

Thành phần: Protein gia cầm, gạo, protein thực vật*, chất béo động vật, bột bắp, protein động vật, bột lúa mì, gluten bắp, men, củ cải đường, xơ thực vật, dầu cá, dầu đậu nành, khoáng chất, fructo-oligo-sacarit (0,38%), psyllium, men thủy phân (nguồn manno-oligo-sacarit), chiết xuất men (nguồn betaglucan), chiết xuất cúc vạn thọ (nguồn lutein).
Phụ gia dinh dưỡng: Vitamin A, Vitamin D3, Vitamin E, E1 (Sắt), E2 (I ốt), E4 (Đồng), E5 (Mangan), E6 (Kẽm), E8 (Selen) – Phụ gia kỹ thuật: Clinoptilolite – Chất chống oxi hóa.
*L.I.P.: Protein có độ tiêu hóa cao.

Hạt Royal Cannin Second Age Kitten được sản xuất trên dây chuyền công nghệ hiện đại. Với những nguyên liệu chất lượng cao, cân bằng và đa dạng,  thúc đẩy sự cân bằng hệ vi sinh đường ruột, hỗ trợ sự phát triển khỏe mạnh của mèo.

Công dụng 

Hệ tiêu hóa khỏe mạnh.
Tăng cường hệ miễn dịch.
Hỗ trợ quá trình cai sữa.
100% đảm bảo an toàn
Hình dáng được thiết kế hình chữ thập giúp mèo con dễ dàng nhai.
Cách Sử Dụng
Dành cho mèo con từ 4 đến 12 tháng tuổi.
Đổ trực tiếp ra bát cho mèo ăn.
Bảo quản nơi khô ráo, thoáng mát. Bịt kín miệng túi sau khi lấy hạt ra.
Có thể ngâm mềm với canh / sữa tùy thích hoăc trộn thêm với thức ăn mềm, rau củ quả bổ sung theo khẩu vị của mèo.
Cho mèo cưng ăn Hạt Royal Cannin Second Age Kitten với khẩu phần thích hợp tuỳ theo mức độ hoạt động, cân nặng, độ tuổi của mèo (có hướng dẫn chi tiết trên bao bì sản phẩm hoặc tham khảo ý kiến của bác sĩ thú y).', 3, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (19, N'Balo vuông trong suốt có lỗ thông gió vận chuyển chó mèo 33*17*38
', N'img\balo-trong-suot-co-lo-thong-gio-22.jpg', 19.5000, NULL, N'Thông tin sản phẩm:

Xuất xứ: Trung Quốc

Chất liệu: Da

Công dụng 

Phù hợp với các giống chó, mèo nhỏ hoặc vừa.
Dùng để vận chuyển chó mèo.
Thiết kế khoa học, tiện lợi giúp thú cưng ngồi thoải mái, không bị chật hay khó chịu.
Kiểu dáng hình vuông độc đáo, bắt mắt.', 3, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (31, N'Mèo Munchkin', N'img\8-2.jpg', 300.0000, N'Mèo Munchkin màu Tricolor', N'THÔNG TIN
✔️ Giống: mèo Munchkin chân ngắn.

✔️ Màu sắc: 3 màu.

✔️ Giới tính: đực.

✔️ Tuổi: 3 tháng.

✔️ Nguồn gốc: nhân giống tại Dogily Cattery Đà Lạt.', 2, 4)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (15, N'Hạt Royal Canin Hairball Care 2kg', N'img\royal-canin-hair-ball-care-2-kg-4.jpg', 18.6900, NULL, N'Thông tin sản phẩm:

Xuất xứ: Pháp

Thương hiệu: Royal Canin – thương hiệu nổi tiếng trên toàn cầu về việc cung cấp dinh dưỡng sức khỏe vật nuôi.

Khối lượng: 2kg

Thành phần: Protein gia cầm, protein thực vật*, bắp, xơ thực vật, gạo, chất béo động vật, protein động vật, lúa mì, bột bắp, gluten bắp, củ cải đường, men, khoáng chất, dầu đậu nành, dầu cá, fructo-oligo-sacarit, psyllium (0,5%).
Phụ gia dinh dưỡng: Vitamin A, Vitamin D3, E1 (Sắt), E2 (I ốt), E4 (Đồng), E5 (Mangan), E6 (Kẽm), E8 (Selen) – Chất chống oxi hóa.
*L.I.P. : Protein có độ tiêu hóa cao.

Hạt Royal Canin Adult British Shorthair được sản xuất trên dây chuyền công nghệ hiện đại. Với những nguyên liệu chất lượng cao, cân bằng và đa dạng, khuyến khích vận chuyển đường ruột và giúp tạo điều kiện cho việc loại bỏ lông mèo trong dạ dày.

Công dụng 

Giúp loại bỏ lông.
Hỗ trợ sức khoẻ răng miệng. Hình dạng và kết cấu độc đáo của hạt giúp chải răng nhằm giảm sự hình thành mảng bám.
Hỗ trợ sức khoẻ tiêu hóa.
Hỗn hợp các chất xơ giúp hỗ trợ sức khỏe đường ruột.
100% dinh dưỡng cân bằng
Cách Sử Dụng
Đổ trực tiếp ra bát cho mèo ăn.
Bảo quản nơi khô ráo, thoáng mát. Bịt kín miệng túi sau khi lấy hạt ra.
Có thể ngâm mềm với canh / sữa tùy thích hoăc trộn thêm với thức ăn mềm, rau củ quả bổ sung theo khẩu vị của mèo.
Cho mèo cưng ăn Hạt Royal Canin Adult British Shorthair với khẩu phần thích hợp tuỳ theo mức độ hoạt động, cân nặng, độ tuổi của mèo (có hướng dẫn chi tiết trên bao bì sản phẩm hoặc tham khảo ý kiến của bác sĩ thú y).', 3, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (16, N'Cát nhật đen Hương Phấn Baby 8L', N'img\cat-nhat-den-huong-phan-baby-8l-6.jpg', 3.5000, NULL, N'Thông tin sản phẩm:

Xuất xứ: hàng nhập khẩu.

Nguyên liệu: đất sét

Khối lượng: 8L ~4kg.

Mùi hương: phấn baby

Đặc tính của sản phẩm: 100% làm từ đất sét tự nhiên. Khả năng thấm hút nhanh, vón cục tốt, ít bụi.

Cát vệ sinh cho mèo Cát Nhật đen hương phấn baby là sản phẩm được sản xuất từ thành phần tự nhiên (đất sét), không chất độc hại và đảm bảo an toàn cho mèo cưng khi sử dụng. Sản phẩm ngăn ngừa mùi hôi chất thải từ mèo một cách hiệu quả, hạn chế mức thấp nhất khả năng của các loại vi khuẩn gây bệnh. Sản phẩm có nhiều mùi hương, khách hàng có thể lựa chọn loại phù hợp nhất cho mèo cưng nhà mình.

Tính Năng Nổi Bật Của Cát Nhật Đen

Vón cục tốt, chịu được lượng nước tiểu cao.
Khử mùi mạnh, chịu được lượng chất thải lớn từ mèo lớn và nhà đông con lắm cháu.
Mùi hương thơm lâu, không bị mất mùi nếu để lâu trong bịch.
Hạn chế được trường hợp đóng mảng bự dưới đáy khay với lượng nước tiểu lớn.
Tiết kiệm chi phí.
Cách Sử Dụng
Đối với 1 khay vệ sinh size to 40x29x13.5 cm ( dài x rộng x cao ) nên sử dụng ít nhất là 1 bịch rưỡi cát Nhật 8L để cát dễ vón cũng như tránh phân và nước tiểu của boss bị dính chặt vào thành vệ sinh.
Mỗi ngày xúc bớt phân, vón cục nước tiểu bỏ đi. Cát nên thay 1 tuần 1 lần.
Nên dùng nhà vệ sinh có nắp đậy để hạn chế cát văng ra ngoài khi các boss bới cát.
Sản phẩm có bán sẵn và giá cực tốt tại tất cả các cửa hàng Dogily Petshop Hà Nội, TP.HCM.', 3, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (17, N'Đồ chơi hình xương gặm có gai
', N'img\do-choi-xuong-gam-co-gai-1.jpg', 2.9000, NULL, N'Thông tin sản phẩm:

Xuất xứ: Việt Nam

Thành phần: Cao Su

Đồ chơi hình xương gặm có gai là sản phẩm đồ chơi cho chó rất được ưa chuộng bởi thiết kế bắt mắt, đáng yêu, kích thước vừa phải. Có độ bền cao và an toàn cho sức khỏe cún cưng. Bạn có thể tái sử dụng nhiều lần. Sản phẩm phù hợp với mọi giống chó ở mọi lứa tuổi. Phù hợp hơn nếu sử dụng cho chó trưởng thành.

Cách Sử Dụng
Cho chú chó của bạn chơi với Đồ chơi hình xương gặm có gai mỗi ngày để cún cưng trở nên năng động hơn.
Giảm tình trạng ngứa răng cũng như cắn phá đồ trong nhà.
Sử dụng trong các buổi huấn luyện chó bắt xương.', 3, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (32, N'Mèo Munchkin ', N'img\meo-munchkin-xam-xanh-dogily-duc-4-thang-1.jpg', 300.0000, N'Mèo Munchkin chân ngắn', N'Tên: Hira
Giống: mèo Munchkin chân ngắn.
Màu sắc: Tuxedo
Giới tính: cái
Tuổi: 8 tháng.
Tình trạng: có sẵn.
Sổ sức khỏe: có
Tiêm vacxin: 2 mũi
Tẩy giun: lần 1.
Xuất xứ, nguồn gốc: sinh tại Việt Nam.
Giấy Tica, Wcf: không
Bảo hành: 15-45 ngày tùy gói.', 2, 4)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (33, N'Mèo Munchkin ', N'img\3-5.jpg', 300.0000, N'Mèo Munchkin màu Bicolor', N'THÔNG TIN
✔️ Giống: mèo Munchkin chân ngắn.

✔️ Màu sắc: 2 màu.

✔️ Giới tính: đực.

✔️ Tuổi: 3 tháng.

✔️ Nguồn gốc: nhân giống tại Dogily Cattery Đà Lạt.', 2, 4)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (18, N'Vitamin Cho Mèo NO.18 – Tim mạch, tránh bệnh thoái hoá võng mạc ở mèo', N'img\vitamin-cho-meo-no-18-4.jpg', 9.9000, NULL, N'Thông tin sản phẩm:

Thương hiệu: NOURSE

Xuất xứ: Trung Quốc

Trọng lượng: 100g

Số lượng:
200 viên

Nourse 18 là sản phẩm chăm sóc thú cưng top 1 tại Trung Quốc. Mèo thường sạch sẽ thích liếm láp vệ sinh bản thân, dẫn đến việc nuốt phải các sợi lông tích tụ. Sản phẩm Nourse 29 giúp thúc đẩy quá trình loại bỏ tự nhiên của bóng tóc trong đường tiêu hóa, chống viêm và làm dịu trên màng nhầy.

Công dụng 

Cung cấp taurine tốt cho tim mạch và tránh bệnh thoái hoá võng mạc ở mèo.
Viên Nhai NOURSE Bổ Sung Vitamin, cung cấp dưỡng chất phòng tránh các bệnh ở mèo.
Hướng dẫn sử dụng:

Dưới 2kg uống 2-4 viên/ngày (Cai sữa – 4 tháng tuổi).
2-4kg uống 4-8 viên/ngày (4 – 12 tháng tuổi).
2.5-5.5kg uống 3-6 viên/ngày (mèo trưởng thành).
Cho ăn cùng với thức ăn hoặc ăn trực tiếp.
Đậy kín nắp sau khi sử dụng.
Bảo quản nơi khô thoáng.', 3, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (29, N'Mèo Anh lông dài ', N'img\2-meo-ald-mau-xam-xanh-bicolor-12.png', 499.0000, N'Mèo Anh lông dài xám xanh, bicolor tai cụp', N'THÔNG TIN
✔️ Giống: mèo Anh lông dài (British Longhair), Ald, Scottish Fold (tai cụp).

✔️ Màu sắc: bicolor, xám xanh.

✔️ Giới tính: đực, cái.

✔️ Tuổi: 2 tháng.

✔️ Nguồn gốc: nhân giống tại Dogily Cattery Đà Lạt.', 2, 3)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (30, N'Mèo Munchkin ', N'img\meo-aln-munchkin-cream-6.png', 300.0000, N'Mèo Munchkin Cream', N'THÔNG TIN
✔️ Giống: mèo Munchkin chân ngắn.

✔️ Màu sắc: cream.

✔️ Giới tính: đực.

✔️ Tuổi: 2 tháng.

✔️ Nguồn gốc: nhân giống tại Dogily Cattery Đà Lạt.', 2, 4)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (34, N'Chó Poodle Tiny ', N'img\poodle-mau-nau-chocolate-duc-3.png', 299.0000, N'Poodle Tiny nâu chocolate', N'THÔNG TIN
✔️ Giống: chó Poodle Tiny.

✔️ Màu sắc: nâu chocolate

✔️ Giới tính: đực

✔️ Tuổi: 02 tháng.

✔️ Nguồn gốc: nhân giống tại Trang trại Dogily Kennel Đà Lạt (thành viên Hiệp hội những người nuôi chó giống Việt Nam – VKA).', 1, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (35, N'Chó Chow Chow ', N'img\cho-chow-chow-mau-vang-cai-13.png', 450.0000, N'Chow Chow vàng', N'THÔNG TIN
✔️ Giống: chó Chow chow.

✔️ Màu sắc: vàng.

✔️ Giới tính: cái.

✔️ Tuổi: 02 tháng.

✔️ Nguồn gốc: nhân giống tại Trang trại Dogily Kennel Đà Lạt (thành viên Hiệp hội những người nuôi chó giống Việt Nam – VKA).', 1, 2)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_Category] FOREIGN KEY([cateID])
REFERENCES [dbo].[Category] ([cid])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_Category]
GO
