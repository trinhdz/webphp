-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 24, 2023 lúc 12:44 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethangban`
--

CREATE TABLE `chitiethangban` (
  `MaHD` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethangban`
--

INSERT INTO `chitiethangban` (`MaHD`, `MaSP`, `SoLuong`, `DonGia`) VALUES
(178, 2, 3, 7690000),
(179, 6, 1, 11990000),
(180, 6, 3, 11990000),
(180, 44, 1, 1890000),
(181, 6, 1, 11990000),
(184, 7, 1, 4690000),
(185, 14, 1, 2850000),
(186, 14, 1, 2850000),
(187, 15, 1, 260000),
(188, 44, 1, 1890000),
(189, 44, 1, 1890000),
(190, 9, 1, 8990000),
(190, 46, 1, 24990000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhgia`
--

CREATE TABLE `danhgia` (
  `MaSP` int(11) NOT NULL,
  `MaND` varchar(10) NOT NULL,
  `SoSao` int(11) NOT NULL,
  `BinhLuan` varchar(255) NOT NULL,
  `NgayLap` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhgia`
--

INSERT INTO `danhgia` (`MaSP`, `MaND`, `SoSao`, `BinhLuan`, `NgayLap`) VALUES
(4, '2', 4, 'Hoàng trần đẹp trai', '2019-05-16 19:28:13'),
(4, '2', 1, 'Chưa tốt! cần cải thiện nhiều', '2019-05-16 19:29:30'),
(2, '2', 4, 'Giảm giá 500k , quá gắt <3', '2019-05-16 19:31:48'),
(46, '2', 4, 'Đỏ may mắn <3', '2019-05-16 19:32:58'),
(44, '4', 5, 'wow, giá rẻ cấu hình ngon đây rồi <3', '2019-05-16 19:38:03'),
(4, '4', 4, 'đẹp', '2019-05-16 19:47:56'),
(2, '4', 3, 'aaa sơn cmn tùng <3', '2019-05-16 19:48:46'),
(44, '4', 3, 'Ram có 1GB tiếc quá', '2019-05-16 19:49:20'),
(46, '4', 2, 'Pin khá tệ ', '2019-05-16 19:49:44'),
(15, '4', 4, 'mua vài chục cái về cho con cháu chọi nhau chơi :v', '2019-05-16 19:52:14'),
(9, '3', 4, 'vcvcvcxcxv', '2023-05-12 07:48:04'),
(9, '3', 4, 'gfdfg', '2023-05-12 07:48:10'),
(4, '7', 4, 'Hay', '2023-05-12 08:19:37'),
(2, '7', 4, 'xxx', '2023-05-12 08:19:58'),
(6, '6', 5, 'qưe', '2023-11-17 14:47:34'),
(8, '6', 5, '3213', '2023-11-17 14:50:19'),
(9, '6', 5, '321', '2023-11-17 14:56:39'),
(9, '6', 3, '332', '2023-11-17 15:02:52'),
(2, '16', 5, '312', '2023-11-18 09:23:32'),
(4, '16', 5, '123', '2023-11-19 10:30:39'),
(4, '16', 4, '3123', '2023-11-19 10:30:50'),
(3, '2', 5, '321', '2023-11-19 13:42:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `solieugiohang` int(11) DEFAULT NULL,
  `makhach` int(11) DEFAULT NULL,
  `mahang` int(11) DEFAULT NULL,
  `dongia` decimal(10,2) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `thanhtien` decimal(10,2) DEFAULT NULL,
  `tongtien` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hang`
--

CREATE TABLE `hang` (
  `MaSP` int(11) NOT NULL,
  `MaLSP` int(11) NOT NULL,
  `TenSP` varchar(70) NOT NULL,
  `donvido` varchar(50) NOT NULL,
  `dongia` int(11) NOT NULL,
  `soluongton` varchar(50) NOT NULL,
  `SoLuong` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `HinhAnh` varchar(200) NOT NULL,
  `MaKM` int(11) NOT NULL,
  `ManHinh` varchar(50) NOT NULL,
  `HDH` varchar(50) NOT NULL,
  `CamSau` varchar(50) NOT NULL,
  `CamTruoc` varchar(50) NOT NULL,
  `CPU` varchar(50) NOT NULL,
  `Ram` varchar(50) NOT NULL,
  `Rom` varchar(50) NOT NULL,
  `SDCard` varchar(50) NOT NULL,
  `Pin` varchar(50) NOT NULL,
  `SoSao` int(11) NOT NULL,
  `SoDanhGia` int(11) NOT NULL,
  `TrangThai` bit(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hang`
--

INSERT INTO `hang` (`MaSP`, `MaLSP`, `TenSP`, `donvido`, `dongia`, `soluongton`, `SoLuong`, `HinhAnh`, `MaKM`, `ManHinh`, `HDH`, `CamSau`, `CamTruoc`, `CPU`, `Ram`, `Rom`, `SDCard`, `Pin`, `SoSao`, `SoDanhGia`, `TrangThai`) VALUES
(1, 8, 'SamSung Galaxy J4', '', 3490000, '', 103, 'img/products/samsung-galaxy-j4-plus-pink-400x400.jpg', 1, 'IPS LCD, 6.0\', HD+', 'Android 8.1 (Oreo)', '13 MP', '5 MP', 'Qualcomm Snapdragon 425 4 nhân 64-bit', '2 GB', '16 GB', 'MicroSD, hỗ trợ tối đa 256 GB', '3300 mAh', 0, 0, b'00000110001'),
(2, 7, 'Oppo F9', '', 7690000, '', 10, 'img/products/oppo-f9-red-600x600.jpg', 1, 'LTPS LCD, 6.3\', Full HD+', 'ColorOS 5.2 (Android 8.1)', '16 MP và 2 MP (2 camera)', '25 MP', 'MediaTek Helio P60 8 nhân 64-bit', '4 GB', '64 GB', 'MicroSD, hỗ trợ tối đa 256 GB', '3500 mAh, có sạc nhanh', 4, 4, b'00000110001'),
(3, 10, 'Nokia 5.1 Plus', '', 4790000, '', 10, 'img/products/nokia-51-plus-black-18thangbh-400x400.jpg', 2, 'IPS LCD, 5.8\', HD+', 'Android One', '13 MP và 5 MP (2 camera)', '8 MP', 'MediaTek Helio P60 8 nhân 64-bit', '3 GB', '32 GB', 'MicroSD, hỗ trợ tối đa 256 GB', '3060 mAh, có sạc nhanh', 5, 1, b'00000110000'),
(4, 1, 'iPhone X 256GB Silver', '', 31990000, '', 10, 'img/products/iphone-x-256gb-silver-400x400.jpg', 3, 'OLED, 5.8\', Super Retina', 'iOS 11', '2 camera 12 MP', '7 MP', 'Apple A11 Bionic 6 nhân', '3 GB', '256 GB', 'Không', '2716 mAh, có sạc nhanh', 4, 6, b'11111111111'),
(5, 8, 'Samsung Galaxy J8', '', 6290000, '', 10, 'img/products/samsung-galaxy-j8-600x600-600x600.jpg', 2, 'Super AMOLED, 6.0\', HD+', 'Android 8.0 (Oreo)', '16 MP và 5 MP (2 camera)', '16 MP', 'Qualcomm Snapdragon 450 8 nhân 64-bit', '3 GB', '32 GB', 'MicroSD, hỗ trợ tối đa 256 GB', '3500 mAh', 0, 0, b'00000000000'),
(6, 8, 'Samsung Galaxy A8+ (2018)', '', 11990000, '', 10, 'img/products/samsung-galaxy-a8-plus-2018-gold-600x600.jpg', 2, 'Super AMOLED, 6\', Full HD+', 'Android 7.1 (Nougat)', '16 MP', '16 MP và 8 MP (2 camera)', 'Exynos 7885 8 nhân 64-bit', '6 GB', '64 GB', 'MicroSD, hỗ trợ tối đa 256 GB', '3500 mAh, có sạc nhanh', 5, 1, b'00000000001'),
(7, 7, 'Oppo A3s 32GB', '', 4690000, '', 10, 'img/products/oppo-a3s-32gb-600x600.jpg', 4, 'IPS LCD, 6.2\', HD+', 'Android 8.1 (Oreo)', '13 MP và 2 MP (2 camera)', '8 MP', 'Qualcomm Snapdragon 450 8 nhân 64-bit', '3 GB', '32 GB', 'MicroSD, hỗ trợ tối đa 256 GB', '4230 mAh', 0, 0, b'00000000001'),
(8, 14, 'Xiaomi Mi 8 Lite', '', 6690000, '', 10, 'img/products/xiaomi-mi-8-lite-black-1-600x600.jpg', 4, 'IPS LCD, 6.26\', Full HD+', 'Android 8.1 (Oreo)', '12 MP và 5 MP (2 camera)', '24 MP', 'Qualcomm Snapdragon 660 8 nhân', '4 GB', '64 GB', 'MicroSD, hỗ trợ tối đa 512 GB', '3300 mAh, có sạc nhanh', 5, 1, b'00000000001'),
(9, 1, 'iPad 2018 Wifi 32GB', '', 8990000, '', 10, 'img/products/ipad-wifi-32gb-2018-thumb-600x600.jpg', 4, 'LED-backlit LCD, 9.7p\'\'', '	iOS 11.3', '8 MP', '1.2 MP', 'Apple A10 Fusion, 2.34 GHz', '2 GB', '32 GB', 'Không', 'Chưa có thông số cụ thể', 4, 4, b'00000000001'),
(10, 14, 'Xiaomi Mi 8', '', 12990000, '', 10, 'img/products/xiaomi-mi-8-1-600x600.jpg', 1, 'IPS LCD, 6.26\', Full HD+', 'Android 8.1 (Oreo)', '12 MP và 5 MP (2 camera)', '24 MP', 'Qualcomm Snapdragon 660 8 nhân', '4 GB', '64 GB', 'MicroSD, hỗ trợ tối đa 512 GB', '3300 mAh, có sạc nhanh', 0, 0, b'00000000001'),
(11, 1, 'iPhone 7 Plus 32GB', '', 17000000, '', 10, 'img/products/iphone-7-plus-32gb-hh-600x600.jpg', 3, 'LED-backlit IPS LCD, 5.5\', Retina HD', 'iOS 11', '2 camera 12 MP', '7 MP', 'Apple A10 Fusion 4 nhân 64-bit', '3 GB', '32 GB', 'Không', '2900 mAh', 0, 0, b'00000000001'),
(12, 12, 'Mobiistar X', '', 3490000, '', 10, 'img/products/mobiistar-x-3-600x600.jpg', 4, 'IPS LCD, 5.86\', HD+', 'Android 8.1 (Oreo)', '16 MP và 5 MP (2 camera)', '16 MP', 'MediaTek MT6762 8 nhân 64-bit (Helio P22)', '4 GB', '32 GB', 'MicroSD, hỗ trợ tối đa 256 GB', '3000 mAh', 0, 0, b'00000000001'),
(13, 12, 'Mobiistar E Selfie', '', 2490000, '', 10, 'img/products/mobiistar-e-selfie-300-1copy-600x600.jpg', 1, 'IPS LCD, 6.0\', HD+', 'Android 7.0 (Nougat)', '13 MP', '13 MP', 'MediaTek MT6739 4 nhân 64-bit', '2 GB', '16 GB', 'MicroSD, hỗ trợ tối đa 128 GB', '3900 mAh', 0, 0, b'00000000001'),
(14, 12, 'Mobiistar Zumbo S2 Dual', '', 2850000, '', 10, 'img/products/mobiistar-zumbo-s2-dual-300x300.jpg', 5, 'IPS LCD, 5.5\', Full HD', 'Android 7.0 (Nougat)', '13 MP', '13 MP và 8 MP (2 camera)', 'MT6737T, 4 nhân', '3 GB', '32 GB', 'MicroSD, hỗ trợ tối đa 128 GB', '3000 mAh', 0, 0, b'00000000001'),
(15, 12, 'Mobiistar B310', '', 260000, '', 10, 'img/products/mobiistar-b310-orange-600x600.jpg', 5, 'LCD, 1.8\', QQVGA', 'Không', '0.08 MP', 'Không', 'Không', 'Không', 'Không', 'MicroSD, hỗ trợ tối đa 32 GB', '800 mAh', 4, 1, b'00000000001'),
(16, 14, 'Xiaomi Redmi Note 5', '', 5690000, '', 10, 'img/products/xiaomi-redmi-note-5-pro-600x600.jpg', 5, 'IPS LCD, 5.99\', Full HD+', 'Android 8.1 (Oreo)', '12 MP và 5 MP (2 camera)', '13 MP', 'Qualcomm Snapdragon 636 8 nhân', '4 GB', '64 GB', 'MicroSD, hỗ trợ tối đa 128 GB', '4000 mAh, có sạc nhanh', 0, 0, b'00000000001'),
(17, 14, 'Xiaomi Redmi 5 Plus 4GB', '', 4790000, '', 10, 'img/products/xiaomi-redmi-5-plus-600x600.jpg', 1, 'IPS LCD, 5.99\', Full HD+', 'Android 7.1 (Nougat)', '12 MP', '5 MP', 'Snapdragon 625 8 nhân 64-bit', '4 GB', '64 GB', 'MicroSD, hỗ trợ tối đa 256 GB', '4000 mAh', 0, 0, b'00000000001'),
(21, 10, 'Nokia black future', '', 999999000, '', 10, 'https://cdn.tgdd.vn/Products/Images/42/22701/dien-thoai-di-dong-Nokia-1280-dienmay.com-l.jpg', 2, '4K, Chống nước, Chống trầy', 'iOS + Android song song', 'Bộ tứ camara tàng hình', 'Chuẩn thế giới 50MP', '16 nhân 128 bit', 'Không giới hạn', 'Dùng thoải mái', 'Không cần', 'Không cần sạc', 0, 0, b'00000000001'),
(22, 8, 'Samsung Galaxy A7 (2018)', '', 8990000, '', 10, 'https://cdn.tgdd.vn/Products/Images/42/194327/samsung-galaxy-a7-2018-128gb-black-400x400.jpg', 4, 'Super AMOLED, 6.0\', Full HD+', 'Android 8.0 (Oreo)', '24 MP, 8 MP và 5 MP (3 camera)', '24 MP', 'Exynos 7885 8 nhân 64-bit', '4 GB', '64 GB', 'MicroSD, hỗ trợ tối đa 512 GB', '3300 mAh', 0, 0, b'00000000001'),
(30, 6, 'Vivo V9', '', 7490000, '', 10, 'https://cdn.tgdd.vn/Products/Images/42/155047/vivo-v9-2-1-600x600-600x600.jpg', 2, 'IPS LCD, 6.3\', Full HD+', 'Android 8.1 (Oreo)', '16 MP và 5 MP (2 camera)', '24 MP', 'Snapdragon 626 8 nhân 64-bit', '4 GB', '64 GB', 'MicroSD, hỗ trợ tối đa 256 GB', '3260 mAh', 0, 0, b'00000000001'),
(31, 6, 'Vivo V11', '', 10990000, '', 10, 'https://cdn.tgdd.vn/Products/Images/42/188828/vivo-v11-600x600.jpg', 4, 'Super AMOLED, 6.41\', Full HD+', 'Android 8.1 (Oreo)', '12 MP và 5 MP (2 camera)', '25 MP', 'Qualcomm Snapdragon 660 8 nhân', '6 GB', '128 GB', 'MicroSD, hỗ trợ tối đa 256 GB', '3400 mAh, có sạc nhanh', 0, 0, b'00000000001'),
(32, 6, 'Vivo Y71', '', 3290000, '', 10, 'https://cdn.tgdd.vn/Products/Images/42/158585/vivo-y71-docquyen-600x600.jpg', 4, 'IPS LCD, 6.0\', HD+', 'Android 8.1 (Oreo)', '13 MP', '5 MP', 'Qualcomm Snapdragon 425 4 nhân 64-bit', '3 GB', '16 GB', 'MicroSD, hỗ trợ tối đa 256 GB', '3360 mAh', 0, 0, b'00000000001'),
(33, 6, 'Vivo Y85', '', 4990000, '', 10, 'https://cdn.tgdd.vn/Products/Images/42/156205/vivo-y85-red-docquyen-600x600.jpg', 2, 'IPS LCD, 6.22\', HD+', 'Android 8.1 (Oreo)', '13 MP và 2 MP (2 camera)', '8 MP', 'MediaTek MT6762 8 nhân 64-bit (Helio P22)', '4 GB', '32 GB', 'MicroSD, hỗ trợ tối đa 256 GB', '3260 mAh', 0, 0, b'00000000001'),
(34, 5, 'Mobell M789', '', 550000, '', 10, 'https://cdn.tgdd.vn/Products/Images/42/92016/mobell-m789-8-300x300.jpg', 1, 'TFT, 2.4\', 65.536 màu', 'Không', 'Không', 'Không', 'Không', 'Không', 'Không', 'Không', '1200 mAh', 0, 0, b'00000000001'),
(35, 5, 'Mobell', '', 590000, '', 10, 'https://cdn.tgdd.vn/Products/Images/42/112837/mobell-rock-3-2-300x300.jpg', 1, 'TFT, 2.4\', 65.536 màu', 'Không', 'Không', 'Không', 'Không', 'Không', 'Không', 'Không', '5000 mAh', 0, 0, b'00000000001'),
(36, 5, 'Mobell S60', '', 1790000, '', 10, 'https://cdn.tgdd.vn/Products/Images/42/193271/mobell-s60-red-1-600x600.jpg', 5, 'LCD, 5.5\', FWVGA', 'Android 8.1 (Oreo)', '8 MP và 2 MP (2 camera)', '5 MP', 'MT6580 4 nhân 32-bit', '1 GB', '16 GB', 'MicroSD, hỗ trợ tối đa 32 GB', '2650 mAh', 0, 0, b'00000000001'),
(37, 4, 'Itel P32', '', 1890000, '', 10, 'https://cdn.tgdd.vn/Products/Images/42/186851/itel-p32-gold-600x600.jpg', 1, 'IPS LCD, 5.45\', qHD', 'Android 8.1 (Oreo)', '5 MP và 0.3 MP (2 camera)', '5 MP', 'MT6580 4 nhân 32-bit', '1 GB', '8 GB', 'MicroSD, hỗ trợ tối đa 32 GB', '4000 mAh', 0, 0, b'00000000001'),
(38, 4, 'Itel A32F', '', 1350000, '', 10, 'https://cdn.tgdd.vn/Products/Images/42/193990/itel-a32f-pink-gold-600x600.jpg', 5, 'TFT, 5\', FWVGA', 'Android Go Edition', '5 MP', '2 MP', 'MediaTek MT6580 4 nhân 32-bit', '1 GB', '8 GB', 'MicroSD, hỗ trợ tối đa 32 GB', '2050 mAh', 0, 0, b'00000000001'),
(39, 4, 'Itel it2123', '', 160000, '', 10, 'https://cdn.tgdd.vn/Products/Images/42/146651/itel-it2123-d-300-300x300.jpg', 1, 'TFT, 1.77\', 65.536 màu', 'Không', 'Không', 'Không', 'Không', 'Không', 'Không', 'Không', '1000 mAh', 0, 0, b'00000000001'),
(40, 4, 'Itel it2161', '', 170000, '', 10, 'https://cdn.tgdd.vn/Products/Images/42/193989/itel-it2161-600x600.jpg', 5, 'TFT, 1.77\', WVGA', 'Không', 'Không', 'Không', 'Không', 'Không', 'Không', 'MicroSD, hỗ trợ tối đa 32 GB', '1000 mAh', 0, 0, b'00000000001'),
(41, 2, 'Coolpad N3D', '', 2390000, '', 10, 'https://cdn.tgdd.vn/Products/Images/42/193504/coolpad-n3d-blue-600x600.jpg', 5, 'IPS LCD, 5.45\', HD+', 'Android 8.1 (Oreo)', '8 MP và 0.3 MP (2 camera)', '5 MP', 'Spreadtrum SC9850K 4 nhân', '2 GB', '16 GB', 'MicroSD, hỗ trợ tối đa 32 GB', '2500 mAh', 0, 0, b'00000000001'),
(42, 3, 'HTC U12 life', '', 7690000, '', 10, 'https://cdn.tgdd.vn/Products/Images/42/186397/htc-u12-life-1-600x600.jpg', 5, 'Super LCD, 6\', Full HD+', 'Android 8.1 (Oreo)', '16 MP và 5 MP (2 camera)', '13 MP', 'Qualcomm Snapdragon 636 8 nhân', '4 GB', '64 GB', 'MicroSD, hỗ trợ tối đa 512 GB', '3600 mAh', 0, 0, b'00000000001'),
(43, 2, 'Coolpad N3 mini', '', 1390000, '', 10, 'https://cdn.tgdd.vn/Products/Images/42/193503/coolpad-n3-mini-600x600.jpg', 5, 'IPS LCD, 5\', WVGA', 'Android Go Edition', '5 MP và 0.3 MP (2 camera)', '2 MP', 'MT6580 4 nhân 32-bit', '1 GB', '8 GB', 'MicroSD, hỗ trợ tối đa 32 GB', '2000 mAh', 0, 0, b'00000000001'),
(44, 2, 'Coolpad N3', '', 1890000, '', 10, 'https://cdn.tgdd.vn/Products/Images/42/193502/coolpad-n3-gray-1-600x600.jpg', 5, 'IPS LCD, 5.45\', HD+', 'Android Go Edition', '5 MP và 0.3 MP (2 camera)', '2 MP', 'Spreadtrum SC9850K 4 nhân', '1 GB', '16 GB', 'MicroSD, hỗ trợ tối đa 32 GB', '2300 mAh', 4, 2, b'00000000001'),
(45, 11, 'Motorola Moto C 4G', '', 1290000, '', 10, 'https://cdn.tgdd.vn/Products/Images/42/109099/motorola-moto-c-4g-300-300x300.jpg', 1, 'TFT, 5\', FWVGA', 'Android 7.1 (Nougat)', '5 MP', '2 MP', 'MT6737 4 nhân', '1 GB', '16 GB', 'MicroSD, hỗ trợ tối đa 32 GB', '2350 mAh', 0, 0, b'00000000001'),
(46, 1, 'iPhone Xr 128GB', '', 24990000, '', 10, 'https://cdn.tgdd.vn/Products/Images/42/191483/iphone-xr-128gb-red-600x600.jpg', 3, 'IPS LCD, 6.1\', IPS LCD, 16 triệu màu', 'iOS 12', '12 MP', '7 MP', 'Apple A12 Bionic 6 nhân', '3 GB', '128 GB', 'Không', '2942 mAh, có sạc nhanh', 3, 2, b'00000000001'),
(47, 1, 'iPhone 8 Plus 64GB', '', 20990000, '', 10, 'https://cdn.tgdd.vn/Products/Images/42/114110/iphone-8-plus-hh-600x600.jpg', 4, 'LED-backlit IPS LCD, 5.5\', Retina HD', 'iOS 11', '2 camera 12 MP', '7 MP', 'Apple A11 Bionic 6 nhân', '3 GB', '64 GB', 'Không', '2691 mAh, có sạc nhanh', 0, 0, b'00000000001'),
(48, 1, 'iPhone Xr 64GB', '', 22990000, '', 10, 'https://cdn.tgdd.vn/Products/Images/42/190325/iphone-xr-black-400x460.png', 3, 'IPS LCD, 6.1\', IPS LCD, 16 triệu màu', 'iOS 12', '12 MP', '7 MP', 'Apple A12 Bionic 6 nhân', '3 GB', '64 GB', '', '2942 mAh, có sạc nhanh', 0, 0, b'00000000001'),
(49, 1, 'iPhone 8 Plus 256GB', '', 25790000, '', 10, 'https://cdn.tgdd.vn/Products/Images/42/114114/iphone-8-plus-256gb-red-600x600.jpg', 2, 'LED-backlit IPS LCD, 4.7\', Retina HD', 'iOS 11', '12 MP', '7 MP', 'Apple A11 Bionic 6 nhân', '2 GB', '256 GB', 'Không', '1821 mAh, có sạc nhanh', 0, 0, b'00000000001'),
(51, 1, 'Iphone xr', '', 9000000, '', 33, 'https://cdn.tgdd.vn/Products/Images/42/114114/iphone-8-plus-256gb-red-600x600.jpg', 3, 'fg', 'd', 'd', 'd', 'đ', 'đ', 'đghf', 'hh', 'hhh', 0, 0, b'00000000001'),
(52, 1, 'demo them sp', '', 8900000, '', 23, 'https://cdn2.cellphones.com.vn/x358,webp,q100/media/catalog/product/p/h/photo_2022-09-28_21-58-51_2.jpg', 3, '3in', 'IOS', '12mp', '10mp', '12', '5', '234', '5', '2000', 0, 0, b'00000000001');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` int(11) NOT NULL,
  `MaND` int(11) NOT NULL,
  `NgayLap` datetime NOT NULL,
  `NguoiNhan` varchar(50) NOT NULL,
  `SDT` varchar(20) NOT NULL,
  `DiaChi` varchar(100) NOT NULL,
  `PhuongThucTT` varchar(20) NOT NULL,
  `TongTien` float NOT NULL,
  `manv` varchar(50) NOT NULL,
  `TrangThai` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `MaND`, `NgayLap`, `NguoiNhan`, `SDT`, `DiaChi`, `PhuongThucTT`, `TongTien`, `manv`, `TrangThai`) VALUES
(181, 16, '2023-11-19 10:58:42', 'trinhdepzai', '9328490120', '213123123', 'Trực tiếp khi nhận h', 11490000, '', '1'),
(182, 16, '2023-11-19 10:58:58', 'trinhdepzai', '9328490120', '213123123', 'Qua thẻ ngân hàng', 11490000, '', '1'),
(183, 16, '2023-11-19 10:59:00', 'trinhdepzai', '9328490120', '213123123', 'Qua thẻ ngân hàng', 11490000, '', '1'),
(184, 16, '2023-11-19 10:59:51', 'trinhdepzai', '9328490120', '213123123', 'Qua thẻ ngân hàng', 4690000, '', '1'),
(185, 16, '2023-11-19 11:00:11', 'trinhdepzai', '9328490120', '213123123', 'Trực tiếp khi nhận h', 2850000, '', '1'),
(186, 16, '2023-11-19 11:07:23', 'trinhdepzai', '9328490120', '213123123', 'Qua thẻ ngân hàng', 2850000, '', '1'),
(187, 16, '2023-11-19 11:11:56', 'trinhdepzai', '9328490120', '213123123', 'Trực tiếp khi nhận h', 260000, '', '1'),
(188, 16, '2023-11-19 11:50:56', 'trinhdepzai', '9328490120', '213123123', 'Trực tiếp khi nhận h', 1890000, '', '1'),
(190, 16, '2023-11-19 21:53:27', 'trinhdepzai', '9328490120', '213123123', 'Trực tiếp khi nhận h', 33330000, '', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach`
--

CREATE TABLE `khach` (
  `makhach` int(11) NOT NULL,
  `tenkhach` varchar(100) DEFAULT NULL,
  `diachi` varchar(255) DEFAULT NULL,
  `dienthoai` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `MaKM` int(11) NOT NULL,
  `TenKM` varchar(100) NOT NULL,
  `LoaiKM` varchar(20) NOT NULL,
  `GiaTriKM` float NOT NULL,
  `NgayBD` datetime NOT NULL,
  `NgayKT` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`MaKM`, `TenKM`, `LoaiKM`, `GiaTriKM`, `NgayBD`, `NgayKT`) VALUES
(1, 'Không khuyến mãi', 'Nothing', 0, '2019-04-08 00:00:00', '2022-04-17 00:00:00'),
(2, 'Giảm giá', 'GiamGia', 500000, '2019-05-01 00:00:00', '2019-05-31 00:00:00'),
(3, 'Giá rẻ online', 'GiaReOnline', 650000, '2019-05-01 00:00:00', '2019-05-31 00:00:00'),
(4, 'Trả góp', 'TraGop', 0, '2019-05-01 00:00:00', '2019-05-31 00:00:00'),
(5, 'Mới ra mắt', 'MoiRaMat', 0, '2019-05-01 00:00:00', '2019-05-31 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaihang`
--

CREATE TABLE `loaihang` (
  `MaLSP` int(11) NOT NULL,
  `tenloaihang` varchar(70) NOT NULL,
  `nhasx` int(50) NOT NULL,
  `HinhAnh` varchar(200) NOT NULL,
  `Mota` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaihang`
--

INSERT INTO `loaihang` (`MaLSP`, `tenloaihang`, `nhasx`, `HinhAnh`, `Mota`) VALUES
(1, 'Iphone', 0, 'Apple.jpg', 'Các sản phẩm của Apple'),
(2, 'Coolpad', 0, 'Coolpad.png', 'Các sản phẩm của coolpad'),
(3, 'HTC', 0, 'HTC.jpg', 'Các sản phẩm đến từ HTC'),
(4, 'Itel', 0, 'Itel.jpg', 'Các sản phẩm của Itel'),
(5, 'Mobell', 0, 'Mobell.jpg', 'Các sản phẩm của mobell'),
(6, 'Vivo', 0, 'Vivo.jpg', 'Các sản phẩm của Vivo'),
(7, 'Oppo', 0, 'Oppo.jpg', 'Camara Selphi cuc chat tu Oppo'),
(8, 'SamSung', 0, 'Samsung.jpg', 'Khuyen mai lon tu SamSung'),
(9, 'Phillips', 0, 'Philips.jpg', 'Cac san pham tuyet dep tu Phillip'),
(10, 'Nokia', 0, 'Nokia.jpg', 'Các sản phẩm đến từ thương hiệu Nokia'),
(11, 'Motorola', 0, 'Motorola.jpg', 'Motorola is the best'),
(12, 'Mobiistar', 0, 'Mobiistar.jpg', 'Các sản phẩm đến từ thương hiệu Mobiistar'),
(14, 'Xiaomi', 0, 'Xiaomi.png', 'Các sản phẩm đến từ thương hiệu Xiaomi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `Id` int(11) NOT NULL,
  `HoVaTen` varchar(20) NOT NULL,
  `GioiTinh` bit(1) NOT NULL,
  `Sdt` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `DiaChi` varchar(200) NOT NULL,
  `MatKhau` varchar(100) NOT NULL,
  `MaQuyen` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`Id`, `HoVaTen`, `GioiTinh`, `Sdt`, `Email`, `DiaChi`, `MatKhau`, `MaQuyen`) VALUES
(2, 'Phước', b'0', '0237429833', 'dkkk@gmail.com', 'nha ở phố', 'e10adc3949ba59abbe56e057f20f883e', 'ADMIN'),
(6, 'lkfslkdjflk', b'0', '23482983128', 'sdflk@gmail.com', 'sdjfklsdflkjlk', 'e10adc3949ba59abbe56e057f20f883e', 'USER'),
(7, 'lkfslkdjflk', b'0', '23482983128', 'sdfl2k@gmail.com', 'sdjfklsdflkjlk', 'e10adc3949ba59abbe56e057f20f883e', 'USER'),
(8, 'lkfslkdjflk', b'0', '23482983128', 's1dfl2k@gmail.com', 'sdjfklsdflkjlk', 'e10adc3949ba59abbe56e057f20f883e', 'USER'),
(9, 'lkfslkdjflk', b'0', '23482983128', 's132dfl2k@gmail.com', 'sdjfklsdflkjlk', 'e10adc3949ba59abbe56e057f20f883e', 'USER'),
(10, 'lkjfslkdl', b'0', '3409238009', 'sdkfj@gmail.com', 'jsđlkjflkdsjl', '7b0391feb2e0cd271f1cf39aafb4376f', 'USER'),
(11, 'Trình', b'0', '4234782372', 'trinhlek4@gmail.com', 'tsdkjfsdk', '7b0391feb2e0cd271f1cf39aafb4376f', 'USER'),
(12, 'Trình', b'0', '0379967723', 'trdsf@gmail.com', ' ', '202cb962ac59075b964b07152d234b70', 'USER'),
(13, 'Trình', b'0', '23123123123', '31231@gmail.com', '231231233', '7b0391feb2e0cd271f1cf39aafb4376f', 'USER'),
(14, 'sjlw', b'0', '01231203932', 'fsdjljf@gmail.com', 'ídjflsfdlsdjf', '7b0391feb2e0cd271f1cf39aafb4376f', 'USER'),
(15, '3123', b'0', '1231231232', 'sdflk@gmail.com', '037996772313', 'e10adc3949ba59abbe56e057f20f883e', 'USER'),
(16, 'trinhdepzai', b'0', '9328490120', 'trinhdepzai@gmail.com', '213123123', 'e10adc3949ba59abbe56e057f20f883e', 'USER'),
(17, '3312', b'0', '3213332132', 'trinhlek4@gmail.com', 'trinhlek4@gmail.com', '202cb962ac59075b964b07152d234b70', 'USER');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `manv` int(11) NOT NULL,
  `tennv` varchar(100) DEFAULT NULL,
  `dienthoai` varchar(15) DEFAULT NULL,
  `diachi` varchar(255) DEFAULT NULL,
  `passport` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `matintuc` int(11) NOT NULL,
  `noidung` text DEFAULT NULL,
  `ngayduatin` date DEFAULT NULL,
  `anh` varchar(255) DEFAULT NULL,
  `tieude` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitiethangban`
--
ALTER TABLE `chitiethangban`
  ADD KEY `MaHD` (`MaHD`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `MaKH` (`MaND`);

--
-- Chỉ mục cho bảng `khach`
--
ALTER TABLE `khach`
  ADD PRIMARY KEY (`makhach`);

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`MaKM`);

--
-- Chỉ mục cho bảng `loaihang`
--
ALTER TABLE `loaihang`
  ADD PRIMARY KEY (`MaLSP`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`manv`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`matintuc`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `MaKM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `loaihang`
--
ALTER TABLE `loaihang`
  MODIFY `MaLSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
