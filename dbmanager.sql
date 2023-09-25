-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 25, 2023 lúc 04:58 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dbmanager`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `catalog`
--

CREATE TABLE `catalog` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` int(11) DEFAULT NULL,
  `sx` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `catalog`
--

INSERT INTO `catalog` (`id`, `name`, `img`, `sx`) VALUES
(1, 'Aliquam', NULL, 0),
(2, 'wave', NULL, 0),
(3, 'Brush', NULL, 0),
(4, 'Shave', NULL, 0),
(5, 'AlphaX', NULL, 0),
(6, 'AlphaC', NULL, 0),
(7, 'BiboMax', NULL, 0),
(8, 'BiboMax', NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(5) NOT NULL,
  `idcatalog` int(3) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `price2` double(10,2) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `mota` varchar(255) DEFAULT NULL,
  `chitiet` text DEFAULT NULL,
  `new` tinyint(1) DEFAULT 0,
  `promotion` int(3) DEFAULT 0,
  `view` int(6) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `idcatalog`, `name`, `price`, `price2`, `img`, `mota`, `chitiet`, `new`, `promotion`, `view`) VALUES
(1, 1, 'Sản phẩm 1', 10.99, 9.99, 'product-1.jpg', 'Mô tả sản phẩm 1', 'Chi tiết sản phẩm 1', 1, 0, 100),
(2, 2, 'Sản phẩm 2', 19.99, 17.49, 'product-2.jpg', 'Mô tả sản phẩm 2', 'Chi tiết sản phẩm 2', 0, 0, 75),
(3, 1, 'Sản phẩm 3', 7.49, 6.99, 'product-3.jpg', 'Mô tả sản phẩm 3', 'Chi tiết sản phẩm 3', 1, 1, 150),
(4, 3, 'Sản phẩm 4', 29.99, 24.99, 'product-4.jpg', 'Mô tả sản phẩm 4', 'Chi tiết sản phẩm 4', 0, 0, 50),
(5, 2, 'Sản phẩm 5', 14.99, 12.99, 'product-5.jpg', 'Mô tả sản phẩm 5', 'Chi tiết sản phẩm 5', 1, 0, 200),
(6, 1, 'product1', 23.50, 21.20, 'product-6.jpg', 'mota1', 'chitiet1', 1, 1, 20),
(7, 1, 'name1', 45.00, 24.00, 'product-7.jpg', 'mota2', 'chitiet2', 1, 1, 0),
(8, 2, 'name2', 150.00, 100.00, 'product-8.jpg', 'mota3', 'chitiet3', 0, 1, 1),
(9, 3, 'name9', 150.00, 100.00, 'product-9.jpg', 'mota9', 'chitiet9', 1, 1, 100),
(10, 4, 'name10', 80.00, 50.00, 'product-10.jpg', 'mota10', 'chitiet10', 1, 0, 10),
(11, 4, 'name11', 80.00, 21.20, 'product-11.jpg', 'mota11', 'chitiet11', 1, 1, 11),
(17, 3, 'Thu thập yêu cầu', 23.00, NULL, 'img1', NULL, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `tel` int(10) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `role` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `user`, `pass`, `tel`, `img`, `role`) VALUES
(1, 'admin', '123123', NULL, NULL, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
