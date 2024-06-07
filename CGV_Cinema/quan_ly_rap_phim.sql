-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 02, 2024 lúc 06:13 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quan_ly_rap_phim`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ghe`
--

CREATE TABLE `ghe` (
  `ma_ghe` int(11) NOT NULL,
  `ten_ghe` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ghe`
--

INSERT INTO `ghe` (`ma_ghe`, `ten_ghe`) VALUES
(1, 'Ghế 1'),
(2, 'Ghế 2'),
(3, 'Ghế 3'),
(4, 'Ghế 4'),
(5, 'Ghế 5'),
(6, 'Ghế 6'),
(7, 'Ghế 7'),
(8, 'Ghế 8'),
(9, 'Ghế 9'),
(10, 'Ghế 10'),
(11, 'Ghế 11'),
(12, 'Ghế 12'),
(13, 'Ghế 13'),
(14, 'Ghế 14'),
(15, 'Ghế 15'),
(16, 'Ghế 16'),
(17, 'Ghế 17'),
(18, 'Ghế 18'),
(19, 'Ghế 19'),
(20, 'Ghế 20'),
(21, 'Ghế 21'),
(22, 'Ghế 22'),
(23, 'Ghế 23'),
(24, 'Ghế 24'),
(25, 'Ghế 25'),
(26, 'Ghế 26'),
(27, 'Ghế 27'),
(28, 'Ghế 28'),
(29, 'Ghế 29'),
(30, 'Ghế 30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa_don`
--

CREATE TABLE `hoa_don` (
  `ma_hoa_don` int(11) NOT NULL,
  `ma_ve` int(11) NOT NULL,
  `tong_tien` decimal(10,2) NOT NULL,
  `ngay_tao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hoa_don`
--

INSERT INTO `hoa_don` (`ma_hoa_don`, `ma_ve`, `tong_tien`, `ngay_tao`) VALUES
(1, 1, 90000.00, '2024-05-01 10:30:00'),
(2, 2, 90000.00, '2024-05-01 13:30:00'),
(21, 1, 110000.00, '2024-05-01 10:30:00'),
(22, 2, 90000.00, '2024-05-01 13:30:00'),
(23, 3, 110000.00, '2024-05-02 10:00:00'),
(24, 4, 110000.00, '2024-05-02 14:00:00'),
(25, 5, 120000.00, '2024-05-03 09:30:00'),
(26, 6, 120000.00, '2024-05-03 12:00:00'),
(27, 7, 140000.00, '2024-05-04 11:00:00'),
(28, 22, 110000.00, '2024-05-05 15:00:00'),
(29, 23, 90000.00, '2024-05-05 17:00:00'),
(30, 24, 90000.00, '2024-05-06 10:00:00'),
(31, 29, 110000.00, '2024-05-06 16:00:00'),
(32, 30, 90000.00, '2024-06-01 23:24:30'),
(33, 31, 120000.00, '2024-06-01 23:25:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_do_kem_them`
--

CREATE TABLE `loai_do_kem_them` (
  `ma_loai_do_kem_them` int(11) NOT NULL,
  `ten_loai` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `loai_do_kem_them`
--

INSERT INTO `loai_do_kem_them` (`ma_loai_do_kem_them`, `ten_loai`) VALUES
(1, 'Nước Ngọt'),
(2, 'Bỏng Ngô'),
(3, 'Combo Đồ Ăn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mon_kem`
--

CREATE TABLE `mon_kem` (
  `ma_mon_kem` int(11) NOT NULL,
  `ten_mon_kem` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ma_loai_do_kem_them` int(11) NOT NULL,
  `gia_ban` decimal(10,2) NOT NULL,
  `mo_ta` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `hinh_anh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `mon_kem`
--

INSERT INTO `mon_kem` (`ma_mon_kem`, `ten_mon_kem`, `ma_loai_do_kem_them`, `gia_ban`, `mo_ta`, `hinh_anh`) VALUES
(1, 'Coca Cola', 1, 20000.00, 'Lon Coca Cola 330ml', 'food_and_drink/coca_cola.jpg'),
(2, 'Pepsi', 1, 20000.00, 'Lon Pepsi 330ml', 'food_and_drink/pepsi.jpg'),
(3, 'Bỏng Ngô Vị Phô Mai', 2, 30000.00, 'Túi bỏng ngô vị phô mai 100g', 'food_and_drink/popcorn_cheese.jpg'),
(4, 'Bỏng Ngô Vị Bơ', 2, 30000.00, 'Túi bỏng ngô vị bơ 100g', 'food_and_drink/popcorn_butter.jpg'),
(5, 'Combo 1', 3, 50000.00, 'Combo 1 lon nước ngọt và 1 túi bỏng ngô vị bơ', 'food_and_drink/combo1.jpg'),
(6, 'Combo 2', 3, 70000.00, 'Combo 2 lon nước ngọt và 1 túi bỏng ngô vị phô mai', 'food_and_drink/combo2.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoi_dung`
--

CREATE TABLE `nguoi_dung` (
  `ma_nguoi_dung` int(11) NOT NULL,
  `ten_dang_nhap` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mat_khau` varchar(255) NOT NULL,
  `ho_ten` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dia_chi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `so_dien_thoai` varchar(12) DEFAULT NULL,
  `ngay_sinh` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ma_vai_tro` int(11) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoi_dung`
--

INSERT INTO `nguoi_dung` (`ma_nguoi_dung`, `ten_dang_nhap`, `mat_khau`, `ho_ten`, `dia_chi`, `so_dien_thoai`, `ngay_sinh`, `email`, `ma_vai_tro`, `enabled`) VALUES
(1, 'admin', '123456', 'admin', NULL, NULL, NULL, 'pthehung62@gmail.com', 1, 1),
(2, 'nhanvien1', 'password1', 'Nguyễn Văn A', '123 Đường B, TP.HCM', '0123456789', '1985-10-01', 'nva@gmail.com', 2, 1),
(3, 'nhanvien2', 'password2', 'Trần Thị B', '456 Đường C, Hà Nội', '0987654321', '1990-12-15', 'ttb@gmail.com', 2, 1),
(4, 'khachhang1', 'kh123456', 'Lê Thị C', '789 Đường D, Đà Nẵng', '0212345678', '1995-02-23', 'ltc@gmail.com', 3, 1),
(5, 'khachhang2', 'kh234567', 'Phạm Văn D', '321 Đường E, Cần Thơ', '0312345678', '1988-08-08', 'pvd@gmail.com', 3, 1),
(6, 'khachhang3', 'kh345678', 'Ngô Thanh E', '654 Đường F, Nha Trang', '0412345678', '1992-05-15', 'nte@gmail.com', 3, 1),
(7, 'khachhang4', 'kh456789', 'Đỗ Minh G', '987 Đường G, Huế', '0512345678', '1999-11-30', 'dmg@gmail.com', 3, 1),
(8, 'khachhang5', 'kh567890', 'Trịnh Hồng H', '246 Đường H, Quảng Ninh', '0612345678', '1993-07-21', 'thh@gmail.com', 3, 1),
(9, 'khachhang6', 'kh678901', 'Vũ Thị I', '135 Đường I, Bình Dương', '0712345678', '1990-01-16', 'vti@gmail.com', 3, 1),
(10, 'khachhang7', 'kh789012', 'Mai Quốc K', '864 Đường J, Quảng Bình', '0812345678', '1987-12-25', 'mqk@gmail.com', 3, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phim`
--

CREATE TABLE `phim` (
  `ma_phim` int(11) NOT NULL,
  `ten_phim` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `anh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dao_dien` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dien_vien` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thoi_luong` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `khoi_chieu` varchar(100) NOT NULL,
  `mo_ta` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phim`
--

INSERT INTO `phim` (`ma_phim`, `ten_phim`, `anh`, `dao_dien`, `dien_vien`, `thoi_luong`, `khoi_chieu`, `mo_ta`) VALUES
(1, 'Chuyến Tàu Sinh Tử', '/upload/train_to_busan.jpg', 'Yeon Sang-ho', 'Gong Yoo, Ma Dong-seok', '118 phút', '2016-07-20', 'Một virus bùng phát, một chuyến tàu đến Busan trở thành nơi sinh tồn duy nhất.'),
(2, 'Vệ Binh Dải Ngân Hà', '/upload/guardians_of_the_galaxy.jpg', 'James Gunn', 'Chris Pratt, Zoe Saldana', '121 phút', '2014-08-01', 'Nhóm vệ binh quậy phá trong không gian với nhiệm vụ bảo vệ dải ngân hà.'),
(3, 'Ngoại Già Tuổi Đôi Mươi', '/upload/miss_granny.jpg', 'Hwang Dong-hyuk', 'Na Moon-hee, Shim Eun-kyung', '124 phút', '2014-01-22', 'Một bà lão 70 tuổi trở lại tuổi 20 của chính mình.'),
(4, 'Jurassic World', '/upload/jurassic_world.jpg', 'Colin Trevorrow', 'Chris Pratt, Bryce Dallas Howard', '124 phút', '2015-06-12', 'Đảo khủng long với loạt sinh vật đã tuyệt chủng được hồi sinh.'),
(5, 'Interstellar', '/upload/interstellar.jpg', 'Christopher Nolan', 'Matthew McConaughey, Anne Hathaway', '169 phút', '2014-11-07', 'Cuộc hành trình xuyên không gian để tìm kiếm hành tinh mới cho loài người.'),
(6, 'Inception', '/upload/inception.jpg', 'Christopher Nolan', 'Leonardo DiCaprio, Joseph Gordon-Levitt', '148 phút', '2010-07-16', 'Một kẻ lừa đảo được thuê để thâm nhập vào giấc mơ của một doanh nhân.'),
(7, 'The Matrix', '/upload/the_matrix.jpg', 'Lana Wachowski, Lilly Wachowski', 'Keanu Reeves, Laurence Fishburne', '136 phút', '1999-03-31', 'Một trình lập trình viên được khai sáng về thực tế ảo của nhân loại.'),
(8, 'Avatar', '/upload/avatar.jpg', 'James Cameron', 'Sam Worthington, Zoe Saldana', '162 phút', '2009-12-18', 'Một cựu chiến binh được gửi đến Pandora, nơi anh ta trở nên xung đột giữa hai thế giới.'),
(9, 'Titanic', '/upload/titanic.jpg', 'James Cameron', 'Leonardo DiCaprio, Kate Winslet', '195 phút', '1997-12-19', 'Câu chuyện bi thảm của con tàu Titanic qua mối tình của Jack và Rose.'),
(10, 'Gladiator', '/upload/gladiator.jpg', 'Ridley Scott', 'Russell Crowe, Joaquin Phoenix', '155 phút', '2000-05-05', 'Một chiến binh La Mã trả thù cái chết của gia đình mình.'),
(11, 'Mad Max: Fury Road', '/upload/mad_max_fury_road.jpg', 'George Miller', 'Tom Hardy, Charlize Theron', '120 phút', '2015-05-15', 'Cuộc rượt đuổi hoang dã trong một thế giới hậu tận thế.'),
(12, 'Pulp Fiction', '/upload/pulp_fiction.jpg', 'Quentin Tarantino', 'John Travolta, Uma Thurman', '154 phút', '1994-10-14', 'Các câu chuyện giao nhau của tội phạm ở Los Angeles.'),
(13, 'Fight Club', '/upload/fight_club.jpg', 'David Fincher', 'Brad Pitt, Edward Norton', '139 phút', '1999-10-15', 'Một nhân viên văn phòng chán nản tạo ra một câu lạc bộ chiến đấu ngầm.'),
(14, 'The Godfather', '/upload/the_godfather.jpg', 'Francis Ford Coppola', 'Marlon Brando, Al Pacino', '175 phút', '1972-03-24', 'Ép buộc gia nhập gia đình Mafia, Michael Corleone dần dịch chuyển từ bên lề đến nắm quyền lực.'),
(15, 'The Dark Knight', '/upload/the_dark_knight.jpg', 'Christopher Nolan', 'Christian Bale, Heath Ledger', '152 phút', '2008-07-18', 'Batman đối đầu với tên Joker tàn bạo để bảo vệ thành phố Gotham.'),
(16, 'Forrest Gump', '/upload/forrest_gump.jpg', 'Robert Zemeckis', 'Tom Hanks, Robin Wright', '142 phút', '1994-07-06', 'Câu chuyện về một người đàn ông với chỉ số IQ thấp nhưng đã trải qua nhiều sự kiện lịch sử Mỹ.'),
(17, 'The Lord of the Rings: The Fellowship of the Ring', '/upload/lotr_fellowship.jpg', 'Peter Jackson', 'Elijah Wood, Ian McKellen', '178 phút', '2001-12-19', 'Cuộc hành trình của Frodo và chiếc nhẫn quyền năng.'),
(18, 'Star Wars: The Force Awakens', '/upload/star_wars_force_awakens.jpg', 'J.J. Abrams', 'Daisy Ridley, John Boyega', '138 phút', '2015-12-18', 'Sức mạnh mới thức tỉnh và cuộc chiến chống lại kẻ thù cũ.'),
(19, 'La La Land', '/upload/la_la_land.jpg', 'Damien Chazelle', 'Ryan Gosling, Emma Stone', '128 phút', '2016-12-09', 'Câu chuyện tình yêu giữa một nhạc sĩ jazz và một diễn viên trẻ.'),
(20, 'Django Unchained', '/upload/django_unchained.jpg', 'Quentin Tarantino', 'Jamie Foxx, Christoph Waltz', '165 phút', '2012-12-25', 'Một nô lệ được giải phóng trên con đường trả thù chủ cũ của mình.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phim_the_loai`
--

CREATE TABLE `phim_the_loai` (
  `ma_phim` int(11) NOT NULL,
  `ma_the_loai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phim_the_loai`
--

INSERT INTO `phim_the_loai` (`ma_phim`, `ma_the_loai`) VALUES
(1, 1),
(1, 2),
(2, 4),
(2, 6),
(3, 3),
(4, 6),
(5, 6),
(6, 1),
(6, 5),
(7, 6),
(8, 1),
(8, 6),
(9, 3),
(10, 1),
(11, 1),
(12, 4),
(12, 7),
(13, 1),
(14, 5),
(14, 7),
(15, 1),
(15, 6),
(16, 3),
(17, 5),
(17, 6),
(18, 6),
(19, 3),
(19, 7),
(20, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong_chieu`
--

CREATE TABLE `phong_chieu` (
  `ma_phong` int(11) NOT NULL,
  `ten_phong` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `suc_chua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phong_chieu`
--

INSERT INTO `phong_chieu` (`ma_phong`, `ten_phong`, `suc_chua`) VALUES
(1, 'Phòng Chiếu 1', 100),
(2, 'Phòng Chiếu 2', 100),
(3, 'Phòng Chiếu 3', 100),
(4, 'Phòng Chiếu 4', 100);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `suat_chieu`
--

CREATE TABLE `suat_chieu` (
  `ma_suat_chieu` int(11) NOT NULL,
  `ma_phim` int(11) NOT NULL,
  `ma_phong` int(11) NOT NULL,
  `thoi_gian_chieu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `suat_chieu`
--

INSERT INTO `suat_chieu` (`ma_suat_chieu`, `ma_phim`, `ma_phong`, `thoi_gian_chieu`) VALUES
(1, 1, 1, '2024-05-01 09:00:00'),
(2, 2, 1, '2024-05-01 12:00:00'),
(3, 3, 1, '2024-05-01 15:00:00'),
(4, 4, 1, '2024-05-01 18:00:00'),
(5, 5, 2, '2024-05-02 09:30:00'),
(6, 6, 2, '2024-05-02 12:30:00'),
(7, 7, 2, '2024-05-02 15:30:00'),
(8, 8, 2, '2024-05-02 18:30:00'),
(9, 9, 3, '2024-05-03 09:45:00'),
(10, 10, 3, '2024-05-03 12:45:00'),
(11, 11, 3, '2024-05-03 15:45:00'),
(12, 12, 3, '2024-05-03 18:45:00'),
(13, 13, 4, '2024-05-04 10:00:00'),
(14, 14, 4, '2024-05-04 13:00:00'),
(15, 15, 4, '2024-05-04 16:00:00'),
(16, 16, 4, '2024-05-04 19:00:00'),
(17, 17, 1, '2024-06-01 09:00:00'),
(18, 18, 1, '2024-06-01 12:00:00'),
(19, 19, 1, '2024-06-01 15:00:00'),
(20, 20, 1, '2024-06-01 18:00:00'),
(21, 17, 2, '2024-06-02 09:30:00'),
(22, 18, 2, '2024-06-02 12:30:00'),
(23, 19, 2, '2024-06-02 15:30:00'),
(24, 20, 2, '2024-06-02 18:30:00'),
(25, 17, 3, '2024-06-03 09:45:00'),
(26, 18, 3, '2024-06-03 12:45:00'),
(27, 19, 3, '2024-06-03 15:45:00'),
(28, 20, 3, '2024-06-03 18:45:00'),
(29, 17, 4, '2024-06-04 10:00:00'),
(30, 18, 4, '2024-06-04 13:00:00'),
(31, 19, 4, '2024-06-04 16:00:00'),
(32, 20, 4, '2024-06-04 19:00:00'),
(33, 1, 1, '2024-05-01 13:00:00'),
(36, 1, 3, '2024-05-02 09:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `the_loai`
--

CREATE TABLE `the_loai` (
  `ma_the_loai` int(11) NOT NULL,
  `ten_the_loai` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `the_loai`
--

INSERT INTO `the_loai` (`ma_the_loai`, `ten_the_loai`) VALUES
(1, 'Hành động'),
(2, 'Kinh dị'),
(3, 'Tình cảm'),
(4, 'Hài hước'),
(5, 'Phiêu lưu'),
(6, 'Khoa học viễn tưởng'),
(7, 'Tài liệu'),
(8, 'Hoạt hình');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vai_tro`
--

CREATE TABLE `vai_tro` (
  `ma_vai_tro` int(11) NOT NULL,
  `ten_vai_tro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `vai_tro`
--

INSERT INTO `vai_tro` (`ma_vai_tro`, `ten_vai_tro`) VALUES
(1, 'Admin'),
(2, 'Nhân Viên'),
(3, 'Khách Hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ve`
--

CREATE TABLE `ve` (
  `ma_ve` int(11) NOT NULL,
  `ma_suat_chieu` int(11) NOT NULL,
  `ma_ghe` int(11) NOT NULL,
  `ma_nguoi_dung` int(11) NOT NULL,
  `ma_mon_kem` int(11) DEFAULT NULL,
  `gia_ve` decimal(10,2) NOT NULL,
  `random_string` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ve`
--

INSERT INTO `ve` (`ma_ve`, `ma_suat_chieu`, `ma_ghe`, `ma_nguoi_dung`, `ma_mon_kem`, `gia_ve`, `random_string`) VALUES
(1, 1, 1, 4, NULL, 90000.00, '9x6mVaGo'),
(2, 1, 2, 5, NULL, 90000.00, 'xFxgGHp6'),
(3, 2, 3, 6, 1, 90000.00, 'dLohpjYP'),
(4, 2, 4, 7, 2, 90000.00, 'NCsllX5I'),
(5, 3, 5, 8, 3, 90000.00, 'PEogdjy7'),
(6, 3, 6, 9, 4, 90000.00, '6EFS6xj'),
(7, 4, 7, 10, 5, 90000.00, 'taHam57F'),
(22, 5, 1, 4, NULL, 90000.00, 'szcWLAFF'),
(23, 5, 1, 4, NULL, 90000.00, 'Lc4pS6K'),
(24, 32, 1, 4, NULL, 90000.00, 'CANNbSAU'),
(29, 1, 7, 10, 1, 90000.00, 'vrRFnWG5'),
(30, 2, 1, 5, NULL, 90000.00, 'QRV8HQS'),
(31, 3, 1, 5, 3, 90000.00, 'P4dMGOZF');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `ghe`
--
ALTER TABLE `ghe`
  ADD PRIMARY KEY (`ma_ghe`);

--
-- Chỉ mục cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD PRIMARY KEY (`ma_hoa_don`),
  ADD KEY `ma_ve` (`ma_ve`);

--
-- Chỉ mục cho bảng `loai_do_kem_them`
--
ALTER TABLE `loai_do_kem_them`
  ADD PRIMARY KEY (`ma_loai_do_kem_them`);

--
-- Chỉ mục cho bảng `mon_kem`
--
ALTER TABLE `mon_kem`
  ADD PRIMARY KEY (`ma_mon_kem`),
  ADD KEY `ma_loai_do_kem_them` (`ma_loai_do_kem_them`);

--
-- Chỉ mục cho bảng `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  ADD PRIMARY KEY (`ma_nguoi_dung`),
  ADD KEY `ma_vai_tro` (`ma_vai_tro`);

--
-- Chỉ mục cho bảng `phim`
--
ALTER TABLE `phim`
  ADD PRIMARY KEY (`ma_phim`);

--
-- Chỉ mục cho bảng `phim_the_loai`
--
ALTER TABLE `phim_the_loai`
  ADD PRIMARY KEY (`ma_phim`,`ma_the_loai`),
  ADD KEY `ma_the_loai` (`ma_the_loai`);

--
-- Chỉ mục cho bảng `phong_chieu`
--
ALTER TABLE `phong_chieu`
  ADD PRIMARY KEY (`ma_phong`);

--
-- Chỉ mục cho bảng `suat_chieu`
--
ALTER TABLE `suat_chieu`
  ADD PRIMARY KEY (`ma_suat_chieu`),
  ADD KEY `ma_phim` (`ma_phim`),
  ADD KEY `ma_phong` (`ma_phong`);

--
-- Chỉ mục cho bảng `the_loai`
--
ALTER TABLE `the_loai`
  ADD PRIMARY KEY (`ma_the_loai`);

--
-- Chỉ mục cho bảng `vai_tro`
--
ALTER TABLE `vai_tro`
  ADD PRIMARY KEY (`ma_vai_tro`);

--
-- Chỉ mục cho bảng `ve`
--
ALTER TABLE `ve`
  ADD PRIMARY KEY (`ma_ve`),
  ADD KEY `ma_suat_chieu` (`ma_suat_chieu`),
  ADD KEY `ma_ghe` (`ma_ghe`),
  ADD KEY `ma_nguoi_dung` (`ma_nguoi_dung`),
  ADD KEY `ma_mon_kem` (`ma_mon_kem`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `ghe`
--
ALTER TABLE `ghe`
  MODIFY `ma_ghe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  MODIFY `ma_hoa_don` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `loai_do_kem_them`
--
ALTER TABLE `loai_do_kem_them`
  MODIFY `ma_loai_do_kem_them` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `mon_kem`
--
ALTER TABLE `mon_kem`
  MODIFY `ma_mon_kem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  MODIFY `ma_nguoi_dung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `phim`
--
ALTER TABLE `phim`
  MODIFY `ma_phim` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `phong_chieu`
--
ALTER TABLE `phong_chieu`
  MODIFY `ma_phong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `suat_chieu`
--
ALTER TABLE `suat_chieu`
  MODIFY `ma_suat_chieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `the_loai`
--
ALTER TABLE `the_loai`
  MODIFY `ma_the_loai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `vai_tro`
--
ALTER TABLE `vai_tro`
  MODIFY `ma_vai_tro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `ve`
--
ALTER TABLE `ve`
  MODIFY `ma_ve` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD CONSTRAINT `hoa_don_ibfk_1` FOREIGN KEY (`ma_ve`) REFERENCES `ve` (`ma_ve`);

--
-- Các ràng buộc cho bảng `mon_kem`
--
ALTER TABLE `mon_kem`
  ADD CONSTRAINT `mon_kem_ibfk_1` FOREIGN KEY (`ma_loai_do_kem_them`) REFERENCES `loai_do_kem_them` (`ma_loai_do_kem_them`);

--
-- Các ràng buộc cho bảng `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  ADD CONSTRAINT `nguoi_dung_ibfk_1` FOREIGN KEY (`ma_vai_tro`) REFERENCES `vai_tro` (`ma_vai_tro`);

--
-- Các ràng buộc cho bảng `phim_the_loai`
--
ALTER TABLE `phim_the_loai`
  ADD CONSTRAINT `phim_the_loai_ibfk_1` FOREIGN KEY (`ma_phim`) REFERENCES `phim` (`ma_phim`),
  ADD CONSTRAINT `phim_the_loai_ibfk_2` FOREIGN KEY (`ma_the_loai`) REFERENCES `the_loai` (`ma_the_loai`);

--
-- Các ràng buộc cho bảng `suat_chieu`
--
ALTER TABLE `suat_chieu`
  ADD CONSTRAINT `suat_chieu_ibfk_1` FOREIGN KEY (`ma_phim`) REFERENCES `phim` (`ma_phim`),
  ADD CONSTRAINT `suat_chieu_ibfk_2` FOREIGN KEY (`ma_phong`) REFERENCES `phong_chieu` (`ma_phong`);

--
-- Các ràng buộc cho bảng `ve`
--
ALTER TABLE `ve`
  ADD CONSTRAINT `ve_ibfk_1` FOREIGN KEY (`ma_suat_chieu`) REFERENCES `suat_chieu` (`ma_suat_chieu`),
  ADD CONSTRAINT `ve_ibfk_2` FOREIGN KEY (`ma_ghe`) REFERENCES `ghe` (`ma_ghe`),
  ADD CONSTRAINT `ve_ibfk_3` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`),
  ADD CONSTRAINT `ve_ibfk_4` FOREIGN KEY (`ma_mon_kem`) REFERENCES `mon_kem` (`ma_mon_kem`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
