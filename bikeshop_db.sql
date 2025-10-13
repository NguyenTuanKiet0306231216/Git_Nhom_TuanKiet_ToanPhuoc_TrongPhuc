-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2025 at 02:53 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bikeshop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `masp` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mand` int(10) NOT NULL,
  `noidung` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `binhluan`
--

INSERT INTO `binhluan` (`masp`, `mand`, `noidung`) VALUES
('SP10', 1, 'Xe chạy rất mượt, thiết kế đẹp, đáng tiền!'),
('SP17', 2, 'Bình nước nhẹ, giữ nhiệt tốt, nhưng hơi nhỏ với mình.'),
('SP38', 3, 'Lắp líp dễ dàng, chuyển số mượt, rất hài lòng.');

-- --------------------------------------------------------

--
-- Table structure for table `cthd`
--

CREATE TABLE `cthd` (
  `mahd` int(10) NOT NULL,
  `masp` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `soluong` int(10) NOT NULL,
  `thanhtien` float NOT NULL,
  `dongia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cthd`
--

INSERT INTO `cthd` (`mahd`, `masp`, `soluong`, `thanhtien`, `dongia`) VALUES
(1, 'SP09', 1, 0, 9800000),
(2, 'SP38', 1, 0, 4200000),
(3, 'SP10', 1, 0, 18500000),
(4, 'SP07', 1, 0, 6200000),
(5, 'SP46', 10, 0, 95000),
(6, 'SP25', 1, 0, 320000);

-- --------------------------------------------------------

--
-- Table structure for table `danhmucsanpham`
--

CREATE TABLE `danhmucsanpham` (
  `madm` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `malsp` int(10) NOT NULL,
  `tendm` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `danhmucsanpham`
--

INSERT INTO `danhmucsanpham` (`madm`, `malsp`, `tendm`) VALUES
('BS01', 4, 'Bình nước'),
('BS02', 4, 'Găng tay'),
('PK01', 3, 'Đèn pin xe đạp'),
('PK02', 3, 'Chân chống xe đạp'),
('PK03', 3, 'Túi treo xe đạp'),
('PK04', 3, 'Phụ kiện khác'),
('PT01', 2, 'Lốp xe đạp'),
('PT02', 2, 'Líp xe đạp'),
('PT03', 2, 'Ruột xe đạp'),
('PT04', 2, 'Phụ tùng khác'),
('XD01', 1, 'Xe đạp đường phố'),
('XD02', 1, 'Xe đạp địa hình'),
('XD03', 1, 'Xe đạp thể thao'),
('XD04', 1, 'Xe đạp đua');

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `mahd` int(10) NOT NULL,
  `ngaylap` datetime NOT NULL,
  `tongtien` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`mahd`, `ngaylap`, `tongtien`) VALUES
(1, '2025-09-22 00:00:00', 9800000),
(2, '2025-09-26 00:00:00', 4200000),
(3, '2025-09-27 14:00:00', 18500000),
(4, '2025-09-28 09:30:00', 6200000),
(5, '2025-09-29 16:45:00', 950000),
(6, '2025-09-30 11:15:00', 320000);

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `malsp` int(10) NOT NULL,
  `tenlsp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`malsp`, `tenlsp`) VALUES
(1, 'Xe đạp'),
(2, 'Phụ tùng'),
(3, 'Phụ kiện'),
(4, 'Bổ sung');

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `mand` int(10) NOT NULL,
  `tennd` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngaysinh` datetime DEFAULT NULL,
  `sdt` int(10) DEFAULT NULL,
  `email` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taikhoan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `matkhau` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chucvu` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trangthai` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`mand`, `tennd`, `ngaysinh`, `sdt`, `email`, `taikhoan`, `matkhau`, `chucvu`, `trangthai`) VALUES
(1, 'Trần Toàn Phước', '2005-02-01 00:00:00', 909307991, 'toanphuoc@gmail.com', 'phuoc', '123', NULL, 1),
(2, 'Lê Hoàng Gia Kiệt', '2005-01-01 00:00:00', 789307992, 'giakiet@gmail.com', 'gkiet', '123', NULL, 1),
(3, 'Nguyễn Tuấn Kiệt', '2005-03-01 00:00:00', 909562991, 'tuankiet@gmail.com', 'kietbeve', '123', NULL, 1),
(4, 'Nguyễn Hoàng Nam', '2005-03-01 00:00:00', 173387991, 'hoangnam@gmail.com', 'nam', '123', NULL, 1),
(5, 'Lê Nguyễn Trọng Phúc', '2005-03-11 00:00:00', 909136721, 'trongphuc@gmail.com', 'phuc', '123', 'admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nhasanxuat`
--

CREATE TABLE `nhasanxuat` (
  `mansx` int(10) NOT NULL,
  `tennsx` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` int(10) NOT NULL,
  `email` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` int(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nhasanxuat`
--

INSERT INTO `nhasanxuat` (`mansx`, `tennsx`, `sdt`, `email`, `diachi`) VALUES
(1, 'Giant', 101010101, 'Giant@gmail.com', 0),
(2, 'Trek', 101010101, 'Trek@gmail.com', 0),
(3, 'Specialized', 101010101, 'Specialized@gmail.com', 0),
(4, 'Finish ', 20200022, 'Finish@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `anh` varchar(100) DEFAULT NULL,
  `masp` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tensp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `madm` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mansx` int(10) NOT NULL,
  `soluong` int(10) NOT NULL,
  `size` char(3) NOT NULL,
  `mota` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `giaban` float NOT NULL,
  `trangthai` int(1) NOT NULL DEFAULT 1,
  `tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`anh`, `masp`, `tensp`, `madm`, `mansx`, `soluong`, `size`, `mota`, `giaban`, `trangthai`, `tags`) VALUES
('bik2.jpg', 'SP01', 'Xe đạp CityRide 700C', 'XD01', 1, 15, '700', 'Thiết kế thanh lịch, phù hợp đi làm và dạo phố', 5200000, 1, 'city,đường phố,700C'),
('bik2.jpg', 'SP02', 'Xe đạp Phoenix Urban', 'XD01', 2, 20, '26', 'Khung thép cổ điển, yên êm ái', 4300000, 1, 'phoenix,đường phố,26 inch'),
('bik2.jpg', 'SP03', 'Xe đạp Trinx City 1.0', 'XD01', 3, 18, '700', 'Khung nhôm, phanh V, bánh lớn', 4900000, 1, 'trinx,city,nhôm'),
('bik2.jpg', 'SP04', 'Xe đạp MTB Pro 27.5', 'XD02', 1, 12, '27.', 'Phuộc giảm xóc, líp 21 tốc độ', 7500000, 1, 'MTB,địa hình,giảm xóc'),
('bik2.jpg', 'SP05', 'Xe đạp địa hình Giant ATX', 'XD02', 2, 10, '29', 'Khung nhôm, phanh đĩa, bánh lớn', 8900000, 1, 'giant,địa hình,29 inch'),
('bik2.jpg', 'SP06', 'Xe đạp địa hình Fornix X1', 'XD02', 3, 14, '27.', 'Thiết kế thể thao, phù hợp leo núi', 6700000, 1, 'fornix,leo núi,MTB'),
('bik2.jpg', 'SP07', 'Xe đạp thể thao Java Fit', 'XD03', 1, 16, '700', 'Khung hợp kim, líp 7 tầng', 6200000, 1, 'java,thể thao,fit'),
('bik2.jpg', 'SP08', 'Xe đạp thể thao Galaxy ML200', 'XD03', 2, 20, '26', 'Thiết kế mạnh mẽ, phanh đĩa', 5800000, 1, 'galaxy,thể thao,phanh đĩa'),
('bik2.jpg', 'SP09', 'Xe đạp thể thao Twitter Hunter', 'XD03', 3, 12, '700', 'Khung carbon, tốc độ cao', 9800000, 1, 'twitter,carbon,tốc độ'),
('bik2.jpg', 'SP10', 'Xe đạp đua Sava Road', 'XD04', 1, 8, '700', 'Khung carbon, líp 22 tốc độ', 18500000, 1, 'sava,đua,carbon'),
('bik2.jpg', 'SP11', 'Xe đạp đua Giant Propel', 'XD04', 2, 6, '700', 'Khí động học, bánh siêu nhẹ', 21500000, 1, 'giant,đua,propel'),
('bik2.jpg', 'SP12', 'Xe đạp đua Trinx R300', 'XD04', 3, 10, '700', 'Khung nhôm, tốc độ ổn định', 9200000, 1, 'trinx,đua,nhôm'),
('bik2.jpg', 'SP13', 'Xe đạp thể thao Nakxus Raptor', 'XD03', 1, 14, '700', 'Khung hợp kim, phanh đĩa, líp 21 tốc độ', 6400000, 1, 'nakxus,thể thao,phanh đĩa'),
('bik2.jpg', 'SP14', 'Xe đạp thể thao Sava Carbon', 'XD03', 2, 8, '700', 'Khung carbon siêu nhẹ, tốc độ cao', 18500000, 1, 'sava,carbon,tốc độ'),
('bik2.jpg', 'SP15', 'Xe đạp đua Twitter T10', 'XD04', 3, 10, '700', 'Khung nhôm, líp 16 tầng, phanh đĩa', 9200000, 1, 'twitter,đua,T10'),
('bik2.jpg', 'SP16', 'Xe đạp đua Fornix R300', 'XD04', 1, 12, '700', 'Thiết kế khí động học, tốc độ ổn định', 8800000, 1, 'fornix,đua,R300'),
('bik2.jpg', 'SP17', 'Bình nước nhôm 750ml', 'BS01', 4, 50, '750', 'Giữ nhiệt tốt, nhẹ, dễ lắp', 180000, 1, 'bình nước,nhôm,750ml'),
('bik2.jpg', 'SP18', 'Bình nước nhựa chống tràn', 'BS01', 4, 60, '600', 'Chống tràn, dễ vệ sinh', 120000, 1, 'bình nước,nhựa,chống tràn'),
('bik2.jpg', 'SP19', 'Bình nước thể thao CamelBak', 'BS01', 4, 40, '750', 'Bình nước cao cấp, giữ nhiệt tốt', 280000, 1, 'camelbak,bình nước,thể thao'),
('bik2.jpg', 'SP20', 'Bình nước xe đạp Elite Fly', 'BS01', 4, 50, '550', 'Nhẹ, dễ bóp, phù hợp xe đua', 220000, 1, 'elite,bình nước,xe đua'),
('bik2.jpg', 'SP21', 'Găng tay xe đạp chống trượt', 'BS02', 4, 40, 'M', 'Thoáng khí, bảo vệ tay', 150000, 1, 'găng tay,chống trượt,thoáng khí'),
('bik2.jpg', 'SP22', 'Găng tay full ngón thể thao', 'BS02', 4, 35, 'L', 'Chống nắng, chống trượt', 190000, 1, 'găng tay,full ngón,thể thao'),
('bik2.jpg', 'SP23', 'Găng tay xe đạp Rockbros', 'BS02', 4, 35, 'M', 'Thoáng khí, chống trượt, đệm lòng bàn tay', 170000, 1, 'rockbros,găng tay,chống trượt'),
('bik2.jpg', 'SP24', 'Găng tay full ngón chống nước', 'BS02', 4, 30, 'L', 'Chống nước, giữ ấm, phù hợp mùa mưa', 210000, 1, 'găng tay,chống nước,mùa mưa'),
('bik2.jpg', 'SP25', 'Đèn pin LED 800 lumen', 'PK01', 4, 30, '800', 'Siêu sáng, chống nước, sạc USB', 320000, 1, 'đèn,LED,sạc USB'),
('bik2.jpg', 'SP26', 'Đèn pin cảm biến ánh sáng', 'PK01', 4, 25, '600', 'Tự động bật khi trời tối', 280000, 1, 'đèn,cảm biến,ánh sáng'),
('bik2.jpg', 'SP27', 'Đèn hậu xe đạp thông minh', 'PK01', 4, 25, 'Sta', 'Cảnh báo xe phía sau, kết nối GPS', 420000, 1, 'đèn hậu,thông minh,GPS'),
('bik2.jpg', 'SP28', 'Đèn pin xe đạp siêu sáng 1000lm', 'PK01', 4, 20, '100', 'Chiếu xa, pin sạc, chống nước', 390000, 1, 'đèn pin,siêu sáng,1000lm'),
('bik2.jpg', 'SP29', 'Chân chống nhôm điều chỉnh', 'PK02', 4, 45, 'Adj', 'Chắc chắn, dễ lắp', 190000, 1, 'chân chống,nhôm,điều chỉnh'),
('bik2.jpg', 'SP30', 'Chân chống thép cổ điển', 'PK02', 4, 50, 'Sta', 'Bền, phù hợp xe phổ thông', 150000, 1, 'chân chống,thép,cổ điển'),
('bik2.jpg', 'SP31', 'Túi treo khung chống nước', 'PK03', 4, 40, 'M', 'Chống nước, nhiều ngăn', 250000, 1, 'túi treo,chống nước,khung xe'),
('bik2.jpg', 'SP32', 'Túi yên xe mini', 'PK03', 4, 55, 'S', 'Đựng đồ nhỏ, dễ tháo lắp', 180000, 1, 'túi yên,mini,phụ kiện'),
('bik2.jpg', 'SP33', 'Túi khung xe chống nước Roswheel', 'PK03', 4, 40, 'M', 'Chống nước, nhiều ngăn, dễ lắp', 260000, 1, 'roswheel,túi khung,chống nước'),
('bik2.jpg', 'SP34', 'Túi yên xe đạp có phản quang', 'PK03', 4, 35, 'S', 'Tăng an toàn ban đêm, đựng đồ nhỏ', 190000, 1, 'túi yên,phản quang,an toàn'),
('bik2.jpg', 'SP35', 'Kính chắn gió thể thao', 'PK04', 4, 35, 'Sta', 'Chống UV, chống bụi', 300000, 1, 'kính,chống UV,thể thao'),
('bik2.jpg', 'SP36', 'Còi điện xe đạp USB', 'PK04', 4, 60, 'USB', 'Âm thanh lớn, sạc USB', 160000, 1, 'còi điện,sạc USB,âm thanh lớn'),
('bik2.jpg', 'SP37', 'Lốp xe Schwalbe Marathon 700x32C', 'PT01', 4, 30, '700', 'Lốp xe touring, chống thủng, độ bền cao', 580000, 1, 'lốp,schwalbe,touring'),
('bik2.jpg', 'SP38', 'Líp xe đạp Shimano HG200 8 tầng', 'PT02', 4, 40, '8-s', 'Líp bền, chuyển số mượt, phù hợp xe phổ thông', 420000, 1, 'líp,shimano,HG200'),
('bik2.jpg', 'SP39', 'Ruột xe đạp 26 inch van lớn', 'PT03', 4, 50, '26', 'Ruột cao su dày, chống xì hơi', 85000, 1, 'ruột xe,26 inch,van lớn'),
('bik2.jpg', 'SP40', 'Ruột xe đạp 700C van nhỏ', 'PT03', 4, 45, '700', 'Ruột xe đường phố, van nhỏ, dễ bơm', 90000, 1, 'ruột xe,700C,van nhỏ'),
('bik2.jpg', 'SP41', 'Xích xe đạp Shimano HG40', 'PT04', 4, 35, '6/7', 'Xích bền, chống rỉ, dễ lắp', 320000, 1, 'xích,shimano,HG40'),
('bik2.jpg', 'SP42', 'Yên xe đạp thể thao Selle Royal', 'PT04', 4, 25, 'Sta', 'Yên êm, thiết kế khí động học, chống nước', 480000, 1, 'yên xe,selle royal,thể thao'),
('bik2.jpg', 'SP43', 'Tay đề SRAM X4 3x8', 'PT04', 4, 30, '3x8', 'Tay đề chính xác, độ bền cao', 590000, 1, 'tay đề,SRAM,X4'),
('bik2.jpg', 'SP44', 'Bộ vòng bi trục giữa Shimano BB-UN300', 'PT04', 4, 20, 'BSA', 'Vòng bi mượt, dễ bảo trì, độ bền cao', 410000, 1, 'vòng bi,shimano,BB-UN300'),
('bik2.jpg', 'SP45', 'Cốt yên hợp kim 31.6mm', 'PT04', 4, 28, '31.', 'Cốt yên nhẹ, chắc chắn, dễ điều chỉnh', 300000, 1, 'cốt yên,hợp kim,31.6mm'),
('bik2.jpg', 'SP46', 'Miếng dán phản quang bánh xe', 'PK04', 4, 60, 'Sta', 'Tăng độ an toàn khi đi đêm, dễ lắp', 9500, 1, 'phản quang,bánh xe,an toàn'),
('bik2.jpg', 'SP47', 'Bộ khóa líp tháo lắp nhanh', 'PT04', 4, 40, 'Sta', 'Dụng cụ tháo lắp líp tiện lợi, dùng cho nhiều loại xe', 120000, 1, 'khóa líp,dụng cụ,tháo lắp'),
('bik2.jpg', 'SP48', 'Túi treo ghi đông chống nước', 'PK03', 4, 38, 'M', 'Túi treo ghi đông, chống nước, có ngăn điện thoại', 270000, 1, 'túi ghi đông,chống nước,điện thoại'),
('bik2.jpg', 'SP49', 'Đèn hậu xe đạp có cảm biến phanh', 'PK01', 4, 32, 'Sta', 'Tự động sáng khi phanh, tăng an toàn', 350000, 1, 'đèn hậu,cảm biến,phanh'),
('bik2.jpg', 'SP50', 'Miếng dán phản quang bánh xe', 'PK04', 4, 60, 'Sta', 'Tăng độ an toàn khi đi đêm, dễ lắp', 95000, 1, 'phản quang,bánh xe,an toàn');

-- --------------------------------------------------------

--
-- Table structure for table `websetting`
--

CREATE TABLE `websetting` (
  `id` int(11) NOT NULL,
  `logoweb` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenweb` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mota` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `yt` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `userid_create` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `userid_update` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `trangthai` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`masp`,`mand`),
  ADD KEY `mand` (`mand`) USING BTREE,
  ADD KEY `masp` (`masp`);

--
-- Indexes for table `cthd`
--
ALTER TABLE `cthd`
  ADD PRIMARY KEY (`mahd`,`masp`),
  ADD KEY `masp` (`masp`),
  ADD KEY `mahd` (`mahd`);

--
-- Indexes for table `danhmucsanpham`
--
ALTER TABLE `danhmucsanpham`
  ADD PRIMARY KEY (`madm`,`malsp`),
  ADD KEY `malsp` (`malsp`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`mahd`);

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`malsp`);

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`mand`);

--
-- Indexes for table `nhasanxuat`
--
ALTER TABLE `nhasanxuat`
  ADD PRIMARY KEY (`mansx`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masp`,`madm`,`mansx`),
  ADD KEY `madm` (`madm`),
  ADD KEY `mansx` (`mansx`);

--
-- Indexes for table `websetting`
--
ALTER TABLE `websetting`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `mahd` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `malsp` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `mand` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `nhasanxuat`
--
ALTER TABLE `nhasanxuat`
  MODIFY `mansx` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `websetting`
--
ALTER TABLE `websetting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`mand`) REFERENCES `nguoidung` (`mand`),
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`);

--
-- Constraints for table `cthd`
--
ALTER TABLE `cthd`
  ADD CONSTRAINT `cthd_ibfk_1` FOREIGN KEY (`mahd`) REFERENCES `hoadon` (`mahd`),
  ADD CONSTRAINT `cthd_ibfk_2` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`);

--
-- Constraints for table `danhmucsanpham`
--
ALTER TABLE `danhmucsanpham`
  ADD CONSTRAINT `danhmucsanpham_ibfk_1` FOREIGN KEY (`malsp`) REFERENCES `loaisanpham` (`malsp`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`madm`) REFERENCES `danhmucsanpham` (`madm`),
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`mansx`) REFERENCES `nhasanxuat` (`mansx`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
