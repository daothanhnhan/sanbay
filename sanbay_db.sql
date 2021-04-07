-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th4 07, 2021 lúc 03:51 AM
-- Phiên bản máy phục vụ: 5.5.63-MariaDB
-- Phiên bản PHP: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sanbay_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_password` text COLLATE utf8_unicode_ci,
  `admin_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_note` text COLLATE utf8_unicode_ci,
  `admin_state` int(11) DEFAULT '1',
  `admin_role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_login`, `admin_password`, `admin_phone`, `admin_email`, `admin_note`, `admin_state`, `admin_role`) VALUES
(1, 'Admin', 'admin', '$2y$10$ydQyv1OeKxP9WjXWY.qovuCxOUNtYVd0omoWBfcHopPMPN7Rn416u', '', '', '1', 1, 1),
(2, 'hpt', 'hpt', '$2y$10$x9RWBVgCWSb9fkQGoh7ESOhYV1SnY5Fn5uwKUS9WfdUV1O4wvIe4a', '0973457689', 'ngobkanh@gmail.com', 'đây là tài khoản test', 1, 2),
(3, 'Trương Quang Tuấn', 'tuan', '$2y$10$5xn9Ri83pYZIOwglCNPE1O77nvaCUPJJFUifoHtxyWgqM1EU34Yku', '', '', '', 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_role`
--

CREATE TABLE `admin_role` (
  `admin_role_id` int(11) NOT NULL,
  `admin_role_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_role`
--

INSERT INTO `admin_role` (`admin_role_id`, `admin_role_name`) VALUES
(1, 'Admin'),
(2, 'Mod');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bang_gia_1`
--

CREATE TABLE `bang_gia_1` (
  `id` int(11) NOT NULL,
  `khoahoc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chinhanh` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hocvien` int(11) NOT NULL,
  `namsinh` year(4) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bang_gia_1`
--

INSERT INTO `bang_gia_1` (`id`, `khoahoc`, `chinhanh`, `hocvien`, `namsinh`, `email`, `phone`, `name`, `notes`) VALUES
(43, 'Smart Reading Skills', 'AMERICAN SKILLS LONG BIÊN-HÀ NỘI', 0, 1995, 'viethung95cute@gmail.com', '1672523165', 'Nguyễn Việt Hưng', ''),
(44, 'Smarth Kills', 'AMERICAN SKILLS GÒ VẤP - TPHCM', 1, 1998, 'viethung95cute@gmail.com', '1672523165', 'Việt Hưng', ''),
(45, 'Smarth Kills', 'AMERICAN SKILLS GÒ VẤP - TPHCM', 1, 1998, 'viethung95cute@gmail.com', '1672523165', 'Việt Hưng', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bang_gia_2`
--

CREATE TABLE `bang_gia_2` (
  `id` int(11) NOT NULL,
  `name_parent` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone_parent` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name_student` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `adress` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(300) NOT NULL,
  `hoan_thien_so_sach` varchar(300) NOT NULL,
  `quyet_toan_thue` varchar(300) NOT NULL,
  `tong_dich_vu` varchar(300) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bang_gia_2`
--

INSERT INTO `bang_gia_2` (`id`, `name_parent`, `phone_parent`, `name_student`, `birthday`, `adress`, `email`, `hoan_thien_so_sach`, `quyet_toan_thue`, `tong_dich_vu`, `time`) VALUES
(34, 'Việt Hưng', '01672523165', 'ABC', '2018-03-30', 'ĐH Mỏ - Địa chất', 'viethung95cute@gmail.com', '', '', '', '2018-03-28 04:54:52'),
(35, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:10:26'),
(36, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:10:33'),
(37, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:12:13'),
(38, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:12:19'),
(39, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:13:51'),
(40, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:20:52'),
(41, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:21:19'),
(42, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:21:22'),
(43, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:22:52'),
(44, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:22:55'),
(45, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:23:34'),
(46, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:24:46'),
(47, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:24:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cad_file`
--

CREATE TABLE `cad_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `cad_file`
--

INSERT INTO `cad_file` (`id`, `name`) VALUES
(2, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `calculators_file`
--

CREATE TABLE `calculators_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `calculators_file`
--

INSERT INTO `calculators_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `id_account` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `total_cart` int(11) DEFAULT NULL,
  `date_cart` date DEFAULT NULL,
  `id_orderState` int(11) DEFAULT NULL,
  `note_cart` text COLLATE utf8_unicode_ci,
  `name_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_buyer` text COLLATE utf8_unicode_ci,
  `note_buyer` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id_cart`, `id_account`, `session_id`, `total_price`, `total_cart`, `date_cart`, `id_orderState`, `note_cart`, `name_buyer`, `mail_buyer`, `phone_buyer`, `address_buyer`, `note_buyer`) VALUES
(1, NULL, 'sdgdfgdbcvbcvbxcv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfgdf', 'sdf@gmail.com', '5646', 'sdf@gmail.com', 'sdf@gmail.com'),
(3, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'drtert', 'sdf@gmail.com', '3454', 'sdf@gmail.com', 'sdf@gmail.com'),
(4, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sdfasf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'sfgdfg'),
(5, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfg', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'sdf'),
(6, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'df', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'ag'),
(7, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'rgf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', '.'),
(8, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'zsfxdg', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'sdfg'),
(9, NULL, '507hpkui803q8chnerqdtf3vl2', 1520000, NULL, '0000-00-00', NULL, NULL, 'zsfxdg', 'tung92.ns@gmail.com', '1658824321', '', 'sdfg'),
(10, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sdgf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'dfgfdhgvjm'),
(11, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfg', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'd'),
(12, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sdf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'zscf'),
(13, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sds', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'xfc'),
(14, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'ádasf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'cv'),
(15, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sdf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'zxd'),
(16, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'rf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'xf'),
(17, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'f', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'sdf'),
(18, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfg', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'g'),
(19, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfg', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'sdf'),
(20, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sè', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'cvb'),
(21, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfgd', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'zxcv'),
(22, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfjas@gmail.com', 'tung92.ns@gmail.com', '12342', 'fg', 'xc'),
(23, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sdf', 'tung92.ns@gmail.com', 'dfg', 'dfg', 'gh'),
(24, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dgfdg', 'tung92.ns@gmail.com', '1234567', 'xfvd', 'sx'),
(25, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'ạgdfh', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'cfgvb'),
(26, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'ggf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'xcv'),
(27, NULL, '507hpkui803q8chnerqdtf3vl2', 3040000, NULL, '0000-00-00', NULL, NULL, 'ggf', 'tung92.ns@gmail.com', '1658824321', '', 'xcv'),
(28, NULL, 'k75ivhcmgk5u9bbi4ajsqeqon7', 0, NULL, '0000-00-00', NULL, NULL, 'hangpt', 'phamthuyhang@yahoo.com', '0973378669', 'fghfgh', 'zdfgdfg'),
(29, NULL, 'k75ivhcmgk5u9bbi4ajsqeqon7', 1845000, NULL, '0000-00-00', NULL, NULL, 'hangpt', 'phamthuyhang@yahoo.com', '0973378669', '', 'zdfgdfg'),
(30, NULL, '334n6joa344tmhngo3r5aqpve3', 1845000, NULL, '0000-00-00', NULL, NULL, 'HANGWF', 'HGJFGH@GMAIL.COM', '45657', 'qUAN NHAN', 'DTAN'),
(31, NULL, 'uicgfl7gr3e7ahodo04vpssns6', 3930000, NULL, '0000-00-00', NULL, NULL, 'dfHFGH', 'XFGHFG@GMAIL.COM', '3456789', 'ARFG', 'WRWER'),
(33, NULL, 'jom8ufm7f64s09i4gk10fp1ma2', 2255000, NULL, '0000-00-00', NULL, NULL, 'Vahah', 'vaba@gmail.com', '12184', 'Fqgq', 'Vsbs'),
(34, NULL, '20ks5j7ju4vpq91d9699nvile3', 1455000, NULL, '0000-00-00', NULL, NULL, 'Vahah', 'vaba@gmail.com', '86633889', 'Fgujbvg', ''),
(35, NULL, 'ljlvfop98o8sevrh6ihtgdn7o6', 205000, NULL, '0000-00-00', NULL, NULL, 'Ngọc thế', 'ngocthe505@gmail.com', '0943218532', 'Số 19 ngõ 4 văn la hà đông hn', ''),
(36, NULL, '0m0i103i9mk3s0t8mi1g6gnqd5', 2250000, NULL, '0000-00-00', 4, '', 'Lìu tìu phìu', 'admin@deptrai.com', '096969969', 'Hà Nội', ''),
(37, NULL, 'meesi1d3laemnvqfgu7m1lm9p4', 2050000, NULL, '0000-00-00', 4, 'gfdgfd', 'Lìu tìu phìu', 'admin@deptrai.com', '0969068969', 'Hà Nội', ''),
(38, NULL, 'r3ktn90f3cn3fv82lob0qfv7l2', 0, NULL, '0000-00-00', NULL, NULL, 'hfgh', 'gfhg@gmail.com', '5345345435', 'gbfdgfdg', 'gdfg'),
(39, NULL, '3j87stb5hl70hfftn49fg9uve2', 615000, NULL, '0000-00-00', 1, '', 'Tâm', 'ngockhanh@gmail.com', '0974698975', 'thanh xuân', ''),
(40, NULL, 'vjnoaabl9tui5463ttpol3a745', 3040000, NULL, '0000-00-00', 1, '', 'hằng pt', 'ngockhanh@gmail.com', '123123435', 'dfghdfgh', 'dfghdfgh'),
(41, NULL, '36v2v63fsce7tth1ep3mp51uh3', 760000, NULL, '0000-00-00', NULL, NULL, 'ádfasdf', 'ngockhanh@gmail.com', 'dfgadfg', 'ádfgsdf', ''),
(42, NULL, '9ed4v2g4sm1v3og223ckgdh650', 4560000, NULL, '0000-00-00', NULL, NULL, 'sxdfsdf', 'ng@gmail.com', '345345', 'étdgvdf', ''),
(43, NULL, 's7kfj9rca2ic102k5sgpe4it67', 0, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '30012018', 'Ha Noi', '1'),
(44, NULL, 'uh6mafdedbdh4sqodcd4amspa5', 0, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(45, NULL, '1phakdlrnq7gn5ln72umgujq63', 238620, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '13-7'),
(46, NULL, '14pvd1p4a6tu35c2km9ck3fbf4', 246000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '24-08'),
(47, NULL, '976nru8ujtm188utfmdli20mo5', 420000, NULL, '0000-00-00', NULL, NULL, 'Hanh', 'hanhbp@gmail.com', '0913261689', '326 Le trong Tan Thanh Xuan', 'Giao ngoai gio hanh chinh'),
(48, NULL, 'v3p39e8h23inda7t5e6ch0tv35', 420000, NULL, '0000-00-00', NULL, NULL, 'Hoàng thu thảo', '', '0946944866', 'Số 8, tổ 1, tân lập 1, cẩm thuỷ, cẩm phả, quảng ninh', ''),
(49, NULL, 'addpl7ej742e3q0r43nrfssub3', 315000, NULL, '0000-00-00', NULL, NULL, 'Lê Thị Thuỳ', 'emaillethuy@gmail.com', '0967883638', 'Số 22H Ngõ 350 Kim Giang Hà Nội', 'Muốn nhận hàng trong ngày mai ngày 2/2'),
(50, NULL, 'l3il149c0de98t630fla3fsuq7', 0, NULL, '0000-00-00', NULL, NULL, 'Phạm thanh thuý', 'thanhthuyuno8908@gmail.com', '0979121445', 'CT1B - chung cư Mon city, ngõ 6 Nguyễn Cơ Thạch , Mĩ đình 2, nam từ Liêm, Hà Nội', ''),
(51, NULL, 'tn1kre5u79qng34es3ufod71r7', 0, NULL, '0000-00-00', NULL, NULL, 'a', 'a@fff.com', '02313545312', '123123123', '12312');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cartdetail`
--

CREATE TABLE `cartdetail` (
  `id_cartDetail` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price_product` double DEFAULT NULL,
  `qyt_product` int(11) DEFAULT NULL,
  `totalprice_product` double DEFAULT NULL,
  `subInfo1` text COLLATE utf8_unicode_ci,
  `id_color` int(11) DEFAULT NULL,
  `id_size` int(11) DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cart` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cartdetail`
--

INSERT INTO `cartdetail` (`id_cartDetail`, `id_product`, `session_id`, `price_product`, `qyt_product`, `totalprice_product`, `subInfo1`, `id_color`, `id_size`, `color`, `size`, `id_cart`) VALUES
(4, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(6, 27, 'fg4g7m0pb0vnv4dnvp88f7lds7', 760000, 3, 2280000, NULL, 2, 1, 'Cam', 'S', 1),
(8, 27, '507hpkui803q8chnerqdtf3vl2', 760000, 2, 1520000, NULL, 2, 1, 'Cam', 'S', 25),
(9, 27, '507hpkui803q8chnerqdtf3vl2', 760000, 4, 3040000, NULL, 2, 1, 'Cam', 'S', 26),
(10, 42, 'k75ivhcmgk5u9bbi4ajsqeqon7', 205000, 9, 1845000, NULL, 0, 0, '', '', 28),
(11, 42, '334n6joa344tmhngo3r5aqpve3', 205000, 9, 1845000, NULL, 0, 0, '', '', 30),
(12, 42, 'uicgfl7gr3e7ahodo04vpssns6', 205000, 6, 1230000, NULL, 0, 0, '', '', 31),
(13, 43, 'uicgfl7gr3e7ahodo04vpssns6', 450000, 6, 2700000, NULL, 0, 0, '', '', 31),
(15, 42, 'jom8ufm7f64s09i4gk10fp1ma2', 205000, 11, 2255000, NULL, 0, 0, '', '', 33),
(16, 43, '20ks5j7ju4vpq91d9699nvile3', 225000, 1, 225000, NULL, 0, 0, '', '', 34),
(17, 42, '20ks5j7ju4vpq91d9699nvile3', 205000, 6, 1230000, NULL, 0, 0, '', '', 34),
(18, 42, 'ljlvfop98o8sevrh6ihtgdn7o6', 205000, 1, 205000, NULL, 0, 0, '', '', 35),
(19, 43, '0m0i103i9mk3s0t8mi1g6gnqd5', 225000, 10, 2250000, NULL, 0, 0, '', '', 36),
(20, 42, 'meesi1d3laemnvqfgu7m1lm9p4', 205000, 10, 2050000, NULL, 0, 0, '', '', 37),
(21, 42, 'r3ktn90f3cn3fv82lob0qfv7l2', 205000, 0, 0, NULL, 0, 0, '', '', 38),
(22, 42, '3j87stb5hl70hfftn49fg9uve2', 205000, 3, 615000, NULL, 0, 0, '', '', 39),
(23, 27, 'vjnoaabl9tui5463ttpol3a745', 760000, 3, 2280000, NULL, 0, 0, '', '', 40),
(24, 28, 'vjnoaabl9tui5463ttpol3a745', 760000, 1, 760000, NULL, 0, 0, '', '', 40),
(25, 27, '36v2v63fsce7tth1ep3mp51uh3', 760000, 1, 760000, NULL, 0, 0, '', '', 41),
(26, 27, '9ed4v2g4sm1v3og223ckgdh650', 760000, 6, 4560000, NULL, 0, 0, '', '', 42),
(27, 55, 's7kfj9rca2ic102k5sgpe4it67', 0, 2, 0, NULL, 0, 0, '', '60x90 cm', 43),
(28, 48, 'uh6mafdedbdh4sqodcd4amspa5', 0, 1, 0, NULL, 0, 0, '', '', 44),
(29, 55, '1phakdlrnq7gn5ln72umgujq63', 119310, 2, 238620, NULL, 0, 0, '', '', 45),
(30, 55, '14pvd1p4a6tu35c2km9ck3fbf4', 123000, 2, 246000, NULL, 0, 0, '', '', 46),
(31, 154, '976nru8ujtm188utfmdli20mo5', 420000, 1, 420000, NULL, 0, 0, '', '', 47),
(32, 154, 'v3p39e8h23inda7t5e6ch0tv35', 420000, 1, 420000, NULL, 0, 0, '', '', 48),
(33, 139, 'addpl7ej742e3q0r43nrfssub3', 315000, 1, 315000, NULL, 0, 0, '', '', 49),
(34, 154, 'l3il149c0de98t630fla3fsuq7', 0, 1, 0, NULL, 0, 0, '', '', 50),
(35, 238, 'tn1kre5u79qng34es3ufod71r7', 0, 1, 0, NULL, 0, 0, '', '', 51);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `color`
--

CREATE TABLE `color` (
  `color_id` bigint(20) NOT NULL,
  `color_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color_price` double DEFAULT NULL,
  `color_stock` int(11) DEFAULT NULL,
  `color_img` text COLLATE utf8_unicode_ci,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config`
--

CREATE TABLE `config` (
  `config_id` int(11) NOT NULL,
  `web_name` text COLLATE utf8_unicode_ci,
  `web_meta` text COLLATE utf8_unicode_ci,
  `web_des` text COLLATE utf8_unicode_ci,
  `web_keyword` text COLLATE utf8_unicode_ci,
  `web_logo` text COLLATE utf8_unicode_ci,
  `web_hotline` text COLLATE utf8_unicode_ci,
  `web_phone` text COLLATE utf8_unicode_ci,
  `web_email` text COLLATE utf8_unicode_ci,
  `content_home1` text COLLATE utf8_unicode_ci,
  `content_home2` text COLLATE utf8_unicode_ci,
  `content_home3` text COLLATE utf8_unicode_ci,
  `content_home4` text COLLATE utf8_unicode_ci,
  `content_home5` text COLLATE utf8_unicode_ci,
  `content_home6` text COLLATE utf8_unicode_ci,
  `content_home7` text COLLATE utf8_unicode_ci,
  `content_home8` text COLLATE utf8_unicode_ci,
  `content_home9` text COLLATE utf8_unicode_ci,
  `content_home10` text COLLATE utf8_unicode_ci,
  `slideshow_home` text COLLATE utf8_unicode_ci,
  `link1` text COLLATE utf8_unicode_ci NOT NULL,
  `link2` text COLLATE utf8_unicode_ci NOT NULL,
  `link3` text COLLATE utf8_unicode_ci NOT NULL,
  `banner2` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `banner1` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `banner3` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `icon_web` varchar(300) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config`
--

INSERT INTO `config` (`config_id`, `web_name`, `web_meta`, `web_des`, `web_keyword`, `web_logo`, `web_hotline`, `web_phone`, `web_email`, `content_home1`, `content_home2`, `content_home3`, `content_home4`, `content_home5`, `content_home6`, `content_home7`, `content_home8`, `content_home9`, `content_home10`, `slideshow_home`, `link1`, `link2`, `link3`, `banner2`, `banner1`, `banner3`, `icon_web`) VALUES
(1, 'Công Ty TNHH Kinh Doanh Thương Mại và Dịch Vụ Tổng Hợp Mai Phương.', '', 'Công Ty TNHH Kinh Doanh Thương Mại và Dịch Vụ Tổng Hợp Mai Phương.', 'Công Ty TNHH Kinh Doanh Thương Mại và Dịch Vụ Tổng Hợp Mai Phương.', '156844961_234737218352557_5424914486243302557_n-removebg-preview.png', '', '', 'Công Ty TNHH Kinh Doanh Thương Mại và Dịch Vụ Tổng Hợp Mai Phương.', 'số 140 Hào Nam, Phường Ô Chợ Dừa, Quận Đống Đa, Thành Phố Hà Nội, Việt Nam', 'xesanbaysieure@gmail.com', '0376 404 992', 'Đang cập nhật', '', '<ul>\r\n                                                        <li><a href=\"/tin-tuc\">Tin tức</a></li>\r\n                                                        <li><a href=\"\">Tuyển dụng</a></li>\r\n                                                        <li><a href=\"\">Liên hệ</a></li>\r\n                                                        <li><a href=\"\">Chính sách và điều khoản</a></li>\r\n                                                        <li><a href=\"\">F.A.Q</a></li>\r\n                                                    </ul>', '<ul>\r\n      <li><a href=\"/chu-de\">Chủ Đề</a></li>\r\n      <li><a href=\"/khong-gian\">Không Gian</a></li>\r\n      <li><a href=\"/tong-mau\">Tông Màu</a></li>\r\n      <li><a href=\"/dan-tuong\">Dán Tường</a></li>\r\n <li><a href=\"/cong-trinh-da-thi-cong\">Công Trình Đã Thi Công</a></li>\r\n\r\n\r\n</ul>', '', '1231', '', '[\"{\\\"image\\\":\\\"9521597014227.png\\\"}\"]', 'avits-smart-readingbrphat-trien-ngon-ngu-tieng-viet-4-10-tuoi', 'avits-mathbrtu-duy-toan-my-ixl-4-14-tuoi', 'avits-mathbrtoan', 'tour_1.jpg', 'nhatnv-1481535781752112-1.jpg', 'hotel_1.jpg', '156844961_234737218352557_5424914486243302557_n-removebg-preview.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config_languages`
--

CREATE TABLE `config_languages` (
  `id` int(11) NOT NULL,
  `config_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_name` text COLLATE utf8_unicode_ci,
  `lang_web_meta` text COLLATE utf8_unicode_ci,
  `lang_web_des` text COLLATE utf8_unicode_ci,
  `lang_web_keyword` text COLLATE utf8_unicode_ci,
  `lang_web_hotline` text COLLATE utf8_unicode_ci,
  `lang_web_phone` text COLLATE utf8_unicode_ci,
  `lang_web_email` text COLLATE utf8_unicode_ci,
  `lang_content_home1` text COLLATE utf8_unicode_ci,
  `lang_content_home2` text COLLATE utf8_unicode_ci,
  `lang_content_home3` text COLLATE utf8_unicode_ci,
  `lang_content_home4` text COLLATE utf8_unicode_ci,
  `lang_content_home5` text COLLATE utf8_unicode_ci,
  `lang_content_home6` text COLLATE utf8_unicode_ci,
  `lang_content_home7` text COLLATE utf8_unicode_ci,
  `lang_content_home8` text COLLATE utf8_unicode_ci,
  `lang_content_home9` text COLLATE utf8_unicode_ci,
  `lang_content_home10` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) DEFAULT '0',
  `lang_link1` text COLLATE utf8_unicode_ci NOT NULL,
  `lang_link2` text COLLATE utf8_unicode_ci NOT NULL,
  `lang_link3` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config_languages`
--

INSERT INTO `config_languages` (`id`, `config_id`, `languages_code`, `lang_web_name`, `lang_web_meta`, `lang_web_des`, `lang_web_keyword`, `lang_web_hotline`, `lang_web_phone`, `lang_web_email`, `lang_content_home1`, `lang_content_home2`, `lang_content_home3`, `lang_content_home4`, `lang_content_home5`, `lang_content_home6`, `lang_content_home7`, `lang_content_home8`, `lang_content_home9`, `lang_content_home10`, `edit_state`, `lang_link1`, `lang_link2`, `lang_link3`) VALUES
(1, 1, 'vn', 'Công Ty TNHH Kinh Doanh Thương Mại và Dịch Vụ Tổng Hợp Mai Phương.', '', 'Công Ty TNHH Kinh Doanh Thương Mại và Dịch Vụ Tổng Hợp Mai Phương.', 'Công Ty TNHH Kinh Doanh Thương Mại và Dịch Vụ Tổng Hợp Mai Phương.', '', '', 'Công Ty TNHH Kinh Doanh Thương Mại và Dịch Vụ Tổng Hợp Mai Phương.', 'số 140 Hào Nam, Phường Ô Chợ Dừa, Quận Đống Đa, Thành Phố Hà Nội, Việt Nam', 'xesanbaysieure@gmail.com', '0376 404 992', 'Đang cập nhật', '', '<ul>\r\n                                                        <li><a href=\"/tin-tuc\">Tin tức</a></li>\r\n                                                        <li><a href=\"\">Tuyển dụng</a></li>\r\n                                                        <li><a href=\"\">Liên hệ</a></li>\r\n                                                        <li><a href=\"\">Chính sách và điều khoản</a></li>\r\n                                                        <li><a href=\"\">F.A.Q</a></li>\r\n                                                    </ul>', '<ul>\r\n      <li><a href=\"/chu-de\">Chủ Đề</a></li>\r\n      <li><a href=\"/khong-gian\">Không Gian</a></li>\r\n      <li><a href=\"/tong-mau\">Tông Màu</a></li>\r\n      <li><a href=\"/dan-tuong\">Dán Tường</a></li>\r\n <li><a href=\"/cong-trinh-da-thi-cong\">Công Trình Đã Thi Công</a></li>\r\n\r\n\r\n</ul>', '', '1231', '', 1, '0', 'avits-mathbrtu-duy-toan-my-ixl-4-14-tuoi', 'avits-mathbrtoan'),
(2, 1, 'en', '', '', '', '', '', '', '', 'WHY CHOOSE US?', 'With the operating experiences of plywood factory from 2012, we have supply Good quality Plywood for Packing and Furniture Industry as well as Construction. We are deserved to become your partner to help you have good materials for your production and your trading in plywood industry all over the world. \r\nWe have our team to control all processes of plywood Production very professionally such as Q&C, R&D, Technical team .Moreover, our market is widespread in many foreign countries like Thailand, Korea, Japan, Malaysia, Indonesia, Myamar, Taiwan and others.\r\nComing to us, you wil have many Priorities in Price, Early Delivery as well as in Quality: Strong Density, No Gap, straight side, smooth face....\r\n', '', 'HISTORY', 'Our factory start to operate in 2012, selling to trading companies to bring cargo to foreign countries. And in 2015, we establish our own company to export to customer directly. \r\nOur plywood is exported to Thailand, Indonesia, Korea, Malaysia, Taiwan and other countries.\r\n', 'MAIN PRODUCTS', 'Plywood, Core Veneer, Film faced plywood, Finger Joint , Sawn timber', 'CLIENTS - PARTNERS', 'TIMBER RELATED STORIES', '', 1, '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `currency`
--

CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_name` text COLLATE utf8_unicode_ci,
  `currency_exchange_rate` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `datasheets_file`
--

CREATE TABLE `datasheets_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `datasheets_file`
--

INSERT INTO `datasheets_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dat_mua`
--

CREATE TABLE `dat_mua` (
  `id` int(11) NOT NULL,
  `name_investors` varchar(200) CHARACTER SET utf8 NOT NULL,
  `professional_field` varchar(225) NOT NULL,
  `work_unit` varchar(225) NOT NULL,
  `phone` varchar(200) CHARACTER SET utf8 NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` varchar(100) NOT NULL,
  `district` varchar(200) CHARACTER SET utf8 NOT NULL,
  `city` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chanel` varchar(200) NOT NULL,
  `aspiration` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `dat_mua`
--

INSERT INTO `dat_mua` (`id`, `name_investors`, `professional_field`, `work_unit`, `phone`, `email`, `address`, `district`, `city`, `chanel`, `aspiration`) VALUES
(2, 'Rèm vải 01', '760', '1', 'tuấn', 'tuan@gmail.com', '0123', 'Hà Nội', '', '', ''),
(3, 'Việt Hưng', 'IT', 'GOLDBRIDGE ', '1672523165', 'viethung95cute@gmail.com', '', 'Thanh Xuân', 'Hà N?i', 'Facebook', 'Không có nguy?n v?ng'),
(4, 'Việt Hưng', 'IT', 'GOLDBRIDGE ', '1672523165', 'viethung95cute@gmail.com', '', 'Thanh Xuân', 'Hà N?i', 'Facebook', 'Không có nguy?n v?ng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dat_san_bay`
--

CREATE TABLE `dat_san_bay` (
  `id` bigint(20) NOT NULL,
  `diem_di` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `diem_den` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `thoi_gian` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `dia_diem` int(11) NOT NULL,
  `loai_xe` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `phone` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `code` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `chieu` int(11) NOT NULL,
  `price` bigint(20) NOT NULL,
  `distance` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `dat_san_bay`
--

INSERT INTO `dat_san_bay` (`id`, `diem_di`, `diem_den`, `thoi_gian`, `dia_diem`, `loai_xe`, `phone`, `code`, `chieu`, `price`, `distance`) VALUES
(1, '11D, Bình Chánh, Hồ Chí Minh', 'Đa Phước, Bình Chánh, Hồ Chí Minh', '2021-03-31', 3, 'Xe 7 chỗ', '0987654321', '1', 0, 0, 0),
(2, 'An Phú Tây, Bình Chánh, Hồ Chí Minh', 'Bình Lợi, Bình Chánh, Hồ Chí Minh', '2021-03-31', 1, 'Xe 5 chỗ Sedan', '0987654321', '', 2, 0, 0),
(3, 'An Phú Tây, Bình Chánh, Hồ Chí Minh', 'Điện Biên Phủ, Bình Thạnh, Hồ Chí Minh', '2021-04-01', 1, 'Xe 5 chỗ Sedan', '0973378669', '', 1, 0, 0),
(4, 'Aeon Mall Hà Đông, Dương Nội, Hà Đông, Hà Nội', 'số 1 Ngụy Như Kon Tum, Nhân Chính, Thanh Xuân, Hà Nội', '02/04/2021 11:06', 1, 'Xe 5 chỗ Sedan', '0987654321', '', 1, 104760, 8730),
(5, 'Gemek Tower, Đ.Lê Trọng Tấn, An Khánh, Hoài Đức, Hà Nội', 'Sân bay Nội Bài (HAN), Sóc Sơn, Hà Nội', '07/04/2021 04:30', 1, 'Xe 5 chỗ Sedan', '0383577402', '', 1, 230000, 30638),
(6, 'KĐT Pháp Vân Tứ Hiệp, Hoàng Liệt, Thanh Trì, Hà Nội', 'Sân bay Nội Bài (HAN), Sóc Sơn, Hà Nội', '07/04/2021 04:40', 1, 'Xe 5 chỗ Sedan', '0383577402', '', 1, 250000, 36144),
(7, 'KĐT Pháp Vân Tứ Hiệp, Hoàng Liệt, Thanh Trì, Hà Nội', 'Sân bay Nội Bài (HAN), Sóc Sơn, Hà Nội', '07/04/2021 04:40', 1, 'Xe 5 chỗ Sedan', '0383577402', '', 1, 250000, 36144);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `declaration_file`
--

CREATE TABLE `declaration_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `declaration_file`
--

INSERT INTO `declaration_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `installation_file`
--

CREATE TABLE `installation_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `installation_file`
--

INSERT INTO `installation_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `languages`
--

CREATE TABLE `languages` (
  `languages_id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `languages_name` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `languages`
--

INSERT INTO `languages` (`languages_id`, `languages_code`, `languages_name`) VALUES
(1, 'vn', 'Tiếng Việt'),
(2, 'en', 'English');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lien_he`
--

CREATE TABLE `lien_he` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(500) CHARACTER SET utf8 NOT NULL,
  `comment` mediumtext CHARACTER SET utf8 NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `lien_he`
--

INSERT INTO `lien_he` (`id`, `name`, `email`, `phone`, `address`, `comment`, `time`) VALUES
(1, 'tuấn', 'tuan@gmail.com', '0245', 'Hà Nội', 'ok', '2017-11-29 12:51:52'),
(2, 'Hang Pham Thuy', 'ngockhanh260614@gmail.com', '973378669', 'Thanh Xuân, Thanh Xuân', 'xfghfghfgh', '2017-12-03 04:06:32'),
(3, 'ewrerwer', 'viethung95cute@gmail.com', '01672545654', 'hà nội', '', '2018-04-05 06:24:46'),
(4, 'tuấn', 'tuan@gmail.com', '0123', '', '13-7', '2018-07-13 11:24:19'),
(5, 'tuấn', 'tuan@gmail.com', '0123', '', '123', '2018-08-24 12:15:54'),
(6, '', '', '', '', '', '2019-12-18 03:14:37'),
(7, 'ádldahk', 'asdasdasd@dsdad.com', '132413213213', '', 'Chỉ là một lượt test\r\n', '2019-12-23 03:53:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `listings_certifications_file`
--

CREATE TABLE `listings_certifications_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `listings_certifications_file`
--

INSERT INTO `listings_certifications_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` text COLLATE utf8_unicode_ci,
  `menu_sort_order` int(11) DEFAULT '0',
  `menu_type_id` int(11) DEFAULT NULL,
  `menu_url` text COLLATE utf8_unicode_ci,
  `productcat_id` int(11) DEFAULT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `news_id` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `menu_parent` int(11) NOT NULL DEFAULT '0',
  `servicecat_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `state_menuHeader` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `menu_sort_order`, `menu_type_id`, `menu_url`, `productcat_id`, `newscat_id`, `product_id`, `page_id`, `news_id`, `state`, `menu_parent`, `servicecat_id`, `service_id`, `state_menuHeader`) VALUES
(114, ' ĐẶT XE SÂN BAY', 0, 1, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(155, 'HƯỚNG DẪN SỬ DỤNG', 2, 8, '#', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(262, 'KHUYẾN MẠI', 5, 8, '#', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(263, 'Bảng giá', 6, 13, '', 0, 0, 0, 55, 0, 1, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_languages`
--

CREATE TABLE `menu_languages` (
  `id` bigint(20) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang_menu_name` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `urlFriendly_menu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_languages`
--

INSERT INTO `menu_languages` (`id`, `languages_code`, `lang_menu_name`, `edit_state`, `urlFriendly_menu`, `menu_id`) VALUES
(205, 'vn', ' ĐẶT XE SÂN BAY', 1, '', 114),
(206, 'en', 'Trang chủ - vn', 1, '', 114),
(287, 'vn', 'HƯỚNG DẪN SỬ DỤNG', 0, '#', 155),
(288, 'en', 'GIỚI THIỆU', 0, '', 155),
(517, 'vn', 'KHUYẾN MẠI', 0, '#', 262),
(518, 'en', 'KHUYẾN MẠI', 0, '#', 262),
(519, 'vn', 'Bảng giá', 0, '', 263),
(520, 'en', 'Bảng giá', 0, '', 263);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_type`
--

CREATE TABLE `menu_type` (
  `menu_type_id` int(11) NOT NULL,
  `menu_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_type`
--

INSERT INTO `menu_type` (`menu_type_id`, `menu_type_name`, `first_url`) VALUES
(1, 'Trang chủ', ''),
(2, 'Tất cả sản phẩm', 'san-pham'),
(3, 'Danh mục sản phẩm', NULL),
(4, 'Sản phẩm cụ thể', NULL),
(5, 'Danh mục tin tức', NULL),
(6, 'Tất cả bài tin tức', ''),
(7, 'Bài viết tin tức', NULL),
(8, 'Địa chỉ web', NULL),
(9, 'Liên hệ', NULL),
(10, 'Tất cả dịch vụ', NULL),
(11, 'Bài viết dịch vụ', NULL),
(12, 'Danh mục dịch vụ', NULL),
(13, 'Page', NULL),
(14, 'Đăng ký', NULL),
(15, 'Đăng nhập', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_type_languages`
--

CREATE TABLE `menu_type_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_type_id` int(11) DEFAULT NULL,
  `menu_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_type_languages`
--

INSERT INTO `menu_type_languages` (`id`, `languages_code`, `menu_type_id`, `menu_type_name`, `friendly_url`) VALUES
(1, 'vn', 1, 'Trang chủ', ''),
(2, 'en', 1, 'Home', ''),
(3, 'vn', 2, 'Tất cả sản phẩm', 'san-pham'),
(4, 'en', 2, 'All products', 'products'),
(5, 'vn', 3, 'Danh mục sản phẩm', ''),
(6, 'en', 3, 'Catalog product', ''),
(7, 'vn', 4, 'Sản phẩm cụ thể', ''),
(8, 'en', 4, 'Product detail', ''),
(9, 'vn', 5, 'Danh mục tin tức', ''),
(10, 'en', 5, 'Catalog news', ''),
(11, 'vn', 6, 'Tất cả bài tin tức', 'tin-tuc'),
(12, 'en', 6, 'All News', 'news'),
(13, 'vn', 7, 'Bài viết tin tức', ''),
(14, 'en', 7, 'News detail', ''),
(15, 'vn', 8, 'Địa chỉ website', ''),
(16, 'en', 8, 'Website Address', ''),
(17, 'vn', 9, 'Liên hệ', 'lien-he'),
(18, 'en', 9, 'Contact', 'contact'),
(19, 'vn', 10, 'Tất cả dịch vụ', 'dich-vu'),
(20, 'en', 10, 'All Services', 'services'),
(21, 'vn', 11, 'Bài viết dịch vụ', ''),
(22, 'en', 11, 'Service detail', ''),
(23, 'vn', 12, 'Danh mục dịch vụ', ''),
(24, 'en', 12, 'Catalog service', ''),
(25, 'vn', 13, 'Trang nội dung', ''),
(26, 'en', 13, 'Page', ''),
(27, 'vn', 14, 'Đăng ký', 'dang-ky'),
(28, 'en', 14, 'Sign in', 'sign-in'),
(29, 'vn', 15, 'Đăng nhập', 'dang-nhap'),
(30, 'en', 15, 'Log in', 'log-in');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_name` text COLLATE utf8_unicode_ci,
  `news_des` text COLLATE utf8_unicode_ci,
  `news_content` text COLLATE utf8_unicode_ci,
  `news_img` text COLLATE utf8_unicode_ci,
  `news_views` int(11) DEFAULT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `news_author` text COLLATE utf8_unicode_ci,
  `news_created_date` datetime DEFAULT NULL,
  `news_update_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `news_sub_info1` text COLLATE utf8_unicode_ci,
  `news_sub_info2` text COLLATE utf8_unicode_ci,
  `news_sub_info3` text COLLATE utf8_unicode_ci,
  `news_sub_info4` text COLLATE utf8_unicode_ci,
  `news_sub_info5` text COLLATE utf8_unicode_ci,
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`news_id`, `news_name`, `news_des`, `news_content`, `news_img`, `news_views`, `newscat_id`, `news_author`, `news_created_date`, `news_update_date`, `state`, `news_sub_info1`, `news_sub_info2`, `news_sub_info3`, `news_sub_info4`, `news_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(158, 'Cách chọn giày công sở nữ cho bạn tham khảo', 'Người phụ hiện đại ngày nay đã không chỉ việc bếp núc nội chợ mà còn làm việc tại các công sở. Chị em luôn mặc các bộ trang phục đi làm kết hợp với đôi giày nữ sang trọng. Cách chọn giày công sở nữ các bạn có thể tham khảo.\r\n', '<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Người phụ nữ ng&agrave;y nay đ&atilde; kh&aacute;c, họ kh&ocirc;ng những l&agrave; người phụ nữ của gia đ&igrave;nh m&agrave; c&ograve;n l&agrave; người phụ nữ của c&ocirc;ng sở. Chị em biết c&aacute;ch l&agrave;m đẹp, diện cho m&igrave;nh những bộ quần &aacute;o đến c&ocirc;ng sở nh&atilde; nhặn m&agrave; đẹp kết hợp với gi&agrave;y c&ocirc;ng sở nữ.&nbsp;</span></p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"color:#000000\">C&aacute;ch chọn gi&agrave;y c&ocirc;ng sở nữ gi&uacute;p bạn tự tin hơn.</span></strong></h2>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Chọn giày phù hợp với phong cách\" height=\"476\" src=\"/image/images/cach-chon-giay-cong-so-nu-cho-ban-tham-khao-01.jpg\" width=\"600\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><span style=\"color:#000000\">Chọn gi&agrave;y ph&ugrave; hợp với phong c&aacute;ch</span></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><em><strong><span style=\"color:#000000\">Chọn gi&agrave;y hợp với k&iacute;ch cỡ của đ&ocirc;i ch&acirc;n</span></strong></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Khi đi l&agrave;m c&ocirc;ng sở bạn phải thoải m&aacute;i, v&igrave; vậy khi chọn gi&agrave;y cần phải vừa vặn với đ&ocirc;i ch&acirc;n để gi&uacute;p cho việc di chuyển thuận lợi, tự tin hơn. Đừng v&igrave; đ&ocirc;i gi&agrave;y n&agrave;y đẹp nhưng n&oacute; qu&aacute; chặt m&agrave; khiến cho ch&acirc;n bạn bị đau khi mang, bị sưng tấy khiến cho việc di chuyển kh&oacute; khăn l&agrave;m ảnh hưởng tới c&ocirc;ng việc mất đi t&iacute;nh thẩm mỹ.&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><em><strong><span style=\"color:#000000\">Chọn kiểu d&aacute;ng gi&agrave;y đi thoải m&aacute;i, ph&ugrave; hợp</span></strong></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Khi lựa chọn gi&agrave;y nữ c&ocirc;ng sở kh&ocirc;ng cần lựa chọn những đ&ocirc;i gi&agrave;y qu&aacute; đặc biệt về kiểu d&aacute;ng như gi&agrave;y g&oacute;t nhọn, gi&agrave;y mũi nhọn. Những đ&ocirc;i gi&agrave;y với kiểu d&aacute;ng như thế khiến cho ch&acirc;n bạn sẽ dễ bị tổn thương ở c&aacute;c v&ugrave;ng như mắt c&aacute; ch&acirc;n, g&oacute;t ch&acirc;n, đầu ng&oacute;n ch&acirc;n. Bạn c&oacute; thể lựa chọn c&aacute;c đ&ocirc;i gi&agrave;y cao đế vu&ocirc;ng kh&ocirc;ng qu&aacute; nhọn gi&uacute;p việc n&acirc;ng đỡ tốt, mũi gi&agrave;y rộng để c&aacute;c ng&oacute;n ch&acirc;n thoải m&aacute;i, gi&agrave;y sandal lựa chọn rất ph&ugrave; hợp gi&agrave;y nữ c&ocirc;ng sở.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><em><strong><span style=\"color:#000000\">Chọn chất liệu gi&agrave;y tốt</span></strong></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Chọn những đ&ocirc;i gi&agrave;y c&ocirc;ng sở c&oacute; chất liệu da tốt sẽ hỗ trợ trong việc thấm mồ h&ocirc;i, cảm gi&aacute;c &ecirc;m &aacute;i, dễ chịu. C&ograve;n nếu kh&ocirc;ng h&atilde;y lựa chọn những đ&ocirc;i gi&agrave;y vải hay nhung để dễ vận động lựa chọn cho những ai hơi hẹp về kinh ph&iacute;.</span></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Chọn giày chất liệu tốt \" height=\"511\" src=\"/image/images/cach-chon-giay-cong-so-nu-cho-ban-tham-khao.jpg\" width=\"600\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><span style=\"color:#000000\">Chọn gi&agrave;y chất liệu tốt&nbsp;</span></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><em><strong><span style=\"color:#000000\">Chọn gi&agrave;y ph&ugrave; hợp với trang phục khi mặc</span></strong></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Khi chọn gi&agrave;y đi bạn n&ecirc;n suy nghĩ ph&ugrave; hợp với trang phục thế n&agrave;o. Để khi kết hợp sẽ đẹp, gi&uacute;p cho bạn thoải m&aacute;i tự tin hơn. Như đ&ocirc;i sandal m&agrave;u đen hợp với quần jean hoặc ch&acirc;n v&aacute;y với &aacute;o sơ mi trắng. Kh&ocirc;ng chỉ ph&ugrave; hợp với kiểu d&aacute;ng m&agrave; c&ograve;n về m&agrave;u sắc để ch&uacute;ng c&oacute; thể h&ograve;a hợp với nhau: m&agrave;u đen, c&aacute;c m&agrave;u tối c&oacute; thể kết hợp với nhiều loại đồ c&ograve;n m&agrave;u đỏ, m&agrave;u trắng th&igrave; cần phải xem để cho đồng bộ.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><strong>C&aacute;ch chọn gi&agrave;y c&ocirc;ng sở nữ</strong> như tr&ecirc;n bạn c&oacute; thể tham khảo. <strong>Vinshoes Việt Nam</strong> l&agrave; nơi chuy&ecirc;n Gi&agrave;y d&eacute;p thời trang nữ, Gi&agrave;y c&ocirc;ng sở, sandal, gi&agrave;y cao g&oacute;t đều chất lượng với gi&aacute; hợp l&iacute;.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp;</span></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'cach-chon-giay-cong-so-nu-cho-ban-tham-khao-01.jpg', 0, 1, '', '2020-09-23 10:09:02', '2021-03-29 10:03:31', 1, '', '', '', '', '', 'Cách chọn giày công sở nữ cho bạn tham khảo', '', 'cach-chon-giay-cong-so-nu-cho-ban-tham-khao', '', 1),
(159, 'Cách đo size giày nữ bạn muốn biết', ' Cách đo size giày nữ là cách làm phác họa bàn chân ra một vật thể để lấy kích thước giúp cho các bạn nữ có thể chọn được những đôi giày vừa chân, ưng ý tạo cảm giác thoải mái, dễ chịu trong quá trình di chuyển và đi lại.\r\n', '<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Việc chọn size gi&agrave;y tuy đơn giản nhưng rất quan trọng đối với c&aacute;c chị em phụ nữ v&igrave; chẳng may chọn nhầm size sẽ ảnh hưởng đến sức khỏe của bạn, bạn sẽ bị đau ch&acirc;n, b&agrave;n ch&acirc;n trở n&ecirc;n xấu hơn hay nghi&ecirc;m trọng hơn l&agrave; c&oacute; thể g&acirc;y một số bệnh về lưng, ch&acirc;n. Vậy bạn cần phải l&agrave;m g&igrave; để khắc phục được vấn đề n&agrave;y, c&aacute;ch l&agrave;m tốt nhất cho bạn l&agrave; đo size gi&agrave;y nữ, vậy <strong>c&aacute;ch đo size gi&agrave;y nữ</strong> như thế n&agrave;o l&agrave; hợp l&yacute;?</span></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Chọn size phù hợp để có đôi giày đẹp, thoải mái\" height=\"347\" src=\"/image/images/cach_do_size_giay_nu_01.jpg\" width=\"600\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><span style=\"color:#000000\">Chọn size ph&ugrave; hợp để c&oacute; đ&ocirc;i gi&agrave;y đẹp, thoải m&aacute;i</span></em></p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"color:#000000\">C&aacute;ch đo size gi&agrave;y nữ chuẩn v&agrave; hiệu quả</span></strong></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Ngo&agrave;i việc bạn c&oacute; thể trực tiếp để thử gi&agrave;y th&igrave; c&aacute;ch đo size gi&agrave;y cũng thực sự hữu &iacute;ch cho bạn nếu muốn c&oacute; được những đ&ocirc;i gi&agrave;y vừa với ch&acirc;n m&igrave;nh hơn.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Việc chọn size gi&agrave;y nữ thực sự kh&ocirc;ng kh&oacute; đối với c&aacute;c bạn nữ nếu như bạn biết c&aacute;ch l&agrave;m v&agrave; kh&ocirc;ng mất qu&aacute; nhiều thời gian của bạn.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><strong>C&aacute;ch đo size gi&agrave;y nữ</strong> hiểu một c&aacute;ch đơn giản l&agrave; bạn ph&aacute;c họa b&agrave;n ch&acirc;n m&igrave;nh l&ecirc;n giấy.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"color:#000000\">Bước 1: chuẩn bị 1 mảnh giấy</span></strong></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Trong bước n&agrave;y bạn cần chuẩn bị một mảnh giấy đặt l&ecirc;n bề mặt phẳng c&oacute; thể l&agrave; s&agrave;n nh&agrave;. Lưu &yacute; cần chọn giấy c&oacute; m&agrave;u s&aacute;ng, dễ nh&igrave;n để khi bạn d&ugrave;ng b&uacute;t vẽ lại k&iacute;ch thước th&igrave; dễ d&agrave;ng nhận thấy được.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"color:#000000\">Bước 2: Vẽ ch&acirc;n l&ecirc;n giấy</span></strong></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Vẽ chân lên giấy\" height=\"375\" src=\"/image/images/cach_do_size_giay_nu_02.jpg\" width=\"600\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><span style=\"color:#000000\">&nbsp;Vẽ ch&acirc;n l&ecirc;n giấy</span></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Sau khi đ&atilde; chuẩn bị được mảnh giấy, bước tiếp theo l&agrave; đặt b&agrave;n ch&acirc;n của bạn l&ecirc;n mảnh giấy đ&oacute;, d&ugrave;ng b&uacute;t ch&igrave; hoặc b&uacute;t mực kẻ theo tường đường m&eacute;p của b&agrave;n ch&acirc;n. Cần giữ b&agrave;n ch&acirc;n cố định v&agrave; thẳng trong suốt qu&aacute; tr&igrave;nh vẽ để tăng th&ecirc;m độ ch&iacute;nh x&aacute;c.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"color:#000000\">Bước 3: Vẽ đ&oacute;ng khung b&agrave;n ch&acirc;n tr&ecirc;n mảnh giấy</span></strong></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\" Vẽ đường kích thước cho bàn chân\" height=\"440\" src=\"/image/images/cach_do_size_giay_nu_03.jpg\" width=\"600\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><span style=\"color:#000000\">Vẽ đường k&iacute;ch thước cho b&agrave;n ch&acirc;n</span></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Sau khi đ&atilde; ph&aacute;t họa được h&igrave;nh b&agrave;n ch&acirc;n l&ecirc;n tr&ecirc;n giấy, việc tiếp theo l&agrave; d&ugrave;ng thước kẻ th&agrave;nh chiều d&agrave;i v&agrave; chiều rộng của b&agrave;n ch&acirc;n. Trong qu&aacute; tr&igrave;nh kẻ, lấy điểm d&agrave;i nhất v&agrave; rộng nhất tr&ecirc;n b&agrave;n ch&acirc;n để l&agrave;m điểm chuẩn gi&uacute;p cho việc chọn gi&agrave;y d&eacute;p vừa hơn, mang thoải m&aacute;i hơn.&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Ghi nhận lại số liệu vừa đo được, kết th&uacute;c qu&aacute; tr&igrave;nh đo size gi&agrave;y nữ. Sau đ&oacute; bạn c&oacute; thể tham khảo th&ecirc;m bảng quy đổi size gi&agrave;y nữ để xem ch&acirc;n m&igrave;nh thuộc size n&agrave;o, v&igrave; thế bạn ho&agrave;n to&agrave;n c&oacute; thể dễ d&agrave;ng lựa chọn đ&ocirc;i gi&agrave;y ph&ugrave; hợp với ch&acirc;n m&igrave;nh.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Với một c&aacute;ch l&agrave;m rất đơn giản v&agrave; nhanh ch&oacute;ng như tr&ecirc;n bạn c&oacute; thể thuận lợi hơn rất nhiều trong qu&aacute; tr&igrave;nh mua gi&agrave;y m&agrave; kh&ocirc;ng cần thử, thoải m&aacute;i mua gi&agrave;y m&agrave; bạn th&iacute;ch tr&ecirc;n mạng m&agrave; kh&ocirc;ng lo mang kh&ocirc;ng vừa.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Để biết th&ecirc;m nhiều th&ocirc;ng tin về <strong>c&aacute;ch đo size gi&agrave;y nữ</strong> cũng như c&oacute; thể lựa chọn được mẫu gi&agrave;y đẹp hiện nay, h&atilde;y đến với c&aacute;c sản phẩm gi&agrave;y của Vinshoes Việt Nam, bạn sẽ được trải nghiệm tuyệt vời.</span></p>\r\n\r\n<p style=\"text-align:justify\"><br />\r\n&nbsp;</p>\r\n', 'cach_do_size_giay_nu_03.jpg', 0, 1, '', '2020-09-23 10:09:58', '2021-03-29 10:03:35', 1, '', '', '', '', '', 'Cách đo size giày nữ bạn muốn biết', '', 'cach-do-size-giay-nu-ban-muon-biet', '', 1),
(160, 'Người Việt du lịch 48 quốc gia, vùng lãnh thổ không cần Visa', 'Trong số 48 quốc gia dành cho du khách người Việt Nam không cần Visa có: Nhật Bản, Thái Lan, Các tiểu vương quốc Ả rập thống nhất (UAE)… Ngoài ra, 6 nước cấp visa cho người Việt Nam không thu lệ phí: Algeria, Afghanistan, Mông Cổ, Nicaragua, Romania, Cuba.', '', 'nguoi-viet-du-lich-48-quoc-gia-vung-lanh-tho-khong-can-visa-ivivu-1_1.jpg', 0, 1, '', '2021-03-29 10:03:40', '2021-03-29 10:03:25', 1, '', '', '', '', '', 'Người Việt du lịch 48 quốc gia, vùng lãnh thổ không cần Visa', '', 'nguoi-viet-du-lich-48-quoc-gia-vung-lanh-tho-khong-can-visa', '', 1),
(161, '9 LÝ DO PHÚ QUỐC LÀ ĐIỂM ĐẾN HẤP DẪN CỦA ĐÔNG NAM Á', '', '', 'parallax2.jpg', 0, 2, '', '2021-03-29 10:03:54', '2021-03-29 10:03:40', 1, '', '', '', '', '', '9 LÝ DO PHÚ QUỐC LÀ ĐIỂM ĐẾN HẤP DẪN CỦA ĐÔNG NAM Á', '', '9-ly-do-phu-quoc-la-diem-den-hap-dan-cua-dong-nam-a', '', 1),
(162, 'DU LỊCH TP. HỒ CHÍ MINH QUA 10 ĐỊA DANH ', '', '', 'aaaaa-03.jpg', 0, 2, '', '2021-03-29 10:03:10', '2021-03-29 10:03:45', 1, '', '', '', '', '', 'DU LỊCH TP. HỒ CHÍ MINH QUA 10 ĐỊA DANH ', '', 'du-lich-tp-ho-chi-minh-qua-10-dia-danh-ai-o-sai-gon-cung-biet', '', 1),
(163, 'TOP 10 ĐỊA ĐIỂM KHÔNG THỂ BỎ QUA KHI ĐẾN NHA TRANG', 'Nha Trang là thành phố biển thuộc tỉnh Khánh Hòa, miền Trung Việt Nam. Đây được coi là một trong những thành phố du lịch biển lâu đời ở nước ta.', '', 'HOME-14.jpg', 0, 2, '', '2021-03-29 10:03:17', '2021-03-29 14:03:01', 1, '', '', '', '', '', 'TOP 10 ĐỊA ĐIỂM KHÔNG THỂ BỎ QUA KHI ĐẾN NHA TRANG', '', 'top-10-dia-diem-khong-the-bo-qua-khi-den-nha-trang', '', 1),
(164, 'Gợi ý 10 điểm du lịch miễn phí cho người lần đầu du lịch Seoul mùa thu', '', '', 'banner-dienluc.jpg', 0, 3, '', '2021-03-29 10:03:27', '2021-03-29 10:03:10', 1, '', '', '', '', '', 'Gợi ý 10 điểm du lịch miễn phí cho người lần đầu du lịch Seoul mùa thu', '', 'goi-y-10-diem-du-lich-mien-phi-cho-nguoi-lan-dau-du-lich-seoul-mua-thu', '', 1),
(165, 'BỎ TÚI BÍ KÍP DU LỊCH CANADA SIÊU TIẾT KIỆM MÙA THU NÀY', '', '', '_116191172_gettyimages-1212213051.jpg', 0, 3, '', '2021-03-29 10:03:25', NULL, 1, '', '', '', '', '', 'BỎ TÚI BÍ KÍP DU LỊCH CANADA SIÊU TIẾT KIỆM MÙA THU NÀY', '', 'bo-tui-bi-kip-du-lich-canada-sieu-tiet-kiem-mua-thu-nay', '', 1),
(166, 'SAY LÒNG TRƯỚC 5 ĐIỂM DU LỊCH MÙA THU TẠI NHẬT BẢN', '', '', 'win10.png', 0, 3, '', '2021-03-29 10:03:37', NULL, 1, '', '', '', '', '', 'SAY LÒNG TRƯỚC 5 ĐIỂM DU LỊCH MÙA THU TẠI NHẬT BẢN', '', 'say-long-truoc-5-diem-du-lich-mua-thu-tai-nhat-ban', '', 1),
(167, 'HOT: 2 homestay Đà Lạt đẹp hút hồn không thể chối từ được xuất hiện trong MV mới của Hương Giang', '“ADODDA” được kể về câu chuyện tình yêu – tình bạn giữa hai cô bạn thân cùng nhau kinh doanh homestay sau khi tốt nghiệp. Để có hình ảnh đẹp nhất, cả ekip đã cất công lên Đà Lạt chọn những địa điểm phù hợp nhất. Dalat De Charme Village và The Kupid đã được chọn để gửi gắm đứa con tinh thần của cả ekip. Nếu các bạn tới Đà Lạt thì nhớ đừng quên ghé 2 homestay Đà Lạt “hút hồn” này nhé.', '', 'parallax2.jpg', 0, 4, '', '2021-03-29 10:03:46', '2021-03-29 10:03:49', 1, '', '', '', '', '', 'HOT: 2 homestay Đà Lạt đẹp hút hồn không thể chối từ được xuất hiện trong MV mới của Hương Giang', '', 'hot-2-homestay-da-lat-dep-hut-hon-khong-the-choi-tu-duoc-xuat-hien-trong-mv-moi-cua-huong-giang', '', 1),
(168, 'TOP 12 địa điểm du lịch quanh Hà Nội 100km không thể bỏ qua', 'Những địa điểm du lịch quanh Hà Nội 100km hấp dẫn, thích hợp cho những chuyến dã ngoại cuối tuần khi bạn không muốn đi xa mà vẫn có không gian nghỉ dưỡng tránh xa sự ồn ào, nhộn nhịp của thành phố về với chốn bình yên. Còn chần chừ gì mà không lên kế hoạch với nhóm bạn hay cùng gia đình đến những địa điểm này ngay thôi!', '', 'parallax.jpg', 0, 4, '', '2021-03-29 10:03:14', '2021-03-29 11:03:26', 1, '', '', '', '', '', 'TOP 12 địa điểm du lịch quanh Hà Nội 100km không thể bỏ qua', '', 'top-12-dia-diem-du-lich-quanh-ha-noi-100km-khong-the-bo-qua', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newscat`
--

CREATE TABLE `newscat` (
  `newscat_id` int(11) NOT NULL,
  `newscat_name` text COLLATE utf8_unicode_ci,
  `newscat_des` text COLLATE utf8_unicode_ci,
  `newscat_content` text COLLATE utf8_unicode_ci,
  `newscat_parent` int(11) DEFAULT NULL,
  `newscat_sort_order` int(11) DEFAULT NULL,
  `newscat_created_date` datetime DEFAULT NULL,
  `newscat_update_date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  `newscat_img` text COLLATE utf8_unicode_ci,
  `newscat_sub_info1` text COLLATE utf8_unicode_ci,
  `newscat_sub_info2` text COLLATE utf8_unicode_ci,
  `newscat_sub_info3` text COLLATE utf8_unicode_ci,
  `newscat_sub_info4` text COLLATE utf8_unicode_ci,
  `newscat_sub_info5` text COLLATE utf8_unicode_ci,
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `newscat`
--

INSERT INTO `newscat` (`newscat_id`, `newscat_name`, `newscat_des`, `newscat_content`, `newscat_parent`, `newscat_sort_order`, `newscat_created_date`, `newscat_update_date`, `state`, `newscat_img`, `newscat_sub_info1`, `newscat_sub_info2`, `newscat_sub_info3`, `newscat_sub_info4`, `newscat_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(1, 'Tin tức', '', '', 0, 0, '2021-03-29 10:03:54', NULL, 1, '', '', '', '', '', '', 'Tin tức', '', 'tin-tuc', '', 1),
(2, 'Du Lịch Nội Địa', '', '', 0, 0, '2021-03-29 10:03:00', NULL, 1, '', '', '', '', '', '', 'Du Lịch Nội Địa', '', 'du-lich-noi-dia', '', 1),
(3, 'Du Lịch Quốc Tế', '', '', 0, 0, '2021-03-29 10:03:05', NULL, 1, '', '', '', '', '', '', 'Du Lịch Quốc Tế', '', 'du-lich-quoc-te', '', 1),
(4, 'Trải nghiệm du lịch', '', '', 0, 0, '2021-03-29 10:03:16', NULL, 1, '', '', '', '', '', '', 'Trải nghiệm du lịch', '', 'trai-nghiem-du-lich', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newscat_languages`
--

CREATE TABLE `newscat_languages` (
  `id` int(11) NOT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_name` text COLLATE utf8_unicode_ci,
  `lang_newscat_des` text COLLATE utf8_unicode_ci,
  `lang_newscat_content` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `newscat_languages`
--

INSERT INTO `newscat_languages` (`id`, `newscat_id`, `languages_code`, `lang_newscat_name`, `lang_newscat_des`, `lang_newscat_content`, `lang_newscat_sub_info1`, `lang_newscat_sub_info2`, `lang_newscat_sub_info3`, `lang_newscat_sub_info4`, `lang_newscat_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(1, 1, 'vn', 'Tin tức', '', '', '', '', '', '', '', 0, 'tin-tuc', '', 'Tin tức', ''),
(2, 1, 'en', 'english version Tin tức', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-tin-tuc', '', 'Tin tức', ''),
(3, 2, 'vn', 'Du Lịch Nội Địa', '', '', '', '', '', '', '', 0, 'du-lich-noi-dia', '', 'Du Lịch Nội Địa', ''),
(4, 2, 'en', 'english version Du Lịch Nội Địa', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-du-lich-noi-dia', '', 'Du Lịch Nội Địa', ''),
(5, 3, 'vn', 'Du Lịch Quốc Tế', '', '', '', '', '', '', '', 0, 'du-lich-quoc-te', '', 'Du Lịch Quốc Tế', ''),
(6, 3, 'en', 'english version Du Lịch Quốc Tế', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-du-lich-quoc-te', '', 'Du Lịch Quốc Tế', ''),
(7, 4, 'vn', 'Trải nghiệm du lịch', '', '', '', '', '', '', '', 0, 'trai-nghiem-du-lich', '', 'Trải nghiệm du lịch', ''),
(8, 4, 'en', 'english version Trải nghiệm du lịch', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-trai-nghiem-du-lich', '', 'Trải nghiệm du lịch', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_languages`
--

CREATE TABLE `news_languages` (
  `id` bigint(20) NOT NULL,
  `news_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_name` text COLLATE utf8_unicode_ci,
  `lang_news_des` text COLLATE utf8_unicode_ci,
  `lang_news_content` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news_languages`
--

INSERT INTO `news_languages` (`id`, `news_id`, `languages_code`, `lang_news_name`, `lang_news_des`, `lang_news_content`, `lang_news_sub_info1`, `lang_news_sub_info2`, `lang_news_sub_info3`, `lang_news_sub_info4`, `lang_news_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(315, 158, 'vn', 'Cách chọn giày công sở nữ cho bạn tham khảo', 'Người phụ hiện đại ngày nay đã không chỉ việc bếp núc nội chợ mà còn làm việc tại các công sở. Chị em luôn mặc các bộ trang phục đi làm kết hợp với đôi giày nữ sang trọng. Cách chọn giày công sở nữ các bạn có thể tham khảo.\r\n', '<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Người phụ nữ ng&agrave;y nay đ&atilde; kh&aacute;c, họ kh&ocirc;ng những l&agrave; người phụ nữ của gia đ&igrave;nh m&agrave; c&ograve;n l&agrave; người phụ nữ của c&ocirc;ng sở. Chị em biết c&aacute;ch l&agrave;m đẹp, diện cho m&igrave;nh những bộ quần &aacute;o đến c&ocirc;ng sở nh&atilde; nhặn m&agrave; đẹp kết hợp với gi&agrave;y c&ocirc;ng sở nữ.&nbsp;</span></p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"color:#000000\">C&aacute;ch chọn gi&agrave;y c&ocirc;ng sở nữ gi&uacute;p bạn tự tin hơn.</span></strong></h2>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Chọn giày phù hợp với phong cách\" height=\"476\" src=\"/image/images/cach-chon-giay-cong-so-nu-cho-ban-tham-khao-01.jpg\" width=\"600\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><span style=\"color:#000000\">Chọn gi&agrave;y ph&ugrave; hợp với phong c&aacute;ch</span></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><em><strong><span style=\"color:#000000\">Chọn gi&agrave;y hợp với k&iacute;ch cỡ của đ&ocirc;i ch&acirc;n</span></strong></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Khi đi l&agrave;m c&ocirc;ng sở bạn phải thoải m&aacute;i, v&igrave; vậy khi chọn gi&agrave;y cần phải vừa vặn với đ&ocirc;i ch&acirc;n để gi&uacute;p cho việc di chuyển thuận lợi, tự tin hơn. Đừng v&igrave; đ&ocirc;i gi&agrave;y n&agrave;y đẹp nhưng n&oacute; qu&aacute; chặt m&agrave; khiến cho ch&acirc;n bạn bị đau khi mang, bị sưng tấy khiến cho việc di chuyển kh&oacute; khăn l&agrave;m ảnh hưởng tới c&ocirc;ng việc mất đi t&iacute;nh thẩm mỹ.&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><em><strong><span style=\"color:#000000\">Chọn kiểu d&aacute;ng gi&agrave;y đi thoải m&aacute;i, ph&ugrave; hợp</span></strong></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Khi lựa chọn gi&agrave;y nữ c&ocirc;ng sở kh&ocirc;ng cần lựa chọn những đ&ocirc;i gi&agrave;y qu&aacute; đặc biệt về kiểu d&aacute;ng như gi&agrave;y g&oacute;t nhọn, gi&agrave;y mũi nhọn. Những đ&ocirc;i gi&agrave;y với kiểu d&aacute;ng như thế khiến cho ch&acirc;n bạn sẽ dễ bị tổn thương ở c&aacute;c v&ugrave;ng như mắt c&aacute; ch&acirc;n, g&oacute;t ch&acirc;n, đầu ng&oacute;n ch&acirc;n. Bạn c&oacute; thể lựa chọn c&aacute;c đ&ocirc;i gi&agrave;y cao đế vu&ocirc;ng kh&ocirc;ng qu&aacute; nhọn gi&uacute;p việc n&acirc;ng đỡ tốt, mũi gi&agrave;y rộng để c&aacute;c ng&oacute;n ch&acirc;n thoải m&aacute;i, gi&agrave;y sandal lựa chọn rất ph&ugrave; hợp gi&agrave;y nữ c&ocirc;ng sở.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><em><strong><span style=\"color:#000000\">Chọn chất liệu gi&agrave;y tốt</span></strong></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Chọn những đ&ocirc;i gi&agrave;y c&ocirc;ng sở c&oacute; chất liệu da tốt sẽ hỗ trợ trong việc thấm mồ h&ocirc;i, cảm gi&aacute;c &ecirc;m &aacute;i, dễ chịu. C&ograve;n nếu kh&ocirc;ng h&atilde;y lựa chọn những đ&ocirc;i gi&agrave;y vải hay nhung để dễ vận động lựa chọn cho những ai hơi hẹp về kinh ph&iacute;.</span></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Chọn giày chất liệu tốt \" height=\"511\" src=\"/image/images/cach-chon-giay-cong-so-nu-cho-ban-tham-khao.jpg\" width=\"600\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><span style=\"color:#000000\">Chọn gi&agrave;y chất liệu tốt&nbsp;</span></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><em><strong><span style=\"color:#000000\">Chọn gi&agrave;y ph&ugrave; hợp với trang phục khi mặc</span></strong></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Khi chọn gi&agrave;y đi bạn n&ecirc;n suy nghĩ ph&ugrave; hợp với trang phục thế n&agrave;o. Để khi kết hợp sẽ đẹp, gi&uacute;p cho bạn thoải m&aacute;i tự tin hơn. Như đ&ocirc;i sandal m&agrave;u đen hợp với quần jean hoặc ch&acirc;n v&aacute;y với &aacute;o sơ mi trắng. Kh&ocirc;ng chỉ ph&ugrave; hợp với kiểu d&aacute;ng m&agrave; c&ograve;n về m&agrave;u sắc để ch&uacute;ng c&oacute; thể h&ograve;a hợp với nhau: m&agrave;u đen, c&aacute;c m&agrave;u tối c&oacute; thể kết hợp với nhiều loại đồ c&ograve;n m&agrave;u đỏ, m&agrave;u trắng th&igrave; cần phải xem để cho đồng bộ.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><strong>C&aacute;ch chọn gi&agrave;y c&ocirc;ng sở nữ</strong> như tr&ecirc;n bạn c&oacute; thể tham khảo. <strong>Vinshoes Việt Nam</strong> l&agrave; nơi chuy&ecirc;n Gi&agrave;y d&eacute;p thời trang nữ, Gi&agrave;y c&ocirc;ng sở, sandal, gi&agrave;y cao g&oacute;t đều chất lượng với gi&aacute; hợp l&iacute;.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp;</span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 0, 'cach-chon-giay-cong-so-nu-cho-ban-tham-khao', 'Cách chọn giày công sở nữ cho bạn tham khảo', '', ''),
(316, 158, 'en', 'english version Cách chọn giày công sở nữ cho bạn tham khảo', 'english version Người phụ hiện đại ngày nay đã không chỉ việc bếp núc nội chợ mà còn làm việc tại các công sở. Chị em luôn mặc các bộ trang phục đi làm kết hợp với đôi giày nữ sang trọng. Cách chọn giày công sở nữ các bạn có thể tham khảo.\r\n', 'english version <p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Người phụ nữ ng&agrave;y nay đ&atilde; kh&aacute;c, họ kh&ocirc;ng những l&agrave; người phụ nữ của gia đ&igrave;nh m&agrave; c&ograve;n l&agrave; người phụ nữ của c&ocirc;ng sở. Chị em biết c&aacute;ch l&agrave;m đẹp, diện cho m&igrave;nh những bộ quần &aacute;o đến c&ocirc;ng sở nh&atilde; nhặn m&agrave; đẹp kết hợp với gi&agrave;y c&ocirc;ng sở nữ.&nbsp;</span></p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"color:#000000\">C&aacute;ch chọn gi&agrave;y c&ocirc;ng sở nữ gi&uacute;p bạn tự tin hơn.</span></strong></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Chọn giày phù hợp với phong cách\" height=\"476\" src=\"/image/images/cach-chon-giay-cong-so-nu-cho-ban-tham-khao-01.jpg\" width=\"600\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><span style=\"color:#000000\">Chọn gi&agrave;y ph&ugrave; hợp với phong c&aacute;ch</span></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><em><strong><span style=\"color:#000000\">Chọn gi&agrave;y hợp với k&iacute;ch cỡ của đ&ocirc;i ch&acirc;n</span></strong></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Khi đi l&agrave;m c&ocirc;ng sở bạn phải thoải m&aacute;i, v&igrave; vậy khi chọn gi&agrave;y cần phải vừa vặn với đ&ocirc;i ch&acirc;n để gi&uacute;p cho việc di chuyển thuận lợi, tự tin hơn. Đừng v&igrave; đ&ocirc;i gi&agrave;y n&agrave;y đẹp nhưng n&oacute; qu&aacute; chặt m&agrave; khiến cho ch&acirc;n bạn bị đau khi mang, bị sưng tấy khiến cho việc di chuyển kh&oacute; khăn l&agrave;m ảnh hưởng tới c&ocirc;ng việc mất đi t&iacute;nh thẩm mỹ.&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><em><strong><span style=\"color:#000000\">Chọn kiểu d&aacute;ng gi&agrave;y đi thoải m&aacute;i, ph&ugrave; hợp</span></strong></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Khi lựa chọn gi&agrave;y nữ c&ocirc;ng sở kh&ocirc;ng cần lựa chọn những đ&ocirc;i gi&agrave;y qu&aacute; đặc biệt về kiểu d&aacute;ng như gi&agrave;y g&oacute;t nhọn, gi&agrave;y mũi nhọn. Những đ&ocirc;i gi&agrave;y với kiểu d&aacute;ng như thế khiến cho ch&acirc;n bạn sẽ dễ bị tổn thương ở c&aacute;c v&ugrave;ng như mắt c&aacute; ch&acirc;n, g&oacute;t ch&acirc;n, đầu ng&oacute;n ch&acirc;n. Bạn c&oacute; thể lựa chọn c&aacute;c đ&ocirc;i gi&agrave;y cao đế vu&ocirc;ng kh&ocirc;ng qu&aacute; nhọn gi&uacute;p việc n&acirc;ng đỡ tốt, mũi gi&agrave;y rộng để c&aacute;c ng&oacute;n ch&acirc;n thoải m&aacute;i, gi&agrave;y sandal lựa chọn rất ph&ugrave; hợp gi&agrave;y nữ c&ocirc;ng sở.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><em><strong><span style=\"color:#000000\">Chọn chất liệu gi&agrave;y tốt</span></strong></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Chọn những đ&ocirc;i gi&agrave;y c&ocirc;ng sở c&oacute; chất liệu da tốt sẽ hỗ trợ trong việc thấm mồ h&ocirc;i, cảm gi&aacute;c &ecirc;m &aacute;i, dễ chịu. C&ograve;n nếu kh&ocirc;ng h&atilde;y lựa chọn những đ&ocirc;i gi&agrave;y vải hay nhung để dễ vận động lựa chọn cho những ai hơi hẹp về kinh ph&iacute;.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Chọn giày chất liệu tốt \" height=\"511\" src=\"/image/images/cach-chon-giay-cong-so-nu-cho-ban-tham-khao.jpg\" width=\"600\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><span style=\"color:#000000\">Chọn gi&agrave;y chất liệu tốt&nbsp;</span></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><em><strong><span style=\"color:#000000\">Chọn gi&agrave;y ph&ugrave; hợp với trang phục khi mặc</span></strong></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Khi chọn gi&agrave;y đi bạn n&ecirc;n suy nghĩ ph&ugrave; hợp với trang phục thế n&agrave;o. Để khi kết hợp sẽ đẹp, gi&uacute;p cho bạn thoải m&aacute;i tự tin hơn. Như đ&ocirc;i sandal m&agrave;u đen hợp với quần jean hoặc ch&acirc;n v&aacute;y với &aacute;o sơ mi trắng. Kh&ocirc;ng chỉ ph&ugrave; hợp với kiểu d&aacute;ng m&agrave; c&ograve;n về m&agrave;u sắc để ch&uacute;ng c&oacute; thể h&ograve;a hợp với nhau: m&agrave;u đen, c&aacute;c m&agrave;u tối c&oacute; thể kết hợp với nhiều loại đồ c&ograve;n m&agrave;u đỏ, m&agrave;u trắng th&igrave; cần phải xem để cho đồng bộ.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><strong>C&aacute;ch chọn gi&agrave;y c&ocirc;ng sở nữ</strong> như tr&ecirc;n bạn c&oacute; thể tham khảo. <strong>Vinshoes Việt Nam</strong> l&agrave; nơi chuy&ecirc;n Gi&agrave;y d&eacute;p thời trang nữ, Gi&agrave;y c&ocirc;ng sở, sandal, gi&agrave;y cao g&oacute;t đều chất lượng với gi&aacute; hợp l&iacute;.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp;</span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 0, 'en-cach-chon-giay-cong-so-nu-cho-ban-tham-khao', 'Cách chọn giày công sở nữ cho bạn tham khảo', '', ''),
(317, 159, 'vn', 'Cách đo size giày nữ bạn muốn biết', ' Cách đo size giày nữ là cách làm phác họa bàn chân ra một vật thể để lấy kích thước giúp cho các bạn nữ có thể chọn được những đôi giày vừa chân, ưng ý tạo cảm giác thoải mái, dễ chịu trong quá trình di chuyển và đi lại.\r\n', '<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Việc chọn size gi&agrave;y tuy đơn giản nhưng rất quan trọng đối với c&aacute;c chị em phụ nữ v&igrave; chẳng may chọn nhầm size sẽ ảnh hưởng đến sức khỏe của bạn, bạn sẽ bị đau ch&acirc;n, b&agrave;n ch&acirc;n trở n&ecirc;n xấu hơn hay nghi&ecirc;m trọng hơn l&agrave; c&oacute; thể g&acirc;y một số bệnh về lưng, ch&acirc;n. Vậy bạn cần phải l&agrave;m g&igrave; để khắc phục được vấn đề n&agrave;y, c&aacute;ch l&agrave;m tốt nhất cho bạn l&agrave; đo size gi&agrave;y nữ, vậy <strong>c&aacute;ch đo size gi&agrave;y nữ</strong> như thế n&agrave;o l&agrave; hợp l&yacute;?</span></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Chọn size phù hợp để có đôi giày đẹp, thoải mái\" height=\"347\" src=\"/image/images/cach_do_size_giay_nu_01.jpg\" width=\"600\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><span style=\"color:#000000\">Chọn size ph&ugrave; hợp để c&oacute; đ&ocirc;i gi&agrave;y đẹp, thoải m&aacute;i</span></em></p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"color:#000000\">C&aacute;ch đo size gi&agrave;y nữ chuẩn v&agrave; hiệu quả</span></strong></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Ngo&agrave;i việc bạn c&oacute; thể trực tiếp để thử gi&agrave;y th&igrave; c&aacute;ch đo size gi&agrave;y cũng thực sự hữu &iacute;ch cho bạn nếu muốn c&oacute; được những đ&ocirc;i gi&agrave;y vừa với ch&acirc;n m&igrave;nh hơn.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Việc chọn size gi&agrave;y nữ thực sự kh&ocirc;ng kh&oacute; đối với c&aacute;c bạn nữ nếu như bạn biết c&aacute;ch l&agrave;m v&agrave; kh&ocirc;ng mất qu&aacute; nhiều thời gian của bạn.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><strong>C&aacute;ch đo size gi&agrave;y nữ</strong> hiểu một c&aacute;ch đơn giản l&agrave; bạn ph&aacute;c họa b&agrave;n ch&acirc;n m&igrave;nh l&ecirc;n giấy.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"color:#000000\">Bước 1: chuẩn bị 1 mảnh giấy</span></strong></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Trong bước n&agrave;y bạn cần chuẩn bị một mảnh giấy đặt l&ecirc;n bề mặt phẳng c&oacute; thể l&agrave; s&agrave;n nh&agrave;. Lưu &yacute; cần chọn giấy c&oacute; m&agrave;u s&aacute;ng, dễ nh&igrave;n để khi bạn d&ugrave;ng b&uacute;t vẽ lại k&iacute;ch thước th&igrave; dễ d&agrave;ng nhận thấy được.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"color:#000000\">Bước 2: Vẽ ch&acirc;n l&ecirc;n giấy</span></strong></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Vẽ chân lên giấy\" height=\"375\" src=\"/image/images/cach_do_size_giay_nu_02.jpg\" width=\"600\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><span style=\"color:#000000\">&nbsp;Vẽ ch&acirc;n l&ecirc;n giấy</span></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Sau khi đ&atilde; chuẩn bị được mảnh giấy, bước tiếp theo l&agrave; đặt b&agrave;n ch&acirc;n của bạn l&ecirc;n mảnh giấy đ&oacute;, d&ugrave;ng b&uacute;t ch&igrave; hoặc b&uacute;t mực kẻ theo tường đường m&eacute;p của b&agrave;n ch&acirc;n. Cần giữ b&agrave;n ch&acirc;n cố định v&agrave; thẳng trong suốt qu&aacute; tr&igrave;nh vẽ để tăng th&ecirc;m độ ch&iacute;nh x&aacute;c.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"color:#000000\">Bước 3: Vẽ đ&oacute;ng khung b&agrave;n ch&acirc;n tr&ecirc;n mảnh giấy</span></strong></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\" Vẽ đường kích thước cho bàn chân\" height=\"440\" src=\"/image/images/cach_do_size_giay_nu_03.jpg\" width=\"600\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><span style=\"color:#000000\">Vẽ đường k&iacute;ch thước cho b&agrave;n ch&acirc;n</span></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Sau khi đ&atilde; ph&aacute;t họa được h&igrave;nh b&agrave;n ch&acirc;n l&ecirc;n tr&ecirc;n giấy, việc tiếp theo l&agrave; d&ugrave;ng thước kẻ th&agrave;nh chiều d&agrave;i v&agrave; chiều rộng của b&agrave;n ch&acirc;n. Trong qu&aacute; tr&igrave;nh kẻ, lấy điểm d&agrave;i nhất v&agrave; rộng nhất tr&ecirc;n b&agrave;n ch&acirc;n để l&agrave;m điểm chuẩn gi&uacute;p cho việc chọn gi&agrave;y d&eacute;p vừa hơn, mang thoải m&aacute;i hơn.&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Ghi nhận lại số liệu vừa đo được, kết th&uacute;c qu&aacute; tr&igrave;nh đo size gi&agrave;y nữ. Sau đ&oacute; bạn c&oacute; thể tham khảo th&ecirc;m bảng quy đổi size gi&agrave;y nữ để xem ch&acirc;n m&igrave;nh thuộc size n&agrave;o, v&igrave; thế bạn ho&agrave;n to&agrave;n c&oacute; thể dễ d&agrave;ng lựa chọn đ&ocirc;i gi&agrave;y ph&ugrave; hợp với ch&acirc;n m&igrave;nh.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Với một c&aacute;ch l&agrave;m rất đơn giản v&agrave; nhanh ch&oacute;ng như tr&ecirc;n bạn c&oacute; thể thuận lợi hơn rất nhiều trong qu&aacute; tr&igrave;nh mua gi&agrave;y m&agrave; kh&ocirc;ng cần thử, thoải m&aacute;i mua gi&agrave;y m&agrave; bạn th&iacute;ch tr&ecirc;n mạng m&agrave; kh&ocirc;ng lo mang kh&ocirc;ng vừa.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Để biết th&ecirc;m nhiều th&ocirc;ng tin về <strong>c&aacute;ch đo size gi&agrave;y nữ</strong> cũng như c&oacute; thể lựa chọn được mẫu gi&agrave;y đẹp hiện nay, h&atilde;y đến với c&aacute;c sản phẩm gi&agrave;y của Vinshoes Việt Nam, bạn sẽ được trải nghiệm tuyệt vời.</span></p>\r\n\r\n<p style=\"text-align:justify\"><br />\r\n&nbsp;</p>\r\n', '', '', '', '', '', 0, 'cach-do-size-giay-nu-ban-muon-biet', 'Cách đo size giày nữ bạn muốn biết', '', ''),
(318, 159, 'en', 'english version Cách đo size giày nữ bạn muốn biết', 'english version  Cách đo size giày nữ là cách làm phác họa bàn chân ra một vật thể để lấy kích thước giúp cho các bạn nữ có thể chọn được những đôi giày vừa chân, ưng ý tạo cảm giác thoải mái, dễ chịu trong quá trình di chuyển và đi lại.\r\n', 'english version <p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Việc chọn size gi&agrave;y tuy đơn giản nhưng rất quan trọng đối với c&aacute;c chị em phụ nữ v&igrave; chẳng may chọn nhầm size sẽ ảnh hưởng đến sức khỏe của bạn, bạn sẽ bị đau ch&acirc;n, b&agrave;n ch&acirc;n trở n&ecirc;n xấu hơn hay nghi&ecirc;m trọng hơn l&agrave; c&oacute; thể g&acirc;y một số bệnh về lưng, ch&acirc;n. Vậy bạn cần phải l&agrave;m g&igrave; để khắc phục được vấn đề n&agrave;y, c&aacute;ch l&agrave;m tốt nhất cho bạn l&agrave; đo size gi&agrave;y nữ, vậy <strong>c&aacute;ch đo size gi&agrave;y nữ</strong> như thế n&agrave;o l&agrave; hợp l&yacute;?</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Chọn size phù hợp để có đôi giày đẹp, thoải mái\" height=\"347\" src=\"/image/images/cach_do_size_giay_nu_01.jpg\" width=\"600\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><span style=\"color:#000000\">Chọn size ph&ugrave; hợp để c&oacute; đ&ocirc;i gi&agrave;y đẹp, thoải m&aacute;i</span></em></p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"color:#000000\">C&aacute;ch đo size gi&agrave;y nữ chuẩn v&agrave; hiệu quả</span></strong></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Ngo&agrave;i việc bạn c&oacute; thể trực tiếp để thử gi&agrave;y th&igrave; c&aacute;ch đo size gi&agrave;y cũng thực sự hữu &iacute;ch cho bạn nếu muốn c&oacute; được những đ&ocirc;i gi&agrave;y vừa với ch&acirc;n m&igrave;nh hơn.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Việc chọn size gi&agrave;y nữ thực sự kh&ocirc;ng kh&oacute; đối với c&aacute;c bạn nữ nếu như bạn biết c&aacute;ch l&agrave;m v&agrave; kh&ocirc;ng mất qu&aacute; nhiều thời gian của bạn.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><strong>C&aacute;ch đo size gi&agrave;y nữ</strong> hiểu một c&aacute;ch đơn giản l&agrave; bạn ph&aacute;c họa b&agrave;n ch&acirc;n m&igrave;nh l&ecirc;n giấy.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"color:#000000\">Bước 1: chuẩn bị 1 mảnh giấy</span></strong></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Trong bước n&agrave;y bạn cần chuẩn bị một mảnh giấy đặt l&ecirc;n bề mặt phẳng c&oacute; thể l&agrave; s&agrave;n nh&agrave;. Lưu &yacute; cần chọn giấy c&oacute; m&agrave;u s&aacute;ng, dễ nh&igrave;n để khi bạn d&ugrave;ng b&uacute;t vẽ lại k&iacute;ch thước th&igrave; dễ d&agrave;ng nhận thấy được.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"color:#000000\">Bước 2: Vẽ ch&acirc;n l&ecirc;n giấy</span></strong></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Vẽ chân lên giấy\" height=\"375\" src=\"/image/images/cach_do_size_giay_nu_02.jpg\" width=\"600\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><span style=\"color:#000000\">&nbsp;Vẽ ch&acirc;n l&ecirc;n giấy</span></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Sau khi đ&atilde; chuẩn bị được mảnh giấy, bước tiếp theo l&agrave; đặt b&agrave;n ch&acirc;n của bạn l&ecirc;n mảnh giấy đ&oacute;, d&ugrave;ng b&uacute;t ch&igrave; hoặc b&uacute;t mực kẻ theo tường đường m&eacute;p của b&agrave;n ch&acirc;n. Cần giữ b&agrave;n ch&acirc;n cố định v&agrave; thẳng trong suốt qu&aacute; tr&igrave;nh vẽ để tăng th&ecirc;m độ ch&iacute;nh x&aacute;c.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"color:#000000\">Bước 3: Vẽ đ&oacute;ng khung b&agrave;n ch&acirc;n tr&ecirc;n mảnh giấy</span></strong></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\" Vẽ đường kích thước cho bàn chân\" height=\"440\" src=\"/image/images/cach_do_size_giay_nu_03.jpg\" width=\"600\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><span style=\"color:#000000\">Vẽ đường k&iacute;ch thước cho b&agrave;n ch&acirc;n</span></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Sau khi đ&atilde; ph&aacute;t họa được h&igrave;nh b&agrave;n ch&acirc;n l&ecirc;n tr&ecirc;n giấy, việc tiếp theo l&agrave; d&ugrave;ng thước kẻ th&agrave;nh chiều d&agrave;i v&agrave; chiều rộng của b&agrave;n ch&acirc;n. Trong qu&aacute; tr&igrave;nh kẻ, lấy điểm d&agrave;i nhất v&agrave; rộng nhất tr&ecirc;n b&agrave;n ch&acirc;n để l&agrave;m điểm chuẩn gi&uacute;p cho việc chọn gi&agrave;y d&eacute;p vừa hơn, mang thoải m&aacute;i hơn.&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Ghi nhận lại số liệu vừa đo được, kết th&uacute;c qu&aacute; tr&igrave;nh đo size gi&agrave;y nữ. Sau đ&oacute; bạn c&oacute; thể tham khảo th&ecirc;m bảng quy đổi size gi&agrave;y nữ để xem ch&acirc;n m&igrave;nh thuộc size n&agrave;o, v&igrave; thế bạn ho&agrave;n to&agrave;n c&oacute; thể dễ d&agrave;ng lựa chọn đ&ocirc;i gi&agrave;y ph&ugrave; hợp với ch&acirc;n m&igrave;nh.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Với một c&aacute;ch l&agrave;m rất đơn giản v&agrave; nhanh ch&oacute;ng như tr&ecirc;n bạn c&oacute; thể thuận lợi hơn rất nhiều trong qu&aacute; tr&igrave;nh mua gi&agrave;y m&agrave; kh&ocirc;ng cần thử, thoải m&aacute;i mua gi&agrave;y m&agrave; bạn th&iacute;ch tr&ecirc;n mạng m&agrave; kh&ocirc;ng lo mang kh&ocirc;ng vừa.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Để biết th&ecirc;m nhiều th&ocirc;ng tin về <strong>c&aacute;ch đo size gi&agrave;y nữ</strong> cũng như c&oacute; thể lựa chọn được mẫu gi&agrave;y đẹp hiện nay, h&atilde;y đến với c&aacute;c sản phẩm gi&agrave;y của Vinshoes Việt Nam, bạn sẽ được trải nghiệm tuyệt vời.</span></p>\r\n\r\n<p style=\"text-align:justify\"><br />\r\n&nbsp;</p>\r\n', '', '', '', '', '', 0, 'en-cach-do-size-giay-nu-ban-muon-biet', 'Cách đo size giày nữ bạn muốn biết', '', ''),
(319, 160, 'vn', 'Người Việt du lịch 48 quốc gia, vùng lãnh thổ không cần Visa', 'Trong số 48 quốc gia dành cho du khách người Việt Nam không cần Visa có: Nhật Bản, Thái Lan, Các tiểu vương quốc Ả rập thống nhất (UAE)… Ngoài ra, 6 nước cấp visa cho người Việt Nam không thu lệ phí: Algeria, Afghanistan, Mông Cổ, Nicaragua, Romania, Cuba.', '', '', '', '', '', '', 0, 'nguoi-viet-du-lich-48-quoc-gia-vung-lanh-tho-khong-can-visa', 'Người Việt du lịch 48 quốc gia, vùng lãnh thổ không cần Visa', '', ''),
(320, 160, 'en', 'english version Người Việt du lịch 48 quốc gia, vùng lãnh thổ không cần Visa', 'english version Trong số 48 quốc gia dành cho du khách người Việt Nam không cần Visa có: Nhật Bản, Thái Lan, Các tiểu vương quốc Ả rập thống nhất (UAE)… Ngoài ra, 6 nước cấp visa cho người Việt Nam không thu lệ phí: Algeria, Afghanistan, Mông Cổ, Nicaragua, Romania, Cuba.', 'english version ', '', '', '', '', '', 0, 'en-nguoi-viet-du-lich-48-quoc-gia-vung-lanh-tho-khong-can-visa', 'Người Việt du lịch 48 quốc gia, vùng lãnh thổ không cần Visa', '', ''),
(321, 161, 'vn', '9 LÝ DO PHÚ QUỐC LÀ ĐIỂM ĐẾN HẤP DẪN CỦA ĐÔNG NAM Á', '', '', '', '', '', '', '', 0, '9-ly-do-phu-quoc-la-diem-den-hap-dan-cua-dong-nam-a', '9 LÝ DO PHÚ QUỐC LÀ ĐIỂM ĐẾN HẤP DẪN CỦA ĐÔNG NAM Á', '', ''),
(322, 161, 'en', 'english version Tin tức', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-tin-tuc', 'Tin tức', '', ''),
(323, 162, 'vn', 'DU LỊCH TP. HỒ CHÍ MINH QUA 10 ĐỊA DANH ', '', '', '', '', '', '', '', 0, 'du-lich-tp-ho-chi-minh-qua-10-dia-danh-ai-o-sai-gon-cung-biet', 'DU LỊCH TP. HỒ CHÍ MINH QUA 10 ĐỊA DANH ', '', ''),
(324, 162, 'en', 'english version Du lịch nội địa', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-du-lich-noi-dia', 'Du lịch nội địa', '', ''),
(325, 163, 'vn', 'TOP 10 ĐỊA ĐIỂM KHÔNG THỂ BỎ QUA KHI ĐẾN NHA TRANG', 'Nha Trang là thành phố biển thuộc tỉnh Khánh Hòa, miền Trung Việt Nam. Đây được coi là một trong những thành phố du lịch biển lâu đời ở nước ta.', '', '', '', '', '', '', 0, 'top-10-dia-diem-khong-the-bo-qua-khi-den-nha-trang', 'TOP 10 ĐỊA ĐIỂM KHÔNG THỂ BỎ QUA KHI ĐẾN NHA TRANG', '', ''),
(326, 163, 'en', 'english version Du Lịch Quốc Tế', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-du-lich-quoc-te', 'Du Lịch Quốc Tế', '', ''),
(327, 164, 'vn', 'Gợi ý 10 điểm du lịch miễn phí cho người lần đầu du lịch Seoul mùa thu', '', '', '', '', '', '', '', 0, 'goi-y-10-diem-du-lich-mien-phi-cho-nguoi-lan-dau-du-lich-seoul-mua-thu', 'Gợi ý 10 điểm du lịch miễn phí cho người lần đầu du lịch Seoul mùa thu', '', ''),
(328, 164, 'en', 'english version Trải nghiệm du lịch', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-trai-nghiem-du-lich', 'Trải nghiệm du lịch', '', ''),
(329, 165, 'vn', 'BỎ TÚI BÍ KÍP DU LỊCH CANADA SIÊU TIẾT KIỆM MÙA THU NÀY', '', '', '', '', '', '', '', 0, 'bo-tui-bi-kip-du-lich-canada-sieu-tiet-kiem-mua-thu-nay', 'BỎ TÚI BÍ KÍP DU LỊCH CANADA SIÊU TIẾT KIỆM MÙA THU NÀY', '', ''),
(330, 165, 'en', 'english version BỎ TÚI BÍ KÍP DU LỊCH CANADA SIÊU TIẾT KIỆM MÙA THU NÀY', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-bo-tui-bi-kip-du-lich-canada-sieu-tiet-kiem-mua-thu-nay', 'BỎ TÚI BÍ KÍP DU LỊCH CANADA SIÊU TIẾT KIỆM MÙA THU NÀY', '', ''),
(331, 166, 'vn', 'SAY LÒNG TRƯỚC 5 ĐIỂM DU LỊCH MÙA THU TẠI NHẬT BẢN', '', '', '', '', '', '', '', 0, 'say-long-truoc-5-diem-du-lich-mua-thu-tai-nhat-ban', 'SAY LÒNG TRƯỚC 5 ĐIỂM DU LỊCH MÙA THU TẠI NHẬT BẢN', '', ''),
(332, 166, 'en', 'english version SAY LÒNG TRƯỚC 5 ĐIỂM DU LỊCH MÙA THU TẠI NHẬT BẢN', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-say-long-truoc-5-diem-du-lich-mua-thu-tai-nhat-ban', 'SAY LÒNG TRƯỚC 5 ĐIỂM DU LỊCH MÙA THU TẠI NHẬT BẢN', '', ''),
(333, 167, 'vn', 'HOT: 2 homestay Đà Lạt đẹp hút hồn không thể chối từ được xuất hiện trong MV mới của Hương Giang', '“ADODDA” được kể về câu chuyện tình yêu – tình bạn giữa hai cô bạn thân cùng nhau kinh doanh homestay sau khi tốt nghiệp. Để có hình ảnh đẹp nhất, cả ekip đã cất công lên Đà Lạt chọn những địa điểm phù hợp nhất. Dalat De Charme Village và The Kupid đã được chọn để gửi gắm đứa con tinh thần của cả ekip. Nếu các bạn tới Đà Lạt thì nhớ đừng quên ghé 2 homestay Đà Lạt “hút hồn” này nhé.', '', '', '', '', '', '', 0, 'hot-2-homestay-da-lat-dep-hut-hon-khong-the-choi-tu-duoc-xuat-hien-trong-mv-moi-cua-huong-giang', 'HOT: 2 homestay Đà Lạt đẹp hút hồn không thể chối từ được xuất hiện trong MV mới của Hương Giang', '', ''),
(334, 167, 'en', 'english version HOT: 2 homestay Đà Lạt đẹp hút hồn không thể chối từ được xuất hiện trong MV mới của Hương Giang', 'english version “ADODDA” được kể về câu chuyện tình yêu – tình bạn giữa hai cô bạn thân cùng nhau kinh doanh homestay sau khi tốt nghiệp. Để có hình ảnh đẹp nhất, cả ekip đã cất công lên Đà Lạt chọn những địa điểm phù hợp nhất. Dalat De Charme Village và The Kupid đã được chọn để gửi gắm đứa con tinh thần của cả ekip. Nếu các bạn tới Đà Lạt thì nhớ đừng quên ghé 2 homestay Đà Lạt “hút hồn” này nhé.', 'english version ', '', '', '', '', '', 0, 'en-hot-2-homestay-da-lat-dep-hut-hon-khong-the-choi-tu-duoc-xuat-hien-trong-mv-moi-cua-huong-giang', 'HOT: 2 homestay Đà Lạt đẹp hút hồn không thể chối từ được xuất hiện trong MV mới của Hương Giang', '', ''),
(335, 168, 'vn', 'TOP 12 địa điểm du lịch quanh Hà Nội 100km không thể bỏ qua', 'Những địa điểm du lịch quanh Hà Nội 100km hấp dẫn, thích hợp cho những chuyến dã ngoại cuối tuần khi bạn không muốn đi xa mà vẫn có không gian nghỉ dưỡng tránh xa sự ồn ào, nhộn nhịp của thành phố về với chốn bình yên. Còn chần chừ gì mà không lên kế hoạch với nhóm bạn hay cùng gia đình đến những địa điểm này ngay thôi!', '', '', '', '', '', '', 0, 'top-12-dia-diem-du-lich-quanh-ha-noi-100km-khong-the-bo-qua', 'TOP 12 địa điểm du lịch quanh Hà Nội 100km không thể bỏ qua', '', ''),
(336, 168, 'en', 'english version TOP 12 địa điểm du lịch quanh Hà Nội 100km không thể bỏ qua', 'english version Những địa điểm du lịch quanh Hà Nội 100km hấp dẫn, thích hợp cho những chuyến dã ngoại cuối tuần khi bạn không muốn đi xa mà vẫn có không gian nghỉ dưỡng tránh xa sự ồn ào, nhộn nhịp của thành phố về với chốn bình yên. Còn chần chừ gì mà không lên kế hoạch với nhóm bạn hay cùng gia đình đến những địa điểm này ngay thôi!', 'english version ', '', '', '', '', '', 0, 'en-top-12-dia-diem-du-lich-quanh-ha-noi-100km-khong-the-bo-qua', 'TOP 12 địa điểm du lịch quanh Hà Nội 100km không thể bỏ qua', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_ban_tin`
--

CREATE TABLE `nhan_ban_tin` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nhan_ban_tin`
--

INSERT INTO `nhan_ban_tin` (`id`, `email`, `time`) VALUES
(1, 'tuan@gmail.com', '2017-11-29 13:54:44'),
(2, 'donguyenthinh30031989@gmail.com', '2017-12-23 01:12:33'),
(3, 'truongquangtuan3110@gmail.com', '2018-01-03 12:04:35'),
(4, 'truongquangtuan3110@gmail.com', '2018-01-03 12:12:05'),
(5, 'donguyenthinh30031989@gmail.com', '2018-01-04 07:40:46'),
(6, 'truongquangtuan3110@gmail.com', '2018-01-04 09:02:07'),
(7, 'donguyenthinh30031989@gmail.com', '2018-01-04 09:31:40'),
(8, 'donguyenthinh30031989@gmail.com', '2018-01-04 10:17:09'),
(9, 'viethung95cute@gmail.com', '2018-03-27 07:55:42'),
(10, 'viethung95cute@gmail.com', '2018-03-28 05:08:41'),
(11, 'viethung95cute@gmail.com', '2018-03-28 05:12:29'),
(12, 'viethung95cute@gmail.com', '2018-03-28 05:13:40'),
(13, 'viethung95cute@gmail.com', '2018-03-28 05:45:42'),
(14, 'viethung95cute@gmail.com', '2018-03-28 05:48:44'),
(15, 'hung71483@gmail.com', '2018-03-28 05:51:51'),
(16, 'hung71483@gmail.com', '2018-03-28 05:54:44'),
(17, 'hung71483@gmail.com', '2018-03-28 06:01:14'),
(18, 'hung71483@gmail.com', '2018-03-28 06:03:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_tai_lieu`
--

CREATE TABLE `nhan_tai_lieu` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nhan_tai_lieu`
--

INSERT INTO `nhan_tai_lieu` (`id`, `email`, `time`) VALUES
(1, 'tuan@gmail.com', '2017-11-29 12:33:22'),
(2, 'manh@gmail.com', '2017-12-02 11:58:58'),
(3, 'ngockhanh260614@gmail.com', '2017-12-03 04:05:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `obsolete_products_file`
--

CREATE TABLE `obsolete_products_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `obsolete_products_file`
--

INSERT INTO `obsolete_products_file` (`id`, `name`) VALUES
(3, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `operating_file`
--

CREATE TABLE `operating_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `operating_file`
--

INSERT INTO `operating_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ1`
--

CREATE TABLE `optionsQ1` (
  `optionsQ1_id` int(11) NOT NULL,
  `optionsQ1_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ1`
--

INSERT INTO `optionsQ1` (`optionsQ1_id`, `optionsQ1_value`) VALUES
(1, 'Đau rát'),
(2, 'Chảy máu khi đi vệ sinh'),
(3, 'Ngứa ngáy, khó chịu, ẩm ướt có mùi khó chịu'),
(4, 'Búi trĩ sa ra ngoài (nhìn hoặc sờ)'),
(5, 'Không có biểu hiện nào như trên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ2`
--

CREATE TABLE `optionsQ2` (
  `optionsQ2_id` int(11) NOT NULL,
  `optionsQ2_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ2`
--

INSERT INTO `optionsQ2` (`optionsQ2_id`, `optionsQ2_value`) VALUES
(1, 'Có'),
(2, 'Không');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ3`
--

CREATE TABLE `optionsQ3` (
  `optionsQ3_id` int(11) NOT NULL,
  `optionsQ3_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ3`
--

INSERT INTO `optionsQ3` (`optionsQ3_id`, `optionsQ3_value`) VALUES
(1, 'Mới (đang bị)'),
(2, 'Lâu, tái đi tái lại'),
(3, 'Lâu, nhưng giờ đang bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ4`
--

CREATE TABLE `optionsQ4` (
  `optionsQ4_id` int(11) NOT NULL,
  `optionsQ4_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ4`
--

INSERT INTO `optionsQ4` (`optionsQ4_id`, `optionsQ4_value`) VALUES
(1, 'Máu dính trên giấy vệ sinh'),
(2, 'Máu dính trên phân hoặc nhỏ giọt'),
(3, 'Máu chảy thành tia'),
(4, 'Không thấy máu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ5`
--

CREATE TABLE `optionsQ5` (
  `optionsQ5_id` int(11) NOT NULL,
  `optionsQ5_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ5`
--

INSERT INTO `optionsQ5` (`optionsQ5_id`, `optionsQ5_value`) VALUES
(1, 'Hơi đau, tức hậu môn, khó chịu'),
(2, 'Đau nhiều, rát. đỡ khi nằm'),
(3, 'Rất đau rát, đứng ngồi, nằm không yên'),
(4, 'Không đau, bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ6`
--

CREATE TABLE `optionsQ6` (
  `optionsQ6_id` int(11) NOT NULL,
  `optionsQ6_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ6`
--

INSERT INTO `optionsQ6` (`optionsQ6_id`, `optionsQ6_value`) VALUES
(1, 'Ít, lồi ra như hạt ngô'),
(2, 'Nhiều, lồi ra bằng 1/3 đốt ngón tay'),
(3, 'Rất nhiều, dài >2.5cm'),
(4, 'Không sa, bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ7`
--

CREATE TABLE `optionsQ7` (
  `optionsQ7_id` int(11) NOT NULL,
  `optionsQ7_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ7`
--

INSERT INTO `optionsQ7` (`optionsQ7_id`, `optionsQ7_value`) VALUES
(1, 'Không tự co vào được, ấn vào lại sa ra, hoặc rặn nhẹ là sa ra'),
(2, 'Tự co lên được sau khi ấn vào nhẹ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ8`
--

CREATE TABLE `optionsQ8` (
  `optionsQ8_id` int(11) NOT NULL,
  `optionsQ8_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ8`
--

INSERT INTO `optionsQ8` (`optionsQ8_id`, `optionsQ8_value`) VALUES
(1, 'Khô, thoáng bình thường, không có dịch'),
(2, 'Hơi ẩm, ít mùi'),
(3, 'Ướt, có dịch vào đồ lót, mùi khó chịu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ9`
--

CREATE TABLE `optionsQ9` (
  `optionsQ9_id` int(11) NOT NULL,
  `optionsQ9_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ9`
--

INSERT INTO `optionsQ9` (`optionsQ9_id`, `optionsQ9_value`) VALUES
(1, 'Có'),
(2, 'Không'),
(3, 'Có nhưng mức độ 3-4h/ngày');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_name` text COLLATE utf8_unicode_ci,
  `orders_receiver_email` text COLLATE utf8_unicode_ci,
  `orders_receiver_phone` text COLLATE utf8_unicode_ci,
  `orders_receiver_address` text COLLATE utf8_unicode_ci,
  `orders_receiver_note` text COLLATE utf8_unicode_ci,
  `orders_total_price` float DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `orders_created_date` datetime DEFAULT NULL,
  `orders_state` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_detail_quantity` int(11) DEFAULT NULL,
  `order_detail_price` double DEFAULT NULL,
  `order_detail_note` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `product_name` text COLLATE utf8_unicode_ci,
  `currency_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_state`
--

CREATE TABLE `order_state` (
  `order_state_id` int(11) NOT NULL,
  `order_state_name` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_state`
--

INSERT INTO `order_state` (`order_state_id`, `order_state_name`, `state`) VALUES
(1, 'Chờ xác nhận', 0),
(2, 'Đã xác nhận', 0),
(3, 'Chờ thanh toán', 0),
(4, 'Đã thanh toán', 0),
(5, 'Chờ gửi hàng', 0),
(6, '	\r\nHủy đơn hàng', 0),
(7, '	\r\nĐã chuyển hàng', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page`
--

CREATE TABLE `page` (
  `page_id` int(11) NOT NULL,
  `page_name` text COLLATE utf8_unicode_ci,
  `page_des` text COLLATE utf8_unicode_ci,
  `page_content` text COLLATE utf8_unicode_ci,
  `page_img` text COLLATE utf8_unicode_ci,
  `page_created_date` datetime DEFAULT NULL,
  `page_update_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `page_sub_info1` text COLLATE utf8_unicode_ci,
  `page_sub_info2` text COLLATE utf8_unicode_ci,
  `page_sub_info3` text COLLATE utf8_unicode_ci,
  `page_sub_info4` text COLLATE utf8_unicode_ci,
  `page_sub_info5` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page`
--

INSERT INTO `page` (`page_id`, `page_name`, `page_des`, `page_content`, `page_img`, `page_created_date`, `page_update_date`, `state`, `page_sub_info1`, `page_sub_info2`, `page_sub_info3`, `page_sub_info4`, `page_sub_info5`, `keyword`, `title_seo`, `des_seo`, `friendly_url`, `created_id`) VALUES
(35, 'Về chúng tôi', '', '', 'tuyển dụng.png', '2017-05-11 16:05:22', '2020-09-04 08:09:52', 1, '', '', '', '', '', '', 'Về chúng tôi', '', 've-chung-toi', 1),
(36, 'Chuyên nhận đặt hàng', 'Bảng giá dịch thuật công chứng Giá tốt, chất lượng cao, dịch ngay\r\nHơn 8000 CTV Dịch thuật · Hơn 10 năm kinh nghiệm · 100% khách hàng hài lòng', '<h2><strong>PHƯƠNG THỨC GIAO DỊCH ĐỐI VỚI B&Aacute;O GI&Aacute; DỊCH THUẬT</strong></h2>\r\n\r\n<p>1. Ch&uacute;ng t&ocirc;i sẽ giao nhận t&agrave;i liệu tận nơi với những đơn đặt h&agrave;ng tr&ecirc;n 50 trang t&agrave;i liệu.<br />\r\n2. Để tiến h&agrave;nh c&ocirc;ng t&aacute;c dịch thuật v&agrave; phi&ecirc;n dịch Hợp đồng Qu&yacute; kh&aacute;ch cần đặt trước 30% gi&aacute; trị hợp đồng.<br />\r\n3. Nếu qu&yacute; kh&aacute;ch l&agrave; c&ocirc;ng ty c&oacute; nhu cầu dịch thuật dưới 10 trang, Qu&yacute; kh&aacute;ch chỉ cần fax x&aacute;c nhận y&ecirc;u cầu c&oacute; đầy đủ th&ocirc;ng tin li&ecirc;n quan k&egrave;m con dấu, ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh thực hiện y&ecirc;u cầu dịch m&agrave; kh&ocirc;ng cần tiền đặt cọc hợp đồng.<br />\r\n4. Đối với kh&aacute;ch h&agrave;ng thường xuy&ecirc;n dịch tại C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i sẽ giao nhận tận nơi miễn ph&iacute;.</p>\r\n\r\n<p><strong>Phần ưu ti&ecirc;n kh&aacute;ch h&agrave;ng dịch với số lượng lớn</strong><br />\r\n1. Giảm 5% với số lượng từ 100 &ndash; 500 trang<br />\r\n2. Giảm 10% với số lượng từ 500 &ndash; 1000 trang<br />\r\n3. Giảm 15% với số lượng 1000 trang trở l&ecirc;n</p>\r\n\r\n<p><strong>Lưu &yacute; quan trọng:</strong></p>\r\n\r\n<ul>\r\n	<li>Gi&aacute; dịch chưa bao gồm VAT (10%).</li>\r\n	<li>Mức gi&aacute; tr&ecirc;n kh&ocirc;ng &aacute;p dụng đối với Kh&aacute;ch h&agrave;ng dịch chuy&ecirc;n ng&agrave;nh, dịch gấp, c&ocirc;ng chứng gấp.</li>\r\n	<li>Văn bản hiệu đ&iacute;nh: Hiệu đ&iacute;nh = 50% tiền dịch. Nếu t&agrave;i liệu hiệu đ&iacute;nh sai tr&ecirc;n 30% th&igrave; bản hiệu đ&iacute;nh đ&oacute; được t&iacute;nh bằng tiền dịch.</li>\r\n	<li>Số lượng từ tr&ecirc;n một trang được quy định dưới 300 từ (D&ugrave;ng hệ thống đếm từ tự động Word Count), trường hợp t&agrave;i liệu của qu&yacute; kh&aacute;ch l&agrave; bản cứng kh&ocirc;ng thể đếm từ được sẽ t&iacute;nh x&aacute;c xuất hoặc t&iacute;nh theo bản dịch l&uacute;c n&agrave;y số lượng từ tr&ecirc;n trang sản phẩm c&oacute; thể quy định lại, th&ocirc;ng thường sẽ giao động 10-20%.</li>\r\n	<li>Gi&aacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y sang tiếng nước ngo&agrave;i kh&aacute;c sẽ bằng chi ph&iacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y ra tiếng Việt cộng với từ tiếng Việt sang tiếng nước ngo&agrave;i thứ hai hoặc sẽ t&iacute;nh ph&iacute; dịch trực tiếp nếu c&oacute; y&ecirc;u cầu người bản địa dịch thuật lại</li>\r\n	<li>Nếu qu&yacute; kh&aacute;ch y&ecirc;u cầu dịch gấp, dịch v&agrave;o ng&agrave;y nghỉ, ng&agrave;y lễ gi&aacute; dịch sẽ tăng 25 %, th&ocirc;ng thường đơn đặt h&agrave;ng tr&ecirc;n 20 trang lấy trong ng&agrave;y được coi l&agrave; gấp. Nếu l&agrave; kh&aacute;ch h&agrave;ng thường xuy&ecirc;n của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; qu&yacute; kh&aacute;ch sẽ được miễn ph&iacute; dịch vụ cộng th&ecirc;m n&agrave;y.</li>\r\n	<li>Đối với t&agrave;i liệu chuy&ecirc;n ng&agrave;nh như: Hợp đồng kinh tế, kỹ thuật, thương mại, t&agrave;i ch&iacute;nh,y học, dược phẩm... th&igrave; ngo&agrave;i tiền dịch + 30% tiền dịch chuy&ecirc;n ng&agrave;nh.</li>\r\n</ul>\r\n\r\n<h3>BẢNG GI&Aacute; DỊCH THUẬT N&Agrave;Y C&Oacute; THỂ THAY ĐỔI PHỤ THUỘC V&Agrave;O NHU CẦU THỰC TẾ CỦA DỰ &Aacute;N, HỢP ĐỒNG V&Agrave; SỰ THỎA THUẬN GIỮA HAI B&Ecirc;N !</h3>\r\n\r\n<p>Chuyển ngữ v&agrave; địa phương h&oacute;a t&agrave;i liệu rất quan trọng n&oacute; c&oacute; ảnh hưởng rất lớn đến c&ocirc;ng việc v&agrave; quyết định trong dự &aacute;n của bạn. Qu&yacute; kh&aacute;ch đang t&igrave;m một đơn vị&nbsp;<a href=\"https://www.dichthuatchaua.com/bien-phien-dich/dich-thuat/dich-thuat-cong-chung.html\" title=\"Dịch thuật công chứng\">Dịch Thuật</a>&nbsp;chuy&ecirc;n nghiệp v&agrave; gi&agrave;u kinh nghiệm trong việc Địa phương h&oacute;a t&agrave;i liệu, đảm bảo thời gian ch&iacute;nh x&aacute;c v&agrave; chất lượng tuyệt đối, chi ph&iacute; hợp l&yacute; nhất. H&atilde;y li&ecirc;n hệ ngay với&nbsp;<a href=\"https://www.dichthuatchaua.com/gioi-thieu-cong-ty-dich-thuat.html\" title=\"Công ty dịch thuật chuyên nghiệp\">C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;</a>&nbsp;để được nhưng chuy&ecirc;n gia tư vấn chuy&ecirc;n nghiệp, gi&agrave;u kinh nghiệm gi&uacute;p Qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/image/images/55e7557453f13-sierra-fig2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dự &aacute;n, Hợp đồng của Qu&yacute; kh&aacute;ch h&agrave;ng rất quan trọng, Qu&yacute; kh&aacute;ch h&agrave;ng đang muốn t&igrave;m một đơn vị Dịch thuật c&oacute; thể đảm bảo về thời gian, chất lượng v&agrave; cung cấp gi&aacute; cả tốt nhất, h&atilde;y li&ecirc;n lạc với số Hotline: 0932232318 (H&agrave; Nội) hoặc 0932237939 (TP HCM) của Dich thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; sẽ l&agrave;m Qu&yacute; kh&aacute;ch h&agrave;i l&ograve;ng.</p>\r\n\r\n<p>Cảm ơn Qu&yacute; kh&aacute;ch đ&atilde; ngh&eacute; thăm website của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i lu&ocirc;n cam kết đưa ra mức gi&aacute; cạnh tranh v&agrave; chất lương v&agrave; bảo mật bảo đảm tuyệt đối.</p>\r\n', NULL, '2017-05-11 16:05:03', '2018-08-24 19:08:39', 1, '', '', '', '', '', 'báo giá dịch vụ', 'Chuyên nhận đặt hàng', '\"Làm kế toán phải có Tâm với Doanh nghiệp. Đang Tư vấn Miễn Phí. Tìm hiểu ngay!\r\nBảo hành trọn đời · Bảo vệ Doanh Nghiệp\"', 'chuyen-nhan-dat-hang', 1),
(37, 'Tuyển dụng', '', '', NULL, '2017-05-18 02:05:05', '2020-09-04 08:09:04', 1, '', '', '', '', '', '', 'Tuyển Dụng', '', 'tuyen-cong-tac-vien', 1),
(40, 'Chính sách bảo mật', '', '', NULL, '2017-07-10 22:07:44', '2020-09-04 08:09:12', 1, '', '', '', '', '', '', 'Chính sách bảo mật', '', 'chinh-sach-bao-mat', 1),
(46, ' Hệ thống', '', '', NULL, '2018-03-27 11:03:18', '2018-10-30 10:10:10', 1, '', '', '', '', '', '', ' Hệ thống', '', 'he-thong', 1),
(47, 'Ưu đãi khách hàng thân thiết', '', '', '', '2020-09-04 08:09:49', NULL, 1, '', '', '', '', '', '', 'Ưu đãi khách hàng thân thiết', '', 'uu-dai-khach-hang-than-thiet', 1),
(48, 'Chính sách bảo hành trọn đời', '', '', '', '2020-09-04 08:09:18', NULL, 1, '', '', '', '', '', '', 'Chính sách bảo hành trọn đời', '', 'chinh-sach-bao-hanh-tron-doi', 1),
(49, 'Chính sách giao nhận', '', '', '', '2020-09-04 08:09:50', NULL, 1, '', '', '', '', '', '', 'Chính sách giao nhận', '', 'chinh-sach-giao-nhan', 1),
(50, 'Chính sách đổi sản phẩm', '', '', '', '2020-09-04 08:09:13', NULL, 1, '', '', '', '', '', '', 'Chính sách đổi sản phẩm', '', 'chinh-sach-doi-san-pham', 1),
(51, 'Hướng dẫn mua hàng', '', '', '', '2020-09-04 08:09:46', NULL, 1, '', '', '', '', '', '', 'Hướng dẫn mua hàng', '', 'huong-dan-mua-hang', 1),
(52, 'Tra cứu bảo hành', '', '', '', '2020-09-04 08:09:14', NULL, 1, '', '', '', '', '', '', 'Tra cứu bảo hành', '', 'tra-cuu-bao-hanh', 1),
(53, 'Quy định về phiếu quà tặng', '', '', '', '2020-09-04 08:09:37', NULL, 1, '', '', '', '', '', '', 'Quy định về phiếu quà tặng', '', 'quy-dinh-ve-phieu-qua-tang', 1),
(54, 'Điều khoản sử dụng', '', '<p>Nội dung đang cập nhật</p>\r\n', NULL, '2020-09-04 08:09:56', '2021-04-01 08:04:58', 1, '', '', '', '', '', '', 'Điều khoản sử dụng', '', 'dieu-khoan-su-dung-1', 1),
(55, 'Bảng giá', '', '<p style=\"text-align:center\"><img alt=\"\" height=\"393\" src=\"/image/images/2/bang-gia-1.PNG\" width=\"902\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"436\" src=\"/image/images/2/bang-gia-2.PNG\" width=\"904\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"770\" src=\"/image/images/2/bang-gia.png\" width=\"1013\" /></p>\r\n\r\n<p>&nbsp;<span style=\"color:#e74c3c\">Ch&uacute; &yacute;:</span></p>\r\n\r\n<p>Gi&aacute; tr&ecirc;n l&agrave; gi&aacute; chưa bao gồm ph&iacute; cầu đường, v&eacute; v&agrave;o cửa.</p>\r\n\r\n<p>Gi&aacute; tr&ecirc;n thay đổi phụ thuộc v&agrave;o khung giờ xuất ph&aacute;t của qu&yacute; kh&aacute;ch</p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i c&oacute; ch&iacute;nh s&aacute;ch gi&aacute; cực kỳ linh động cho Q&uacute;y kh&aacute;ch. Vui l&ograve;ng li&ecirc;n hệ hotline:<em><strong><span style=\"color:#e74c3c\"> 0376 404 992</span></strong></em> để c&oacute; gi&aacute; tốt nhất.</p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i cam kết sử dụng xe mới sang trọng (Mazda 3, Mazda 6, Toyota Vios, Chevrolet Cruze, &nbsp;Innova , &nbsp;Fortuner , Ford Transit v&agrave; xe 16 để phục vụ Q&uacute;y kh&aacute;ch.</p>\r\n\r\n<p>Đặc biệt, tuyến Nội B&agrave;i - H&agrave; Nội, l&aacute;i xe của ch&uacute;ng t&ocirc;i sẽ c&oacute; Biển đ&oacute;n Qu&yacute; kh&aacute;ch với th&ocirc;ng tin theo y&ecirc;u cầu.</p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i cam kết sẽ mang đến kh&aacute;ch h&agrave;ng dịch vụ thuận tiện v&agrave; thoải m&aacute;i nhất.</p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i lu&ocirc;n tr&acirc;n trọng đ&oacute;n nhận mọi &yacute; kiến đ&oacute;ng g&oacute;p của Qu&yacute; kh&aacute;ch h&agrave;ng để dịch vụ ng&agrave;y c&agrave;ng ho&agrave;n thiện th&ecirc;m.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><em><strong><span style=\"color:#2ecc71\">RẤT H&Acirc;N HẠNH ĐƯỢC PHỤC VỤ QU&Yacute; KH&Aacute;CH</span></strong></em></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n', NULL, '2021-03-31 17:03:20', '2021-04-02 16:04:40', 1, '', '', '', '', '', '', 'Bảng giá', '', 'bang-gia', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page_languages`
--

CREATE TABLE `page_languages` (
  `id` bigint(20) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_name` text COLLATE utf8_unicode_ci,
  `lang_page_des` text COLLATE utf8_unicode_ci,
  `lang_page_content` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page_languages`
--

INSERT INTO `page_languages` (`id`, `page_id`, `languages_code`, `lang_page_name`, `lang_page_des`, `lang_page_content`, `lang_page_sub_info1`, `lang_page_sub_info2`, `lang_page_sub_info3`, `lang_page_sub_info4`, `lang_page_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `keyword`, `des_seo`) VALUES
(35, 35, 'vn', 'Về chúng tôi', '', '', '', '', '', '', '', 0, 've-chung-toi', 'Về chúng tôi', '', ''),
(36, 35, 'en', 'Giới thiệu', 'Giới thiệu công ty. Được thành lập vào năm 1993, Công ty Cổ Phần Kỹ Thuật Toàn Thắng được biết đến như một nhà cung cấp chuyên nghiệp các giải pháp ...', '<p>Được th&agrave;nh lập v&agrave;o năm 1993, C&ocirc;ng ty Cổ Phần Kỹ Thuật To&agrave;n Thắng được biết đến như một&nbsp; nh&agrave; cung cấp chuy&ecirc;n nghiệp c&aacute;c giải ph&aacute;p thiết bị v&agrave; dịch vụ kỹ thuật chất lượng cao, c&ocirc;ng nghệ ti&ecirc;n tiến&nbsp;cho kh&aacute;ch h&agrave;ng ng&agrave;nh dầu kh&iacute;, điện lực v&agrave; một số ng&agrave;nh c&ocirc;ng nghiệp nặng kh&aacute;c.</p>\r\n\r\n<p>C&ocirc;ng ty c&oacute; văn ph&ograve;ng ch&iacute;nh tại TP. Hồ Ch&iacute; Minh v&agrave; một c&ocirc;ng ty con tại TP. Vũng T&agrave;u. Với đội ngũ chuy&ecirc;n gia, kỹ sư được đ&agrave;o tạo chuy&ecirc;n s&acirc;u, chuy&ecirc;n tr&aacute;ch từng mảng sản phẩm, ch&uacute;ng t&ocirc;i lu&ocirc;n đem đến cho kh&aacute;ch h&agrave;ng những giải ph&aacute;p kỹ thuật, thương mại đa dạng, đ&aacute;p ứng tốt nhu cầu ng&agrave;y c&agrave;ng cao của kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p><img alt=\"\" src=\"/image/images/670px-conceptualmapfloss(1).png\" style=\"float:right; height:564px; width:670px\" /></p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i cũng đảm nhận cung cấp c&aacute;c dịch vụ sau b&aacute;n h&agrave;ng như: Bảo tr&igrave;, đại tu, sửa chữa, đ&agrave;o tạo, hướng dẫn sử dụng, dịch vụ quản l&yacute; t&agrave;i sản &amp; hợp đồng v&agrave; c&aacute;c dịch vụ kh&aacute;c tại c&ocirc;ng trường cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 0, 'gioi-thieu', 'Giới thiệu', '', 'Mô tả cho bài viết giới thiệu'),
(37, 36, 'vn', 'Chuyên nhận đặt hàng', 'Bảng giá dịch thuật công chứng Giá tốt, chất lượng cao, dịch ngay\r\nHơn 8000 CTV Dịch thuật · Hơn 10 năm kinh nghiệm · 100% khách hàng hài lòng', '<h2><strong>PHƯƠNG THỨC GIAO DỊCH ĐỐI VỚI B&Aacute;O GI&Aacute; DỊCH THUẬT</strong></h2>\r\n\r\n<p>1. Ch&uacute;ng t&ocirc;i sẽ giao nhận t&agrave;i liệu tận nơi với những đơn đặt h&agrave;ng tr&ecirc;n 50 trang t&agrave;i liệu.<br />\r\n2. Để tiến h&agrave;nh c&ocirc;ng t&aacute;c dịch thuật v&agrave; phi&ecirc;n dịch Hợp đồng Qu&yacute; kh&aacute;ch cần đặt trước 30% gi&aacute; trị hợp đồng.<br />\r\n3. Nếu qu&yacute; kh&aacute;ch l&agrave; c&ocirc;ng ty c&oacute; nhu cầu dịch thuật dưới 10 trang, Qu&yacute; kh&aacute;ch chỉ cần fax x&aacute;c nhận y&ecirc;u cầu c&oacute; đầy đủ th&ocirc;ng tin li&ecirc;n quan k&egrave;m con dấu, ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh thực hiện y&ecirc;u cầu dịch m&agrave; kh&ocirc;ng cần tiền đặt cọc hợp đồng.<br />\r\n4. Đối với kh&aacute;ch h&agrave;ng thường xuy&ecirc;n dịch tại C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i sẽ giao nhận tận nơi miễn ph&iacute;.</p>\r\n\r\n<p><strong>Phần ưu ti&ecirc;n kh&aacute;ch h&agrave;ng dịch với số lượng lớn</strong><br />\r\n1. Giảm 5% với số lượng từ 100 &ndash; 500 trang<br />\r\n2. Giảm 10% với số lượng từ 500 &ndash; 1000 trang<br />\r\n3. Giảm 15% với số lượng 1000 trang trở l&ecirc;n</p>\r\n\r\n<p><strong>Lưu &yacute; quan trọng:</strong></p>\r\n\r\n<ul>\r\n	<li>Gi&aacute; dịch chưa bao gồm VAT (10%).</li>\r\n	<li>Mức gi&aacute; tr&ecirc;n kh&ocirc;ng &aacute;p dụng đối với Kh&aacute;ch h&agrave;ng dịch chuy&ecirc;n ng&agrave;nh, dịch gấp, c&ocirc;ng chứng gấp.</li>\r\n	<li>Văn bản hiệu đ&iacute;nh: Hiệu đ&iacute;nh = 50% tiền dịch. Nếu t&agrave;i liệu hiệu đ&iacute;nh sai tr&ecirc;n 30% th&igrave; bản hiệu đ&iacute;nh đ&oacute; được t&iacute;nh bằng tiền dịch.</li>\r\n	<li>Số lượng từ tr&ecirc;n một trang được quy định dưới 300 từ (D&ugrave;ng hệ thống đếm từ tự động Word Count), trường hợp t&agrave;i liệu của qu&yacute; kh&aacute;ch l&agrave; bản cứng kh&ocirc;ng thể đếm từ được sẽ t&iacute;nh x&aacute;c xuất hoặc t&iacute;nh theo bản dịch l&uacute;c n&agrave;y số lượng từ tr&ecirc;n trang sản phẩm c&oacute; thể quy định lại, th&ocirc;ng thường sẽ giao động 10-20%.</li>\r\n	<li>Gi&aacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y sang tiếng nước ngo&agrave;i kh&aacute;c sẽ bằng chi ph&iacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y ra tiếng Việt cộng với từ tiếng Việt sang tiếng nước ngo&agrave;i thứ hai hoặc sẽ t&iacute;nh ph&iacute; dịch trực tiếp nếu c&oacute; y&ecirc;u cầu người bản địa dịch thuật lại</li>\r\n	<li>Nếu qu&yacute; kh&aacute;ch y&ecirc;u cầu dịch gấp, dịch v&agrave;o ng&agrave;y nghỉ, ng&agrave;y lễ gi&aacute; dịch sẽ tăng 25 %, th&ocirc;ng thường đơn đặt h&agrave;ng tr&ecirc;n 20 trang lấy trong ng&agrave;y được coi l&agrave; gấp. Nếu l&agrave; kh&aacute;ch h&agrave;ng thường xuy&ecirc;n của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; qu&yacute; kh&aacute;ch sẽ được miễn ph&iacute; dịch vụ cộng th&ecirc;m n&agrave;y.</li>\r\n	<li>Đối với t&agrave;i liệu chuy&ecirc;n ng&agrave;nh như: Hợp đồng kinh tế, kỹ thuật, thương mại, t&agrave;i ch&iacute;nh,y học, dược phẩm... th&igrave; ngo&agrave;i tiền dịch + 30% tiền dịch chuy&ecirc;n ng&agrave;nh.</li>\r\n</ul>\r\n\r\n<h3>BẢNG GI&Aacute; DỊCH THUẬT N&Agrave;Y C&Oacute; THỂ THAY ĐỔI PHỤ THUỘC V&Agrave;O NHU CẦU THỰC TẾ CỦA DỰ &Aacute;N, HỢP ĐỒNG V&Agrave; SỰ THỎA THUẬN GIỮA HAI B&Ecirc;N !</h3>\r\n\r\n<p>Chuyển ngữ v&agrave; địa phương h&oacute;a t&agrave;i liệu rất quan trọng n&oacute; c&oacute; ảnh hưởng rất lớn đến c&ocirc;ng việc v&agrave; quyết định trong dự &aacute;n của bạn. Qu&yacute; kh&aacute;ch đang t&igrave;m một đơn vị&nbsp;<a href=\"https://www.dichthuatchaua.com/bien-phien-dich/dich-thuat/dich-thuat-cong-chung.html\" title=\"Dịch thuật công chứng\">Dịch Thuật</a>&nbsp;chuy&ecirc;n nghiệp v&agrave; gi&agrave;u kinh nghiệm trong việc Địa phương h&oacute;a t&agrave;i liệu, đảm bảo thời gian ch&iacute;nh x&aacute;c v&agrave; chất lượng tuyệt đối, chi ph&iacute; hợp l&yacute; nhất. H&atilde;y li&ecirc;n hệ ngay với&nbsp;<a href=\"https://www.dichthuatchaua.com/gioi-thieu-cong-ty-dich-thuat.html\" title=\"Công ty dịch thuật chuyên nghiệp\">C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;</a>&nbsp;để được nhưng chuy&ecirc;n gia tư vấn chuy&ecirc;n nghiệp, gi&agrave;u kinh nghiệm gi&uacute;p Qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/image/images/55e7557453f13-sierra-fig2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dự &aacute;n, Hợp đồng của Qu&yacute; kh&aacute;ch h&agrave;ng rất quan trọng, Qu&yacute; kh&aacute;ch h&agrave;ng đang muốn t&igrave;m một đơn vị Dịch thuật c&oacute; thể đảm bảo về thời gian, chất lượng v&agrave; cung cấp gi&aacute; cả tốt nhất, h&atilde;y li&ecirc;n lạc với số Hotline: 0932232318 (H&agrave; Nội) hoặc 0932237939 (TP HCM) của Dich thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; sẽ l&agrave;m Qu&yacute; kh&aacute;ch h&agrave;i l&ograve;ng.</p>\r\n\r\n<p>Cảm ơn Qu&yacute; kh&aacute;ch đ&atilde; ngh&eacute; thăm website của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i lu&ocirc;n cam kết đưa ra mức gi&aacute; cạnh tranh v&agrave; chất lương v&agrave; bảo mật bảo đảm tuyệt đối.</p>\r\n', '', '', '', '', '', 0, 'chuyen-nhan-dat-hang', 'Chuyên nhận đặt hàng', 'báo giá dịch vụ', '\"Làm kế toán phải có Tâm với Doanh nghiệp. Đang Tư vấn Miễn Phí. Tìm hiểu ngay!\r\nBảo hành trọn đời · Bảo vệ Doanh Nghiệp\"'),
(38, 36, 'en', 'Báo giá', 'Bảng giá dịch thuật công chứng Giá tốt, chất lượng cao, dịch ngay\r\nHơn 8000 CTV Dịch thuật · Hơn 10 năm kinh nghiệm · 100% khách hàng hài lòng', '<h2><strong>PHƯƠNG THỨC GIAO DỊCH ĐỐI VỚI B&Aacute;O GI&Aacute; DỊCH THUẬT</strong></h2>\r\n\r\n<p>1. Ch&uacute;ng t&ocirc;i sẽ giao nhận t&agrave;i liệu tận nơi với những đơn đặt h&agrave;ng tr&ecirc;n 50 trang t&agrave;i liệu.<br />\r\n2. Để tiến h&agrave;nh c&ocirc;ng t&aacute;c dịch thuật v&agrave; phi&ecirc;n dịch Hợp đồng Qu&yacute; kh&aacute;ch cần đặt trước 30% gi&aacute; trị hợp đồng.<br />\r\n3. Nếu qu&yacute; kh&aacute;ch l&agrave; c&ocirc;ng ty c&oacute; nhu cầu dịch thuật dưới 10 trang, Qu&yacute; kh&aacute;ch chỉ cần fax x&aacute;c nhận y&ecirc;u cầu c&oacute; đầy đủ th&ocirc;ng tin li&ecirc;n quan k&egrave;m con dấu, ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh thực hiện y&ecirc;u cầu dịch m&agrave; kh&ocirc;ng cần tiền đặt cọc hợp đồng.<br />\r\n4. Đối với kh&aacute;ch h&agrave;ng thường xuy&ecirc;n dịch tại C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i sẽ giao nhận tận nơi miễn ph&iacute;.</p>\r\n\r\n<p><strong>Phần ưu ti&ecirc;n kh&aacute;ch h&agrave;ng dịch với số lượng lớn</strong><br />\r\n1. Giảm 5% với số lượng từ 100 &ndash; 500 trang<br />\r\n2. Giảm 10% với số lượng từ 500 &ndash; 1000 trang<br />\r\n3. Giảm 15% với số lượng 1000 trang trở l&ecirc;n</p>\r\n\r\n<p><strong>Lưu &yacute; quan trọng:</strong></p>\r\n\r\n<ul>\r\n	<li>Gi&aacute; dịch chưa bao gồm VAT (10%).</li>\r\n	<li>Mức gi&aacute; tr&ecirc;n kh&ocirc;ng &aacute;p dụng đối với Kh&aacute;ch h&agrave;ng dịch chuy&ecirc;n ng&agrave;nh, dịch gấp, c&ocirc;ng chứng gấp.</li>\r\n	<li>Văn bản hiệu đ&iacute;nh: Hiệu đ&iacute;nh = 50% tiền dịch. Nếu t&agrave;i liệu hiệu đ&iacute;nh sai tr&ecirc;n 30% th&igrave; bản hiệu đ&iacute;nh đ&oacute; được t&iacute;nh bằng tiền dịch.</li>\r\n	<li>Số lượng từ tr&ecirc;n một trang được quy định dưới 300 từ (D&ugrave;ng hệ thống đếm từ tự động Word Count), trường hợp t&agrave;i liệu của qu&yacute; kh&aacute;ch l&agrave; bản cứng kh&ocirc;ng thể đếm từ được sẽ t&iacute;nh x&aacute;c xuất hoặc t&iacute;nh theo bản dịch l&uacute;c n&agrave;y số lượng từ tr&ecirc;n trang sản phẩm c&oacute; thể quy định lại, th&ocirc;ng thường sẽ giao động 10-20%.</li>\r\n	<li>Gi&aacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y sang tiếng nước ngo&agrave;i kh&aacute;c sẽ bằng chi ph&iacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y ra tiếng Việt cộng với từ tiếng Việt sang tiếng nước ngo&agrave;i thứ hai hoặc sẽ t&iacute;nh ph&iacute; dịch trực tiếp nếu c&oacute; y&ecirc;u cầu người bản địa dịch thuật lại</li>\r\n	<li>Nếu qu&yacute; kh&aacute;ch y&ecirc;u cầu dịch gấp, dịch v&agrave;o ng&agrave;y nghỉ, ng&agrave;y lễ gi&aacute; dịch sẽ tăng 25 %, th&ocirc;ng thường đơn đặt h&agrave;ng tr&ecirc;n 20 trang lấy trong ng&agrave;y được coi l&agrave; gấp. Nếu l&agrave; kh&aacute;ch h&agrave;ng thường xuy&ecirc;n của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; qu&yacute; kh&aacute;ch sẽ được miễn ph&iacute; dịch vụ cộng th&ecirc;m n&agrave;y.</li>\r\n	<li>Đối với t&agrave;i liệu chuy&ecirc;n ng&agrave;nh như: Hợp đồng kinh tế, kỹ thuật, thương mại, t&agrave;i ch&iacute;nh,y học, dược phẩm... th&igrave; ngo&agrave;i tiền dịch + 30% tiền dịch chuy&ecirc;n ng&agrave;nh.</li>\r\n</ul>\r\n\r\n<h3>BẢNG GI&Aacute; DỊCH THUẬT N&Agrave;Y C&Oacute; THỂ THAY ĐỔI PHỤ THUỘC V&Agrave;O NHU CẦU THỰC TẾ CỦA DỰ &Aacute;N, HỢP ĐỒNG V&Agrave; SỰ THỎA THUẬN GIỮA HAI B&Ecirc;N !</h3>\r\n\r\n<p>Chuyển ngữ v&agrave; địa phương h&oacute;a t&agrave;i liệu rất quan trọng n&oacute; c&oacute; ảnh hưởng rất lớn đến c&ocirc;ng việc v&agrave; quyết định trong dự &aacute;n của bạn. Qu&yacute; kh&aacute;ch đang t&igrave;m một đơn vị&nbsp;<a href=\"https://www.dichthuatchaua.com/bien-phien-dich/dich-thuat/dich-thuat-cong-chung.html\" title=\"Dịch thuật công chứng\">Dịch Thuật</a>&nbsp;chuy&ecirc;n nghiệp v&agrave; gi&agrave;u kinh nghiệm trong việc Địa phương h&oacute;a t&agrave;i liệu, đảm bảo thời gian ch&iacute;nh x&aacute;c v&agrave; chất lượng tuyệt đối, chi ph&iacute; hợp l&yacute; nhất. H&atilde;y li&ecirc;n hệ ngay với&nbsp;<a href=\"https://www.dichthuatchaua.com/gioi-thieu-cong-ty-dich-thuat.html\" title=\"Công ty dịch thuật chuyên nghiệp\">C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;</a>&nbsp;để được nhưng chuy&ecirc;n gia tư vấn chuy&ecirc;n nghiệp, gi&agrave;u kinh nghiệm gi&uacute;p Qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p><img alt=\"\" src=\"/image/images/55e7557453f13-sierra-fig2.jpg\" style=\"height:800px; width:1600px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dự &aacute;n, Hợp đồng của Qu&yacute; kh&aacute;ch h&agrave;ng rất quan trọng, Qu&yacute; kh&aacute;ch h&agrave;ng đang muốn t&igrave;m một đơn vị Dịch thuật c&oacute; thể đảm bảo về thời gian, chất lượng v&agrave; cung cấp gi&aacute; cả tốt nhất, h&atilde;y li&ecirc;n lạc với số Hotline: 0932232318 (H&agrave; Nội) hoặc 0932237939 (TP HCM) của Dich thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; sẽ l&agrave;m Qu&yacute; kh&aacute;ch h&agrave;i l&ograve;ng.</p>\r\n\r\n<p>Cảm ơn Qu&yacute; kh&aacute;ch đ&atilde; ngh&eacute; thăm website của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i lu&ocirc;n cam kết đưa ra mức gi&aacute; cạnh tranh v&agrave; chất lương v&agrave; bảo mật bảo đảm tuyệt đối.</p>\r\n', '', '', '', '', '', 0, 'bao-gia', 'Báo giá', '', 'thẻ mô tả của bài viết báo giá'),
(39, 37, 'vn', 'Tuyển dụng', '', '', '', '', '', '', '', 0, 'tuyen-cong-tac-vien', 'Tuyển Dụng', '', ''),
(40, 37, 'en', 'Tuyển Cộng Tác Viên ', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!', '<p>1. Nội dung c&ocirc;ng việc :<br />\r\n<br />\r\n. Triển khai c&aacute;c bản vẽ nội thất để sản xuất : tủ, giường, b&agrave;n, ghế.... bằng phần mềm autocad<br />\r\n<br />\r\n. Hỗ trợ kiểm tra đối chiếu bản vẽ với b&ecirc;n sản xuất hoặc tại c&ocirc;ng tr&igrave;nh<br />\r\n<br />\r\n2. Y&ecirc;u cầu :<br />\r\n<br />\r\n. Nam/ nữ c&oacute; kinh nghiệm tối thiểu 1 năm về họa vi&ecirc;n autocad cho c&aacute;c xưởng sản xuất nội thất<br />\r\n<br />\r\n. C&oacute; hiểu biết về kết cấu , kỹ thuật sản phẩm, thao t&aacute;c nhanh tr&ecirc;n phần mềm Autocad<br />\r\n<br />\r\n. C&oacute; phương tiện đi lại<br />\r\n<br />\r\n. C&oacute; thể đi c&ocirc;ng t&aacute;c ngắn hạn.<br />\r\n<br />\r\n. C&oacute; thể tăng ca theo y&ecirc;u cầu<br />\r\n<br />\r\n3. Chế độ :<br />\r\n<br />\r\n. Lương : 6.000.000 VND / th&aacute;ng hoặc thỏa thuận<br />\r\n<br />\r\n. L&agrave;m việc tại showroom 233B B&ugrave;i Thị Xu&acirc;n T&acirc;n B&igrave;nh HCM<br />\r\n<br />\r\n. Lương th&aacute;ng 13. ph&eacute;p năm, thưởng chuy&ecirc;n cần. thưởng lễ tết<br />\r\n<br />\r\n4. Th&ocirc;ng tin kh&aacute;c:<br />\r\n<br />\r\n. Nộp hồ sơ trực tiếp hoặc trực tuyến<br />\r\n<br />\r\n. Hồ sơ c&oacute; c&aacute;c bản vẽ đ&atilde; từng thực hiện<br />\r\n<br />\r\n. Tham khảo th&ecirc;m th&ocirc;ng tin c&ocirc;ng ty tại : www.zenhomes.vn<br />\r\n<br />\r\nLoại h&igrave;nh c&ocirc;ng việc: To&agrave;n thời gian<br />\r\n<br />\r\nLương: ₫6.000.000 /th&aacute;ng<br />\r\n<br />\r\nKinh nghiệm y&ecirc;u cầu:<br />\r\n<br />\r\nkhai triển autocad nội thất: 1 năm</p>\r\n', '', '', '', '', '', 0, 'tuyen-cong-tac-vien', 'Tuyển Cộng Tác Viên ', 'tuyên cộng tác viên', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!'),
(45, 40, 'vn', 'Chính sách bảo mật', '', '', '', '', '', '', '', 0, 'chinh-sach-bao-mat', 'Chính sách bảo mật', '', ''),
(46, 40, 'en', 'Chính sách bảo mật', '', 'DP GREEN-PHAR CAM KẾT BẢO MẬT THÔNG TIN CÁ NHÂN CỦA TẤT CẢ KHÁCH HÀNG. Cảm ơn bạn đã truy cập website: www.greenphar.com\r\nChúng tôi hiểu rõ tầm quan trọng của sự riêng tư và sẽ giữ bí mật thông tin cá nhân của bạn. Xin vui lòng đọc bản Chính sách bảo mật thông tin này và hiểu các hành động liên quan về thông tin cá nhân của bạn. Chính sách bảo mật thông tin này có thể thay đổi mà không thông báo trước, do đó bạn vui lòng thường xuyên rà soát, cập nhật các điều khoản để biết những thay đổi. ĐIỀU 1. MỤC ĐÍCH VÀ PHẠM VI THU THẬP THÔNG TIN1.1. Mục đích thu thập thông tin:Chúng tôi thực hiện việc thu thập thông tin của bạn thông qua website này nhằm:\r\nDP GREEN-PHAR trung tâm tư vấn & tìm giải pháp xử lý các bệnh ngoài cộng đồng.\r\nGiải đáp thắc mắc của bạn về vấn đề các bệnh mà bạn thắc mắc và quan tâm.\r\nGiới thiệu các hàng hóa và dịch vụ có thể phù hợp với các nhu cầu và sở thích của bạn.\r\nCung cấp những thông tin mới nhất của website.\r\nXem xét và nâng cấp nội dung, giao diện của website.\r\nThực hiện hoạt động khảo sát khách hàng.\r\nThực hiện các hoạt động quảng bá sản phẩm và giới thiệu những chương trình khuyến mãi.\r\nGiải quyết các vấn đề, tranh chấp phát sinh liên quan đến việc sử dụng website.\r\nChúng tôi bảo lưu quyền từ chối trách nhiệm về bất kỳ thiệt hại nào phát sinh nếu thông tin cá nhân của bạn bị đánh cắp, bị mất hoặc bị thiệt hại do sự cố hoặc bằng bất kỳ cách nào khác. 1.2. Phạm vi thu thập thông tin cá nhân:Thông tin cá nhân mà chúng tôi thu thập của bạn khi bạn gửi thắc mắc về cho chúng tôi, bao gồm:\r\nHọ, tên, Năm sinh.\r\nĐịa chỉ liên hệ.\r\nĐiện thoại liên hệ.\r\nEmail.\r\nThông tin bệnh lý và những thắc mắc về bệnh học liên quan. ĐIỀU 2. PHẠM VI SỬ DỤNG THÔNG TINThông tin của bạn được sử dụng để chúng tôi hoặc các bên có liên quan khác có thể thực hiện các yêu cầu của bạn.\r\nChúng tôi có thể liên hệ với bạn hoặc giới thiệu bạn đến các cuộc nghiên cứu bao gồm nghiên cứu sự hài lòng của khách hàng, thị trường, nội dung cá nhân khác, hoặc có liên quan đến một số giao dịch nhất định.\r\nChúng tôi thu thập thông tin về truy cập website của bạn gồm những thông tin có thể nhận biết và không thể nhận biết để phân tích (ví dụ: dữ liệu phân tích việc truy cập website, …).\r\nThông tin của bạn được sử dụng để giúp cung cấp cho các dịch vụ của chúng tôi và chúng tôi có thể cung cấp thông tin cho các công ty đại diện chúng tôi. Những công ty này cũng chịu sự ràng buộc nghiêm ngặt bởi Chính sách Bảo mật của chúng tôi. ĐIỀU 3. THỜI GIAN LƯU TRỮ THÔNG TINChúng tôi sẽ lưu trữ các thông tin cá nhân do khách hàng cung cấp trên các hệ thống quản lý, lưu trữ dữ liệu của chúng tôi hoặc chúng tôi thuê trong quá trình cung cấp dịch vụ cho khách hàng cho đến khi hoàn thành mục đích thu thập hoặc khi bạn có yêu cầu hủy các thông tin đã cung cấp.ĐIỀU 4. ĐỊA CHỈ CỦA ĐƠN VỊ THU THẬP VÀ QUẢN LÝ THÔNG TIN CÁ NHÂNCÔNG TY CỔ PHẦN DP GREEN-PHAR\r\nĐịa chỉ: Số 19, Ngõ 4, phố Văn La, Hà Đông, Hà Nội.\r\nĐiện thoại: (024) 6262.7731\r\nEmail: dpgreenphar@gmail.com ĐIỀU 5. PHƯƠNG TIỆN VÀ CÔNG CỤ ĐỂ NGƯỜI DÙNG TIẾP CẬN VÀ CHỈNH SỬA DỮ LIỆU CÁ NHÂN CỦA MÌNH.Bạn có thể tự đăng nhập vào website qua link www.greenphar.com  và chỉnh sửa các thông tin cá nhân như: tên, số điện thoại, địa chỉ giao-nhận hàng, ...\r\nNếu bạn không quan tâm hoặc không muốn nhận tin tức, thông tin, bạn có thể thay đổi thông tin của bạn vào bất kỳ lúc nào bằng cách gửi email về cho chúng tôi qua địa chỉ email: cskh@greenphar.comĐIỀU 6. CAM KẾT BẢO MẬT THÔNG TIN CÁ NHÂN KHÁCH HÀNGNgoài việc sử dụng các thông tin của bạn vào các mục đích nêu tại Khoản 1.1 Điều 1 của Chính sách bảo mật này và phạm vi nêu tại Điều 2 của Chính sách bảo mật này, Chúng tôi sẽ giữ bí mật thông tin cá nhân của bạn. Xin vui lòng đọc bản Chính sách bảo mật thông tin này và hiểu các hành động liên quan về thông tin cá nhân của bạn. Chính sách bảo mật thông tin này có thể thay đổi mà không thông báo trước, do đó bạn vui lòng thường xuyên rà soát, cập nhật các điều khoản này để biết những thay đổi.\r\nChính sách bảo mật tại DP GREEN- PHAR\r\n- DP GREEN-PHAR có thể thay đổi chính sách bảo mật và mọi thay đổi sẽ được công khai trên website www.greenphar.com\r\n- Tất cả các thay đổi về chính sách bảo mật chúng tôi đều tuân thủ theo quy định của Pháp Luật Nhà Nước hiện hành.\r\n- Mọi ý kiến thắc mắc, khiếu nại và tranh chấp vui lòng liên hệ với chúng tôi qua hotline Chăm sóc khách hàng: (024) 6262. 7731\r\n\r\nTrân trọng,\r\nDP GREEN- PHAR: Chu Đáo, Tin Cậy!', '', '', '', '', '', 0, 'chinh-sach-bao-mat', 'Chính sách bảo mật', '', ''),
(57, 46, 'vn', ' Hệ thống', '', '', '', '', '', '', '', 0, 'he-thong', ' Hệ thống', '', ''),
(58, 46, 'en', ' hệ thống', '', '', '', '', '', '', '', 0, 'he-thong', ' hệ thống', '', ''),
(59, 47, 'vn', 'Ưu đãi khách hàng thân thiết', '', '', '', '', '', '', '', 0, 'uu-dai-khach-hang-than-thiet', 'Ưu đãi khách hàng thân thiết', '', ''),
(60, 47, 'en', 'english version Ưu đãi khách hàng thân thiết', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-uu-dai-khach-hang-than-thiet', 'Ưu đãi khách hàng thân thiết', '', ''),
(61, 48, 'vn', 'Chính sách bảo hành trọn đời', '', '', '', '', '', '', '', 0, 'chinh-sach-bao-hanh-tron-doi', 'Chính sách bảo hành trọn đời', '', ''),
(62, 48, 'en', 'english version Chính sách bảo hành trọn đời', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-chinh-sach-bao-hanh-tron-doi', 'Chính sách bảo hành trọn đời', '', ''),
(63, 49, 'vn', 'Chính sách giao nhận', '', '', '', '', '', '', '', 0, 'chinh-sach-giao-nhan', 'Chính sách giao nhận', '', ''),
(64, 49, 'en', 'english version Chính sách giao nhận', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-chinh-sach-giao-nhan', 'Chính sách giao nhận', '', ''),
(65, 50, 'vn', 'Chính sách đổi sản phẩm', '', '', '', '', '', '', '', 0, 'chinh-sach-doi-san-pham', 'Chính sách đổi sản phẩm', '', ''),
(66, 50, 'en', 'english version Chính sách đổi sản phẩm', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-chinh-sach-doi-san-pham', 'Chính sách đổi sản phẩm', '', ''),
(67, 51, 'vn', 'Hướng dẫn mua hàng', '', '', '', '', '', '', '', 0, 'huong-dan-mua-hang', 'Hướng dẫn mua hàng', '', ''),
(68, 51, 'en', 'english version Hướng dẫn mua hàng', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-huong-dan-mua-hang', 'Hướng dẫn mua hàng', '', ''),
(69, 52, 'vn', 'Tra cứu bảo hành', '', '', '', '', '', '', '', 0, 'tra-cuu-bao-hanh', 'Tra cứu bảo hành', '', ''),
(70, 52, 'en', 'english version Tra cứu bảo hành', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-tra-cuu-bao-hanh', 'Tra cứu bảo hành', '', ''),
(71, 53, 'vn', 'Quy định về phiếu quà tặng', '', '', '', '', '', '', '', 0, 'quy-dinh-ve-phieu-qua-tang', 'Quy định về phiếu quà tặng', '', ''),
(72, 53, 'en', 'english version Quy định về phiếu quà tặng', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-quy-dinh-ve-phieu-qua-tang', 'Quy định về phiếu quà tặng', '', ''),
(73, 54, 'vn', 'Điều khoản sử dụng', '', '<p>Nội dung đang cập nhật</p>\r\n', '', '', '', '', '', 0, 'dieu-khoan-su-dung-1', 'Điều khoản sử dụng', '', ''),
(74, 54, 'en', 'english version Điều khoản sử dụng', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-dieu-khoan-su-dung-1', 'Điều khoản sử dụng', '', ''),
(75, 55, 'vn', 'Bảng giá', '', '<p style=\"text-align:center\"><img alt=\"\" height=\"393\" src=\"/image/images/2/bang-gia-1.PNG\" width=\"902\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"436\" src=\"/image/images/2/bang-gia-2.PNG\" width=\"904\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"770\" src=\"/image/images/2/bang-gia.png\" width=\"1013\" /></p>\r\n\r\n<p>&nbsp;<span style=\"color:#e74c3c\">Ch&uacute; &yacute;:</span></p>\r\n\r\n<p>Gi&aacute; tr&ecirc;n l&agrave; gi&aacute; chưa bao gồm ph&iacute; cầu đường, v&eacute; v&agrave;o cửa.</p>\r\n\r\n<p>Gi&aacute; tr&ecirc;n thay đổi phụ thuộc v&agrave;o khung giờ xuất ph&aacute;t của qu&yacute; kh&aacute;ch</p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i c&oacute; ch&iacute;nh s&aacute;ch gi&aacute; cực kỳ linh động cho Q&uacute;y kh&aacute;ch. Vui l&ograve;ng li&ecirc;n hệ hotline:<em><strong><span style=\"color:#e74c3c\"> 0376 404 992</span></strong></em> để c&oacute; gi&aacute; tốt nhất.</p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i cam kết sử dụng xe mới sang trọng (Mazda 3, Mazda 6, Toyota Vios, Chevrolet Cruze, &nbsp;Innova , &nbsp;Fortuner , Ford Transit v&agrave; xe 16 để phục vụ Q&uacute;y kh&aacute;ch.</p>\r\n\r\n<p>Đặc biệt, tuyến Nội B&agrave;i - H&agrave; Nội, l&aacute;i xe của ch&uacute;ng t&ocirc;i sẽ c&oacute; Biển đ&oacute;n Qu&yacute; kh&aacute;ch với th&ocirc;ng tin theo y&ecirc;u cầu.</p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i cam kết sẽ mang đến kh&aacute;ch h&agrave;ng dịch vụ thuận tiện v&agrave; thoải m&aacute;i nhất.</p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i lu&ocirc;n tr&acirc;n trọng đ&oacute;n nhận mọi &yacute; kiến đ&oacute;ng g&oacute;p của Qu&yacute; kh&aacute;ch h&agrave;ng để dịch vụ ng&agrave;y c&agrave;ng ho&agrave;n thiện th&ecirc;m.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><em><strong><span style=\"color:#2ecc71\">RẤT H&Acirc;N HẠNH ĐƯỢC PHỤC VỤ QU&Yacute; KH&Aacute;CH</span></strong></em></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n', '', '', '', '', '', 0, 'bang-gia', 'Bảng giá', '', '');
INSERT INTO `page_languages` (`id`, `page_id`, `languages_code`, `lang_page_name`, `lang_page_des`, `lang_page_content`, `lang_page_sub_info1`, `lang_page_sub_info2`, `lang_page_sub_info3`, `lang_page_sub_info4`, `lang_page_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `keyword`, `des_seo`) VALUES
(76, 55, 'en', 'english version Bảng giá', 'english version ', 'english version <div>&nbsp;</div>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse; border:none; width:1127pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap; width:54pt\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap; width:54pt\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap; width:53pt\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap; width:236pt\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap; width:176pt\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap; width:154pt\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap; width:154pt\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap; width:86pt\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap; width:54pt\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap; width:54pt\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap; width:54pt\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:27.75pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:27.75pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td colspan=\"6\" style=\"height:27.75pt; text-align:center; vertical-align:bottom; white-space:nowrap; width:857pt\"><span style=\"font-size:22pt\"><span style=\"color:#00b050\"><strong><em><span style=\"font-family:Arial,sans-serif\">BẢNG B&Aacute;O GI&Aacute; DỊCH VỤ XE S&Acirc;N BAY</span></em></strong></span></span></td>\r\n			<td style=\"height:27.75pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:27.75pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:27.75pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:23.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:23.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td colspan=\"5\" style=\"height:23.25pt; text-align:center; vertical-align:bottom; white-space:nowrap; width:772pt\"><span style=\"font-size:18pt\"><span style=\"color:red\"><strong><span style=\"font-family:Arial,sans-serif\">BẢNG GI&Aacute; TỪ H&Agrave; NỘI L&Ecirc;N S&Acirc;N BAY NỘI B&Agrave;I</span></strong></span></span></td>\r\n			<td style=\"height:23.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:23.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:23.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:23.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"background-color:white; border-color:#2c8708 black black #2c8708; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:53pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><strong><span style=\"font-family:Arial,sans-serif\">STT</span></strong></span></span></td>\r\n			<td style=\"background-color:white; border-color:#2c8708 black black; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:236pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><strong><span style=\"font-family:Arial,sans-serif\">TUYẾN ĐƯỜNG&nbsp;</span></strong></span></span></td>\r\n			<td style=\"background-color:white; border-color:#2c8708 black black; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:176pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><strong><span style=\"font-family:Arial,sans-serif\">GI&Aacute; XE 5 CHỖ</span></strong></span></span></td>\r\n			<td style=\"background-color:white; border-color:#2c8708 #2c8708 black black; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:154pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><strong><span style=\"font-family:Arial,sans-serif\">GI&Aacute; XE 7 CHỖ</span></strong></span></span></td>\r\n			<td style=\"background-color:white; border-color:#2c8708 #2c8708 black black; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:154pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><strong><span style=\"font-family:Arial,sans-serif\">GI&Aacute; XE =&gt; 16 Chỗ</span></strong></span></span></td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"background-color:white; border-color:black black black #2c8708; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:53pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">1</span></span></span></td>\r\n			<td style=\"background-color:white; height:18.0pt; text-align:left; vertical-align:middle; white-space:normal; width:236pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">QUẬN T&Acirc;Y HỒ -&gt; S&Acirc;N BAY NỘI B&Agrave;I</span></span></span></td>\r\n			<td style=\"background-color:white; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:176pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">180.000đ - 2000.000đ</span></span></span></td>\r\n			<td style=\"background-color:white; border-color:black #2c8708 black black; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:154pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">240.000đ - 270.000đ</span></span></span></td>\r\n			<td rowspan=\"13\" style=\"background-color:white; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:154pt\"><span style=\"font-size:18pt\"><span style=\"color:#333333\"><strong><span style=\"font-family:Arial,sans-serif\">Gi&aacute; Thỏa Thuận</span></strong></span></span></td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"background-color:white; border-color:black black black #2c8708; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:53pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">2</span></span></span></td>\r\n			<td style=\"background-color:white; height:18.0pt; text-align:left; vertical-align:middle; white-space:normal; width:236pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">QUẬN CẦU GIẤY -&gt;&nbsp;S&Acirc;N BAY NỘI B&Agrave;I</span></span></span></td>\r\n			<td style=\"background-color:white; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:176pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">180.000đ - 2000.000đ</span></span></span></td>\r\n			<td style=\"background-color:white; border-color:black #2c8708 black black; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:154pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">240.000đ - 270.000đ</span></span></span></td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"background-color:white; border-color:black black black #2c8708; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:53pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">3</span></span></span></td>\r\n			<td style=\"background-color:white; height:18.0pt; text-align:left; vertical-align:middle; white-space:normal; width:236pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">QUẬN HO&Agrave;N KIẾM -&gt;&nbsp;S&Acirc;N BAY NỘI B&Agrave;I</span></span></span></td>\r\n			<td style=\"background-color:white; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:176pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">180.000đ - 2000.000đ</span></span></span></td>\r\n			<td style=\"background-color:white; border-color:black #2c8708 black black; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:154pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">240.000đ - 270.000đ</span></span></span></td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"background-color:white; border-color:black black black #2c8708; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:53pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">4</span></span></span></td>\r\n			<td style=\"background-color:white; height:18.0pt; text-align:left; vertical-align:middle; white-space:normal; width:236pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">QUẬN BẮC TỪ LI&Ecirc;M -&gt;S&Acirc;N BAY NỘI B&Agrave;I</span></span></span></td>\r\n			<td style=\"background-color:white; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:176pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">180.000đ - 2000.000đ</span></span></span></td>\r\n			<td style=\"background-color:white; border-color:black #2c8708 black black; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:154pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">240.000đ - 270.000đ</span></span></span></td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"background-color:white; border-color:black black black #2c8708; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:53pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">5</span></span></span></td>\r\n			<td style=\"background-color:white; height:18.0pt; text-align:left; vertical-align:middle; white-space:normal; width:236pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">QUẬN BA Đ&Igrave;NH -&gt;&nbsp;S&Acirc;N BAY NỘI B&Agrave;I</span></span></span></td>\r\n			<td style=\"background-color:white; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:176pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">180.000đ - 2000.000đ</span></span></span></td>\r\n			<td style=\"background-color:white; border-color:black #2c8708 black black; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:154pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">240.000đ - 270.000đ</span></span></span></td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"background-color:white; border-color:black black black #2c8708; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:53pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">6</span></span></span></td>\r\n			<td style=\"background-color:white; height:18.0pt; text-align:left; vertical-align:middle; white-space:normal; width:236pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">QUẬN NAM TỪ LI&Ecirc;M -&gt;&nbsp;S&Acirc;N BAY NỘI B&Agrave;I</span></span></span></td>\r\n			<td style=\"background-color:white; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:176pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">180.000đ - 2000.000đ</span></span></span></td>\r\n			<td style=\"background-color:white; border-color:black #2c8708 black black; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:154pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">240.000đ - 270.000đ</span></span></span></td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"background-color:white; border-color:black black black #2c8708; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:53pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">7&nbsp;</span></span></span></td>\r\n			<td style=\"background-color:white; height:18.0pt; text-align:left; vertical-align:middle; white-space:normal; width:236pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">QUẬN ĐỐNG ĐA -&gt;&nbsp;S&Acirc;N BAY NỘI B&Agrave;I</span></span></span></td>\r\n			<td style=\"background-color:white; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:176pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">180.000đ - 2000.000đ</span></span></span></td>\r\n			<td style=\"background-color:white; border-color:black #2c8708 black black; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:154pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">240.000đ - 270.000đ</span></span></span></td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"background-color:white; border-color:black black black #2c8708; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:53pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">8&nbsp;</span></span></span></td>\r\n			<td style=\"background-color:white; height:18.0pt; text-align:left; vertical-align:middle; white-space:normal; width:236pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">QUẬN THANH XU&Acirc;N -&gt;&nbsp;S&Acirc;N BAY NỘI B&Agrave;I</span></span></span></td>\r\n			<td style=\"background-color:white; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:176pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">180.000đ - 2000.000đ</span></span></span></td>\r\n			<td style=\"background-color:white; border-color:black #2c8708 black black; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:154pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">240.000đ - 270.000đ</span></span></span></td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"background-color:white; border-color:black black black #2c8708; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:53pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">9&nbsp;</span></span></span></td>\r\n			<td style=\"background-color:white; height:18.0pt; text-align:left; vertical-align:middle; white-space:normal; width:236pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">QUẬN LONG BI&Ecirc;N-&gt;&nbsp;S&Acirc;N BAY NỘI B&Agrave;I</span></span></span></td>\r\n			<td style=\"background-color:white; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:176pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">180.000đ - 2000.000đ</span></span></span></td>\r\n			<td style=\"background-color:white; border-color:black #2c8708 black black; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:154pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">240.000đ - 270.000đ</span></span></span></td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"background-color:white; border-color:black black black #2c8708; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:53pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">10&nbsp;</span></span></span></td>\r\n			<td style=\"background-color:white; height:18.0pt; text-align:left; vertical-align:middle; white-space:normal; width:236pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">QUẬN HAI B&Agrave; TRƯNG -&gt;&nbsp;S&Acirc;N BAY NỘI B&Agrave;I</span></span></span></td>\r\n			<td style=\"background-color:white; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:176pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">180.000đ - 2000.000đ</span></span></span></td>\r\n			<td style=\"background-color:white; border-color:black #2c8708 black black; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:154pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">240.000đ - 270.000đ</span></span></span></td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"background-color:white; border-color:black black black #2c8708; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:53pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">11&nbsp;</span></span></span></td>\r\n			<td style=\"background-color:white; height:18.0pt; text-align:left; vertical-align:middle; white-space:normal; width:236pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">QUẬN HO&Agrave;NG MAI -&gt;&nbsp;S&Acirc;N BAY NỘI B&Agrave;I</span></span></span></td>\r\n			<td style=\"background-color:white; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:176pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">&nbsp;220.000đ - 250.000đ</span></span></span></td>\r\n			<td style=\"background-color:white; border-color:black #2c8708 black black; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:154pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">260.000đ - 290.000đ</span></span></span></td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"background-color:white; border-color:black black black #2c8708; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:53pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">12&nbsp;</span></span></span></td>\r\n			<td style=\"background-color:white; height:18.0pt; text-align:left; vertical-align:middle; white-space:normal; width:236pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">QUẬN THANH TR&Igrave;&nbsp;-&gt;&nbsp;S&Acirc;N BAY NỘI B&Agrave;I</span></span></span></td>\r\n			<td style=\"background-color:white; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:176pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">&nbsp;220.000đ - 260.000đ&nbsp;</span></span></span></td>\r\n			<td style=\"background-color:white; border-color:black #2c8708 black black; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:154pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">&nbsp;250.000đ - 3000.000đ</span></span></span></td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"background-color:white; border-color:black black #2c8708 #2c8708; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:53pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">13&nbsp;</span></span></span></td>\r\n			<td style=\"background-color:white; border-color:black black #2c8708; height:18.0pt; text-align:left; vertical-align:middle; white-space:normal; width:236pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">QUẬN H&Agrave; Đ&Ocirc;NG&nbsp;-&gt;&nbsp;S&Acirc;N BAY NỘI B&Agrave;I</span></span></span></td>\r\n			<td style=\"background-color:white; border-color:black black #2c8708; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:176pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">&nbsp;230.000đ - 250.000đ&nbsp;</span></span></span></td>\r\n			<td style=\"background-color:white; border-color:black #2c8708 black black; height:18.0pt; text-align:center; vertical-align:middle; white-space:normal; width:154pt\"><span style=\"font-size:10pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">&nbsp;250.000đ - 3000.000đ</span></span></span></td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:18.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:23.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:23.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td colspan=\"5\" style=\"height:23.25pt; text-align:center; vertical-align:bottom; white-space:nowrap; width:772pt\"><span style=\"font-size:18pt\"><span style=\"color:red\"><strong><span style=\"font-family:Arial,sans-serif\">BẢNG GI&Aacute; TỪ S&Acirc;N BAY NỘI B&Agrave;I VỀ H&Agrave; NỘI</span></strong></span></span></td>\r\n			<td style=\"height:23.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:23.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:23.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:23.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"background-color:white; border-color:#2c8708 black black #2c8708; height:19.5pt; text-align:center; vertical-align:middle; white-space:normal; width:53pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">STT</span></span></span></td>\r\n			<td style=\"background-color:white; border-color:#2c8708 black black; height:19.5pt; text-align:center; vertical-align:middle; white-space:normal; width:236pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">TUYẾN ĐƯỜNG&nbsp;</span></span></span></td>\r\n			<td style=\"background-color:white; border-color:#2c8708 black black; height:19.5pt; text-align:center; vertical-align:middle; white-space:normal; width:176pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">GI&Aacute; XE 5 CHỖ</span></span></span></td>\r\n			<td style=\"background-color:white; border-color:#2c8708 #2c8708 black black; height:19.5pt; text-align:center; vertical-align:middle; white-space:normal; width:154pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">GI&Aacute; XE 7 CHỖ</span></span></span></td>\r\n			<td style=\"background-color:white; border-color:#2c8708 #2c8708 black black; height:19.5pt; text-align:center; vertical-align:middle; white-space:normal; width:154pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">Gi&aacute; Xe =&gt; 16 Chỗ</span></span></span></td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"background-color:white; border-color:black black black #2c8708; height:19.5pt; text-align:center; vertical-align:middle; white-space:normal; width:53pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">1</span></span></span></td>\r\n			<td style=\"background-color:white; height:19.5pt; text-align:left; vertical-align:middle; white-space:normal; width:236pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">S&Acirc;N BAY NỘI B&Agrave;I -&gt; QUẬN T&Acirc;Y HỒ</span></span></span></td>\r\n			<td style=\"background-color:white; height:19.5pt; text-align:center; vertical-align:middle; white-space:normal; width:176pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">240.000đ - 260.000đ</span></span></span></td>\r\n			<td style=\"background-color:white; border-color:black #2c8708 black black; height:19.5pt; text-align:center; vertical-align:middle; white-space:normal; width:154pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">&nbsp;280.000đ - 290.000đ</span></span></span></td>\r\n			<td rowspan=\"13\" style=\"background-color:white; height:19.5pt; text-align:center; vertical-align:middle; white-space:normal; width:154pt\"><span style=\"font-size:18pt\"><span style=\"color:#333333\"><strong><span style=\"font-family:Arial,sans-serif\">Gi&aacute; Thỏa Thuận</span></strong></span></span></td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"background-color:white; border-color:black black black #2c8708; height:19.5pt; text-align:center; vertical-align:middle; white-space:normal; width:53pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">2</span></span></span></td>\r\n			<td style=\"background-color:white; height:19.5pt; text-align:left; vertical-align:middle; white-space:normal; width:236pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">S&Acirc;N BAY NỘI B&Agrave;I -&gt; QUẬN CẦU GIẤY</span></span></span></td>\r\n			<td style=\"background-color:white; height:19.5pt; text-align:center; vertical-align:middle; white-space:normal; width:176pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">240.000đ - 260.000đ</span></span></span></td>\r\n			<td style=\"background-color:white; border-color:black #2c8708 black black; height:19.5pt; text-align:center; vertical-align:middle; white-space:normal; width:154pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">280.000đ - 290.000đ&nbsp;</span></span></span></td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"background-color:white; border-color:black black black #2c8708; height:19.5pt; text-align:center; vertical-align:middle; white-space:normal; width:53pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">3</span></span></span></td>\r\n			<td style=\"background-color:white; height:19.5pt; text-align:left; vertical-align:middle; white-space:normal; width:236pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">S&Acirc;N BAY NỘI B&Agrave;I -&gt; QUẬN HO&Agrave;N KIẾM</span></span></span></td>\r\n			<td style=\"background-color:white; height:19.5pt; text-align:center; vertical-align:middle; white-space:normal; width:176pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">240.000đ - 260.000đ</span></span></span></td>\r\n			<td style=\"background-color:white; border-color:black #2c8708 black black; height:19.5pt; text-align:center; vertical-align:middle; white-space:normal; width:154pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">280.000đ - 290.000đ&nbsp;</span></span></span></td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"background-color:white; border-color:black black black #2c8708; height:19.5pt; text-align:center; vertical-align:middle; white-space:normal; width:53pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">4</span></span></span></td>\r\n			<td style=\"background-color:white; height:19.5pt; text-align:left; vertical-align:middle; white-space:normal; width:236pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">S&Acirc;N BAY NỘI B&Agrave;I -&gt; QUẬN BẮC TỪ LI&Ecirc;M</span></span></span></td>\r\n			<td style=\"background-color:white; height:19.5pt; text-align:center; vertical-align:middle; white-space:normal; width:176pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">240.000đ - 260.000đ</span></span></span></td>\r\n			<td style=\"background-color:white; border-color:black #2c8708 black black; height:19.5pt; text-align:center; vertical-align:middle; white-space:normal; width:154pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">280.000đ - 290.000đ</span></span></span></td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"background-color:white; border-color:black black black #2c8708; height:19.5pt; text-align:center; vertical-align:middle; white-space:normal; width:53pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">5</span></span></span></td>\r\n			<td style=\"background-color:white; height:19.5pt; text-align:left; vertical-align:middle; white-space:normal; width:236pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">S&Acirc;N BAY NỘI B&Agrave;I -&gt; QUẬN BA Đ&Igrave;NH</span></span></span></td>\r\n			<td style=\"background-color:white; height:19.5pt; text-align:center; vertical-align:middle; white-space:normal; width:176pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">240.000đ - 260.000đ</span></span></span></td>\r\n			<td style=\"background-color:white; border-color:black #2c8708 black black; height:19.5pt; text-align:center; vertical-align:middle; white-space:normal; width:154pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">280.000đ - 290.000đ&nbsp;</span></span></span></td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"background-color:white; border-color:black black black #2c8708; height:19.5pt; text-align:center; vertical-align:middle; white-space:normal; width:53pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">6</span></span></span></td>\r\n			<td style=\"background-color:white; height:19.5pt; text-align:left; vertical-align:middle; white-space:normal; width:236pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">S&Acirc;N BAY NỘI B&Agrave;I -&gt; QUẬN NAM TỪ LI&Ecirc;M</span></span></span></td>\r\n			<td style=\"background-color:white; height:19.5pt; text-align:center; vertical-align:middle; white-space:normal; width:176pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">250.000đ - 280.000đ</span></span></span></td>\r\n			<td style=\"background-color:white; border-color:black #2c8708 black black; height:19.5pt; text-align:center; vertical-align:middle; white-space:normal; width:154pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">&nbsp;290.000đ - 320.000đ</span></span></span></td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"background-color:white; border-color:black black black #2c8708; height:19.5pt; text-align:center; vertical-align:middle; white-space:normal; width:53pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">7&nbsp;</span></span></span></td>\r\n			<td style=\"background-color:white; height:19.5pt; text-align:left; vertical-align:middle; white-space:normal; width:236pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">S&Acirc;N BAY NỘI B&Agrave;I -&gt; QUẬN ĐỐNG ĐA</span></span></span></td>\r\n			<td style=\"background-color:white; height:19.5pt; text-align:center; vertical-align:middle; white-space:normal; width:176pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">250.000đ - 280.000đ</span></span></span></td>\r\n			<td style=\"background-color:white; border-color:black #2c8708 black black; height:19.5pt; text-align:center; vertical-align:middle; white-space:normal; width:154pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">290.000đ - 320.000đ&nbsp;</span></span></span></td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"background-color:white; border-color:black black black #2c8708; height:19.5pt; text-align:center; vertical-align:middle; white-space:normal; width:53pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">8&nbsp;</span></span></span></td>\r\n			<td style=\"background-color:white; height:19.5pt; text-align:left; vertical-align:middle; white-space:normal; width:236pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">S&Acirc;N BAY NỘI B&Agrave;I -&gt; QUẬN THANH XU&Acirc;N</span></span></span></td>\r\n			<td style=\"background-color:white; height:19.5pt; text-align:center; vertical-align:middle; white-space:normal; width:176pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">250.000đ - 280.000đ</span></span></span></td>\r\n			<td style=\"background-color:white; border-color:black #2c8708 black black; height:19.5pt; text-align:center; vertical-align:middle; white-space:normal; width:154pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">290.000đ - 320.000đ</span></span></span></td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"background-color:white; border-color:black black black #2c8708; height:19.5pt; text-align:center; vertical-align:middle; white-space:normal; width:53pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">9&nbsp;</span></span></span></td>\r\n			<td style=\"background-color:white; height:19.5pt; text-align:left; vertical-align:middle; white-space:normal; width:236pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">S&Acirc;N BAY NỘI B&Agrave;I -&gt; QUẬN LONG BI&Ecirc;N</span></span></span></td>\r\n			<td style=\"background-color:white; height:19.5pt; text-align:center; vertical-align:middle; white-space:normal; width:176pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">250.000đ - 280.000đ</span></span></span></td>\r\n			<td style=\"background-color:white; border-color:black #2c8708 black black; height:19.5pt; text-align:center; vertical-align:middle; white-space:normal; width:154pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">290.000đ - 320.000đ</span></span></span></td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:30.75pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:30.75pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"background-color:white; border-color:black black black #2c8708; height:30.75pt; text-align:center; vertical-align:middle; white-space:normal; width:53pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">10&nbsp;</span></span></span></td>\r\n			<td style=\"background-color:white; height:30.75pt; text-align:left; vertical-align:middle; white-space:normal; width:236pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">S&Acirc;N BAY NỘI B&Agrave;I -&gt; QUẬN HAI B&Agrave; TRƯNG</span></span></span></td>\r\n			<td style=\"background-color:white; height:30.75pt; text-align:center; vertical-align:middle; white-space:normal; width:176pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">250.000đ - 280.000đ</span></span></span></td>\r\n			<td style=\"background-color:white; border-color:black #2c8708 black black; height:30.75pt; text-align:center; vertical-align:middle; white-space:normal; width:154pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">290.000đ - 320.000đ</span></span></span></td>\r\n			<td style=\"height:30.75pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:30.75pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:30.75pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:30.75pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"background-color:white; border-color:black black black #2c8708; height:19.5pt; text-align:center; vertical-align:middle; white-space:normal; width:53pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">11&nbsp;</span></span></span></td>\r\n			<td style=\"background-color:white; height:19.5pt; text-align:left; vertical-align:middle; white-space:normal; width:236pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">S&Acirc;N BAY NỘI B&Agrave;I -&gt; QUẬN HO&Agrave;NG MAI</span></span></span></td>\r\n			<td style=\"background-color:white; height:19.5pt; text-align:center; vertical-align:middle; white-space:normal; width:176pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">&nbsp; 250.000đ - 3000.000đ&nbsp;</span></span></span></td>\r\n			<td style=\"background-color:white; border-color:black #2c8708 black black; height:19.5pt; text-align:center; vertical-align:middle; white-space:normal; width:154pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">&nbsp;290.000đ - 340.000đ</span></span></span></td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"background-color:white; border-color:black black black #2c8708; height:19.5pt; text-align:center; vertical-align:middle; white-space:normal; width:53pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">12&nbsp;</span></span></span></td>\r\n			<td style=\"background-color:white; height:19.5pt; text-align:left; vertical-align:middle; white-space:normal; width:236pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">S&Acirc;N BAY NỘI B&Agrave;I -&gt; QUẬN THANH TR&Igrave;</span></span></span></td>\r\n			<td style=\"background-color:white; height:19.5pt; text-align:center; vertical-align:middle; white-space:normal; width:176pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">&nbsp; 250.000đ - 3000.000đ&nbsp;</span></span></span></td>\r\n			<td style=\"background-color:white; border-color:black #2c8708 black black; height:19.5pt; text-align:center; vertical-align:middle; white-space:normal; width:154pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">290.000đ - 340.000đ</span></span></span></td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"background-color:white; border-color:black black #2c8708 #2c8708; height:19.5pt; text-align:center; vertical-align:middle; white-space:normal; width:53pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">13&nbsp;</span></span></span></td>\r\n			<td style=\"background-color:white; border-color:black black #2c8708; height:19.5pt; text-align:left; vertical-align:middle; white-space:normal; width:236pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">S&Acirc;N BAY NỘI B&Agrave;I -&gt; QUẬN H&Agrave; Đ&Ocirc;NG</span></span></span></td>\r\n			<td style=\"background-color:white; height:19.5pt; text-align:center; vertical-align:middle; white-space:normal; width:176pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">&nbsp; 250.000đ - 3000.000đ&nbsp;</span></span></span></td>\r\n			<td style=\"background-color:white; border-color:black #2c8708 #2c8708 black; height:19.5pt; text-align:center; vertical-align:middle; white-space:normal; width:154pt\"><span style=\"font-size:12pt\"><span style=\"color:#333333\"><span style=\"font-family:Arial,sans-serif\">290.000đ - 340.000đ</span></span></span></td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:19.5pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bottom; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"height:14.25pt; vertical-align:bott', '', '', '', '', '', 0, 'en-bang-gia', 'Bảng giá', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` text COLLATE utf8_unicode_ci,
  `product_des` text COLLATE utf8_unicode_ci,
  `product_des2` text COLLATE utf8_unicode_ci,
  `product_des3` text COLLATE utf8_unicode_ci,
  `product_content` text COLLATE utf8_unicode_ci,
  `product_content2` text COLLATE utf8_unicode_ci,
  `product_content3` text COLLATE utf8_unicode_ci,
  `product_price` float DEFAULT NULL,
  `product_price_sale` float DEFAULT NULL,
  `product_discount` float DEFAULT NULL,
  `product_img` text COLLATE utf8_unicode_ci,
  `product_sub_img` text COLLATE utf8_unicode_ci,
  `product_created_date` datetime DEFAULT NULL,
  `product_update_date` datetime DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `product_hot` int(11) DEFAULT '0',
  `product_favorite` int(11) NOT NULL,
  `product_new` int(11) DEFAULT '0',
  `product_sale` int(11) DEFAULT '0',
  `product_code` text COLLATE utf8_unicode_ci,
  `product_original` text COLLATE utf8_unicode_ci,
  `product_size` text COLLATE utf8_unicode_ci,
  `product_package` text COLLATE utf8_unicode_ci,
  `product_delivery` text COLLATE utf8_unicode_ci,
  `product_delivery_time` text COLLATE utf8_unicode_ci,
  `product_payment` text COLLATE utf8_unicode_ci,
  `product_payment_type` text COLLATE utf8_unicode_ci,
  `product_sub_info1` text COLLATE utf8_unicode_ci,
  `product_sub_info2` text COLLATE utf8_unicode_ci,
  `product_sub_info3` text COLLATE utf8_unicode_ci,
  `product_sub_info4` text COLLATE utf8_unicode_ci,
  `product_sub_info5` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL,
  `product_material` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_shape` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_expiration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_producer` int(11) DEFAULT NULL,
  `product_review` text COLLATE utf8_unicode_ci,
  `productcat_ar` text COLLATE utf8_unicode_ci,
  `thuoc_tinh` text COLLATE utf8_unicode_ci,
  `diff_color` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_des`, `product_des2`, `product_des3`, `product_content`, `product_content2`, `product_content3`, `product_price`, `product_price_sale`, `product_discount`, `product_img`, `product_sub_img`, `product_created_date`, `product_update_date`, `productcat_id`, `product_hot`, `product_favorite`, `product_new`, `product_sale`, `product_code`, `product_original`, `product_size`, `product_package`, `product_delivery`, `product_delivery_time`, `product_payment`, `product_payment_type`, `product_sub_info1`, `product_sub_info2`, `product_sub_info3`, `product_sub_info4`, `product_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `product_material`, `product_shape`, `product_expiration`, `product_producer`, `product_review`, `productcat_ar`, `thuoc_tinh`, `diff_color`) VALUES
(256, 'Giày bít da bóng cao gót phối trong gót nhọn 5p', '', '', '', '', '', '', 375000, 0, 0, 'VS0055(3).png', '[\"{\\\"image\\\":\\\"VS0055.jpg\\\"}\",\"{\\\"image\\\":\\\"VS0055(3).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0055(2).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0055(2)(1).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0055(1).jpg\\\"}\"]', '2020-01-14 14:01:24', '2020-09-18 09:09:21', 0, 0, 1, 1, 0, '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 1, 'Giày bít da bóng cao gót phối trong gót nhọn 5p', '', 'giay-bit-da-bong-cao-got-phoi-trong-got-nhon-5p', '', 1, '', '', '', NULL, NULL, NULL, '[\"0\",\"0\",\"0\",\"0\"]', 0),
(257, 'Giày bệt phối nơ', '', '', '', '', '', '', 375000, 0, 0, 'VS0054(2).png', '[\"{\\\"image\\\":\\\"VS0054.jpg\\\"}\",\"{\\\"image\\\":\\\"VS0054(3).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0054(2).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0054(1).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0054 (3).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0054 (2).jpg\\\"}\"]', '2020-01-14 14:01:55', '2020-09-18 09:09:42', 0, 1, 1, 1, 0, '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 1, 'Giày bệt phối nơ', '', 'giay-bet-phoi-no', '', 1, '', '', '', NULL, NULL, NULL, '[\"0\",\"0\",\"0\",\"0\"]', 0),
(258, 'Giày bít da bóng cao gót gót vuông phối si 5p', '', '', '', '', '', '', 375000, 0, 0, 'VS0053 (2).png', '[\"{\\\"image\\\":\\\"VS0053.jpg\\\"}\",\"{\\\"image\\\":\\\"VS0053 (5).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0053 (4).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0053 (3).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0053 (2).jpg\\\"}\"]', '2020-01-14 14:01:07', '2020-09-18 09:09:01', 0, 1, 1, 1, 0, '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 1, 'Giày bít da bóng cao gót gót vuông phối si 5p', '', 'giay-bit-da-bong-cao-got-got-vuong-phoi-si-5p', '', 1, '', '', '', NULL, NULL, NULL, '[\"0\",\"0\",\"0\",\"0\"]', 0),
(259, 'Sandal gót vuông gót 3p', '', '', '', '', '', '', 123000, 10, 0, 'VS0051 (3).png', '[\"{\\\"image\\\":\\\"VS0051(1).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0051.jpg\\\"}\",\"{\\\"image\\\":\\\"VS0051 (4).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0051 (3).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0051 (2).jpg\\\"}\"]', '2020-01-14 14:01:22', '2020-09-18 09:09:20', 0, 1, 1, 1, 0, '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 1, 'Sandal gót vuông gót 3p', '', 'sandal-got-vuong-got-3p', '', 1, '', '', '', NULL, NULL, NULL, '[\"0\",\"0\",\"0\",\"0\"]', 0),
(260, 'Giày da bít gót nhọn kiểu cao 5p', '', '', '', '', '', '', 375000, 0, 0, 'VS0049(2).png', '[\"{\\\"image\\\":\\\"VS0049.jpg\\\"}\",\"{\\\"image\\\":\\\"VS0049(4).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0049(3).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0049(2).jpg\\\"}\"]', '2020-01-14 14:01:48', '2020-09-18 09:09:37', 0, 1, 1, 1, 0, '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 1, 'Giày da bít gót nhọn kiểu cao 5p', '', 'giay-da-bit-got-nhon-kieu-cao-5p', '', 1, '', '', '', NULL, NULL, NULL, '[\"0\",\"0\",\"0\",\"0\"]', 0),
(261, 'Giày da mũi nhọn hở gót gót nhọn 3p', '', '', '', '', '', '', 345000, 0, 0, 'VS0043.png', '[\"{\\\"image\\\":\\\"VS0043.jpg\\\"}\",\"{\\\"image\\\":\\\"VS0043 (4).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0043 (3).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0043 (2).jpg\\\"}\"]', '2020-01-14 14:01:21', '2020-09-18 09:09:53', 0, 1, 1, 1, 0, '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 1, 'Giày da mũi nhọn hở gót gót nhọn 3p', '', 'giay-da-mui-nhon-ho-got-got-nhon-3p', '', 1, '', '', '', NULL, NULL, NULL, '[\"0\",\"0\",\"0\",\"0\"]', 0),
(262, 'Giày cao gót Vinshoes VS0029 ', '<p dir=\"ltr\">Bạn đang mong muốn sở hữu một đ&ocirc;i gi&agrave;y cao g&oacute;t vừa đẹp vừa tốt? Vậy bạn kh&ocirc;ng cần phải mơ mọng nữa, chỉ cần đọc b&agrave;i viết sau đ&acirc;y sẽ giới thiệu đến bạn đ&ocirc;i gi&agrave;y cao g&oacute;t Vinshoes VS0029 l&agrave; lựa chọn ho&agrave;n hảo cho bạn nh&eacute;!</p>\r\n', '', '', '<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Đối với c&aacute;c chị em nữ, bản th&acirc;n sở hữu một đ&ocirc;i gi&agrave;y cao g&oacute;t tốt v&agrave; đep l&agrave; điều v&ocirc; c&ugrave;ng quan trọng. Đ&ocirc;i gi&agrave;y cao g&oacute;t n&agrave;y sẽ l&agrave; người bạn đồng h&agrave;nh th&acirc;n thiết kh&ocirc;ng chỉ gi&uacute;p x&acirc;y dựng h&igrave;nh ảnh vẻ ngo&agrave;i ấn tượng v&agrave; thu h&uacute;t m&agrave; đồng thời c&ograve;n bảo vệ d&agrave;i l&acirc;u cho sức khoẻ ch&acirc;n của c&aacute;c chị em. Hiện nay, tr&ecirc;n thị trường c&oacute; rất nhiều đơn vị cung cấp v&agrave; ph&acirc;n phối gi&agrave;y cao g&oacute;t. Một trong số đ&oacute; l&agrave; Vinshoes Vietnam với sản phẩm <strong>gi&agrave;y cao g&oacute;t Vinshoes VS0029</strong> được nhiều kh&aacute;ch hang ưa chuộng v&agrave; tặng cho mẽnh danh l&agrave; &ldquo;bảo bối&rdquo; của chị em phụ nữ. Nếu bạn cũng đang quan t&acirc;m đến chiếc gi&agrave;y cao g&oacute;t n&agrave;y th&igrave; bạn h&atilde;y d&agrave;nh một &iacute;t thời gian để đọc v&agrave; hiều hết b&agrave;i viết n&agrave;y, bạn nh&eacute;.</span></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Giày Vinshoes VS0029 “hớp hồn” nhiều chị em khách hàng\" height=\"450\" src=\"/image/images/giay-cao-got-vinshoes-vs0029.jpg\" width=\"600\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><span style=\"color:#000000\">Gi&agrave;y Vinshoes VS0029 &ldquo;hớp hồn&rdquo; nhiều chị em kh&aacute;ch h&agrave;ng</span></em></p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"color:#000000\">Th&ocirc;ng tin hữu &iacute;ch về Gi&agrave;y cao g&oacute;t Vinshoes VS0029 bạn n&ecirc;n biết&nbsp;</span></strong></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Mẫu gi&agrave;y cao g&oacute;t n&agrave;y cũng chẳng phải tự nhi&ecirc;n m&agrave; lại nhận được sự ủng hộ của đ&ocirc;ng đảo kh&aacute;ch h&agrave;ng. Nhờ sở hữu những đặc điểm nổi bật sau đ&acirc;y mới g&oacute;p phần cho sự h&agrave;i l&ograve;ng của chị em ti&ecirc;u d&ugrave;ng.&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;Kiểu d&aacute;ng của <strong>gi&agrave;y cao g&oacute;t Vinshoes VS0029</strong> &ocirc;m s&aacute;t theo ch&acirc;n, nh&igrave;n tổng thế rất thon gọn n&ecirc;n gi&uacute;p người mang to&aacute;t n&ecirc;n một vẻ đẹp ki&ecirc;u sang v&agrave; tinh tế.&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;Đế gi&agrave;y cao g&oacute;t n&agrave;y vu&ocirc;ng v&agrave; được bọc bằng nhựa trong n&ecirc;n gi&uacute;p gi&agrave;y b&aacute;m v&agrave;o mặt đất, người mang kh&ocirc;ng bị trơn trượt, dễ vấp hoặc t&eacute;. Khi mang v&agrave;o sẽ dễ d&agrave;ng v&agrave; thoải m&aacute;i di chuyển. Kể cả c&aacute;c con đường ch&ocirc;ng v&ecirc;nh đang sửa chữa cũng sẽ kh&ocirc;ng g&acirc;y kh&oacute; khăn cho người mang.&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;M&agrave;u sắc trơn đen hoặc hồng nhạt đơn giản, kh&ocirc;ng c&oacute; hoạ tiết cầu kỳ n&ecirc;n người mang c&oacute; thể đễ d&agrave;ng phối hợp với bất kỳ bộ quần &aacute;o v&agrave; phụ kiện thời trang n&agrave;o.&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;Thiết kế đơn giản nhưng lại tinh tế, sang trọng n&ecirc;n ph&ugrave; hợp với mọi sự kiện. Người mang c&oacute; thể d&ugrave;ng <strong>gi&agrave;y cao g&oacute;t Vinshoes VS0029 </strong>n&agrave;y như gi&agrave;y cao g&oacute;t c&ocirc;ng sở, hoặc mang để dự tiệc, dạo phố đều được.&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp; &nbsp; &nbsp;-&nbsp; <strong>&nbsp;Gi&agrave;y cao g&oacute;t Vinshoes VS0029</strong> được chế t&aacute;c kỳ c&ocirc;ng bằng vật liệu chất lượng cao, n&ecirc;n đảm bảo người mang sẽ kh&ocirc;ng cảm thấy kh&oacute; chịu hay đau g&oacute;t v&agrave; đầu ch&acirc;n khi sử dụng. Ho&agrave;n to&agrave;n sẽ kh&ocirc;ng c&oacute; trường hợp người mang phải &ldquo;thủ&rdquo; sẵn băng keo c&aacute; nh&acirc;n hay b&ocirc;ng g&ograve;n khi mang mẫu gi&agrave;y cao g&oacute;t n&agrave;y.&nbsp;</span></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Giày Vinshoes VS0029 chất lượng cao, lại còn sang trọng, tinh tế\" height=\"450\" src=\"/image/images/giay-cao-got-vinshoes-vs0029-01.jpg\" width=\"600\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><span style=\"color:#000000\">Gi&agrave;y Vinshoes VS0029 chất lượng cao, lại c&ograve;n sang trọng, tinh tế</span></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Vậy l&agrave; bạn đ&atilde; nắm sơ lược c&aacute;c ưu điểm vượt trội của <strong>gi&agrave;y cao g&oacute;t Vinshoes VS0029</strong>. Vinshoes Việt Nam chuy&ecirc;n cung cấp c&aacute;c d&ograve;ng gi&agrave;y Vinshoes cao cấp, chất lượng. Lu&ocirc;n mang đến cho c&aacute;c chị em phụ nữ c&aacute;c d&ograve;ng sản phẩm tốt nhất, n&ecirc;n kh&aacute;ch h&agrave;ng c&oacute; y&ecirc;n t&acirc;m sử dụng v&agrave; lựa chọn sản phẩm của ch&uacute;ng t&ocirc;i. Nếu bạn c&oacute; nhu cầu hay thắc mắc khi mua h&agrave;ng xin li&ecirc;n hệ tới nh&agrave; cung cấp (...) để được tư vấn v&agrave; giải đ&aacute;p tận t&igrave;nh!</span></p>\r\n', '', '', 0, 0, 0, 'VS0029(1).jpg', '[\"{\\\"image\\\":\\\"VS0029.jpg\\\"}\",\"{\\\"image\\\":\\\"VS0029(3).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0029(2).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0029(1).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0029 (5).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0029 (4).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0029 (3).jpg\\\"}\"]', '2020-01-14 14:01:56', '2020-09-23 10:09:22', 0, 1, 1, 1, 0, '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 1, 'Giày cao gót Vinshoes VS0029 ', '', 'giay-cao-got-vinshoes-vs0029', '', 1, '', '', '', NULL, NULL, NULL, '[\"0\",\"0\",\"0\",\"0\"]', 0),
(263, 'Sandal da lộn gót nhọn cao 5p quai ngang', '', '', '', '', '', '', 330000, 0, 0, 'VS0028 (2).png', '[\"{\\\"image\\\":\\\"VS0028.jpg\\\"}\",\"{\\\"image\\\":\\\"VS0028(3).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0028(2).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0028 (2).jpg\\\"}\"]', '2020-01-14 14:01:24', '2020-09-18 09:09:09', 0, 1, 0, 0, 0, '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 0, 'Sandal da lộn gót nhọn cao 5p quai ngang', '', 'sandal-da-lon-got-nhon-cao-5p-quai-ngang', '', 1, '', '', '', NULL, NULL, NULL, '[\"0\",\"0\",\"0\",\"0\"]', 0),
(264, 'Giầy cao gót Vinshoes VS0025', '<p dir=\"ltr\">Thương hiệu Vinshoes - Carnaval giới thiệu&nbsp;d&ograve;ng sản phẩm gi&agrave;y da b&iacute;t g&oacute;t nhọn meka VS0025 với thiết kế sang trọng, tinh tế, kiểu d&aacute;ng hiện đại, phong c&aacute;ch trẻ trung, nữ t&iacute;nh, chất lượng da cao cấp, kh&ocirc;ng chỉ đem đến vẻ ngo&agrave;i tự tin, tạo sự &ecirc;m &aacute;i, thoải m&aacute;i tối đa cho đ&ocirc;i ch&acirc;n bạn.</p>\r\n', '', '', '<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Gi&agrave;y cao g&oacute;t chắc chắn l&agrave; một item kh&ocirc;ng thể thiếu trong tủ đồ của c&aacute;c chị em phụ nữ. Ra đời từ rất sớm, nhưng đến nơi gi&agrave;y cao g&oacute;t vẫn lu&ocirc;n l&agrave; phụ kiện được chị em ưa th&iacute;ch bởi sự nữ t&iacute;nh nhưng k&eacute;m phần sang trọng v&agrave; qu&yacute; ph&aacute;i m&agrave; n&oacute; mang lại. Bất cứ c&ocirc; g&aacute;i n&agrave;o cũng đều n&ecirc;n sở hữu cho m&igrave;nh một đ&ocirc;i gi&agrave;y cao g&oacute;t&nbsp; ri&ecirc;ng.&nbsp; <a href=\"http://carnaval.cafelinkcustomer.info/san-pham\"><strong>Thương hiệu gi&agrave;y d&eacute;p thời trang Vinshoes &ndash; Carvanal</strong></a> ra mới d&ograve;ng sản phẩm <strong>gi&agrave;y cao g&oacute;t mũi nhọn m&atilde; VS0025</strong>. Đ&acirc;y l&agrave; một gợi &yacute; ho&agrave;n hảo cho c&aacute;c c&ocirc; n&agrave;ng ưa th&iacute;ch sang trọng nhưng vẫn kh&ocirc;ng k&eacute;m phần thanh lịch, nữ t&iacute;nh, đặc biệt l&agrave; với những c&ocirc; n&agrave;ng c&ocirc;ng sở. H&atilde;y c&ugrave;ng ch&uacute;ng t&ocirc;i t&igrave;m hiểu về sản phẩm ấn tượng n&agrave;y nh&eacute;.</span></p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"color:#000000\">Th&ocirc;ng tin sản phẩm</span></strong></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp; &nbsp; &nbsp;-&nbsp; &nbsp; T&ecirc;n sản phẩm: Gi&agrave;y da b&iacute;t g&oacute;t nhọn meka VS0025</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp; &nbsp; &nbsp;-&nbsp; &nbsp; M&atilde; sản phẩm: VS0025</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp; &nbsp; &nbsp;-&nbsp; &nbsp; Chất liệu: Da b&oacute;ng</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp; &nbsp; &nbsp;-&nbsp; &nbsp; Chiều cao: 6cm</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp; &nbsp; &nbsp;-&nbsp; &nbsp; M&agrave;u sắc: kem, đen, kem hồng</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp; &nbsp; &nbsp;-&nbsp; &nbsp; Size: 35-40</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp; &nbsp; &nbsp;-&nbsp; &nbsp; Kiểu d&aacute;ng: gi&agrave;y c&ocirc;ng sở, đi tiệc, dạo phố&hellip;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp; &nbsp; &nbsp;-&nbsp; &nbsp; Gi&aacute; b&aacute;n lẻ ch&iacute;nh thức:375.000 VNĐ</span></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Giày da bít gót nhọn meka \" height=\"492\" src=\"/image/images/giay-cao-got-vinshoes-vs0025(1).jpg\" width=\"600\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><span style=\"color:#000000\">Gi&agrave;y da b&iacute;t g&oacute;t nhọn meka&nbsp;</span></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><strong>Gi&agrave;y da b&iacute;t g&oacute;t nhọn meka</strong> hội tụ những ưu điểm nổi bật, được chỉnh chu trong từng kh&acirc;u sản xuất v&agrave; ho&agrave;n thiện, mang đến 1 thiết kế đơn giản nhưng tinh tế, sang trọng m&agrave; kh&ocirc;ng mất đi sự nữ t&iacute;nh, c&ugrave;ng những gam m&agrave;u nh&atilde; nhặn. Sản phẩm l&agrave;m bằng chất liệu da cao cấp, được lựa chọn nghi&ecirc;m ngặt, được gia c&ocirc;ng tỉ mỉ, kh&eacute;o l&eacute;o trong từng đường kim, mũi chỉ, vừa gi&uacute;p cho đ&ocirc;i ch&acirc;n trở n&ecirc;n mềm mại vừa gi&uacute;p cho chị em c&oacute; sự thoải m&aacute;i tối đa khi mang. Sản phẩm c&oacute; độ đ&agrave;n hồi tốt c&ograve;n gi&uacute;p ph&acirc;n t&aacute;n trọng lực v&agrave; tạo sự c&acirc;n bằng cho đ&ocirc;i ch&acirc;n. V&igrave; vậy sản phẩm ph&ugrave; hợp với mọi lứa tuổi v&agrave; dễ d&agrave;ng phối hợp với bất kỳ trang phục n&agrave;o.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Thiết kế sang trọng, bền đẹp n&agrave;y chắc chắn sẽ l&agrave; 1 item tuyệt vời trong tủ đồ phong c&aacute;ch của bạn. Bạn sẽ lu&ocirc;n thấy tự tin, nổi bật trong mọi c&ocirc;ng việc, c&aacute;c bữa tiệc, dạo phố&hellip; khi sải bước tr&ecirc;n đ&ocirc;i gi&agrave;y cao g&oacute;t sang trọng n&agrave;y.</span></p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"color:#000000\">Hướng dẫn vệ sinh v&agrave; bảo quản:</span></strong></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp; &nbsp; &nbsp;-&nbsp; &nbsp; Hạn chế cho đ&ocirc;i gi&agrave;y của bạn tiếp x&uacute;c nước một c&aacute;ch tối đa v&agrave; thường xuy&ecirc;n lau ch&ugrave;i, vệ sinh để đ&ocirc;i gi&agrave;y lu&ocirc;n mới v&agrave; k&eacute;o d&agrave;i tuổi thọ sử dụng</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp; &nbsp; &nbsp;-&nbsp; &nbsp; Khi vệ sinh sản phẩm cần lưu &yacute; chỉ n&ecirc;n sử dụng khăn vải mềm lau nhẹ tr&ecirc;n bề mặt d&agrave;y, kh&ocirc;ng sử dụng c&aacute;c dụng cụ ch&agrave; rửa th&ocirc; r&aacute;p hay sắc nhọn để vệ sinh, kh&ocirc;ng n&ecirc;n rửa lại bằng nước v&igrave; dễ khiến lớp da bị bong tr&oacute;c v&agrave; l&agrave; giảm độ bền của gi&agrave;y</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp; &nbsp; &nbsp;-&nbsp; &nbsp; Khi gi&agrave;y bị thấm nước mưa, h&atilde;y d&ugrave;ng khăn ướt lau sạch hết nước v&agrave; b&ugrave;n đất tr&ecirc;n gi&agrave;y, sau đ&oacute; sử dụng khăn kh&ocirc; nhẹ nh&agrave;ng lau lại một lượt nữa</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp; &nbsp; &nbsp;-&nbsp; &nbsp; Gi&agrave;y n&ecirc;n được cất ở nơi kh&ocirc;ng kh&iacute; lưu th&ocirc;ng tốt, tho&aacute;ng m&aacute;t, tr&aacute;nh nơi ẩm ướt. Bạn cũng n&ecirc;n mang gi&agrave;y thường xuy&ecirc;n để gi&agrave;y c&oacute; độ bền cao hơn</span></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Nâng đỡ đôi chân bạn trên mọi bước đi\" height=\"450\" src=\"/image/images/giay-cao-got-vinshoes-vs0025-01.jpg\" width=\"600\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><span style=\"color:#000000\">N&acirc;ng đỡ đ&ocirc;i ch&acirc;n bạn tr&ecirc;n mọi bước đi</span></em></p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><strong>Thương hiệu gi&agrave;y d&eacute;p thời trang Vinshoes &ndash; Carvanal</strong></span></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><a href=\"http://carnaval.cafelinkcustomer.info/\"><strong>VINSHOES VIỆT NAM</strong></a> chuy&ecirc;n sản xuất c&aacute;c sản phẩm gi&agrave;y d&eacute;p nam nữ thời trang, phong c&aacute;ch độc đ&aacute;o, đa dạng về mẫu m&atilde;, với gi&aacute; cả hết sức cạnh tranh, đ&aacute;p ứng mọi nhu cầu của kh&aacute;ch h&agrave;ng từ b&igrave;nh d&acirc;n đến cao cấp, đi c&ugrave;ng với đ&oacute; l&agrave; sự ổn định về chất lượng, được nhiều kh&aacute;ch h&agrave;ng h&agrave;i l&ograve;ng. H&atilde;y đến với Vinshoes để t&igrave;m kiếm cho chị em đ&ocirc;i gi&agrave;y ưng &yacute; v&agrave; ph&ugrave; hợp nhất với bạn nh&eacute;.</span></p>\r\n\r\n<p style=\"text-align:justify\"><br />\r\n&nbsp;</p>\r\n', '', '', 375000, 0, 0, 'VS0025.png', '[\"{\\\"image\\\":\\\"VS0025.jpg\\\"}\",\"{\\\"image\\\":\\\"VS0025(4).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0025(3).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0025(2).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0025(2)(1).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0025(1).jpg\\\"}\"]', '2020-01-14 14:01:52', '2020-09-23 09:09:14', 0, 1, 1, 1, 0, '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 1, 'Giầy cao gót Vinshoes VS0025', '', 'giay-cao-got-vinshoes-vs0025', '', 1, '', '', '', NULL, NULL, NULL, '[\"0\",\"0\",\"0\",\"0\"]', 0),
(265, 'Sandal da lộn gót phối gót vuông cao 5p quai ngang', '', '', '', '', '', '', 360000, 0, 0, 'VS0023.png', '[\"{\\\"image\\\":\\\"VS0023.jpg\\\"}\",\"{\\\"image\\\":\\\"VS0023(1).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0023 (10).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0023 (8).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0023 (7).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0023 (6).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0023 (5).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0023 (4).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0023 (3).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0023 (9).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0023 (2).jpg\\\"}\"]', '2020-01-14 14:01:35', '2020-09-18 09:09:12', 0, 0, 0, 0, 0, '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 0, 'Sandal da lộn gót phối gót vuông cao 5p quai ngang', '', 'sandal-da-lon-got-phoi-got-vuong-cao-5p-quai-ngang', '', 1, '', '', '', NULL, NULL, NULL, '[\"0\",\"0\",\"0\",\"0\"]', 0),
(266, 'Sandal gót trụ cao 5p dây đan', '', '', '', '', '', '', 345000, 0, 0, 'VS0022.png', '[\"{\\\"image\\\":\\\"VS0022.jpg\\\"}\",\"{\\\"image\\\":\\\"VS0022 (6).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0022 (5).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0022 (4).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0022 (3).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0022 (2).jpg\\\"}\"]', '2020-01-14 14:01:37', '2020-09-18 09:09:48', 0, 1, 1, 1, 0, '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 1, 'Sandal gót trụ cao 5p dây đan', '', 'sandal-got-tru-cao-5p-day-dan', '', 1, '', '', '', NULL, NULL, NULL, '[\"0\",\"0\",\"0\",\"0\"]', 2),
(267, 'Giày mũi vuông hở gót gót vuông cao 5p', '', '', '', '', '', '', 345000, 0, 0, 'VS0020.png', '[\"{\\\"image\\\":\\\"VS0020.jpg\\\"}\",\"{\\\"image\\\":\\\"VS0020(1).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0020 (8).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0020 (7).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0020 (6).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0020 (5).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0020 (4).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0020 (3).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0020 (2).jpg\\\"}\"]', '2020-01-14 14:01:52', '2020-09-18 09:09:44', 0, 1, 1, 1, 0, '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 1, 'Giày mũi vuông hở gót gót vuông cao 5p', '', 'giay-mui-vuong-ho-got-got-vuong-cao-5p', '', 1, '', '', '', NULL, NULL, NULL, '[\"0\",\"0\",\"0\",\"10\"]', 2),
(268, 'Giày mũi nhọn hở gót gót vuông cao 5p', '<p dir=\"ltr\">Vinshoes mũi nhọn hở g&oacute;t, g&oacute;t vu&ocirc;ng 5 ph&acirc;n đang khiến nhiều chị em săn l&ugrave;ng r&aacute;o riết hiện nay. Mẫu gi&agrave;y sandal độc đ&aacute;o n&agrave;y kh&ocirc;ng chỉ đẹp m&agrave; c&ograve;n rất thời trang, đẳng cấp.</p>\r\n', '', '', '<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Nếu bạn muốn thay đổi phong c&aacute;ch của m&igrave;nh với <strong>Vinshoes mũi nhọn hở g&oacute;t, g&oacute;t vu&ocirc;ng 5 ph&acirc;n</strong> rất trẻ trung v&agrave; năng động n&agrave;y. H&atilde;y c&ugrave;ng ch&uacute;ng t&ocirc;i tham khảo nội dung b&agrave;i viết sau để mua được đ&ocirc;i gi&agrave;y chất lượng tuyệt hảo nhất.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><em><span style=\"color:#000000\">Mẫu gi&agrave;y hở g&oacute;t trẻ trung</span></em></p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"color:#000000\">Gi&agrave;y Vinshoes mũi nhọn hở g&oacute;t, g&oacute;t vu&ocirc;ng 5 ph&acirc;n c&oacute; ưu điểm g&igrave; nổi bật?</span></strong></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Như ch&uacute;ng ta đều biết c&aacute;c chị em phụ nữ thường sẽ mua sắm cho m&igrave;nh rất nhiều đ&ocirc;i gi&agrave;y kh&aacute;c nhau. Tuy nhi&ecirc;n kh&ocirc;ng chị em n&agrave;o c&oacute; thể bỏ qua mẫu gi&agrave;y hở g&oacute;t g&oacute;t vu&ocirc;ng cao 5 ph&acirc;n. Đặc biệt với mẫu<strong> gi&agrave;y Vinshoes mũi nhọn hở g&oacute;t, g&oacute;t vu&ocirc;ng 5 ph&acirc;n</strong> quả l&agrave; lựa chọn tuyệt hảo.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp; &nbsp; -&nbsp; &nbsp;Mẫu gi&agrave;y hở g&oacute;t l&agrave; sự lựa chọn ho&agrave;n hảo với rất nhiều chị em phụ nữ. Bởi mẫu gi&agrave;y n&agrave;y thường rất dễ đi. Sản phẩm kh&ocirc;ng k&eacute;n ch&acirc;n kh&ocirc;ng k&eacute;n trang phục. Ch&iacute;nh v&igrave; vậy việc phối đồ v&agrave; lựa chọn đ&ocirc;i gi&agrave;y n&agrave;y rất dễ d&agrave;ng v&agrave; sản phẩm được nhiều chị em săn l&ugrave;ng t&igrave;m mua. D&ugrave; chị em đi chơi, đi l&agrave;m hay đi ăn tiệc th&igrave; diện đ&ocirc;i ch&acirc;n chiếc gi&agrave;y Vinshoes hở g&oacute;t đều rất đẹp mắt, trang nh&atilde;.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp; &nbsp; -&nbsp; &nbsp;Chiếc gi&agrave;y được l&agrave;m chất liệu da mờ rất trang nh&atilde;, tinh tế. Chất liệu da sẽ khiến việc n&acirc;ng đỡ đ&ocirc;i ch&acirc;n được &ecirc;m &aacute;i. Khi chị em đeo sẽ kh&ocirc;ng c&oacute; cảm gi&aacute;c th&ocirc; gi&aacute;t như loại gi&agrave;y hở g&oacute;t th&ocirc;ng thường. Th&ecirc;m v&agrave;o đ&oacute; l&agrave; cảm gi&aacute;c &ocirc;m s&aacute;t rất &ecirc;m dịu v&agrave; mềm mại khi di chuyển. Đặc biệt chất liệu da khiến độ bền đ&ocirc;i gi&agrave;y rất cao, d&ugrave; di chuyển mọi địa h&igrave;nh kh&aacute;c nhau kh&ocirc;ng lo lắng hỏng hay ph&ograve;ng ch&acirc;n.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><em><span style=\"color:#000000\">Sản phẩm l&agrave;m chất liệu da mờ</span></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp; &nbsp; -&nbsp; &nbsp;Chiếc gi&agrave;y cao 5 ph&acirc;n với thiết kế đế vu&ocirc;ng lu&ocirc;n tạo cảm gi&aacute;c chắc chắn v&agrave; thanh tao cho người đeo. Với đề gi&agrave;y n&agrave;y c&oacute; thể gi&uacute;p chị em ăn gian chiều cao l&ecirc;n đến 5 ph&acirc;n. Đương nhi&ecirc;n c&aacute;c chị em sinh vi&ecirc;n, nh&acirc;n vi&ecirc;n văn ph&ograve;ng hay c&ocirc;ng sở h&agrave;nh ch&iacute;nh đều rất y&ecirc;u th&iacute;ch chiều cao phổ biến n&agrave;y. Đ&ocirc;i gi&agrave;y gi&uacute;p người đi lu&ocirc;n tự tin v&agrave; sải bước đi ấn tượng.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp; &nbsp; -&nbsp; &nbsp;Mẫu gi&agrave;y Vinshoes hở g&oacute;t 5 ph&acirc;n n&agrave;y kh&aacute; đa dạng với rất nhiều m&agrave;u sắc kh&aacute;c nhau. Với thiết kế m&agrave;u trắng tinh kh&ocirc;i gi&uacute;p chị em n&acirc;ng cao sự thanh tao, sang trọng. hay thậm ch&iacute; đ&ocirc;i gi&agrave;y m&agrave;u đen gi&uacute;p chị em tạo vẻ huyền b&iacute;, thu h&uacute;t &aacute;nh nh&igrave;n. M&agrave;u kem trang nh&atilde;, thanh lịch cũng l&agrave; mẫu gi&agrave;y được nhiều chị em y&ecirc;u th&iacute;ch, săn l&ugrave;ng.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><em><span style=\"color:#000000\">M&agrave;u sắc trang nh&atilde;, c&aacute; t&iacute;nh</span></em></p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"color:#000000\">Mua gi&agrave;y Vinshoes mũi nhọn hở g&oacute;t, g&oacute;t vu&ocirc;ng 5 ph&acirc;n ở đ&acirc;u?</span></strong></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Hiện nay, tr&ecirc;n thị trường c&oacute; kh&ocirc;ng &iacute;t đơn vị b&agrave;y b&aacute;n gi&agrave;y d&eacute;p thời trang tha hồ cho qu&yacute; kh&aacute;ch h&agrave;ng lựa chọn. Đương nhi&ecirc;n l&agrave;m thế n&agrave;o lựa chọn sản phẩm uy t&iacute;n, chất lượng với gi&aacute; cả ưu đ&atilde;i lu&ocirc;n l&agrave; lựa chọn h&agrave;ng đầu của chị em phụ nữ.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Hiện nay, mẫu <strong>gi&agrave;y Vinshoes hở g&oacute;t cao 5 ph&acirc;n</strong> đang rất hot v&agrave; được b&agrave;y b&aacute;n tại với mức gi&aacute; ưu đ&atilde;i chỉ 375,000 đồng. Với mức gi&aacute; n&agrave;y qu&yacute; kh&aacute;ch h&agrave;ng sở hữu ngay cho m&igrave;nh đ&ocirc;i gi&agrave;y hở g&oacute;t l&agrave;m chất liệu da mờ đẹp mắt v&agrave; thời thượng nhất hiện nay.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Ngo&agrave;i ra đơn vị ch&uacute;ng t&ocirc;i c&ograve;n rất nhiều mẫu gi&agrave;y thời trang, gi&agrave;y cao g&oacute;t, gi&agrave;y sandal tha hồ cho qu&yacute; kh&aacute;ch h&agrave;ng lựa chọn. C&aacute;c sản phẩm đơn vị đều l&agrave; h&agrave;ng c&ocirc;ng ty chất lượng h&agrave;ng đầu. Ắt hẳn sẽ mang lại cho bạn lựa chọn tuyệt vời nhất.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', 375000, 0, 0, 'VS0019 (4).png', '[\"{\\\"image\\\":\\\"VS0019 (4).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0019 (3).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0019 (2).jpg\\\"}\",\"{\\\"image\\\":\\\"VS0019.jpg\\\"}\"]', '2020-01-14 14:01:01', '2020-10-02 09:10:47', 0, 1, 1, 1, 0, '', '', '[\"35\",\"36\"]', '', '', '', '', '', '[\"37\",\"38\"]', '', '', '', '', 1, 'Giày mũi nhọn hở gót gót vuông cao 5p', '', 'giay-mui-nhon-ho-got-got-vuong-cao-5p', '', 1, '', '', '', NULL, NULL, NULL, '[\"2\",\"8\",\"9\",\"10\"]', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productcat`
--

CREATE TABLE `productcat` (
  `productcat_id` int(11) NOT NULL,
  `productcat_name` text COLLATE utf8_unicode_ci,
  `productcat_des` text COLLATE utf8_unicode_ci,
  `productcat_content` text COLLATE utf8_unicode_ci,
  `productcat_parent` int(11) NOT NULL DEFAULT '0',
  `productcat_sort_order` int(11) NOT NULL DEFAULT '0',
  `productcat_img` text COLLATE utf8_unicode_ci,
  `productcat_created_date` datetime DEFAULT NULL,
  `productcat_update_date` datetime DEFAULT NULL,
  `productcat_sub_info1` text COLLATE utf8_unicode_ci,
  `productcat_sub_info2` text COLLATE utf8_unicode_ci,
  `productcat_sub_info3` text COLLATE utf8_unicode_ci,
  `productcat_sub_info4` text COLLATE utf8_unicode_ci,
  `productcat_sub_info5` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL,
  `home` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productcat_languages`
--

CREATE TABLE `productcat_languages` (
  `id` bigint(20) NOT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `lang_productcat_name` text COLLATE utf8_unicode_ci,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_des` text COLLATE utf8_unicode_ci,
  `lang_productcat_content` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_catalogs_file`
--

CREATE TABLE `product_catalogs_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `product_catalogs_file`
--

INSERT INTO `product_catalogs_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_color`
--

CREATE TABLE `product_color` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_diff_color`
--

CREATE TABLE `product_diff_color` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `product_diff_color`
--

INSERT INTO `product_diff_color` (`id`, `name`) VALUES
(2, 'Nhóm một'),
(3, 'Nhóm hai');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_languages`
--

CREATE TABLE `product_languages` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_name` text COLLATE utf8_unicode_ci,
  `lang_product_des` text COLLATE utf8_unicode_ci,
  `lang_product_des2` text COLLATE utf8_unicode_ci,
  `lang_product_des3` text COLLATE utf8_unicode_ci,
  `lang_product_content` text COLLATE utf8_unicode_ci,
  `lang_product_content2` text COLLATE utf8_unicode_ci,
  `lang_product_content3` text COLLATE utf8_unicode_ci,
  `lang_product_code` text COLLATE utf8_unicode_ci,
  `lang_product_original` text COLLATE utf8_unicode_ci,
  `lang_product_size` text COLLATE utf8_unicode_ci,
  `lang_product_package` text COLLATE utf8_unicode_ci,
  `lang_product_delivery` text COLLATE utf8_unicode_ci,
  `lang_product_delivery_time` text COLLATE utf8_unicode_ci,
  `lang_product_payment` text COLLATE utf8_unicode_ci,
  `lang_product_payment_type` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_languages`
--

INSERT INTO `product_languages` (`id`, `product_id`, `languages_code`, `lang_product_name`, `lang_product_des`, `lang_product_des2`, `lang_product_des3`, `lang_product_content`, `lang_product_content2`, `lang_product_content3`, `lang_product_code`, `lang_product_original`, `lang_product_size`, `lang_product_package`, `lang_product_delivery`, `lang_product_delivery_time`, `lang_product_payment`, `lang_product_payment_type`, `lang_product_sub_info1`, `lang_product_sub_info2`, `lang_product_sub_info3`, `lang_product_sub_info4`, `lang_product_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(499, 256, 'vn', 'Giày bít da bóng cao gót phối trong gót nhọn 5p', '', '', '', '', '', '', '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 0, 'giay-bit-da-bong-cao-got-phoi-trong-got-nhon-5p', 'Giày bít da bóng cao gót phối trong gót nhọn 5p', '', ''),
(500, 256, 'en', 'Túi Xách Tay Phối Kim Loại Thanh Lịch - SAT 0264 - Màu Đỏ', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-dt85', 'DT85', '', ''),
(501, 257, 'vn', 'Giày bệt phối nơ', '', '', '', '', '', '', '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 0, 'giay-bet-phoi-no', 'Giày bệt phối nơ', '', ''),
(502, 257, 'en', 'Túi Xách Tay Phối Kim Loại Thanh Lịch - SAT 0264 - Màu Đỏ', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-pic16', 'PIC16', '', ''),
(503, 258, 'vn', 'Giày bít da bóng cao gót gót vuông phối si 5p', '', '', '', '', '', '', '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 0, 'giay-bit-da-bong-cao-got-got-vuong-phoi-si-5p', 'Giày bít da bóng cao gót gót vuông phối si 5p', '', ''),
(504, 258, 'en', 'Túi Xách Tay Phối Kim Loại Thanh Lịch - SAT 0264 - Màu Đỏ', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-pic20', 'PIC20', '', ''),
(505, 259, 'vn', 'Sandal gót vuông gót 3p', '', '', '', '', '', '', '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 0, 'sandal-got-vuong-got-3p', 'Sandal gót vuông gót 3p', '', ''),
(506, 259, 'en', 'Túi Xách Tay Phối Kim Loại Thanh Lịch - SAT 0264 - Màu Đỏ', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-sttv9', 'STTV9', '', ''),
(507, 260, 'vn', 'Giày da bít gót nhọn kiểu cao 5p', '', '', '', '', '', '', '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 0, 'giay-da-bit-got-nhon-kieu-cao-5p', 'Giày da bít gót nhọn kiểu cao 5p', '', ''),
(508, 260, 'en', 'Túi Xách Tay Phối Kim Loại Thanh Lịch - SAT 0264 - Màu Đỏ', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-vm133', 'VM133', '', ''),
(509, 261, 'vn', 'Giày da mũi nhọn hở gót gót nhọn 3p', '', '', '', '', '', '', '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 0, 'giay-da-mui-nhon-ho-got-got-nhon-3p', 'Giày da mũi nhọn hở gót gót nhọn 3p', '', ''),
(510, 261, 'en', 'Túi Xách Tay Phối Kim Loại Thanh Lịch - SAT 0264 - Màu Đỏ', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-vr389', 'VR389', '', ''),
(511, 262, 'vn', 'Giày cao gót Vinshoes VS0029 ', '<p dir=\"ltr\">Bạn đang mong muốn sở hữu một đ&ocirc;i gi&agrave;y cao g&oacute;t vừa đẹp vừa tốt? Vậy bạn kh&ocirc;ng cần phải mơ mọng nữa, chỉ cần đọc b&agrave;i viết sau đ&acirc;y sẽ giới thiệu đến bạn đ&ocirc;i gi&agrave;y cao g&oacute;t Vinshoes VS0029 l&agrave; lựa chọn ho&agrave;n hảo cho bạn nh&eacute;!</p>\r\n', '', '', '<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Đối với c&aacute;c chị em nữ, bản th&acirc;n sở hữu một đ&ocirc;i gi&agrave;y cao g&oacute;t tốt v&agrave; đep l&agrave; điều v&ocirc; c&ugrave;ng quan trọng. Đ&ocirc;i gi&agrave;y cao g&oacute;t n&agrave;y sẽ l&agrave; người bạn đồng h&agrave;nh th&acirc;n thiết kh&ocirc;ng chỉ gi&uacute;p x&acirc;y dựng h&igrave;nh ảnh vẻ ngo&agrave;i ấn tượng v&agrave; thu h&uacute;t m&agrave; đồng thời c&ograve;n bảo vệ d&agrave;i l&acirc;u cho sức khoẻ ch&acirc;n của c&aacute;c chị em. Hiện nay, tr&ecirc;n thị trường c&oacute; rất nhiều đơn vị cung cấp v&agrave; ph&acirc;n phối gi&agrave;y cao g&oacute;t. Một trong số đ&oacute; l&agrave; Vinshoes Vietnam với sản phẩm <strong>gi&agrave;y cao g&oacute;t Vinshoes VS0029</strong> được nhiều kh&aacute;ch hang ưa chuộng v&agrave; tặng cho mẽnh danh l&agrave; &ldquo;bảo bối&rdquo; của chị em phụ nữ. Nếu bạn cũng đang quan t&acirc;m đến chiếc gi&agrave;y cao g&oacute;t n&agrave;y th&igrave; bạn h&atilde;y d&agrave;nh một &iacute;t thời gian để đọc v&agrave; hiều hết b&agrave;i viết n&agrave;y, bạn nh&eacute;.</span></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Giày Vinshoes VS0029 “hớp hồn” nhiều chị em khách hàng\" height=\"450\" src=\"/image/images/giay-cao-got-vinshoes-vs0029.jpg\" width=\"600\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><span style=\"color:#000000\">Gi&agrave;y Vinshoes VS0029 &ldquo;hớp hồn&rdquo; nhiều chị em kh&aacute;ch h&agrave;ng</span></em></p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"color:#000000\">Th&ocirc;ng tin hữu &iacute;ch về Gi&agrave;y cao g&oacute;t Vinshoes VS0029 bạn n&ecirc;n biết&nbsp;</span></strong></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Mẫu gi&agrave;y cao g&oacute;t n&agrave;y cũng chẳng phải tự nhi&ecirc;n m&agrave; lại nhận được sự ủng hộ của đ&ocirc;ng đảo kh&aacute;ch h&agrave;ng. Nhờ sở hữu những đặc điểm nổi bật sau đ&acirc;y mới g&oacute;p phần cho sự h&agrave;i l&ograve;ng của chị em ti&ecirc;u d&ugrave;ng.&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;Kiểu d&aacute;ng của <strong>gi&agrave;y cao g&oacute;t Vinshoes VS0029</strong> &ocirc;m s&aacute;t theo ch&acirc;n, nh&igrave;n tổng thế rất thon gọn n&ecirc;n gi&uacute;p người mang to&aacute;t n&ecirc;n một vẻ đẹp ki&ecirc;u sang v&agrave; tinh tế.&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;Đế gi&agrave;y cao g&oacute;t n&agrave;y vu&ocirc;ng v&agrave; được bọc bằng nhựa trong n&ecirc;n gi&uacute;p gi&agrave;y b&aacute;m v&agrave;o mặt đất, người mang kh&ocirc;ng bị trơn trượt, dễ vấp hoặc t&eacute;. Khi mang v&agrave;o sẽ dễ d&agrave;ng v&agrave; thoải m&aacute;i di chuyển. Kể cả c&aacute;c con đường ch&ocirc;ng v&ecirc;nh đang sửa chữa cũng sẽ kh&ocirc;ng g&acirc;y kh&oacute; khăn cho người mang.&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;M&agrave;u sắc trơn đen hoặc hồng nhạt đơn giản, kh&ocirc;ng c&oacute; hoạ tiết cầu kỳ n&ecirc;n người mang c&oacute; thể đễ d&agrave;ng phối hợp với bất kỳ bộ quần &aacute;o v&agrave; phụ kiện thời trang n&agrave;o.&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;Thiết kế đơn giản nhưng lại tinh tế, sang trọng n&ecirc;n ph&ugrave; hợp với mọi sự kiện. Người mang c&oacute; thể d&ugrave;ng <strong>gi&agrave;y cao g&oacute;t Vinshoes VS0029 </strong>n&agrave;y như gi&agrave;y cao g&oacute;t c&ocirc;ng sở, hoặc mang để dự tiệc, dạo phố đều được.&nbsp;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp; &nbsp; &nbsp;-&nbsp; <strong>&nbsp;Gi&agrave;y cao g&oacute;t Vinshoes VS0029</strong> được chế t&aacute;c kỳ c&ocirc;ng bằng vật liệu chất lượng cao, n&ecirc;n đảm bảo người mang sẽ kh&ocirc;ng cảm thấy kh&oacute; chịu hay đau g&oacute;t v&agrave; đầu ch&acirc;n khi sử dụng. Ho&agrave;n to&agrave;n sẽ kh&ocirc;ng c&oacute; trường hợp người mang phải &ldquo;thủ&rdquo; sẵn băng keo c&aacute; nh&acirc;n hay b&ocirc;ng g&ograve;n khi mang mẫu gi&agrave;y cao g&oacute;t n&agrave;y.&nbsp;</span></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Giày Vinshoes VS0029 chất lượng cao, lại còn sang trọng, tinh tế\" height=\"450\" src=\"/image/images/giay-cao-got-vinshoes-vs0029-01.jpg\" width=\"600\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><span style=\"color:#000000\">Gi&agrave;y Vinshoes VS0029 chất lượng cao, lại c&ograve;n sang trọng, tinh tế</span></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Vậy l&agrave; bạn đ&atilde; nắm sơ lược c&aacute;c ưu điểm vượt trội của <strong>gi&agrave;y cao g&oacute;t Vinshoes VS0029</strong>. Vinshoes Việt Nam chuy&ecirc;n cung cấp c&aacute;c d&ograve;ng gi&agrave;y Vinshoes cao cấp, chất lượng. Lu&ocirc;n mang đến cho c&aacute;c chị em phụ nữ c&aacute;c d&ograve;ng sản phẩm tốt nhất, n&ecirc;n kh&aacute;ch h&agrave;ng c&oacute; y&ecirc;n t&acirc;m sử dụng v&agrave; lựa chọn sản phẩm của ch&uacute;ng t&ocirc;i. Nếu bạn c&oacute; nhu cầu hay thắc mắc khi mua h&agrave;ng xin li&ecirc;n hệ tới nh&agrave; cung cấp (...) để được tư vấn v&agrave; giải đ&aacute;p tận t&igrave;nh!</span></p>\r\n', '', '', '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 0, 'giay-cao-got-vinshoes-vs0029', 'Giày cao gót Vinshoes VS0029 ', '', ''),
(512, 262, 'en', 'Túi Xách Tay Phối Kim Loại Thanh Lịch - SAT 0264 - Màu Đỏ', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-vkc67', 'VKC67', '', ''),
(513, 263, 'vn', 'Sandal da lộn gót nhọn cao 5p quai ngang', '', '', '', '', '', '', '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 0, 'sandal-da-lon-got-nhon-cao-5p-quai-ngang', 'Sandal da lộn gót nhọn cao 5p quai ngang', '', ''),
(514, 263, 'en', 'Túi Xách Tay Phối Kim Loại Thanh Lịch - SAT 0264 - Màu Đỏ', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-tt93', 'TT93', '', ''),
(515, 264, 'vn', 'Giầy cao gót Vinshoes VS0025', '<p dir=\"ltr\">Thương hiệu Vinshoes - Carnaval giới thiệu&nbsp;d&ograve;ng sản phẩm gi&agrave;y da b&iacute;t g&oacute;t nhọn meka VS0025 với thiết kế sang trọng, tinh tế, kiểu d&aacute;ng hiện đại, phong c&aacute;ch trẻ trung, nữ t&iacute;nh, chất lượng da cao cấp, kh&ocirc;ng chỉ đem đến vẻ ngo&agrave;i tự tin, tạo sự &ecirc;m &aacute;i, thoải m&aacute;i tối đa cho đ&ocirc;i ch&acirc;n bạn.</p>\r\n', '', '', '<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Gi&agrave;y cao g&oacute;t chắc chắn l&agrave; một item kh&ocirc;ng thể thiếu trong tủ đồ của c&aacute;c chị em phụ nữ. Ra đời từ rất sớm, nhưng đến nơi gi&agrave;y cao g&oacute;t vẫn lu&ocirc;n l&agrave; phụ kiện được chị em ưa th&iacute;ch bởi sự nữ t&iacute;nh nhưng k&eacute;m phần sang trọng v&agrave; qu&yacute; ph&aacute;i m&agrave; n&oacute; mang lại. Bất cứ c&ocirc; g&aacute;i n&agrave;o cũng đều n&ecirc;n sở hữu cho m&igrave;nh một đ&ocirc;i gi&agrave;y cao g&oacute;t&nbsp; ri&ecirc;ng.&nbsp; <a href=\"http://carnaval.cafelinkcustomer.info/san-pham\"><strong>Thương hiệu gi&agrave;y d&eacute;p thời trang Vinshoes &ndash; Carvanal</strong></a> ra mới d&ograve;ng sản phẩm <strong>gi&agrave;y cao g&oacute;t mũi nhọn m&atilde; VS0025</strong>. Đ&acirc;y l&agrave; một gợi &yacute; ho&agrave;n hảo cho c&aacute;c c&ocirc; n&agrave;ng ưa th&iacute;ch sang trọng nhưng vẫn kh&ocirc;ng k&eacute;m phần thanh lịch, nữ t&iacute;nh, đặc biệt l&agrave; với những c&ocirc; n&agrave;ng c&ocirc;ng sở. H&atilde;y c&ugrave;ng ch&uacute;ng t&ocirc;i t&igrave;m hiểu về sản phẩm ấn tượng n&agrave;y nh&eacute;.</span></p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"color:#000000\">Th&ocirc;ng tin sản phẩm</span></strong></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp; &nbsp; &nbsp;-&nbsp; &nbsp; T&ecirc;n sản phẩm: Gi&agrave;y da b&iacute;t g&oacute;t nhọn meka VS0025</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp; &nbsp; &nbsp;-&nbsp; &nbsp; M&atilde; sản phẩm: VS0025</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp; &nbsp; &nbsp;-&nbsp; &nbsp; Chất liệu: Da b&oacute;ng</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp; &nbsp; &nbsp;-&nbsp; &nbsp; Chiều cao: 6cm</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp; &nbsp; &nbsp;-&nbsp; &nbsp; M&agrave;u sắc: kem, đen, kem hồng</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp; &nbsp; &nbsp;-&nbsp; &nbsp; Size: 35-40</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp; &nbsp; &nbsp;-&nbsp; &nbsp; Kiểu d&aacute;ng: gi&agrave;y c&ocirc;ng sở, đi tiệc, dạo phố&hellip;</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp; &nbsp; &nbsp;-&nbsp; &nbsp; Gi&aacute; b&aacute;n lẻ ch&iacute;nh thức:375.000 VNĐ</span></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Giày da bít gót nhọn meka \" height=\"492\" src=\"/image/images/giay-cao-got-vinshoes-vs0025(1).jpg\" width=\"600\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><span style=\"color:#000000\">Gi&agrave;y da b&iacute;t g&oacute;t nhọn meka&nbsp;</span></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><strong>Gi&agrave;y da b&iacute;t g&oacute;t nhọn meka</strong> hội tụ những ưu điểm nổi bật, được chỉnh chu trong từng kh&acirc;u sản xuất v&agrave; ho&agrave;n thiện, mang đến 1 thiết kế đơn giản nhưng tinh tế, sang trọng m&agrave; kh&ocirc;ng mất đi sự nữ t&iacute;nh, c&ugrave;ng những gam m&agrave;u nh&atilde; nhặn. Sản phẩm l&agrave;m bằng chất liệu da cao cấp, được lựa chọn nghi&ecirc;m ngặt, được gia c&ocirc;ng tỉ mỉ, kh&eacute;o l&eacute;o trong từng đường kim, mũi chỉ, vừa gi&uacute;p cho đ&ocirc;i ch&acirc;n trở n&ecirc;n mềm mại vừa gi&uacute;p cho chị em c&oacute; sự thoải m&aacute;i tối đa khi mang. Sản phẩm c&oacute; độ đ&agrave;n hồi tốt c&ograve;n gi&uacute;p ph&acirc;n t&aacute;n trọng lực v&agrave; tạo sự c&acirc;n bằng cho đ&ocirc;i ch&acirc;n. V&igrave; vậy sản phẩm ph&ugrave; hợp với mọi lứa tuổi v&agrave; dễ d&agrave;ng phối hợp với bất kỳ trang phục n&agrave;o.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Thiết kế sang trọng, bền đẹp n&agrave;y chắc chắn sẽ l&agrave; 1 item tuyệt vời trong tủ đồ phong c&aacute;ch của bạn. Bạn sẽ lu&ocirc;n thấy tự tin, nổi bật trong mọi c&ocirc;ng việc, c&aacute;c bữa tiệc, dạo phố&hellip; khi sải bước tr&ecirc;n đ&ocirc;i gi&agrave;y cao g&oacute;t sang trọng n&agrave;y.</span></p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"color:#000000\">Hướng dẫn vệ sinh v&agrave; bảo quản:</span></strong></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp; &nbsp; &nbsp;-&nbsp; &nbsp; Hạn chế cho đ&ocirc;i gi&agrave;y của bạn tiếp x&uacute;c nước một c&aacute;ch tối đa v&agrave; thường xuy&ecirc;n lau ch&ugrave;i, vệ sinh để đ&ocirc;i gi&agrave;y lu&ocirc;n mới v&agrave; k&eacute;o d&agrave;i tuổi thọ sử dụng</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp; &nbsp; &nbsp;-&nbsp; &nbsp; Khi vệ sinh sản phẩm cần lưu &yacute; chỉ n&ecirc;n sử dụng khăn vải mềm lau nhẹ tr&ecirc;n bề mặt d&agrave;y, kh&ocirc;ng sử dụng c&aacute;c dụng cụ ch&agrave; rửa th&ocirc; r&aacute;p hay sắc nhọn để vệ sinh, kh&ocirc;ng n&ecirc;n rửa lại bằng nước v&igrave; dễ khiến lớp da bị bong tr&oacute;c v&agrave; l&agrave; giảm độ bền của gi&agrave;y</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp; &nbsp; &nbsp;-&nbsp; &nbsp; Khi gi&agrave;y bị thấm nước mưa, h&atilde;y d&ugrave;ng khăn ướt lau sạch hết nước v&agrave; b&ugrave;n đất tr&ecirc;n gi&agrave;y, sau đ&oacute; sử dụng khăn kh&ocirc; nhẹ nh&agrave;ng lau lại một lượt nữa</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp; &nbsp; &nbsp;-&nbsp; &nbsp; Gi&agrave;y n&ecirc;n được cất ở nơi kh&ocirc;ng kh&iacute; lưu th&ocirc;ng tốt, tho&aacute;ng m&aacute;t, tr&aacute;nh nơi ẩm ướt. Bạn cũng n&ecirc;n mang gi&agrave;y thường xuy&ecirc;n để gi&agrave;y c&oacute; độ bền cao hơn</span></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Nâng đỡ đôi chân bạn trên mọi bước đi\" height=\"450\" src=\"/image/images/giay-cao-got-vinshoes-vs0025-01.jpg\" width=\"600\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><span style=\"color:#000000\">N&acirc;ng đỡ đ&ocirc;i ch&acirc;n bạn tr&ecirc;n mọi bước đi</span></em></p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><strong>Thương hiệu gi&agrave;y d&eacute;p thời trang Vinshoes &ndash; Carvanal</strong></span></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><a href=\"http://carnaval.cafelinkcustomer.info/\"><strong>VINSHOES VIỆT NAM</strong></a> chuy&ecirc;n sản xuất c&aacute;c sản phẩm gi&agrave;y d&eacute;p nam nữ thời trang, phong c&aacute;ch độc đ&aacute;o, đa dạng về mẫu m&atilde;, với gi&aacute; cả hết sức cạnh tranh, đ&aacute;p ứng mọi nhu cầu của kh&aacute;ch h&agrave;ng từ b&igrave;nh d&acirc;n đến cao cấp, đi c&ugrave;ng với đ&oacute; l&agrave; sự ổn định về chất lượng, được nhiều kh&aacute;ch h&agrave;ng h&agrave;i l&ograve;ng. H&atilde;y đến với Vinshoes để t&igrave;m kiếm cho chị em đ&ocirc;i gi&agrave;y ưng &yacute; v&agrave; ph&ugrave; hợp nhất với bạn nh&eacute;.</span></p>\r\n\r\n<p style=\"text-align:justify\"><br />\r\n&nbsp;</p>\r\n', '', '', '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 0, 'giay-cao-got-vinshoes-vs0025', 'Giầy cao gót Vinshoes VS0025', '', ''),
(516, 264, 'en', 'Túi Xách Tay Phối Kim Loại Thanh Lịch - SAT 0264 - Màu Đỏ', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-tb90', 'TB90', '', ''),
(517, 265, 'vn', 'Sandal da lộn gót phối gót vuông cao 5p quai ngang', '', '', '', '', '', '', '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 0, 'sandal-da-lon-got-phoi-got-vuong-cao-5p-quai-ngang', 'Sandal da lộn gót phối gót vuông cao 5p quai ngang', '', ''),
(518, 265, 'en', 'Túi Xách Tay Phối Kim Loại Thanh Lịch - SAT 0264 - Màu Đỏ', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-seine-at-rouen', 'Seine At Rouen', '', ''),
(519, 266, 'vn', 'Sandal gót trụ cao 5p dây đan', '', '', '', '', '', '', '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 0, 'sandal-got-tru-cao-5p-day-dan', 'Sandal gót trụ cao 5p dây đan', '', ''),
(520, 266, 'en', 'Túi Xách Tay Phối Kim Loại Thanh Lịch - SAT 0264 - Màu Đỏ', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-tbav7', 'TBAV7', '', ''),
(521, 267, 'vn', 'Giày mũi vuông hở gót gót vuông cao 5p', '', '', '', '', '', '', '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 0, 'giay-mui-vuong-ho-got-got-vuong-cao-5p', 'Giày mũi vuông hở gót gót vuông cao 5p', '', ''),
(522, 267, 'en', 'Túi Xách Tay Phối Kim Loại Thanh Lịch - SAT 0264 - Màu Đỏ', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-tbav7-1', 'TBAV7', '', ''),
(523, 268, 'vn', 'Giày mũi nhọn hở gót gót vuông cao 5p', '<p dir=\"ltr\">Vinshoes mũi nhọn hở g&oacute;t, g&oacute;t vu&ocirc;ng 5 ph&acirc;n đang khiến nhiều chị em săn l&ugrave;ng r&aacute;o riết hiện nay. Mẫu gi&agrave;y sandal độc đ&aacute;o n&agrave;y kh&ocirc;ng chỉ đẹp m&agrave; c&ograve;n rất thời trang, đẳng cấp.</p>\r\n', '', '', '<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Nếu bạn muốn thay đổi phong c&aacute;ch của m&igrave;nh với <strong>Vinshoes mũi nhọn hở g&oacute;t, g&oacute;t vu&ocirc;ng 5 ph&acirc;n</strong> rất trẻ trung v&agrave; năng động n&agrave;y. H&atilde;y c&ugrave;ng ch&uacute;ng t&ocirc;i tham khảo nội dung b&agrave;i viết sau để mua được đ&ocirc;i gi&agrave;y chất lượng tuyệt hảo nhất.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><em><span style=\"color:#000000\">Mẫu gi&agrave;y hở g&oacute;t trẻ trung</span></em></p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"color:#000000\">Gi&agrave;y Vinshoes mũi nhọn hở g&oacute;t, g&oacute;t vu&ocirc;ng 5 ph&acirc;n c&oacute; ưu điểm g&igrave; nổi bật?</span></strong></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Như ch&uacute;ng ta đều biết c&aacute;c chị em phụ nữ thường sẽ mua sắm cho m&igrave;nh rất nhiều đ&ocirc;i gi&agrave;y kh&aacute;c nhau. Tuy nhi&ecirc;n kh&ocirc;ng chị em n&agrave;o c&oacute; thể bỏ qua mẫu gi&agrave;y hở g&oacute;t g&oacute;t vu&ocirc;ng cao 5 ph&acirc;n. Đặc biệt với mẫu<strong> gi&agrave;y Vinshoes mũi nhọn hở g&oacute;t, g&oacute;t vu&ocirc;ng 5 ph&acirc;n</strong> quả l&agrave; lựa chọn tuyệt hảo.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp; &nbsp; -&nbsp; &nbsp;Mẫu gi&agrave;y hở g&oacute;t l&agrave; sự lựa chọn ho&agrave;n hảo với rất nhiều chị em phụ nữ. Bởi mẫu gi&agrave;y n&agrave;y thường rất dễ đi. Sản phẩm kh&ocirc;ng k&eacute;n ch&acirc;n kh&ocirc;ng k&eacute;n trang phục. Ch&iacute;nh v&igrave; vậy việc phối đồ v&agrave; lựa chọn đ&ocirc;i gi&agrave;y n&agrave;y rất dễ d&agrave;ng v&agrave; sản phẩm được nhiều chị em săn l&ugrave;ng t&igrave;m mua. D&ugrave; chị em đi chơi, đi l&agrave;m hay đi ăn tiệc th&igrave; diện đ&ocirc;i ch&acirc;n chiếc gi&agrave;y Vinshoes hở g&oacute;t đều rất đẹp mắt, trang nh&atilde;.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp; &nbsp; -&nbsp; &nbsp;Chiếc gi&agrave;y được l&agrave;m chất liệu da mờ rất trang nh&atilde;, tinh tế. Chất liệu da sẽ khiến việc n&acirc;ng đỡ đ&ocirc;i ch&acirc;n được &ecirc;m &aacute;i. Khi chị em đeo sẽ kh&ocirc;ng c&oacute; cảm gi&aacute;c th&ocirc; gi&aacute;t như loại gi&agrave;y hở g&oacute;t th&ocirc;ng thường. Th&ecirc;m v&agrave;o đ&oacute; l&agrave; cảm gi&aacute;c &ocirc;m s&aacute;t rất &ecirc;m dịu v&agrave; mềm mại khi di chuyển. Đặc biệt chất liệu da khiến độ bền đ&ocirc;i gi&agrave;y rất cao, d&ugrave; di chuyển mọi địa h&igrave;nh kh&aacute;c nhau kh&ocirc;ng lo lắng hỏng hay ph&ograve;ng ch&acirc;n.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><em><span style=\"color:#000000\">Sản phẩm l&agrave;m chất liệu da mờ</span></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp; &nbsp; -&nbsp; &nbsp;Chiếc gi&agrave;y cao 5 ph&acirc;n với thiết kế đế vu&ocirc;ng lu&ocirc;n tạo cảm gi&aacute;c chắc chắn v&agrave; thanh tao cho người đeo. Với đề gi&agrave;y n&agrave;y c&oacute; thể gi&uacute;p chị em ăn gian chiều cao l&ecirc;n đến 5 ph&acirc;n. Đương nhi&ecirc;n c&aacute;c chị em sinh vi&ecirc;n, nh&acirc;n vi&ecirc;n văn ph&ograve;ng hay c&ocirc;ng sở h&agrave;nh ch&iacute;nh đều rất y&ecirc;u th&iacute;ch chiều cao phổ biến n&agrave;y. Đ&ocirc;i gi&agrave;y gi&uacute;p người đi lu&ocirc;n tự tin v&agrave; sải bước đi ấn tượng.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">&nbsp; &nbsp; -&nbsp; &nbsp;Mẫu gi&agrave;y Vinshoes hở g&oacute;t 5 ph&acirc;n n&agrave;y kh&aacute; đa dạng với rất nhiều m&agrave;u sắc kh&aacute;c nhau. Với thiết kế m&agrave;u trắng tinh kh&ocirc;i gi&uacute;p chị em n&acirc;ng cao sự thanh tao, sang trọng. hay thậm ch&iacute; đ&ocirc;i gi&agrave;y m&agrave;u đen gi&uacute;p chị em tạo vẻ huyền b&iacute;, thu h&uacute;t &aacute;nh nh&igrave;n. M&agrave;u kem trang nh&atilde;, thanh lịch cũng l&agrave; mẫu gi&agrave;y được nhiều chị em y&ecirc;u th&iacute;ch, săn l&ugrave;ng.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><em><span style=\"color:#000000\">M&agrave;u sắc trang nh&atilde;, c&aacute; t&iacute;nh</span></em></p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"color:#000000\">Mua gi&agrave;y Vinshoes mũi nhọn hở g&oacute;t, g&oacute;t vu&ocirc;ng 5 ph&acirc;n ở đ&acirc;u?</span></strong></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Hiện nay, tr&ecirc;n thị trường c&oacute; kh&ocirc;ng &iacute;t đơn vị b&agrave;y b&aacute;n gi&agrave;y d&eacute;p thời trang tha hồ cho qu&yacute; kh&aacute;ch h&agrave;ng lựa chọn. Đương nhi&ecirc;n l&agrave;m thế n&agrave;o lựa chọn sản phẩm uy t&iacute;n, chất lượng với gi&aacute; cả ưu đ&atilde;i lu&ocirc;n l&agrave; lựa chọn h&agrave;ng đầu của chị em phụ nữ.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Hiện nay, mẫu <strong>gi&agrave;y Vinshoes hở g&oacute;t cao 5 ph&acirc;n</strong> đang rất hot v&agrave; được b&agrave;y b&aacute;n tại với mức gi&aacute; ưu đ&atilde;i chỉ 375,000 đồng. Với mức gi&aacute; n&agrave;y qu&yacute; kh&aacute;ch h&agrave;ng sở hữu ngay cho m&igrave;nh đ&ocirc;i gi&agrave;y hở g&oacute;t l&agrave;m chất liệu da mờ đẹp mắt v&agrave; thời thượng nhất hiện nay.</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\">Ngo&agrave;i ra đơn vị ch&uacute;ng t&ocirc;i c&ograve;n rất nhiều mẫu gi&agrave;y thời trang, gi&agrave;y cao g&oacute;t, gi&agrave;y sandal tha hồ cho qu&yacute; kh&aacute;ch h&agrave;ng lựa chọn. C&aacute;c sản phẩm đơn vị đều l&agrave; h&agrave;ng c&ocirc;ng ty chất lượng h&agrave;ng đầu. Ắt hẳn sẽ mang lại cho bạn lựa chọn tuyệt vời nhất.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '[\"35\",\"36\"]', '', '', '', '', '', '[\"37\",\"38\"]', '', '', '', '', 0, 'giay-mui-nhon-ho-got-got-vuong-cao-5p', 'Giày mũi nhọn hở gót gót vuông cao 5p', '', ''),
(524, 268, 'en', 'Túi Xách Tay Phối Kim Loại Thanh Lịch - SAT 0264 - Màu Đỏ', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-madame', 'Madame', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_producer`
--

CREATE TABLE `product_producer` (
  `producer_id` int(11) NOT NULL,
  `producer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producer_sort_order` int(11) DEFAULT NULL,
  `producer_parent` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_producer`
--

INSERT INTO `product_producer` (`producer_id`, `producer_name`, `producer_sort_order`, `producer_parent`, `state`) VALUES
(3, 'Donaldson', 1, 0, 1),
(4, 'Komatsu', 2, 0, 1),
(5, 'Fleetguard', 3, 0, 1),
(6, 'Badwin', 4, 0, 1),
(7, 'Huyndai-Mobis', 5, 0, 1),
(8, 'Sakura', 6, 0, 1),
(9, 'Kobelco', 7, 0, 1),
(10, 'Hãng khác', 8, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_producer_languages`
--

CREATE TABLE `product_producer_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_producer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producer_id` int(11) NOT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_producer_languages`
--

INSERT INTO `product_producer_languages` (`id`, `languages_code`, `lang_producer_name`, `producer_id`, `friendly_url`) VALUES
(34, 'vn', 'Donaldson', 3, 'donaldson'),
(35, 'en', 'Donaldson', 3, 'donaldson'),
(36, 'vn', 'Komatsu', 4, 'komatsu'),
(37, 'en', 'Komatsu', 4, 'komatsu'),
(38, 'vn', 'Fleetguard', 5, 'fleetguard'),
(39, 'en', 'Fleetguard', 5, 'fleetguard'),
(40, 'vn', 'Badwin', 6, 'badwin'),
(41, 'en', 'Badwin', 6, 'badwin'),
(42, 'vn', 'Huyndai-Mobis', 7, 'huyndai-mobis'),
(43, 'en', 'Huyndai-Mobis', 7, 'huyndai-mobis'),
(44, 'vn', 'Sakura', 8, 'sakura'),
(45, 'en', 'Sakura', 8, 'sakura'),
(46, 'vn', 'Kobelco', 9, 'kobelco'),
(47, 'en', 'Kobelco', 9, 'kobelco'),
(48, 'vn', 'Hãng khác', 10, 'hang-khac'),
(49, 'en', 'Hãng khác', 10, 'hang-khac');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pro_color`
--

CREATE TABLE `pro_color` (
  `id` int(11) NOT NULL,
  `color` text COLLATE utf8_unicode_ci,
  `id_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `regInfor`
--

CREATE TABLE `regInfor` (
  `regInfor_id` int(11) NOT NULL,
  `regInfor_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_wasBorn` int(11) DEFAULT NULL,
  `regInfor_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_state` int(11) DEFAULT '1',
  `regInfor_createdDate` date DEFAULT NULL,
  `regInfor_answer1` int(11) DEFAULT '1',
  `regInfor_answer2` int(11) DEFAULT '1',
  `regInfor_answer3` int(11) DEFAULT '1',
  `regInfor_answer4` int(11) DEFAULT '1',
  `regInfor_answer5` int(11) DEFAULT '1',
  `regInfor_answer6` int(11) DEFAULT '1',
  `regInfor_answer7` int(11) DEFAULT '1',
  `regInfor_answer8` int(11) DEFAULT '1',
  `regInfor_answer9` int(11) DEFAULT '1',
  `regInfor_sex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `regInfor`
--

INSERT INTO `regInfor` (`regInfor_id`, `regInfor_name`, `regInfor_phone`, `regInfor_mail`, `regInfor_address`, `regInfor_wasBorn`, `regInfor_code`, `regInfor_state`, `regInfor_createdDate`, `regInfor_answer1`, `regInfor_answer2`, `regInfor_answer3`, `regInfor_answer4`, `regInfor_answer5`, `regInfor_answer6`, `regInfor_answer7`, `regInfor_answer8`, `regInfor_answer9`, `regInfor_sex`) VALUES
(25, 'fgsf', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(26, 'th', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(31, 'thuyhang', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(32, 'thuyhang2', '0967878', NULL, NULL, 1955, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 2, 'nữ'),
(34, 'thdfghgfh', 'dfasdfas', NULL, NULL, 1940, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 2, 1, 1, 'nam'),
(35, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(36, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(37, 'hh', '01669745858', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(38, '', '01669745858', NULL, NULL, 1982, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(39, 'hsdfansdf', '0967878', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(40, '', 'dsfdsfsfs', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(41, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(42, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(43, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(44, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(45, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(46, '', '01669745858', NULL, NULL, 1940, NULL, 1, '2017-06-27', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(47, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(48, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(49, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(50, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(51, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(52, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(53, 'erte', '5657', NULL, NULL, 2345, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '4'),
(54, '', '', NULL, NULL, 0, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(55, 'dryrs', '3426546', NULL, NULL, 25346, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1'),
(56, 'hangpt', '0973378669', NULL, NULL, 1989, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '4'),
(57, 'fhgh', 'fhfhfh', NULL, NULL, 0, NULL, 1, '2017-07-15', 1, 1, 1, 1, 1, 1, 1, 1, 1, '3'),
(58, 'tgsdfg', '', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(59, 'zxcv', 'sdf', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(60, 'xzc', '35345', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `regMember`
--

CREATE TABLE `regMember` (
  `regMember_id` int(11) NOT NULL,
  `regMember_mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regMember_createdDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `regMember`
--

INSERT INTO `regMember` (`regMember_id`, `regMember_mail`, `regMember_createdDate`) VALUES
(11, 'ádgf', '2017-07-16'),
(12, 'xvdfg', '2017-07-16'),
(13, '', '2017-07-30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sale`
--

CREATE TABLE `sale` (
  `sale_id` int(11) NOT NULL,
  `sale_name` text COLLATE utf8_unicode_ci,
  `sale_code` text COLLATE utf8_unicode_ci,
  `sale_total_count` int(11) DEFAULT NULL,
  `sale_type` int(11) DEFAULT NULL,
  `sale_value` float DEFAULT NULL,
  `sale_apply` int(11) DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `sale_start_date` datetime DEFAULT NULL,
  `sale_end_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service`
--

CREATE TABLE `service` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_des` text COLLATE utf8_unicode_ci,
  `service_content` text COLLATE utf8_unicode_ci,
  `service_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_views` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_id` int(11) DEFAULT NULL,
  `service_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_create_date` date DEFAULT NULL,
  `service_update_date` date DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `service_sub_infor1` text COLLATE utf8_unicode_ci,
  `service_sub_infor2` text COLLATE utf8_unicode_ci,
  `service_sub_infor3` text COLLATE utf8_unicode_ci,
  `service_sub_infor4` text COLLATE utf8_unicode_ci,
  `service_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `service`
--

INSERT INTO `service` (`service_id`, `service_name`, `service_des`, `service_content`, `service_img`, `service_views`, `servicecat_id`, `service_author`, `service_create_date`, `service_update_date`, `state`, `service_sub_infor1`, `service_sub_infor2`, `service_sub_infor3`, `service_sub_infor4`, `service_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(64, 'TRUNG TÂM ANH NGỮ AMES TUYỂN DỤNG CHUYÊN VIÊN PHÁT TRIỂN HỌC LIỆU', 'Với dịch vụ quyết toán thuế - giải thể doanh nghiệp giá rẻ, nhanh chóng Nguyên Anh, chúng tôi sẽ giúp bạn giải quyết mọi vấn đề một cách chuyên nghiệp và hiệu quả nhất.', '<p><strong>Vị tr&iacute; tuyển dụng:&nbsp;</strong>Chuy&ecirc;n vi&ecirc;n ph&aacute;t triển học liệu (full time)</p>\r\n\r\n<p><strong>Số lượng:&nbsp;</strong>02</p>\r\n\r\n<p><strong>Thời gian l&agrave;m việc:&nbsp;&nbsp;</strong>Giờ h&agrave;nh ch&iacute;nh từ thứ 2 đến thứ 7</p>\r\n\r\n<p><strong>Địa điểm l&agrave;m việc:&nbsp;</strong>Trung t&acirc;m Ames - 152 Ph&oacute; Đức Ch&iacute;nh, Ba Đ&igrave;nh, H&agrave; Nội</p>\r\n\r\n<p><strong>I. M&ocirc; tả c&ocirc;ng việc</strong></p>\r\n\r\n<p>- Nghi&ecirc;n cứu v&agrave; thiết kế c&aacute;c chương tr&igrave;nh giảng dạy Tiếng Anh cho trẻ em, tiếng Anh luyện thi chứng chỉ quốc tế IELTS/TOEFL/TOEIC</p>\r\n\r\n<p>- Thiết kế, soạn thảo v&agrave; kiểm tra nội dung gi&aacute;o &aacute;n, c&ocirc;ng cụ giảng dạy dựa tr&ecirc;n nội dung s&aacute;ch gi&aacute;o tr&igrave;nh sẵn c&oacute; (lộ tr&igrave;nh học, Slides b&agrave;i giảng, s&aacute;ch, lesson plan &hellip;)</p>\r\n\r\n<p><strong>II. Y&ecirc;u cầu</strong></p>\r\n\r\n<p>- Tốt nghiệp Đại học, ưu ti&ecirc;n c&aacute;c chuy&ecirc;n ng&agrave;nh Tiếng Anh (Sư phạm Ngoại ngữ, Đại học H&agrave; Nội, Ngoại Thương, Ngoại Giao), c&oacute; chứng chỉ IELTS từ 7.0, TOEIC từ 800 trở l&ecirc;n hoặc c&aacute;c bằng cấp tương tự (C1 CEFR) l&agrave; một lợi thế.</p>\r\n\r\n<p>- Ưu ti&ecirc;n ứng vi&ecirc;n c&oacute; kinh nghiệm trong lĩnh vực đ&agrave;o tạo, thẩm định, bi&ecirc;n soạn/x&acirc;y dựng c&aacute;c bộ gi&aacute;o tr&igrave;nh, học liệu trong giảng dạy tiếng Anh.</p>\r\n\r\n<p>- C&oacute; khả năng tổng hợp, ph&acirc;n t&iacute;ch th&ocirc;ng tin tốt, s&aacute;ng tạo v&agrave; nhiều &yacute; tưởng.</p>\r\n\r\n<p>- C&oacute; khả năng tự quản l&yacute; c&ocirc;ng việc v&agrave; l&agrave;m việc nh&oacute;m tốt.</p>\r\n\r\n<p>- C&oacute; khả năng sử dụng tin học văn ph&ograve;ng v&agrave; khai th&aacute;c th&ocirc;ng tin, t&agrave;i liệu từ Internet.</p>\r\n\r\n<p><strong>III. Quyền lợi</strong></p>\r\n\r\n<p>- Lương, thưởng cạnh tranh tr&ecirc;n thị trường.</p>\r\n\r\n<p>- Đ&oacute;ng BHXH, BHYT theo quy định của ph&aacute;p luật. Chế độ nghỉ lễ Tết, được tham gia c&aacute;c hoạt động team buidling v&agrave; sự kiện lớn trong năm.</p>\r\n\r\n<p>- Được l&agrave;m việc trong m&ocirc;i trường năng động, trẻ trung, đầy nhiệt huyết.</p>\r\n\r\n<p>- Cơ hội thăng tiến, ph&aacute;t triển cao.</p>\r\n\r\n<p>- Được đ&agrave;o tạo v&agrave; hướng dẫn nghiệp vụ để đ&aacute;p ứng y&ecirc;u cầu của c&ocirc;ng việc.</p>\r\n\r\n<p><strong>Ứng vi&ecirc;n quan t&acirc;m, vui l&ograve;ng gửi CV v&agrave;o địa chỉ mail:&nbsp;</strong><a href=\"mailto:anhttm@ames.edu.vn\"><strong>hr@ames.edu.vn</strong></a><strong>&nbsp;HOẶC nộp trực tiếp tại 96 L&ograve; Đ&uacute;c, Hai B&agrave; Trưng, H&agrave; Nội.</strong></p>\r\n\r\n<p><strong>Li&ecirc;n hệ: 0934599894 (Ms. Mai Anh)</strong></p>\r\n', 'thong-tin-tuyen-dung1.jpg', '0', 3, '', '2017-12-21', '2018-03-27', 1, NULL, NULL, NULL, NULL, NULL, 'TRUNG TÂM ANH NGỮ AMES TUYỂN DỤNG CHUYÊN VIÊN PHÁT TRIỂN HỌC LIỆU', 'Với dịch vụ quyết toán thuế - giải thể doanh nghiệp giá rẻ, nhanh chóng Nguyên Anh, chúng tôi sẽ giúp bạn giải quyết mọi vấn đề một cách chuyên nghiệp và hiệu quả nhất.', 'trung-tam-anh-ngu-ames-tuyen-dung-chuyen-vien-phat-trien-hoc-lieu', 'Quyết toán thuế', 1),
(65, 'Thông tin tuyển dụng Ames Đà Nẵng tháng 9/2017', 'Hãy lựa chọn ngay dịch vụ Hoàn thiện sổ sách cho doanh nghiệp tại Nguyên Anh để được hỗ trợ và giải quyết mọi vấn đề mà bạn đang băn khoăn ngay hôm nay.', '<p><strong>Vị tr&iacute; tuyển dụng: Gi&aacute;o vi&ecirc;n Tiếng Anh (full time)</strong></p>\r\n\r\n<p><strong>Số lượng:</strong>&nbsp;<strong>02</strong></p>\r\n\r\n<p><strong>Địa điểm l&agrave;m việc: 36 Y&ecirc;n B&aacute;i, Hải Ch&acirc;u, Đ&agrave; Nẵng</strong></p>\r\n\r\n<p><strong>I. M&ocirc; tả c&ocirc;ng việc, tr&aacute;ch nhiệm:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></p>\r\n\r\n<p>- Giảng b&agrave;i, giao b&agrave;i, chấm b&agrave;i v&agrave; chữa b&agrave;i cho học vi&ecirc;n theo m&ocirc; h&igrave;nh học linh động</p>\r\n\r\n<p>- Theo d&otilde;i, chăm s&oacute;c học vi&ecirc;n, tư vấn cho học vi&ecirc;n phương ph&aacute;p học tập hiệu quả.</p>\r\n\r\n<p>- Phối hợp với gi&aacute;o vi&ecirc;n nước ngo&agrave;i trong qu&aacute; tr&igrave;nh giảng b&agrave;i cho học vi&ecirc;n.</p>\r\n\r\n<p>- Theo d&otilde;i hồ sơ của học vi&ecirc;n, nhập th&ocirc;ng tin học vi&ecirc;n v&agrave; t&igrave;nh h&igrave;nh học tập v&agrave;o phần mềm quản l&yacute;.</p>\r\n\r\n<p>- Theo d&otilde;i, bảo quản cơ sở vật chất trong văn ph&ograve;ng bao gồm t&agrave;i liệu học, b&agrave;i l&agrave;m của học vi&ecirc;n, văn ph&ograve;ng phẩm, v&agrave; c&aacute;c thiết bị điện tử kh&aacute;c.</p>\r\n\r\n<p>- Chuẩn bị t&agrave;i liệu học, hồ sơ học vi&ecirc;n v&agrave; thực hiện c&aacute;c c&ocirc;ng việc h&agrave;nh ch&iacute;nh kh&aacute;c của ph&ograve;ng.</p>\r\n\r\n<p><strong>II. Y&ecirc;u cầu:</strong></p>\r\n\r\n<p>- Tốt nghiệp Đại học chuy&ecirc;n ng&agrave;nh tiếng Anh/sư phạm tiếng Anh</p>\r\n\r\n<p>- Ưu ti&ecirc;n c&oacute; kinh nghiệm giảng dạy 01 năm hoặc đ&atilde; c&oacute; chứng chỉ IELTS/TOEFL iBT/TOEIC</p>\r\n\r\n<p>- Sử dụng th&agrave;nh thạo c&aacute;c phần mềm vi t&iacute;nh: Word, Excel&hellip;</p>\r\n\r\n<p>- C&oacute; khả năng giao tiếp, thuyết phục v&agrave; đ&agrave;m ph&aacute;n tốt.</p>\r\n\r\n<p>- H&ograve;a đồng, nhanh nhẹn, nhiệt t&igrave;nh v&agrave; trung thực.</p>\r\n\r\n<p>- L&agrave;m việc theo ca v&agrave; chịu &aacute;p lực tốt</p>\r\n\r\n<p><strong>III. Quyền lợi:</strong></p>\r\n\r\n<p>- Mức lương hấp dẫn (Lương cứng + lương kinh doanh)</p>\r\n\r\n<p>- Chế độ lương th&aacute;ng thứ 13, thưởng theo c&aacute;c ng&agrave;y lễ tết trong năm</p>\r\n\r\n<p>- Được hưởng c&aacute;c chế độ theo quy định của Luật lao động</p>\r\n\r\n<p>- Được tham gia c&aacute;c kh&oacute;a học tiếng anh tại Trung t&acirc;m miễn ph&iacute;</p>\r\n\r\n<p>- Được l&agrave;m việc trong m&ocirc;i trưởng năng động, chuy&ecirc;n nghiệp; c&oacute; cơ hội ph&aacute;t triển bản th&acirc;n v&agrave; thăng tiến l&ecirc;n vị tr&iacute; cấp QUẢN L&Yacute; (C&ocirc;ng ty đang mở rộng th&ecirc;m nhiều chi nh&aacute;nh ở H&agrave; Nội v&agrave; c&aacute;c tỉnh/th&agrave;nh phố trong cả nước)</p>\r\n\r\n<p><strong>IV. C&aacute;ch thức ứng tuyển:</strong></p>\r\n\r\n<p>Ứng vi&ecirc;n quan t&acirc;m vui l&ograve;ng gửi CV n&ecirc;u r&otilde; th&ocirc;ng tin c&aacute; nh&acirc;n v&agrave; kinh nghiệm l&agrave;m việc về địa chỉ:&nbsp;<a href=\"mailto:anhttm@ames.edu.vn\">uyenptm@ames.edu.vn</a>&nbsp;v&agrave;&nbsp;<a href=\"mailto:linhtk@ames.edu.vn\">linhtk@ames.edu.vn</a></p>\r\n\r\n<p>Hoặc nộp trực tiếp tại &nbsp;<a href=\"https://goo.gl/maps/jDbfj2rWEu82\" rel=\"nofollow\" target=\"_blank\">38 Y&ecirc;n B&aacute;i, Hải Ch&acirc;u, Đ&agrave; Nẵng</a></p>\r\n\r\n<p>ĐT li&ecirc;n hệ: &nbsp;<a href=\"tel:02363779999\">0236 377 9999</a></p>\r\n', '-uploaded-pic-cat_chuongtrinh_cr_320x320.png', '0', 3, '', '2017-12-21', '2018-03-27', 1, NULL, NULL, NULL, NULL, NULL, 'Thông tin tuyển dụng Ames Đà Nẵng tháng 9/2017', 'Hãy lựa chọn ngay dịch vụ Hoàn thiện sổ sách cho doanh nghiệp tại Nguyên Anh để được hỗ trợ và giải quyết mọi vấn đề mà bạn đang băn khoăn ngay hôm nay.', 'thong-tin-tuyen-dung-ames-da-nang-thang-92017', 'Hoàn thiện sổ sách', 1),
(66, 'Rà soát sổ sách', 'Dịch vụ Rà soát sổ sách – Xác định rủi ro tiềm ẩn, sẽ giúp bạn giải quyết mọi vấn đề đang gặp phải một cách nhanh chóng và hiệu quả nhất.', '<p style=\"text-align:justify\"><strong>Sau một thời gian hoạt động, Doanh nghiệp của bạn cần phải r&agrave; so&aacute;t sổ s&aacute;ch để c&oacute; thể chuẩn bị cho đợt quyết to&aacute;n thuế sắp tới? Bạn kh&ocirc;ng y&ecirc;n t&acirc;m về dữ liệu sổ s&aacute;ch do c&aacute;c kế to&aacute;n vi&ecirc;n tại c&ocirc;ng ty đang thực hiện? Sổ s&aacute;ch, chứng từ bị x&aacute;o trộn do chuyển địa điểm, chuyển giao c&ocirc;ng việc&hellip;?</strong><br />\r\n<strong>Dịch vụ&nbsp;R&agrave; so&aacute;t sổ s&aacute;ch&nbsp;&ndash; X&aacute;c định rủi ro tiềm ẩn, sẽ gi&uacute;p bạn giải quyết mọi vấn đề đang gặp phải một c&aacute;ch nhanh ch&oacute;ng v&agrave; hiệu quả nhất.</strong><br />\r\n<br />\r\n<span style=\"font-size:16px\"><strong>Dịch vụ r&agrave; so&aacute;t sổ s&aacute;ch l&agrave; g&igrave;? C&oacute; cần thiết phải sử dụng dịch vụ n&agrave;y hay kh&ocirc;ng</strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><strong>Dịch vụ r&agrave; so&aacute;t sổ s&aacute;ch</strong>&nbsp;l&agrave; một trong những loại h&igrave;nh được nhiều doanh nghiệp vừa v&agrave; nhỏ t&igrave;m đến. Đa phần c&ocirc;ng việc kinh doanh bận rộn hay việc thiếu kiến thức chuy&ecirc;n m&ocirc;n trong lĩnh vực n&agrave;y c&oacute; thể khiến cho c&aacute;c doanh nghiệp phải trả gi&aacute; v&igrave; những sai phạm kh&ocirc;ng đ&aacute;ng c&oacute; xuất ph&aacute;t từ vấn đề sổ s&aacute;ch. Ch&iacute;nh v&igrave; thế nếu bạn đang gặp phải những vấn đề như:<br />\r\n&nbsp; &nbsp; ➔ Kh&ocirc;ng an t&acirc;m với sổ s&aacute;ch, số liệu kế to&aacute;n đang thực hiện.<br />\r\n&nbsp; &nbsp; ➔ Kh&ocirc;ng x&aacute;c định được c&aacute;c rủi ro tiềm ẩn trong sổ s&aacute;ch v&agrave; c&aacute;ch khắc phục.<br />\r\n&nbsp; &nbsp; ➔ Chứng từ bị lưu trữ lộn xộn, thi&ecirc;́u khoa học, số liệu kế to&aacute;n bất ổn.<br />\r\n&nbsp; &nbsp; ➔ Thời hạn quyết to&aacute;n gần kề v&agrave; muốn r&agrave; so&aacute;t lại sổ s&aacute;ch để ph&aacute;t hiện c&aacute;c rủi ro, sai phạm kh&ocirc;ng đ&aacute;ng c&oacute;.<br />\r\n&nbsp; &nbsp; ➔ Bộ phận kế to&aacute;n doanh nghiệp kh&ocirc;ng đủ tự tin hay kh&ocirc;ng nắm bắt r&otilde; c&aacute;c luật định mới.<br />\r\nĐ&acirc;y l&agrave; l&uacute;c m&agrave; bạn cần đến&nbsp;<strong>dịch vụ r&agrave; so&aacute;t sổ s&aacute;ch</strong>&nbsp;gi&uacute;p giải quyết mọi vấn đề gặp phải một c&aacute;ch khoa học với chi ph&iacute; tiết kiệm nhất.<br />\r\n<br />\r\n<span style=\"font-size:16px\"><strong>Dịch vụ R&agrave; so&aacute;t sổ s&aacute;ch &ndash; X&aacute;c định rủi ro tiềm ẩn Nguy&ecirc;n Anh</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">L&agrave; một trong những đơn vị uy t&iacute;n, dịch vụ&nbsp;<strong>R&agrave; so&aacute;t sổ s&aacute;ch &ndash; X&aacute;c định rủi ro tiềm ẩn</strong>&nbsp;Nguy&ecirc;n Anh hỗ trợ cho các doanh nghiệp một c&aacute;ch hiệu quả v&agrave; chuy&ecirc;n nghiệp. Ch&uacute;ng t&ocirc;i sẽ gi&uacute;p bạn:<br />\r\n&nbsp; &nbsp; ★ Kiểm tra tổng qu&aacute;t v&agrave; chi tiết c&aacute;c dữ liệu, t&igrave;nh trạng số liệu, chứng từ của doanh nghiệp.<br />\r\n&nbsp; &nbsp; ★ Từ đ&oacute; x&aacute;c định ngay những rủi ro, đưa ra hướng khắc phục c&aacute;c sai phạm kh&ocirc;ng đ&aacute;ng c&oacute;.<br />\r\n&nbsp; &nbsp; ★ Định lượng mức phạt quyết to&aacute;n từ sai phạm về sổ s&aacute;ch.<br />\r\n&nbsp; &nbsp; ★ Tổng kết v&agrave; tư vấn cho doanh nghiệp nhanh ch&oacute;ng v&agrave; hiệu quả.<br />\r\n<br />\r\nNgay l&uacute;c n&agrave;y nếu doanh nghiệp của bạn đang cần đến dịch vụ<strong>&nbsp;R&agrave; so&aacute;t sổ s&aacute;ch</strong>&nbsp;- X&aacute;c định rủi ro tiềm ẩn h&atilde;y li&ecirc;n hệ ngay qua số Hotline của ch&uacute;ng t&ocirc;i để được hỗ trợ v&agrave; b&aacute;o gi&aacute; ch&iacute;nh x&aacute;c nhất. Chi ph&iacute; chỉ từ 700.000 đồng/lần cho dịch vụ trọn g&oacute;i v&agrave; hiệu quả. Nguy&ecirc;n Anh &ndash; đối t&aacute;c của bạn, th&agrave;nh c&ocirc;ng của bạn!!!</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><strong>HOTLINE:&nbsp;<span style=\"color:#e74c3c\">0986.1368.77 - 0988.1368.79</span></strong></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#e74c3c\">C&Ocirc;NG TY TNHH QUẢN TRỊ RỦI RO THUẾ NGUY&Ecirc;N ANH</span></p>\r\n\r\n<p style=\"text-align:center\"><strong>Địa chỉ:</strong>&nbsp;Lầu 9, số 68 Nguyễn Huệ, P. Bến Ngh&eacute;, Q.1, TPHCM</p>\r\n\r\n<p style=\"text-align:center\"><strong>Email:</strong>&nbsp;support@nguyenanhtax.vn</p>\r\n', NULL, '0', 3, '', '2017-12-21', '2017-12-28', 1, NULL, NULL, NULL, NULL, NULL, 'Rà soát sổ sách', 'Dịch vụ Rà soát sổ sách – Xác định rủi ro tiềm ẩn, sẽ giúp bạn giải quyết mọi vấn đề đang gặp phải một cách nhanh chóng và hiệu quả nhất.', 'ra-soat-so-sach', 'Rà soát sổ sách', 1),
(67, 'BẢN TIN TUYỂN DỤNG ANH NGỮ AMES THÁNG 2/2018', 'Dịch vụ kê khai thuế online – Dịch vụ dành riêng cho các Doanh nghiệp nhỏ, siêu nhỏ, start-up; giúp giảm thiểu thời gian, tiết kiệm chi phí tối đa và thay đổi phương thức làm việc hướng đến sự chuyên nghiệp.', '<p>Do nhu cầu ph&aacute;t triển, Anh ngữ Ames tuyển dụng nhiều vị tr&iacute; full time:</p>\r\n\r\n<p>- Trưởng ph&ograve;ng học thuật</p>\r\n\r\n<p>- Trưởng ph&ograve;ng tư vấn tuyển sinh</p>\r\n\r\n<p>- Gi&aacute;o vi&ecirc;n tiếng Anh</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n ph&ograve;ng&nbsp;đ&agrave;o tạo</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n tư vấn tuyển sinh</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n Marketing</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n h&agrave;nh ch&iacute;nh kĩ thuật</p>\r\n\r\n<p>Th&ocirc;ng tin chi tiết:&nbsp;<a href=\"https://goo.gl/forms/kXuzlI3ZW5THua0A3\">https://goo.gl/forms/kXuzlI3ZW5THua0A3</a></p>\r\n\r\n<p>C&aacute;ch thức&nbsp;ứng tuyển</p>\r\n\r\n<p>1.&nbsp;Điền th&ocirc;ng tin&nbsp;ứng tuyển trực tiếp theo link:&nbsp;<a href=\"https://goo.gl/forms/kXuzlI3ZW5THua0A3\">https://goo.gl/forms/kXuzlI3ZW5THua0A3</a></p>\r\n\r\n<p>2. Gửi CV c&aacute; nh&acirc;n về mail: hr@ames.edu.vn (Lưu&nbsp;&yacute;:&nbsp;Ứng vi&ecirc;n ghi r&otilde; vị tr&iacute; v&agrave;&nbsp;địa&nbsp;điểm&nbsp;ứng tuyển)</p>\r\n\r\n<p>3. Nộp trực tiếp tại Ph&ograve;ng Nh&acirc;n sự - Ames 96 L&ograve;&nbsp;Đ&uacute;c, Hai B&agrave; Trưng, H&agrave; Nội</p>\r\n\r\n<p>&nbsp;</p>\r\n', NULL, '0', 3, '', '2017-12-21', '2018-03-27', 1, NULL, NULL, NULL, NULL, NULL, 'BẢN TIN TUYỂN DỤNG ANH NGỮ AMES THÁNG 2/2018', 'Dịch vụ kê khai thuế online – Dịch vụ dành riêng cho các Doanh nghiệp nhỏ, siêu nhỏ, start-up; giúp giảm thiểu thời gian, tiết kiệm chi phí tối đa và thay đổi phương thức làm việc hướng đến sự chuyên nghiệp.', 'ban-tin-tuyen-dung-anh-ngu-ames-thang-22018', 'Kê khai thuế online', 1),
(68, 'BẢN TIN TUYỂN DỤNG ANH NGỮ AMES THÁNG 3/2018', 'Anh ngữ Ames tuyển dụng nhiều vị trí Full time tại chi nhánh Hà Nội và các tỉnh trong cả nước', '<p>Anh ngữ Ames tuyển dụng nhiều vị tr&iacute; Full time tại chi nh&aacute;nh H&agrave; Nội v&agrave; c&aacute;c tỉnh trong cả nước:</p>\r\n\r\n<p>- Gi&aacute;o vi&ecirc;n Tiếng Anh</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n&nbsp;ph&ograve;ng&nbsp;đ&agrave;o tạo</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n tư vấn tuyển sinh</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n Nh&acirc;n sự</p>\r\n\r\n<p>Đặc biệt Ames&nbsp;mở rộng tuyển dụng c&aacute;c vị tr&iacute; quản l&yacute;.&nbsp;Đ&acirc;y l&agrave; cơ hội tốt d&agrave;nh cho c&aacute;c bạn&nbsp;ứng vi&ecirc;n mong muốn thử sức m&igrave;nh ở vị tr&iacute; mới:</p>\r\n\r\n<p>- Gi&aacute;m&nbsp;đốc trung t&acirc;m c&aacute;c tỉnh trong cả nước</p>\r\n\r\n<p>- Trưởng ph&ograve;ng học thuật</p>\r\n\r\n<p>Th&ocirc;ng tin chi tiết:&nbsp;<a href=\"https://goo.gl/forms/FQZKnFCmz51yDzoA2\">https://goo.gl/forms/FQZKnFCmz51yDzoA2</a></p>\r\n\r\n<p>C&aacute;ch thức&nbsp;ứng tuyển</p>\r\n\r\n<p>1.&nbsp;Điền th&ocirc;ng tin trực tiếp qua&nbsp;đường link:&nbsp;<a href=\"https://goo.gl/forms/FQZKnFCmz51yDzoA2\">https://goo.gl/forms/FQZKnFCmz51yDzoA2</a></p>\r\n\r\n<p>2. Gửi mail về&nbsp;địa chỉ: hr@ames.edu.vn</p>\r\n\r\n<p>3. Gửi hồ sơ trực tiếp về&nbsp;địa chỉ:</p>\r\n\r\n<p>Ph&ograve;ng Nh&acirc;n sự&nbsp;</p>\r\n\r\n<p>Trung t&acirc;m Anh ngữ Ames</p>\r\n\r\n<p>96 L&ograve;&nbsp;Đ&uacute;c, Hai B&agrave; Trưng, H&agrave; Nội</p>\r\n\r\n<p>C&aacute;c bạn&nbsp;ứng vi&ecirc;n vui l&ograve;ng ghi r&otilde; th&ocirc;ng tin&nbsp;ứng tuyển: Vị tr&iacute;&nbsp;ứng tuyển-Địa&nbsp;điểm&nbsp;ứng tuyển-Họ v&agrave; t&ecirc;n</p>\r\n\r\n<p>Ames ch&agrave;o&nbsp;đ&oacute;n tất cả c&aacute;c bạn&nbsp;ứng vi&ecirc;n c&oacute; niềm&nbsp;đam m&ecirc; v&agrave; sẵn s&agrave;ng chấp nhận thử th&aacute;ch!!!</p>\r\n', '-uploaded_Teacher-female_cr_320x320.png', '0', 5, '', '2017-12-21', '2018-03-27', 1, NULL, NULL, NULL, NULL, NULL, 'BẢN TIN TUYỂN DỤNG ANH NGỮ AMES THÁNG 3/2018', 'Với dịch vụ kế toán thuế trọn gói – Theo dõi kế hoạch thuế Nguyên Anh, điều bạn cần chỉ là kinh doanh, tất cả vấn đề thuế hãy để chúng tôi hỗ trợ bạn.', 'ban-tin-tuyen-dung-anh-ngu-ames-thang-32018', 'Kế toán thuế trọn gói', 1),
(69, 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', '<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"color:#1d2129\">TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - TH&Aacute;NG 5/2018</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:1.0pt\"><span style=\"background-color:white\"><span style=\"color:#1d2129\">', 'giao-vien-day-van.jpg', '0', 3, '', '2018-04-26', '2018-04-26', 1, NULL, NULL, NULL, NULL, NULL, 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'tuyen-dung-tu-van-tuyen-sinh-sale-thang-52018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE ', 1),
(70, 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\">TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - TH&Aacute;NG 5/2018</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\">{ ĐỊA B&Agrave;N : H&agrave; Nội, Hải Ph&ograve;ng, Hạ Long-Quảng Ninh, TP HCM}</span></span></span></span><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\"><span style=\"background-color:white\"><img alt=\"\" height=\"16\" src=\"file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.png\" width=\"16\" /></span></span></span></span><span style=\"font-size:1.0pt\"><span style=\"background-color:white\"><span style=\"color:#1d2129\">', '', '0', 3, '', '2018-04-26', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'tuyen-dung-tu-van-tuyen-sinh-sale-thang-52018-1', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicecat`
--

CREATE TABLE `servicecat` (
  `servicecat_id` int(11) NOT NULL,
  `servicecat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_des` text COLLATE utf8_unicode_ci,
  `servicecat_content` text COLLATE utf8_unicode_ci,
  `servicecat_parent` int(11) DEFAULT NULL,
  `servicecat_sort_order` int(11) DEFAULT NULL,
  `servicecat_created_date` date DEFAULT NULL,
  `servicecat_update_date` date DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `servicecat_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor1` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor2` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor3` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor4` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `servicecat`
--

INSERT INTO `servicecat` (`servicecat_id`, `servicecat_name`, `servicecat_des`, `servicecat_content`, `servicecat_parent`, `servicecat_sort_order`, `servicecat_created_date`, `servicecat_update_date`, `state`, `servicecat_img`, `servicecat_sub_infor1`, `servicecat_sub_infor2`, `servicecat_sub_infor3`, `servicecat_sub_infor4`, `servicecat_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(3, 'Dịch Vụ', '', '', 0, 0, '2017-12-21', NULL, 1, 's1.jpg', NULL, NULL, NULL, NULL, NULL, 'Dịch Vụ', '', 'dich-vu', '', 1),
(4, 'Smart Reading Skills', '', '', 0, 0, '2018-03-27', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 'Smart Reading Skills', '', 'smart-reading-skills', '', 1),
(5, 'Tuyển dụng', '', '', 0, 0, '2018-03-27', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 'Tuyển dụng', '', 'tuyen-dung', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicecat_languages`
--

CREATE TABLE `servicecat_languages` (
  `id` int(11) NOT NULL,
  `lang_servicecat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_des` text COLLATE utf8_unicode_ci,
  `lang_servicecat_content` text COLLATE utf8_unicode_ci,
  `state` int(11) DEFAULT '1',
  `lang_servicecat_sub_infor1` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor2` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor3` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor4` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `servicecat_languages`
--

INSERT INTO `servicecat_languages` (`id`, `lang_servicecat_name`, `lang_servicecat_des`, `lang_servicecat_content`, `state`, `lang_servicecat_sub_infor1`, `lang_servicecat_sub_infor2`, `lang_servicecat_sub_infor3`, `lang_servicecat_sub_infor4`, `lang_servicecat_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `languages_code`, `servicecat_id`) VALUES
(5, 'Dịch Vụ', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Dịch Vụ', '', 'dich-vu', '', NULL, 'vn', 3),
(6, 'Dịch vụ', '', '', 1, NULL, NULL, NULL, NULL, NULL, 'Dịch vụ', '', 'dich-vu', '', NULL, 'en', 3),
(7, 'Smart Reading Skills', '', '', 1, NULL, NULL, NULL, NULL, NULL, 'Smart Reading Skills', '', 'smart-reading-skills', '', NULL, 'vn', 4),
(8, 'Smart Reading Skills', '', '', 1, NULL, NULL, NULL, NULL, NULL, 'Smart Reading Skills', '', 'smart-reading-skills', '', NULL, 'en', 4),
(9, 'Tuyển dụng', '', '', 1, NULL, NULL, NULL, NULL, NULL, 'Tuyển dụng', '', 'tuyen-dung', '', NULL, 'vn', 5),
(10, 'Tuyển dụng', '', '', 1, NULL, NULL, NULL, NULL, NULL, 'Tuyển dụng', '', 'tuyen-dung', '', NULL, 'en', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service_languages`
--

CREATE TABLE `service_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_des` text COLLATE utf8_unicode_ci,
  `lang_service_content` text COLLATE utf8_unicode_ci,
  `lang_service_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `service_sub_infor1` text COLLATE utf8_unicode_ci,
  `service_sub_infor2` text COLLATE utf8_unicode_ci,
  `service_sub_infor3` text COLLATE utf8_unicode_ci,
  `service_sub_infor4` text COLLATE utf8_unicode_ci,
  `service_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `service_languages`
--

INSERT INTO `service_languages` (`id`, `languages_code`, `lang_service_name`, `lang_service_des`, `lang_service_content`, `lang_service_author`, `state`, `service_sub_infor1`, `service_sub_infor2`, `service_sub_infor3`, `service_sub_infor4`, `service_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `service_id`) VALUES
(83, 'vn', 'TRUNG TÂM ANH NGỮ AMES TUYỂN DỤNG CHUYÊN VIÊN PHÁT TRIỂN HỌC LIỆU', 'Với dịch vụ quyết toán thuế - giải thể doanh nghiệp giá rẻ, nhanh chóng Nguyên Anh, chúng tôi sẽ giúp bạn giải quyết mọi vấn đề một cách chuyên nghiệp và hiệu quả nhất.', '<p><strong>Vị tr&iacute; tuyển dụng:&nbsp;</strong>Chuy&ecirc;n vi&ecirc;n ph&aacute;t triển học liệu (full time)</p>\r\n\r\n<p><strong>Số lượng:&nbsp;</strong>02</p>\r\n\r\n<p><strong>Thời gian l&agrave;m việc:&nbsp;&nbsp;</strong>Giờ h&agrave;nh ch&iacute;nh từ thứ 2 đến thứ 7</p>\r\n\r\n<p><strong>Địa điểm l&agrave;m việc:&nbsp;</strong>Trung t&acirc;m Ames - 152 Ph&oacute; Đức Ch&iacute;nh, Ba Đ&igrave;nh, H&agrave; Nội</p>\r\n\r\n<p><strong>I. M&ocirc; tả c&ocirc;ng việc</strong></p>\r\n\r\n<p>- Nghi&ecirc;n cứu v&agrave; thiết kế c&aacute;c chương tr&igrave;nh giảng dạy Tiếng Anh cho trẻ em, tiếng Anh luyện thi chứng chỉ quốc tế IELTS/TOEFL/TOEIC</p>\r\n\r\n<p>- Thiết kế, soạn thảo v&agrave; kiểm tra nội dung gi&aacute;o &aacute;n, c&ocirc;ng cụ giảng dạy dựa tr&ecirc;n nội dung s&aacute;ch gi&aacute;o tr&igrave;nh sẵn c&oacute; (lộ tr&igrave;nh học, Slides b&agrave;i giảng, s&aacute;ch, lesson plan &hellip;)</p>\r\n\r\n<p><strong>II. Y&ecirc;u cầu</strong></p>\r\n\r\n<p>- Tốt nghiệp Đại học, ưu ti&ecirc;n c&aacute;c chuy&ecirc;n ng&agrave;nh Tiếng Anh (Sư phạm Ngoại ngữ, Đại học H&agrave; Nội, Ngoại Thương, Ngoại Giao), c&oacute; chứng chỉ IELTS từ 7.0, TOEIC từ 800 trở l&ecirc;n hoặc c&aacute;c bằng cấp tương tự (C1 CEFR) l&agrave; một lợi thế.</p>\r\n\r\n<p>- Ưu ti&ecirc;n ứng vi&ecirc;n c&oacute; kinh nghiệm trong lĩnh vực đ&agrave;o tạo, thẩm định, bi&ecirc;n soạn/x&acirc;y dựng c&aacute;c bộ gi&aacute;o tr&igrave;nh, học liệu trong giảng dạy tiếng Anh.</p>\r\n\r\n<p>- C&oacute; khả năng tổng hợp, ph&acirc;n t&iacute;ch th&ocirc;ng tin tốt, s&aacute;ng tạo v&agrave; nhiều &yacute; tưởng.</p>\r\n\r\n<p>- C&oacute; khả năng tự quản l&yacute; c&ocirc;ng việc v&agrave; l&agrave;m việc nh&oacute;m tốt.</p>\r\n\r\n<p>- C&oacute; khả năng sử dụng tin học văn ph&ograve;ng v&agrave; khai th&aacute;c th&ocirc;ng tin, t&agrave;i liệu từ Internet.</p>\r\n\r\n<p><strong>III. Quyền lợi</strong></p>\r\n\r\n<p>- Lương, thưởng cạnh tranh tr&ecirc;n thị trường.</p>\r\n\r\n<p>- Đ&oacute;ng BHXH, BHYT theo quy định của ph&aacute;p luật. Chế độ nghỉ lễ Tết, được tham gia c&aacute;c hoạt động team buidling v&agrave; sự kiện lớn trong năm.</p>\r\n\r\n<p>- Được l&agrave;m việc trong m&ocirc;i trường năng động, trẻ trung, đầy nhiệt huyết.</p>\r\n\r\n<p>- Cơ hội thăng tiến, ph&aacute;t triển cao.</p>\r\n\r\n<p>- Được đ&agrave;o tạo v&agrave; hướng dẫn nghiệp vụ để đ&aacute;p ứng y&ecirc;u cầu của c&ocirc;ng việc.</p>\r\n\r\n<p><strong>Ứng vi&ecirc;n quan t&acirc;m, vui l&ograve;ng gửi CV v&agrave;o địa chỉ mail:&nbsp;</strong><a href=\"mailto:anhttm@ames.edu.vn\"><strong>hr@ames.edu.vn</strong></a><strong>&nbsp;HOẶC nộp trực tiếp tại 96 L&ograve; Đ&uacute;c, Hai B&agrave; Trưng, H&agrave; Nội.</strong></p>\r\n\r\n<p><strong>Li&ecirc;n hệ: 0934599894 (Ms. Mai Anh)</strong></p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'TRUNG TÂM ANH NGỮ AMES TUYỂN DỤNG CHUYÊN VIÊN PHÁT TRIỂN HỌC LIỆU', 'Với dịch vụ quyết toán thuế - giải thể doanh nghiệp giá rẻ, nhanh chóng Nguyên Anh, chúng tôi sẽ giúp bạn giải quyết mọi vấn đề một cách chuyên nghiệp và hiệu quả nhất.', 'trung-tam-anh-ngu-ames-tuyen-dung-chuyen-vien-phat-trien-hoc-lieu', 'Quyết toán thuế', NULL, 64),
(84, 'en', 'Quyết toán thuế', '', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Quyết toán thuế', '', 'quyet-toan-thue', '', NULL, 64),
(85, 'vn', 'Thông tin tuyển dụng Ames Đà Nẵng tháng 9/2017', 'Hãy lựa chọn ngay dịch vụ Hoàn thiện sổ sách cho doanh nghiệp tại Nguyên Anh để được hỗ trợ và giải quyết mọi vấn đề mà bạn đang băn khoăn ngay hôm nay.', '<p><strong>Vị tr&iacute; tuyển dụng: Gi&aacute;o vi&ecirc;n Tiếng Anh (full time)</strong></p>\r\n\r\n<p><strong>Số lượng:</strong>&nbsp;<strong>02</strong></p>\r\n\r\n<p><strong>Địa điểm l&agrave;m việc: 36 Y&ecirc;n B&aacute;i, Hải Ch&acirc;u, Đ&agrave; Nẵng</strong></p>\r\n\r\n<p><strong>I. M&ocirc; tả c&ocirc;ng việc, tr&aacute;ch nhiệm:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></p>\r\n\r\n<p>- Giảng b&agrave;i, giao b&agrave;i, chấm b&agrave;i v&agrave; chữa b&agrave;i cho học vi&ecirc;n theo m&ocirc; h&igrave;nh học linh động</p>\r\n\r\n<p>- Theo d&otilde;i, chăm s&oacute;c học vi&ecirc;n, tư vấn cho học vi&ecirc;n phương ph&aacute;p học tập hiệu quả.</p>\r\n\r\n<p>- Phối hợp với gi&aacute;o vi&ecirc;n nước ngo&agrave;i trong qu&aacute; tr&igrave;nh giảng b&agrave;i cho học vi&ecirc;n.</p>\r\n\r\n<p>- Theo d&otilde;i hồ sơ của học vi&ecirc;n, nhập th&ocirc;ng tin học vi&ecirc;n v&agrave; t&igrave;nh h&igrave;nh học tập v&agrave;o phần mềm quản l&yacute;.</p>\r\n\r\n<p>- Theo d&otilde;i, bảo quản cơ sở vật chất trong văn ph&ograve;ng bao gồm t&agrave;i liệu học, b&agrave;i l&agrave;m của học vi&ecirc;n, văn ph&ograve;ng phẩm, v&agrave; c&aacute;c thiết bị điện tử kh&aacute;c.</p>\r\n\r\n<p>- Chuẩn bị t&agrave;i liệu học, hồ sơ học vi&ecirc;n v&agrave; thực hiện c&aacute;c c&ocirc;ng việc h&agrave;nh ch&iacute;nh kh&aacute;c của ph&ograve;ng.</p>\r\n\r\n<p><strong>II. Y&ecirc;u cầu:</strong></p>\r\n\r\n<p>- Tốt nghiệp Đại học chuy&ecirc;n ng&agrave;nh tiếng Anh/sư phạm tiếng Anh</p>\r\n\r\n<p>- Ưu ti&ecirc;n c&oacute; kinh nghiệm giảng dạy 01 năm hoặc đ&atilde; c&oacute; chứng chỉ IELTS/TOEFL iBT/TOEIC</p>\r\n\r\n<p>- Sử dụng th&agrave;nh thạo c&aacute;c phần mềm vi t&iacute;nh: Word, Excel&hellip;</p>\r\n\r\n<p>- C&oacute; khả năng giao tiếp, thuyết phục v&agrave; đ&agrave;m ph&aacute;n tốt.</p>\r\n\r\n<p>- H&ograve;a đồng, nhanh nhẹn, nhiệt t&igrave;nh v&agrave; trung thực.</p>\r\n\r\n<p>- L&agrave;m việc theo ca v&agrave; chịu &aacute;p lực tốt</p>\r\n\r\n<p><strong>III. Quyền lợi:</strong></p>\r\n\r\n<p>- Mức lương hấp dẫn (Lương cứng + lương kinh doanh)</p>\r\n\r\n<p>- Chế độ lương th&aacute;ng thứ 13, thưởng theo c&aacute;c ng&agrave;y lễ tết trong năm</p>\r\n\r\n<p>- Được hưởng c&aacute;c chế độ theo quy định của Luật lao động</p>\r\n\r\n<p>- Được tham gia c&aacute;c kh&oacute;a học tiếng anh tại Trung t&acirc;m miễn ph&iacute;</p>\r\n\r\n<p>- Được l&agrave;m việc trong m&ocirc;i trưởng năng động, chuy&ecirc;n nghiệp; c&oacute; cơ hội ph&aacute;t triển bản th&acirc;n v&agrave; thăng tiến l&ecirc;n vị tr&iacute; cấp QUẢN L&Yacute; (C&ocirc;ng ty đang mở rộng th&ecirc;m nhiều chi nh&aacute;nh ở H&agrave; Nội v&agrave; c&aacute;c tỉnh/th&agrave;nh phố trong cả nước)</p>\r\n\r\n<p><strong>IV. C&aacute;ch thức ứng tuyển:</strong></p>\r\n\r\n<p>Ứng vi&ecirc;n quan t&acirc;m vui l&ograve;ng gửi CV n&ecirc;u r&otilde; th&ocirc;ng tin c&aacute; nh&acirc;n v&agrave; kinh nghiệm l&agrave;m việc về địa chỉ:&nbsp;<a href=\"mailto:anhttm@ames.edu.vn\">uyenptm@ames.edu.vn</a>&nbsp;v&agrave;&nbsp;<a href=\"mailto:linhtk@ames.edu.vn\">linhtk@ames.edu.vn</a></p>\r\n\r\n<p>Hoặc nộp trực tiếp tại &nbsp;<a href=\"https://goo.gl/maps/jDbfj2rWEu82\" rel=\"nofollow\" target=\"_blank\">38 Y&ecirc;n B&aacute;i, Hải Ch&acirc;u, Đ&agrave; Nẵng</a></p>\r\n\r\n<p>ĐT li&ecirc;n hệ: &nbsp;<a href=\"tel:02363779999\">0236 377 9999</a></p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Thông tin tuyển dụng Ames Đà Nẵng tháng 9/2017', 'Hãy lựa chọn ngay dịch vụ Hoàn thiện sổ sách cho doanh nghiệp tại Nguyên Anh để được hỗ trợ và giải quyết mọi vấn đề mà bạn đang băn khoăn ngay hôm nay.', 'thong-tin-tuyen-dung-ames-da-nang-thang-92017', 'Hoàn thiện sổ sách', NULL, 65),
(86, 'en', 'Hoàn thiện sổ sách', '', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Hoàn thiện sổ sách', '', 'hoan-thien-so-sach', '', NULL, 65),
(87, 'vn', 'Rà soát sổ sách', 'Dịch vụ Rà soát sổ sách – Xác định rủi ro tiềm ẩn, sẽ giúp bạn giải quyết mọi vấn đề đang gặp phải một cách nhanh chóng và hiệu quả nhất.', '<p style=\"text-align:justify\"><strong>Sau một thời gian hoạt động, Doanh nghiệp của bạn cần phải r&agrave; so&aacute;t sổ s&aacute;ch để c&oacute; thể chuẩn bị cho đợt quyết to&aacute;n thuế sắp tới? Bạn kh&ocirc;ng y&ecirc;n t&acirc;m về dữ liệu sổ s&aacute;ch do c&aacute;c kế to&aacute;n vi&ecirc;n tại c&ocirc;ng ty đang thực hiện? Sổ s&aacute;ch, chứng từ bị x&aacute;o trộn do chuyển địa điểm, chuyển giao c&ocirc;ng việc&hellip;?</strong><br />\r\n<strong>Dịch vụ&nbsp;R&agrave; so&aacute;t sổ s&aacute;ch&nbsp;&ndash; X&aacute;c định rủi ro tiềm ẩn, sẽ gi&uacute;p bạn giải quyết mọi vấn đề đang gặp phải một c&aacute;ch nhanh ch&oacute;ng v&agrave; hiệu quả nhất.</strong><br />\r\n<br />\r\n<span style=\"font-size:16px\"><strong>Dịch vụ r&agrave; so&aacute;t sổ s&aacute;ch l&agrave; g&igrave;? C&oacute; cần thiết phải sử dụng dịch vụ n&agrave;y hay kh&ocirc;ng</strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><strong>Dịch vụ r&agrave; so&aacute;t sổ s&aacute;ch</strong>&nbsp;l&agrave; một trong những loại h&igrave;nh được nhiều doanh nghiệp vừa v&agrave; nhỏ t&igrave;m đến. Đa phần c&ocirc;ng việc kinh doanh bận rộn hay việc thiếu kiến thức chuy&ecirc;n m&ocirc;n trong lĩnh vực n&agrave;y c&oacute; thể khiến cho c&aacute;c doanh nghiệp phải trả gi&aacute; v&igrave; những sai phạm kh&ocirc;ng đ&aacute;ng c&oacute; xuất ph&aacute;t từ vấn đề sổ s&aacute;ch. Ch&iacute;nh v&igrave; thế nếu bạn đang gặp phải những vấn đề như:<br />\r\n&nbsp; &nbsp; ➔ Kh&ocirc;ng an t&acirc;m với sổ s&aacute;ch, số liệu kế to&aacute;n đang thực hiện.<br />\r\n&nbsp; &nbsp; ➔ Kh&ocirc;ng x&aacute;c định được c&aacute;c rủi ro tiềm ẩn trong sổ s&aacute;ch v&agrave; c&aacute;ch khắc phục.<br />\r\n&nbsp; &nbsp; ➔ Chứng từ bị lưu trữ lộn xộn, thi&ecirc;́u khoa học, số liệu kế to&aacute;n bất ổn.<br />\r\n&nbsp; &nbsp; ➔ Thời hạn quyết to&aacute;n gần kề v&agrave; muốn r&agrave; so&aacute;t lại sổ s&aacute;ch để ph&aacute;t hiện c&aacute;c rủi ro, sai phạm kh&ocirc;ng đ&aacute;ng c&oacute;.<br />\r\n&nbsp; &nbsp; ➔ Bộ phận kế to&aacute;n doanh nghiệp kh&ocirc;ng đủ tự tin hay kh&ocirc;ng nắm bắt r&otilde; c&aacute;c luật định mới.<br />\r\nĐ&acirc;y l&agrave; l&uacute;c m&agrave; bạn cần đến&nbsp;<strong>dịch vụ r&agrave; so&aacute;t sổ s&aacute;ch</strong>&nbsp;gi&uacute;p giải quyết mọi vấn đề gặp phải một c&aacute;ch khoa học với chi ph&iacute; tiết kiệm nhất.<br />\r\n<br />\r\n<span style=\"font-size:16px\"><strong>Dịch vụ R&agrave; so&aacute;t sổ s&aacute;ch &ndash; X&aacute;c định rủi ro tiềm ẩn Nguy&ecirc;n Anh</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">L&agrave; một trong những đơn vị uy t&iacute;n, dịch vụ&nbsp;<strong>R&agrave; so&aacute;t sổ s&aacute;ch &ndash; X&aacute;c định rủi ro tiềm ẩn</strong>&nbsp;Nguy&ecirc;n Anh hỗ trợ cho các doanh nghiệp một c&aacute;ch hiệu quả v&agrave; chuy&ecirc;n nghiệp. Ch&uacute;ng t&ocirc;i sẽ gi&uacute;p bạn:<br />\r\n&nbsp; &nbsp; ★ Kiểm tra tổng qu&aacute;t v&agrave; chi tiết c&aacute;c dữ liệu, t&igrave;nh trạng số liệu, chứng từ của doanh nghiệp.<br />\r\n&nbsp; &nbsp; ★ Từ đ&oacute; x&aacute;c định ngay những rủi ro, đưa ra hướng khắc phục c&aacute;c sai phạm kh&ocirc;ng đ&aacute;ng c&oacute;.<br />\r\n&nbsp; &nbsp; ★ Định lượng mức phạt quyết to&aacute;n từ sai phạm về sổ s&aacute;ch.<br />\r\n&nbsp; &nbsp; ★ Tổng kết v&agrave; tư vấn cho doanh nghiệp nhanh ch&oacute;ng v&agrave; hiệu quả.<br />\r\n<br />\r\nNgay l&uacute;c n&agrave;y nếu doanh nghiệp của bạn đang cần đến dịch vụ<strong>&nbsp;R&agrave; so&aacute;t sổ s&aacute;ch</strong>&nbsp;- X&aacute;c định rủi ro tiềm ẩn h&atilde;y li&ecirc;n hệ ngay qua số Hotline của ch&uacute;ng t&ocirc;i để được hỗ trợ v&agrave; b&aacute;o gi&aacute; ch&iacute;nh x&aacute;c nhất. Chi ph&iacute; chỉ từ 700.000 đồng/lần cho dịch vụ trọn g&oacute;i v&agrave; hiệu quả. Nguy&ecirc;n Anh &ndash; đối t&aacute;c của bạn, th&agrave;nh c&ocirc;ng của bạn!!!</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><strong>HOTLINE:&nbsp;<span style=\"color:#e74c3c\">0986.1368.77 - 0988.1368.79</span></strong></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#e74c3c\">C&Ocirc;NG TY TNHH QUẢN TRỊ RỦI RO THUẾ NGUY&Ecirc;N ANH</span></p>\r\n\r\n<p style=\"text-align:center\"><strong>Địa chỉ:</strong>&nbsp;Lầu 9, số 68 Nguyễn Huệ, P. Bến Ngh&eacute;, Q.1, TPHCM</p>\r\n\r\n<p style=\"text-align:center\"><strong>Email:</strong>&nbsp;support@nguyenanhtax.vn</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Rà soát sổ sách', 'Dịch vụ Rà soát sổ sách – Xác định rủi ro tiềm ẩn, sẽ giúp bạn giải quyết mọi vấn đề đang gặp phải một cách nhanh chóng và hiệu quả nhất.', 'ra-soat-so-sach', 'Rà soát sổ sách', NULL, 66),
(88, 'en', 'Rà soát sổ sách', '', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Rà soát sổ sách', '', 'ra-soat-so-sach', '', NULL, 66),
(89, 'vn', 'BẢN TIN TUYỂN DỤNG ANH NGỮ AMES THÁNG 2/2018', 'Dịch vụ kê khai thuế online – Dịch vụ dành riêng cho các Doanh nghiệp nhỏ, siêu nhỏ, start-up; giúp giảm thiểu thời gian, tiết kiệm chi phí tối đa và thay đổi phương thức làm việc hướng đến sự chuyên nghiệp.', '<p>Do nhu cầu ph&aacute;t triển, Anh ngữ Ames tuyển dụng nhiều vị tr&iacute; full time:</p>\r\n\r\n<p>- Trưởng ph&ograve;ng học thuật</p>\r\n\r\n<p>- Trưởng ph&ograve;ng tư vấn tuyển sinh</p>\r\n\r\n<p>- Gi&aacute;o vi&ecirc;n tiếng Anh</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n ph&ograve;ng&nbsp;đ&agrave;o tạo</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n tư vấn tuyển sinh</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n Marketing</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n h&agrave;nh ch&iacute;nh kĩ thuật</p>\r\n\r\n<p>Th&ocirc;ng tin chi tiết:&nbsp;<a href=\"https://goo.gl/forms/kXuzlI3ZW5THua0A3\">https://goo.gl/forms/kXuzlI3ZW5THua0A3</a></p>\r\n\r\n<p>C&aacute;ch thức&nbsp;ứng tuyển</p>\r\n\r\n<p>1.&nbsp;Điền th&ocirc;ng tin&nbsp;ứng tuyển trực tiếp theo link:&nbsp;<a href=\"https://goo.gl/forms/kXuzlI3ZW5THua0A3\">https://goo.gl/forms/kXuzlI3ZW5THua0A3</a></p>\r\n\r\n<p>2. Gửi CV c&aacute; nh&acirc;n về mail: hr@ames.edu.vn (Lưu&nbsp;&yacute;:&nbsp;Ứng vi&ecirc;n ghi r&otilde; vị tr&iacute; v&agrave;&nbsp;địa&nbsp;điểm&nbsp;ứng tuyển)</p>\r\n\r\n<p>3. Nộp trực tiếp tại Ph&ograve;ng Nh&acirc;n sự - Ames 96 L&ograve;&nbsp;Đ&uacute;c, Hai B&agrave; Trưng, H&agrave; Nội</p>\r\n\r\n<p>&nbsp;</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'BẢN TIN TUYỂN DỤNG ANH NGỮ AMES THÁNG 2/2018', 'Dịch vụ kê khai thuế online – Dịch vụ dành riêng cho các Doanh nghiệp nhỏ, siêu nhỏ, start-up; giúp giảm thiểu thời gian, tiết kiệm chi phí tối đa và thay đổi phương thức làm việc hướng đến sự chuyên nghiệp.', 'ban-tin-tuyen-dung-anh-ngu-ames-thang-22018', 'Kê khai thuế online', NULL, 67),
(90, 'en', 'Kê khai thuế online', '', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Kê khai thuế online', '', 'ke-khai-thue-online', '', NULL, 67),
(91, 'vn', 'BẢN TIN TUYỂN DỤNG ANH NGỮ AMES THÁNG 3/2018', 'Anh ngữ Ames tuyển dụng nhiều vị trí Full time tại chi nhánh Hà Nội và các tỉnh trong cả nước', '<p>Anh ngữ Ames tuyển dụng nhiều vị tr&iacute; Full time tại chi nh&aacute;nh H&agrave; Nội v&agrave; c&aacute;c tỉnh trong cả nước:</p>\r\n\r\n<p>- Gi&aacute;o vi&ecirc;n Tiếng Anh</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n&nbsp;ph&ograve;ng&nbsp;đ&agrave;o tạo</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n tư vấn tuyển sinh</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n Nh&acirc;n sự</p>\r\n\r\n<p>Đặc biệt Ames&nbsp;mở rộng tuyển dụng c&aacute;c vị tr&iacute; quản l&yacute;.&nbsp;Đ&acirc;y l&agrave; cơ hội tốt d&agrave;nh cho c&aacute;c bạn&nbsp;ứng vi&ecirc;n mong muốn thử sức m&igrave;nh ở vị tr&iacute; mới:</p>\r\n\r\n<p>- Gi&aacute;m&nbsp;đốc trung t&acirc;m c&aacute;c tỉnh trong cả nước</p>\r\n\r\n<p>- Trưởng ph&ograve;ng học thuật</p>\r\n\r\n<p>Th&ocirc;ng tin chi tiết:&nbsp;<a href=\"https://goo.gl/forms/FQZKnFCmz51yDzoA2\">https://goo.gl/forms/FQZKnFCmz51yDzoA2</a></p>\r\n\r\n<p>C&aacute;ch thức&nbsp;ứng tuyển</p>\r\n\r\n<p>1.&nbsp;Điền th&ocirc;ng tin trực tiếp qua&nbsp;đường link:&nbsp;<a href=\"https://goo.gl/forms/FQZKnFCmz51yDzoA2\">https://goo.gl/forms/FQZKnFCmz51yDzoA2</a></p>\r\n\r\n<p>2. Gửi mail về&nbsp;địa chỉ: hr@ames.edu.vn</p>\r\n\r\n<p>3. Gửi hồ sơ trực tiếp về&nbsp;địa chỉ:</p>\r\n\r\n<p>Ph&ograve;ng Nh&acirc;n sự&nbsp;</p>\r\n\r\n<p>Trung t&acirc;m Anh ngữ Ames</p>\r\n\r\n<p>96 L&ograve;&nbsp;Đ&uacute;c, Hai B&agrave; Trưng, H&agrave; Nội</p>\r\n\r\n<p>C&aacute;c bạn&nbsp;ứng vi&ecirc;n vui l&ograve;ng ghi r&otilde; th&ocirc;ng tin&nbsp;ứng tuyển: Vị tr&iacute;&nbsp;ứng tuyển-Địa&nbsp;điểm&nbsp;ứng tuyển-Họ v&agrave; t&ecirc;n</p>\r\n\r\n<p>Ames ch&agrave;o&nbsp;đ&oacute;n tất cả c&aacute;c bạn&nbsp;ứng vi&ecirc;n c&oacute; niềm&nbsp;đam m&ecirc; v&agrave; sẵn s&agrave;ng chấp nhận thử th&aacute;ch!!!</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'BẢN TIN TUYỂN DỤNG ANH NGỮ AMES THÁNG 3/2018', 'Với dịch vụ kế toán thuế trọn gói – Theo dõi kế hoạch thuế Nguyên Anh, điều bạn cần chỉ là kinh doanh, tất cả vấn đề thuế hãy để chúng tôi hỗ trợ bạn.', 'ban-tin-tuyen-dung-anh-ngu-ames-thang-32018', 'Kế toán thuế trọn gói', NULL, 68),
(92, 'en', 'Kế toán thuế trọn gói', '', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Kế toán thuế trọn gói', '', 'ke-toan-thue-tron-goi', '', NULL, 68),
(93, 'vn', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', '<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"color:#1d2129\">TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - TH&Aacute;NG 5/2018</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:1.0pt\"><span style=\"background-color:white\"><span style=\"color:#1d2129\">', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'tuyen-dung-tu-van-tuyen-sinh-sale-thang-52018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE ', NULL, 69),
(94, 'en', 'tuyển giáoo viên dạy văn', 'tuyển giáoo viên dạy văn', '<p>tuyển gi&aacute;oo vi&ecirc;n dạy văn</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'tuyển giáoo viên dạy văn', 'tuyển giáoo viên dạy văn', 'tuyen-giaoo-vien-day-van', 'tuyển giáoo viên dạy văn', NULL, 69),
(95, 'vn', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\">TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - TH&Aacute;NG 5/2018</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\">{ ĐỊA B&Agrave;N : H&agrave; Nội, Hải Ph&ograve;ng, Hạ Long-Quảng Ninh, TP HCM}</span></span></span></span><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\"><span style=\"background-color:white\"><img alt=\"\" height=\"16\" src=\"file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.png\" width=\"16\" /></span></span></span></span><span style=\"font-size:1.0pt\"><span style=\"background-color:white\"><span style=\"color:#1d2129\">', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'tuyen-dung-tu-van-tuyen-sinh-sale-thang-52018-1', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE', NULL, 70),
(96, 'en', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\">TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - TH&Aacute;NG 5/2018</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\">{ ĐỊA B&Agrave;N : H&agrave; Nội, Hải Ph&ograve;ng, Hạ Long-Quảng Ninh, TP HCM}</span></span></span></span><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\"><span style=\"background-color:white\"><img alt=\"\" height=\"16\" src=\"file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.png\" width=\"16\" /></span></span></span></span><span style=\"font-size:1.0pt\"><span style=\"background-color:white\"><span style=\"color:#1d2129\">', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'tuyen-dung-tu-van-tuyen-sinh-sale-thang-52018-1', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE', NULL, 70);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `size_id` bigint(20) NOT NULL,
  `size_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size_stock` int(11) DEFAULT NULL,
  `size_price` double DEFAULT NULL,
  `color_id` bigint(20) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `technical_bulletin_file`
--

CREATE TABLE `technical_bulletin_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `technical_bulletin_file`
--

INSERT INTO `technical_bulletin_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuoc_tinh`
--

CREATE TABLE `thuoc_tinh` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `thuoc_tinh`
--

INSERT INTO `thuoc_tinh` (`id`, `name`) VALUES
(1, 'Màu sắc'),
(2, 'Kích cỡ'),
(3, 'Loại dây đeo'),
(4, 'Kiểu khóa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuoc_tinh_value`
--

CREATE TABLE `thuoc_tinh_value` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thuoc_tinh_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `thuoc_tinh_value`
--

INSERT INTO `thuoc_tinh_value` (`id`, `name`, `thuoc_tinh_id`) VALUES
(1, 'Đen', 1),
(2, 'Đỏ', 1),
(3, 'Tím', 1),
(4, 'Vàng', 1),
(5, 'Xanh', 1),
(6, 'Xám', 1),
(7, 'Hồng', 1),
(8, 'Kích cỡ một', 2),
(9, 'Loại dây đeo một', 3),
(10, 'Kiểu khóa một', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_address` text COLLATE utf8_unicode_ci,
  `user_password` text COLLATE utf8_unicode_ci,
  `created_date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `user_birthday` date NOT NULL,
  `time` date NOT NULL,
  `ask` text COLLATE utf8_unicode_ci,
  `remember_me_identify` text COLLATE utf8_unicode_ci,
  `remember_me_token` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_phone`, `user_address`, `user_password`, `created_date`, `state`, `user_birthday`, `time`, `ask`, `remember_me_identify`, `remember_me_token`) VALUES
(2, 'manh', 'manh@gmail.com', '0123434', '', '$2y$10$8JKJKBN1HlCxSIR6nv39pedRpujNWEOOQ9ePRT07j4x2F4blrAfA2', '2017-03-23 15:03:28', 1, '0000-00-00', '0000-00-00', NULL, NULL, NULL),
(3, 'Trương Quang Tuấn', 'tuan@gmail.com', '0987654321', 'Hà Nội', '$2y$10$AEI/miqMt7vhtFlsLkJefOsXM6GcQft3SEYhe14AAiIV0CYo6GqtK', NULL, 1, '1983-10-31', '2020-09-09', '$2y$10$zhkAx70VHTkxyzh33GM.Ku1AyHL79LG/.f482jKCeSIjjLq/1LF8u', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_online`
--

CREATE TABLE `user_online` (
  `tgtmp` int(15) NOT NULL DEFAULT '0',
  `ip` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `local` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `wishlist_created_date` datetime DEFAULT NULL,
  `product_name` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `admin_role` (`admin_role`),
  ADD KEY `admin_state` (`admin_state`);

--
-- Chỉ mục cho bảng `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`admin_role_id`);

--
-- Chỉ mục cho bảng `bang_gia_1`
--
ALTER TABLE `bang_gia_1`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bang_gia_2`
--
ALTER TABLE `bang_gia_2`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cad_file`
--
ALTER TABLE `cad_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `calculators_file`
--
ALTER TABLE `calculators_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD PRIMARY KEY (`id_cartDetail`),
  ADD KEY `id_cart` (`id_cart`);

--
-- Chỉ mục cho bảng `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`color_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`config_id`);

--
-- Chỉ mục cho bảng `config_languages`
--
ALTER TABLE `config_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `config_id` (`config_id`);

--
-- Chỉ mục cho bảng `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`),
  ADD UNIQUE KEY `currency_code` (`currency_code`);

--
-- Chỉ mục cho bảng `datasheets_file`
--
ALTER TABLE `datasheets_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dat_mua`
--
ALTER TABLE `dat_mua`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dat_san_bay`
--
ALTER TABLE `dat_san_bay`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `declaration_file`
--
ALTER TABLE `declaration_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `installation_file`
--
ALTER TABLE `installation_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languages_id`);

--
-- Chỉ mục cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `listings_certifications_file`
--
ALTER TABLE `listings_certifications_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `menu_type_id` (`menu_type_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `state` (`state`),
  ADD KEY `menu_parent` (`menu_parent`),
  ADD KEY `productcat_id` (`productcat_id`),
  ADD KEY `newscat_id` (`newscat_id`);

--
-- Chỉ mục cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Chỉ mục cho bảng `menu_type`
--
ALTER TABLE `menu_type`
  ADD PRIMARY KEY (`menu_type_id`);

--
-- Chỉ mục cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_menu_type` (`menu_type_id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `newscat`
--
ALTER TABLE `newscat`
  ADD PRIMARY KEY (`newscat_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `newscat_id` (`newscat_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `nhan_ban_tin`
--
ALTER TABLE `nhan_ban_tin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhan_tai_lieu`
--
ALTER TABLE `nhan_tai_lieu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `obsolete_products_file`
--
ALTER TABLE `obsolete_products_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `operating_file`
--
ALTER TABLE `operating_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `optionsQ1`
--
ALTER TABLE `optionsQ1`
  ADD PRIMARY KEY (`optionsQ1_id`);

--
-- Chỉ mục cho bảng `optionsQ2`
--
ALTER TABLE `optionsQ2`
  ADD PRIMARY KEY (`optionsQ2_id`);

--
-- Chỉ mục cho bảng `optionsQ3`
--
ALTER TABLE `optionsQ3`
  ADD PRIMARY KEY (`optionsQ3_id`);

--
-- Chỉ mục cho bảng `optionsQ4`
--
ALTER TABLE `optionsQ4`
  ADD PRIMARY KEY (`optionsQ4_id`);

--
-- Chỉ mục cho bảng `optionsQ5`
--
ALTER TABLE `optionsQ5`
  ADD PRIMARY KEY (`optionsQ5_id`);

--
-- Chỉ mục cho bảng `optionsQ6`
--
ALTER TABLE `optionsQ6`
  ADD PRIMARY KEY (`optionsQ6_id`);

--
-- Chỉ mục cho bảng `optionsQ7`
--
ALTER TABLE `optionsQ7`
  ADD PRIMARY KEY (`optionsQ7_id`);

--
-- Chỉ mục cho bảng `optionsQ8`
--
ALTER TABLE `optionsQ8`
  ADD PRIMARY KEY (`optionsQ8_id`);

--
-- Chỉ mục cho bảng `optionsQ9`
--
ALTER TABLE `optionsQ9`
  ADD PRIMARY KEY (`optionsQ9_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `orders_state` (`orders_state`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Chỉ mục cho bảng `order_state`
--
ALTER TABLE `order_state`
  ADD PRIMARY KEY (`order_state_id`),
  ADD KEY `state` (`state`);

--
-- Chỉ mục cho bảng `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`page_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_cat_id` (`productcat_id`),
  ADD KEY `product_hot` (`product_hot`),
  ADD KEY `state` (`state`),
  ADD KEY `product_sale` (`product_sale`),
  ADD KEY `product_new` (`product_new`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `productcat`
--
ALTER TABLE `productcat`
  ADD PRIMARY KEY (`productcat_id`),
  ADD KEY `productcat_sort_order` (`productcat_sort_order`),
  ADD KEY `productcat_parent` (`productcat_parent`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_cat_id` (`productcat_id`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `product_catalogs_file`
--
ALTER TABLE `product_catalogs_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `product_diff_color`
--
ALTER TABLE `product_diff_color`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `product_producer`
--
ALTER TABLE `product_producer`
  ADD PRIMARY KEY (`producer_id`);

--
-- Chỉ mục cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer_id` (`producer_id`);

--
-- Chỉ mục cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `regInfor`
--
ALTER TABLE `regInfor`
  ADD PRIMARY KEY (`regInfor_id`);

--
-- Chỉ mục cho bảng `regMember`
--
ALTER TABLE `regMember`
  ADD PRIMARY KEY (`regMember_id`);

--
-- Chỉ mục cho bảng `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`sale_id`);

--
-- Chỉ mục cho bảng `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`);

--
-- Chỉ mục cho bảng `servicecat`
--
ALTER TABLE `servicecat`
  ADD PRIMARY KEY (`servicecat_id`);

--
-- Chỉ mục cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_servicecat` (`servicecat_id`);

--
-- Chỉ mục cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_service` (`service_id`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`size_id`),
  ADD KEY `color_id` (`color_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `technical_bulletin_file`
--
ALTER TABLE `technical_bulletin_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thuoc_tinh`
--
ALTER TABLE `thuoc_tinh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thuoc_tinh_value`
--
ALTER TABLE `thuoc_tinh_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thuoc_tinh_id` (`thuoc_tinh_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `user_online`
--
ALTER TABLE `user_online`
  ADD PRIMARY KEY (`tgtmp`),
  ADD KEY `ip` (`ip`),
  ADD KEY `local` (`local`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `admin_role`
--
ALTER TABLE `admin_role`
  MODIFY `admin_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `bang_gia_1`
--
ALTER TABLE `bang_gia_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `bang_gia_2`
--
ALTER TABLE `bang_gia_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `cad_file`
--
ALTER TABLE `cad_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `calculators_file`
--
ALTER TABLE `calculators_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  MODIFY `id_cartDetail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `color`
--
ALTER TABLE `color`
  MODIFY `color_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `config`
--
ALTER TABLE `config`
  MODIFY `config_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `config_languages`
--
ALTER TABLE `config_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `currency`
--
ALTER TABLE `currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `datasheets_file`
--
ALTER TABLE `datasheets_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `dat_mua`
--
ALTER TABLE `dat_mua`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `dat_san_bay`
--
ALTER TABLE `dat_san_bay`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `declaration_file`
--
ALTER TABLE `declaration_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `installation_file`
--
ALTER TABLE `installation_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `languages`
--
ALTER TABLE `languages`
  MODIFY `languages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `listings_certifications_file`
--
ALTER TABLE `listings_certifications_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=264;

--
-- AUTO_INCREMENT cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=521;

--
-- AUTO_INCREMENT cho bảng `menu_type`
--
ALTER TABLE `menu_type`
  MODIFY `menu_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT cho bảng `newscat`
--
ALTER TABLE `newscat`
  MODIFY `newscat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;

--
-- AUTO_INCREMENT cho bảng `nhan_ban_tin`
--
ALTER TABLE `nhan_ban_tin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `nhan_tai_lieu`
--
ALTER TABLE `nhan_tai_lieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `obsolete_products_file`
--
ALTER TABLE `obsolete_products_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `operating_file`
--
ALTER TABLE `operating_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `optionsQ1`
--
ALTER TABLE `optionsQ1`
  MODIFY `optionsQ1_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `optionsQ2`
--
ALTER TABLE `optionsQ2`
  MODIFY `optionsQ2_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `optionsQ3`
--
ALTER TABLE `optionsQ3`
  MODIFY `optionsQ3_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `optionsQ4`
--
ALTER TABLE `optionsQ4`
  MODIFY `optionsQ4_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ5`
--
ALTER TABLE `optionsQ5`
  MODIFY `optionsQ5_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ6`
--
ALTER TABLE `optionsQ6`
  MODIFY `optionsQ6_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ7`
--
ALTER TABLE `optionsQ7`
  MODIFY `optionsQ7_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `optionsQ8`
--
ALTER TABLE `optionsQ8`
  MODIFY `optionsQ8_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `optionsQ9`
--
ALTER TABLE `optionsQ9`
  MODIFY `optionsQ9_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_state`
--
ALTER TABLE `order_state`
  MODIFY `order_state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `page`
--
ALTER TABLE `page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT cho bảng `productcat`
--
ALTER TABLE `productcat`
  MODIFY `productcat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_catalogs_file`
--
ALTER TABLE `product_catalogs_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_diff_color`
--
ALTER TABLE `product_diff_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=525;

--
-- AUTO_INCREMENT cho bảng `product_producer`
--
ALTER TABLE `product_producer`
  MODIFY `producer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `regInfor`
--
ALTER TABLE `regInfor`
  MODIFY `regInfor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `regMember`
--
ALTER TABLE `regMember`
  MODIFY `regMember_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `sale`
--
ALTER TABLE `sale`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT cho bảng `servicecat`
--
ALTER TABLE `servicecat`
  MODIFY `servicecat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT cho bảng `size`
--
ALTER TABLE `size`
  MODIFY `size_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `technical_bulletin_file`
--
ALTER TABLE `technical_bulletin_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `thuoc_tinh`
--
ALTER TABLE `thuoc_tinh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `thuoc_tinh_value`
--
ALTER TABLE `thuoc_tinh_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD CONSTRAINT `cartdetail_ibfk_1` FOREIGN KEY (`id_cart`) REFERENCES `cart` (`id_cart`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `color`
--
ALTER TABLE `color`
  ADD CONSTRAINT `color_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  ADD CONSTRAINT `menu_languages_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  ADD CONSTRAINT `menu_type_languages_ibfk_1` FOREIGN KEY (`menu_type_id`) REFERENCES `menu_type` (`menu_type_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  ADD CONSTRAINT `newscat_languages_ibfk_1` FOREIGN KEY (`newscat_id`) REFERENCES `newscat` (`newscat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  ADD CONSTRAINT `news_languages_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`news_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`orders_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  ADD CONSTRAINT `page_languages_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  ADD CONSTRAINT `productcat_languages_ibfk_1` FOREIGN KEY (`productcat_id`) REFERENCES `productcat` (`productcat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  ADD CONSTRAINT `product_languages_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  ADD CONSTRAINT `product_producer_languages_ibfk_1` FOREIGN KEY (`producer_id`) REFERENCES `product_producer` (`producer_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  ADD CONSTRAINT `pro_color_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`product_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  ADD CONSTRAINT `servicecat_languages_ibfk_1` FOREIGN KEY (`servicecat_id`) REFERENCES `servicecat` (`servicecat_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  ADD CONSTRAINT `service_languages_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `service` (`service_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `size`
--
ALTER TABLE `size`
  ADD CONSTRAINT `size_ibfk_1` FOREIGN KEY (`color_id`) REFERENCES `color` (`color_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `thuoc_tinh_value`
--
ALTER TABLE `thuoc_tinh_value`
  ADD CONSTRAINT `thuoc_tinh_value_ibfk_1` FOREIGN KEY (`thuoc_tinh_id`) REFERENCES `thuoc_tinh` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
