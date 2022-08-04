-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 12, 2022 lúc 06:22 PM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `php58-project`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`) VALUES
(2, 'IPhone XS', 1),
(3, 'IPhone 12', 1),
(5, 'Samsung Galaxy', 4),
(15, 'Iphone12 1', 14),
(16, 'Thời trang nam', 0),
(17, 'Thời trang nữ', 0),
(19, 'Áo khoác nam', 16),
(20, 'Áo thun nam', 16),
(22, 'Áo dài cách tân', 0),
(23, 'Áo khoác nữ', 17),
(24, 'Vest', 0),
(25, 'Giày', 0),
(27, 'Quần áo Nike', 26),
(28, 'Quần áo adidas', 26);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `commentID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `dateCreated` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`commentID`, `productID`, `customerID`, `content`, `dateCreated`) VALUES
(1, 3, 16, 'yummy', '2022-01-07'),
(2, 12, 14, 'ngon', '2022-01-06'),
(28, 1, 1, 'khá ổn', '2022-01-07'),
(29, 1, 1, 'tạm', '2022-01-07'),
(30, 3, 1, 'ab', '2022-01-07'),
(31, 1, 1, '3', '2022-01-07'),
(32, 1, 1, '6', '2022-01-07'),
(33, 1, 1, 'Đấy là cmt món 1', '2022-01-07'),
(34, 2, 1, 'Đây là cmt món 2', '2022-01-07'),
(35, 2, 1, 'a', '2022-01-07'),
(36, 1, 1, 'ok', '2022-01-09'),
(37, 1, 6, 'a', '2022-01-09'),
(38, 8, 6, 'toom cang', '2022-01-09'),
(39, 16, 1, 'mì tôm', '2022-01-12'),
(40, 1, 2, 'ngon', '2022-02-05'),
(41, 4, 2, 'qwd', '2022-02-05'),
(42, 1, 2, 'w', '2022-02-05'),
(0, 30, 3, '123', '2022-02-08'),
(0, 29, 3, 't3', '2022-02-08'),
(0, 30, 7, 't', '2022-02-08'),
(0, 29, 7, 'zxc', '2022-02-08'),
(0, 19, 9, 'De La Sol được biết đến là dự án khu căn hộ hạng sang, được các chủ đầu tư bất động sản đánh giá khá cao về tiềm năng ở thời điểm hiện tại. Các căn hộ tại dự án mang phong cách hiện đại, trẻ trung. Theo đó, đây được kỳ vọng sẽ là nơi để mỗi cư dân có thể ', '2022-02-08'),
(0, 19, 9, 'test thử comment', '2022-02-08'),
(0, 19, 9, 'De La Sol được biết đến là dự án khu căn hộ hạng sang, được các chủ đầu tư bất động sản đánh giá khá cao về tiềm năng ở thời điểm hiện tại. Các căn hộ tại dự án mang phong cách hiện đại, trẻ trung. Theo đó, đây được kỳ vọng sẽ là nơi để mỗi cư dân có thể ', '2022-02-08'),
(0, 19, 9, '', '2022-02-08'),
(0, 19, 9, ' 123', '2022-02-08'),
(0, 19, 9, 'zz', '2022-02-08'),
(0, 19, 10, '321', '2022-02-08'),
(0, 54, 3, 'đẹp', '2022-04-11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `address`, `phone`, `password`) VALUES
(3, 'Test', 'nva@gmail.com', '', '', '202cb962ac59075b964b07152d234b70'),
(7, 'Nguyễn Văn ED', 'hoangluong122199@gmail.com', 'ha noi', '123', '202cb962ac59075b964b07152d234b70'),
(9, 'test1', 'nvb@gmail.com', 'ha noi', '123', '202cb962ac59075b964b07152d234b70'),
(10, 'admin3', 'admin3@gmail.com', 'hanoi', '4354', 'caf1a3dfb505ffed0d024130f58c5cfa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `description` varchar(4000) NOT NULL,
  `content` text NOT NULL,
  `hot` int(11) NOT NULL DEFAULT 0,
  `photo` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `name`, `description`, `content`, `hot`, `photo`) VALUES
(6, 'Một mình bạn cũng có thể đẩy xe khi có sự cố: Đây là cách làm hiệu quả nhất', '<p>Khi di chuyển bằng &ocirc; t&ocirc;, &iacute;t nhiều sẽ c&oacute; trường hợp bạn gặp phải c&aacute;c t&igrave;nh huống rắc rối, thậm ch&iacute; nguy cấp. Đ&oacute; l&agrave; l&yacute; do v&igrave; sao bạn n&ecirc;n trang bị những kiến thức v&agrave; phụ kiện cứu hộ cần thiết. Video dưới đ&acirc;y l&agrave; một mẹo nhỏ sẽ gi&uacute;p bạn trong một v&agrave;i trường hợp khẩn cấp khi sử dụng xe &ocirc; t&ocirc; con.</p>\r\n', '<p>Chiếc xe đầu ti&ecirc;n bị ch&aacute;y v&agrave;o th&aacute;ng 9-2018, nhưng do t&igrave;nh trạng huỷ hoại nặng của xe n&ecirc;n h&atilde;ng kh&ocirc;ng thể t&igrave;m ra manh m&ocirc;i n&agrave;o.</p>\r\n\r\n<p>T&igrave;nh trạng n&agrave;y diễn ra li&ecirc;n tục sau đ&oacute; nhưng việc t&igrave;m kiếm mọi đầu mối nguy&ecirc;n nh&acirc;n vẫn thất bại. Đến đầu năm 2020, Hyundai buộc phải thu&ecirc; b&ecirc;n thứ 3 để t&igrave;m lỗi v&agrave; cuối c&ugrave;ng nguy&ecirc;n nh&acirc;n được x&aacute;c định do chập điện.</p>\r\n\r\n<p>Theo đ&oacute;, dầu phanh ABS bị r&ograve; rỉ, rớt v&agrave;o bộ điều khiển điện tử ECU, dẫn đến ăn m&ograve;n bảng mạch in của ECU g&acirc;y chập điện.</p>\r\n\r\n<p>Dầu thuỷ lực cũng chảy tr&agrave;n l&ecirc;n vỏ động cơ, n&ecirc;n Hyundai đưa ra cảnh b&aacute;o chủ xe Santa Fe n&ecirc;n để &yacute; đến m&ugrave;i kh&eacute;t, kh&oacute;i từ động cơ bốc ra, v&agrave; kết hợp c&aacute;c cảnh b&aacute;o đ&egrave;n trong xe để nhanh ch&oacute;ng đưa xe đến đại l&yacute; sửa chữa.</p>\r\n\r\n<p>Bắt đầu v&agrave;o cuối th&aacute;ng 10 đến, Hyundai y&ecirc;u cầu c&aacute;c xe Santa Fe đời 2013-2015 đến c&aacute;c đại l&yacute; để thay thế cụm thắng ABS bị lỗi.</p>\r\n\r\n<p><strong>Theo Phương Minh (Ph&aacute;p Luật TPHCM)</strong></p>\r\n', 1, '1640187069_img3.jpg'),
(7, 'Siêu xe McLaren 720S màu tím độc nhất Việt Nam được nâng cấp gói độ Novitec N-Largo phiên bản giới hạn.', '<p>Tại Việt Nam, McLaren 720S l&agrave; một trong những d&ograve;ng si&ecirc;u xe phổ biến nhất với số lượng hơn 10 chiếc, cả bản Coupe v&agrave; Spider. Đặc biệt nhất l&agrave; chiếc 720S Coupe của đại gia Vũng T&agrave;u với m&agrave;u t&iacute;m Lantana Purple độc nhất Việt Nam.</p>\r\n', '<p><img alt=\"McLaren 720S với gói độ độc nhất Việt Nam - 1\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-1.jpg\" title=\"McLaren 720S với gói độ độc nhất Việt Nam - 1\" /></p>\r\n\r\n<p>Vẫn chưa h&agrave;i l&ograve;ng với m&agrave;u sơn đặc biệt, đại gia n&agrave;y đ&atilde; chi khoản tiền khủng để lột x&aacute;c ho&agrave;n to&agrave;n chiếc si&ecirc;u xe. Cụ thể, chiếc 720S được n&acirc;ng cấp g&oacute;i độ N-Largo của Novitec.</p>\r\n\r\n<p><img alt=\"McLaren 720S với gói độ độc nhất Việt Nam - 2\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-2.jpg\" title=\"McLaren 720S với gói độ độc nhất Việt Nam - 2\" /></p>\r\n\r\n<p>Nếu c&aacute;c g&oacute;i độ kh&aacute;c chỉ lắp đặt v&agrave;i chi tiết tăng t&iacute;nh kh&iacute; động học th&igrave; g&oacute;i độ N-Largo thay đổi gần như to&agrave;n bộ ngoại thất xe. Phần th&acirc;n vỏ mới được l&agrave;m bằng carbon, vừa tăng t&iacute;nh thẩm mỹ vừa giảm khối lượng cho xe.</p>\r\n\r\n<p><img alt=\"McLaren 720S với gói độ độc nhất Việt Nam - 3\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-3.jpg\" title=\"McLaren 720S với gói độ độc nhất Việt Nam - 3\" /></p>\r\n\r\n<p>Sau khi n&acirc;ng cấp bodykit mới, chiều rộng th&acirc;n xe tăng đ&ocirc;i ch&uacute;t. Cụ thể, v&ograve;m b&aacute;nh trước rộng hơn 60 mm v&agrave; v&ograve;m b&aacute;nh sau rộng hơn 130 mm. Sự thay đổi n&agrave;y vừa tăng vẻ hầm hố cho xe, vừa cung cấp th&ecirc;m kh&ocirc;ng gian để bổ sung c&aacute;c chi tiết kh&iacute; động học.</p>\r\n\r\n<p><img alt=\"McLaren 720S với gói độ độc nhất Việt Nam - 4\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-4.jpg\" title=\"McLaren 720S với gói độ độc nhất Việt Nam - 4\" /></p>\r\n\r\n<p>Do si&ecirc;u xe mang m&agrave;u Lantana Purple độc quyền của bộ phận MSO, chủ nh&acirc;n phải đặt h&agrave;ng m&agrave;u sơn n&agrave;y từ McLaren để phủ l&ecirc;n bodykit mới. D&ugrave; kh&ocirc;ng tiết lộ, mức gi&aacute; cho những hộp sơn từ bộ phận MSO kh&aacute; đắt đỏ.</p>\r\n\r\n<p><img alt=\"McLaren 720S với gói độ độc nhất Việt Nam - 5\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-5.jpg\" title=\"McLaren 720S với gói độ độc nhất Việt Nam - 5\" /></p>\r\n\r\n<p>Điểm thay đổi nhiều nhất l&agrave; nửa th&acirc;n trước của xe. Nhờ bộ kit mới, phần đầu xe trở n&ecirc;n hầm hố hơn với cảm hứng từ đ&agrave;n anh Senna. V&ograve;m b&aacute;nh xe được bổ sung khe gi&oacute; kh&iacute; động học mới.</p>\r\n\r\n<p><img alt=\"McLaren 720S với gói độ độc nhất Việt Nam - 6\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-6.jpg\" title=\"McLaren 720S với gói độ độc nhất Việt Nam - 6\" /></p>\r\n\r\n<p>Bộ m&acirc;m nguy&ecirc;n bản được thay bằng la-zăng đa chấu của Vossen với k&iacute;ch thước 20 inch ở ph&iacute;a trước v&agrave; 21 inch ở ph&iacute;a sau.</p>\r\n\r\n<p><img alt=\"McLaren 720S với gói độ độc nhất Việt Nam - 7\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-7.jpg\" title=\"McLaren 720S với gói độ độc nhất Việt Nam - 7\" /></p>\r\n\r\n<p>Để tạo điểm nhấn cho ngoại thất, một số chi tiết được phủ m&agrave;u v&agrave;ng như viền cản trước/sau, viền ốp h&ocirc;ng, khe gi&oacute; tr&ecirc;n v&ograve;m b&aacute;nh trước, kh&oacute;a t&acirc;m b&aacute;nh xe v&agrave; kẹp phanh.</p>\r\n\r\n<p><img alt=\"McLaren 720S với gói độ độc nhất Việt Nam - 8\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-8.jpg\" title=\"McLaren 720S với gói độ độc nhất Việt Nam - 8\" /></p>\r\n\r\n<p>Ở ph&iacute;a sau, xe được trang bị c&aacute;nh gi&oacute; mới l&agrave;m bằng carbon. Hệ thống ống xả cũng được n&acirc;ng cấp l&ecirc;n thương hiệu FI Exhaust. Hệ thống ống xả n&agrave;y thuộc d&ograve;ng Signature Titanium, được l&agrave;m từ titanium m&agrave;u v&agrave;ng v&agrave; phần chụp ống xả bằng carbon.</p>\r\n\r\n<p><img alt=\"McLaren 720S với gói độ độc nhất Việt Nam - 9\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-9.jpg\" title=\"McLaren 720S với gói độ độc nhất Việt Nam - 9\" /></p>\r\n\r\n<p>Đ&aacute;ng tiếc l&agrave; si&ecirc;u xe n&agrave;y kh&ocirc;ng được n&acirc;ng cấp động cơ. Cung cấp sức mạnh cho 720S vẫn l&agrave; động cơ tăng &aacute;p k&eacute;p V8 4.0L cho c&ocirc;ng suất tối đa 720 m&atilde; lực v&agrave; m&ocirc;-men xoắn 770 Nm. Nhờ sức mạnh n&agrave;y, 720S c&oacute; thể tăng tốc 0-100 km/h chỉ trong 2,9 gi&acirc;y. Nếu được n&acirc;ng cấp hiệu suất theo cấu h&igrave;nh N-Largo, 720S sẽ cho ra c&ocirc;ng suất hơn 800 m&atilde; lực.</p>\r\n\r\n<p><img alt=\"McLaren 720S với gói độ độc nhất Việt Nam - 10\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-10.jpg\" title=\"McLaren 720S với gói độ độc nhất Việt Nam - 10\" /></p>\r\n\r\n<p>Qu&aacute; tr&igrave;nh n&acirc;ng cấp g&oacute;i độ N-Largo cho 720S được thực hiện trong khoảng 1 th&aacute;ng với chi ph&iacute; kh&ocirc;ng được tiết lộ. Novitec chỉ sản xuất 15 bộ bodykit N-Largo cho McLaren 720S. Với độ đặc biệt n&agrave;y, chi ph&iacute; cho g&oacute;i độ N-Largo kh&ocirc;ng thấp hơn con số 1 tỷ đồng.</p>\r\n', 1, '1640187064_img2.jpg'),
(8, 'Kia Seltos ồ ạt về đại lý, rục rịch tăng giá, vừa chốt ngày giao đã có phiên bản ‘cháy hàng’', '<p>Mặc d&ugrave; Kia Seltos đ&atilde; ra mắt c&aacute;ch đ&acirc;y hơn 1 th&aacute;ng nhưng đến nay, trang chủ fanpage Kia Motors Việt Nam mới c&ocirc;ng bố &quot;ch&iacute;nh thức ra mắt v&agrave; tiến h&agrave;nh b&agrave;n giao xe&quot; từ ng&agrave;y 9/9 tới đ&acirc;y. Nhiều khả năng, đ&acirc;y l&agrave; sự kiện ra mắt xe tổ chức tại đại l&yacute; d&agrave;nh ri&ecirc;ng cho kh&aacute;ch h&agrave;ng, đồng thời l&agrave; sự kiện b&agrave;n giao xe cho những kh&aacute;ch h&agrave;ng đặt đầu ti&ecirc;n.</p>\r\n', '<p>Hiện tại, những chiếc Kia Seltos xuất xưởng đầu ti&ecirc;n đ&atilde; được đưa về đại l&yacute; tr&ecirc;n to&agrave;n quốc. Hầu hết xe thuộc c&aacute;c bản 1.4 Premium v&agrave; 1.4 Luxury. Trong đợt n&agrave;y, những kh&aacute;ch đặt mua bản 1.4 Deluxe v&agrave; 1.6 Premium sẽ chưa c&oacute; xe m&agrave; c&oacute; thể phải đợi sang th&aacute;ng 10. Trong thời gian gần đ&acirc;y, kh&aacute;ch h&agrave;ng cũng kh&ocirc;ng thể đặt cọc được bản 1.6 Premium nữa. Phi&ecirc;n bản n&agrave;y được cho l&agrave; thiếu nguồn cung v&agrave; chưa hẹn ng&agrave;y trở lại.</p>\r\n\r\n<p><iframe scrolling=\"no\"></iframe>X</p>\r\n\r\n<p>Những kh&aacute;ch h&agrave;ng đặt xe đợt đầu sẽ được hưởng mức gi&aacute; ưu đ&atilde;i, với c&aacute;c bản 1.4 Deluxe, 1.4 Luxury, 1.6 Premium v&agrave; 1.4 Premium c&oacute; gi&aacute; lần lượt l&agrave; 589 triệu, 649 triệu, 699 triệu v&agrave; 719 triệu đồng. Theo th&ocirc;ng tin từ đại l&yacute;, kể từ sau ng&agrave;y 9/9, gi&aacute; xe c&oacute; thể sẽ tăng tới cả chục triệu đồng. THACO cũng cho biết mức gi&aacute; c&ocirc;ng bố ban đầu l&agrave; gi&aacute; ưu đ&atilde;i.</p>\r\n\r\n<p><img alt=\"Kia Seltos ồ ạt về đại lý, rục rịch tăng giá, vừa chốt ngày giao đã có phiên bản ‘cháy hàng’ - 1\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/kia-seltos-dl-1-1599381020699842033670-crop-15993811032441209604726.jpg\" title=\"Kia Seltos ồ ạt về đại lý, rục rịch tăng giá, vừa chốt ngày giao đã có phiên bản ‘cháy hàng’ - 1\" /></p>\r\n\r\n<p><img alt=\"Kia Seltos ồ ạt về đại lý, rục rịch tăng giá, vừa chốt ngày giao đã có phiên bản ‘cháy hàng’ - 2\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/kia-seltos-dl-2-15993810207161319403356-crop-1599381125936644499717.jpg\" title=\"Kia Seltos ồ ạt về đại lý, rục rịch tăng giá, vừa chốt ngày giao đã có phiên bản ‘cháy hàng’ - 2\" /></p>\r\n\r\n<p>Kia Seltos l&agrave; một trong những mẫu SUV hạng B mới nhất tr&ecirc;n thị trường v&agrave; cũng l&agrave; mẫu xe ho&agrave;n to&agrave;n mới m&agrave; Kia mang tới Việt Nam. Xe nổi bật với một số trang bị như thiết kế hiện đại, đ&egrave;n chiếu s&aacute;ng LED ho&agrave;n to&agrave;n, như ghế chỉnh điện 10 hướng, l&agrave;m m&aacute;t ghế, đồng hồ t&iacute;ch hợp m&agrave;n h&igrave;nh 7 inch, m&agrave;n h&igrave;nh 10,25 inch hỗ trợ Apple CarPlay/Android Auto, đ&egrave;n nội thất 8 m&agrave;u chỉnh theo điệu nhạc...</p>\r\n\r\n<p>C&oacute; 2 tuỳ chọn động cơ tr&ecirc;n Kia Seltos. M&aacute;y 1,4 l&iacute;t tăng &aacute;p c&oacute; mặt tr&ecirc;n 3 phi&ecirc;n bản, cho c&ocirc;ng suất 138 m&atilde; lực v&agrave; m&ocirc;-men xoắn 242 Nm, kết hợp số 7 cấp ly hợp k&eacute;p. M&aacute;y 1,6 l&iacute;t h&uacute;t kh&iacute; tự nhi&ecirc;n cho c&ocirc;ng suất 121 m&atilde; lực v&agrave; m&ocirc;-men xoắn 151 Nm, kết hợp số tự động 6 cấp. Xe c&oacute; c&aacute;c t&iacute;nh năng an to&agrave;n cơ bản đầy đủ như hỗ trợ phanh (ABS, EBD, BA), c&acirc;n bằng điện tử, hỗ trợ khởi h&agrave;nh ngang dốc v&agrave; kiểm so&aacute;t lực k&eacute;o 3 chế độ...</p>\r\n\r\n<p>Theo dự kiến, từ th&aacute;ng 10 trở đi, Kia Seltos sẽ về th&ecirc;m c&aacute;c phi&ecirc;n bản c&ograve;n lại để giao kh&aacute;ch h&agrave;ng tại đại l&yacute;. Mẫu xe n&agrave;y từ nay đến cuối năm được hưởng ưu đ&atilde;i 50% lệ ph&iacute; trước bạ bởi l&agrave; xe lắp r&aacute;p trong nước.</p>\r\n\r\n<p><strong>Theo Đức Kh&ocirc;i (Ph&aacute;p luật &amp; Bạn đọc)</strong></p>\r\n', 1, '1640187058_img1.jpg'),
(9, 'Những mẫu xe tầm giá 600 triệu phù hợp chạy dịch vụ', '<p>Trong một v&agrave;i năm qua, việc mua &ocirc;t&ocirc; chạy dịch vụ trở n&ecirc;n phổ biến ở Việt Nam nhờ sự ph&aacute;t triển của c&aacute;c h&igrave;nh thức gọi xe c&ocirc;ng nghệ. B&ecirc;n cạnh xe đ&ocirc; thị tầm gi&aacute; 400 triệu đồng, &ocirc;t&ocirc; 600 triệu đồng cũng l&agrave; ph&acirc;n kh&uacute;c được nhiều người d&ugrave;ng chọn lựa để đầu tư, với c&aacute;c điểm cộng về kh&ocirc;ng gian rộng r&atilde;i, trang bị v&agrave; an to&agrave;n.</p>\r\n', '<p>Ba c&aacute;i t&ecirc;n đ&aacute;ng ch&uacute; &yacute; đại diện cho nh&oacute;m xe dịch vụ tầm 600 triệu đồng hiện nay c&oacute; thể kể đến Toyota Vios, Kia Cerato v&agrave; Suzuki Ertiga.</p>\r\n\r\n<p><strong>Toyota Vios - 470-570 triệu đồng</strong></p>\r\n\r\n<p>Từ l&acirc;u, Toyota Vios lu&ocirc;n l&agrave; c&aacute;i t&ecirc;n được nhắc đến đầu khi c&acirc;n nhắc mua xe hạng B. Kh&ocirc;ng chỉ c&oacute; chi ph&iacute; sử dụng hợp l&yacute; v&agrave; thuận tiện trong việc bảo tr&igrave; bảo dưỡng, Vios c&ograve;n mang thương hiệu Toyota với t&iacute;nh thanh khoản cao. C&aacute;c yếu tố n&agrave;y gi&uacute;p người d&ugrave;ng Vios tối ưu được hiệu quả đầu tư.</p>\r\n\r\n<p>Đầu năm nay, Toyota Việt Nam ra mắt c&aacute;c phi&ecirc;n bản n&acirc;ng cấp 2020 của Vios trước sức &eacute;p cạnh tranh doanh số từ 2 mẫu xe H&agrave;n Quốc l&agrave; Hyundai Accent (426-542 triệu đồng) v&agrave; Kia Soluto (369-469 triệu đồng).</p>\r\n\r\n<p>H&atilde;ng xe Nhật Bản bổ sung trang bị cho c&aacute;c model mới, đồng thời cung cấp th&ecirc;m t&ugrave;y chọn 3 t&uacute;i kh&iacute; hoặc 7 t&uacute;i kh&iacute; cho bản E MT v&agrave; E CVT. Điều n&agrave;y nhằm giảm mức gi&aacute; khởi điểm 20 triệu đồng v&agrave; tiếp cận th&ecirc;m nh&oacute;m kh&aacute;ch h&agrave;ng mua xe chạy dịch vụ. Cụ thể, 5 biến thể Toyota Vios hiện c&oacute; gi&aacute; đề xuất dao động từ 470 đến 570 triệu đồng.</p>\r\n\r\n<p>Những t&iacute;nh năng mới gi&uacute;p Vios bớt phần thua thiệt so với Hyundai Accent hay Honda City (559-599 triệu đồng) về mặt trang bị, gồm c&oacute; hệ thống giải tr&iacute; hỗ trợ kết nối Apple CarPlay/Android Auto, ga tự động, camera l&ugrave;i v&agrave; cảm biến l&ugrave;i. Tuy vậy, thiết kế nội ngoại thất trung t&iacute;nh của Toyota Vios được giữ nguy&ecirc;n. Ưu điểm của Vios l&agrave; kh&ocirc;ng gian cabin rộng r&atilde;i v&agrave; thoải m&aacute;i cho h&agrave;nh kh&aacute;ch.</p>\r\n\r\n<p><img alt=\"Những mẫu xe tầm giá 600 triệu phù hợp chạy dịch vụ\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/xe-dich-vu.jpg\" title=\"Những mẫu xe tầm giá 600 triệu phù hợp chạy dịch vụ\" /></p>\r\n\r\n<p>Toyota Vios vẫn trang bị động cơ xăng I4 1.5L c&oacute; van biến thi&ecirc;n Dual i-VVT, c&ocirc;ng suất đạt 107 m&atilde; lực c&ugrave;ng m&ocirc;-men xoắn 140 Nm. Đi k&egrave;m với đ&oacute; l&agrave; t&ugrave;y chọn hộp số v&ocirc; cấp CVT hoặc hộp số s&agrave;n 5 cấp. Mức ti&ecirc;u thụ nhi&ecirc;n liệu ở điều kiện kết hợp theo nh&agrave; sản xuất c&ocirc;ng bố tương ứng l&agrave; 5,7-5,8 l&iacute;t/100 km.</p>\r\n\r\n<p><iframe scrolling=\"no\"></iframe>X</p>\r\n\r\n<p>T&iacute;nh từ đầu năm đến nay, Toyota Vios vẫn l&agrave; d&ograve;ng xe b&aacute;n tốt nhất tại thị trường Việt Nam. Tổng cộng đ&atilde; c&oacute; hơn 14.055 model Vios được b&aacute;n ra đến hết th&aacute;ng 7, doanh số trung b&igrave;nh 2.000 xe mỗi th&aacute;ng. Trong khi đ&oacute;, doanh số của Accent, City c&ugrave;ng Soluto l&agrave; 9.568, 4.915 v&agrave; 3.606 chiếc.</p>\r\n\r\n<p><strong>Kia Cerato - 529-665 triệu đồng</strong></p>\r\n\r\n<p>Với mức gi&aacute; khởi điểm tương đương một v&agrave;i mẫu xe hạng B, Kia Cerato trội hơn về kh&ocirc;ng gian cũng như c&oacute; khung gầm vững chắc hơn. Ngo&agrave;i ra, t&iacute;nh năng trang bị ở mức kh&aacute; tốt để phục vụ h&agrave;nh kh&aacute;ch gi&uacute;p mẫu sedan H&agrave;n Quốc được chọn lựa để sử dụng l&agrave;m xe dịch vụ.</p>\r\n\r\n<p>Trong c&ugrave;ng nh&oacute;m xe hạng C, Cerato c&oacute; lợi thế về gi&aacute; b&aacute;n cạnh tranh hơn Mazda3 sedan (669-869 triệu đồng), Hyundai Elantra (580-769 triệu đồng), Honda Civic (729-934 triệu đồng) v&agrave; Toyota Corolla Altis (733-763 triệu đồng).</p>\r\n\r\n<p><img alt=\"Những mẫu xe tầm giá 600 triệu phù hợp chạy dịch vụ - 1\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/xe-dich-vu-1.jpg\" title=\"Những mẫu xe tầm giá 600 triệu phù hợp chạy dịch vụ - 1\" /></p>\r\n\r\n<p>Hiện tại, bản Cerato 1.6 MT ti&ecirc;u chuẩn c&oacute; gi&aacute; 529 triệu đồng, trong khi model 2.0 Premium cao cấp c&oacute; gi&aacute; 665 triệu đồng. B&ecirc;n cạnh đ&oacute;, Cerato c&oacute; thiết kế trẻ trung, c&aacute; t&iacute;nh ở cả ngoại thất lẫn khoang l&aacute;i.</p>\r\n\r\n<p>C&aacute;c trang bị đ&aacute;ng ch&uacute; &yacute; ở bản Cerato 2.0 AT Premium c&oacute; thể kể đến như m&agrave;n h&igrave;nh trung t&acirc;m 8 inch, dẫn đường tiếng Việt, sạc điện thoại kh&ocirc;ng d&acirc;y, cửa sổ trời, đ&egrave;n chiếu s&aacute;ng LED&hellip; Tuy nhi&ecirc;n, Kia Cerato ra mắt từ 2018 đến nay chưa c&oacute; đợt n&acirc;ng cấp n&agrave;o n&ecirc;n c&oacute; phần thua thiệt về mặt c&ocirc;ng nghệ an to&agrave;n so với c&aacute;c đối thủ.</p>\r\n\r\n<p><img alt=\"Những mẫu xe tầm giá 600 triệu phù hợp chạy dịch vụ - 2\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/xe-dich-vu-2.jpg\" title=\"Những mẫu xe tầm giá 600 triệu phù hợp chạy dịch vụ - 2\" /></p>\r\n\r\n<p>Kia Cerato c&oacute; 2 t&ugrave;y chọn động cơ xăng, gồm động cơ Gamma 1.6L MPI (128 m&atilde; lực v&agrave; 157 Nm) v&agrave; động cơ Nu 2.0L MPI (159 m&atilde; lực v&agrave; 194 Nm). Đi c&ugrave;ng với đ&oacute; l&agrave; hộp số s&agrave;n 6 cấp ở bản ti&ecirc;u chuẩn v&agrave; hộp số tự động 6 cấp ở 3 phi&ecirc;n bản AT.</p>\r\n\r\n<p>T&iacute;nh đến cuối th&aacute;ng 7/2020, Kia Cerato đang l&agrave; c&aacute;i t&ecirc;n đứng đầu nh&oacute;m xe hạng C, xếp tr&ecirc;n một mẫu xe kh&aacute;c cũng được Thaco lắp r&aacute;p v&agrave; ph&acirc;n phối l&agrave; Mazda3. Cụ thể, Cerato b&aacute;n được 4.815 chiếc, nhỉnh hơn Mazda3 với 4.675 xe (382 chiếc hatchback v&agrave; 4.293 mẫu sedan). Xếp sau c&ograve;n c&oacute; Hyundai Elantra (2.141 chiếc), Honda Civic (1.464 chiếc) v&agrave; Toyota Corolla Altis (1.037 chiếc).</p>\r\n\r\n<p><strong>Suzuki Ertiga - 499-559 triệu đồng</strong></p>\r\n\r\n<p>Ởph&acirc;n kh&uacute;c MPV 7 chỗ cỡ nhỏ, Suzuki Ertiga l&agrave; c&aacute;i t&ecirc;n s&aacute;ng gi&aacute; cho mục đ&iacute;ch sử dụng l&agrave;m xe dịch vụ khi c&oacute; gi&aacute; b&aacute;n thấp hơn c&aacute;c đối thủ. Cụ thể, Suzuki hiện b&aacute;n 3 model l&agrave; Ertiga GL, Limited v&agrave; Sport, với mức gi&aacute; lần lượt 499, 555 v&agrave; 559 triệu đồng.</p>\r\n\r\n<p>Trong khi đ&oacute;, mức gi&aacute; của Toyota Avanza l&agrave; 544-612 triệu đồng, Kia Rondo c&oacute; gi&aacute; dao động 559-655 triệu đồng v&agrave; Mitsubishi Xpander được b&aacute;n với gi&aacute; đề xuất 555-630 triệu đồng.</p>\r\n\r\n<p><img alt=\"Những mẫu xe tầm giá 600 triệu phù hợp chạy dịch vụ - 3\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/xe-dich-vu-3.jpg\" title=\"Những mẫu xe tầm giá 600 triệu phù hợp chạy dịch vụ - 3\" /></p>\r\n\r\n<p>So với mẫu xe đang b&aacute;n chạy nhất ph&acirc;n kh&uacute;c l&agrave; Mitsubishi Xpander, Ertiga c&oacute; thiết kế trung t&iacute;nh hơn. Trong khi đ&oacute;, t&iacute;nh đa dụng l&agrave; tương đương, với cabin thiết kế kiểu 5+2 c&oacute; thể đ&aacute;p được được nhiều nhu cầu di chuyển kh&aacute;c nhau.</p>\r\n\r\n<p>Ở đợt n&acirc;ng cấp th&aacute;ng 6/2020, Suzuki trang bị cho Ertiga 2 chức năng an to&agrave;n l&agrave; hệ thống c&acirc;n bằng điện tử v&agrave; hỗ trợ khởi h&agrave;nh ngang dốc. B&ecirc;n cạnh đ&oacute;, Ertiga 2020 c&oacute; cụm giải tr&iacute; nổi bật với m&agrave;n h&igrave;nh 10 inch lớn nhất ph&acirc;n kh&uacute;c v&agrave; hỗ trợ kết nối Apple CarPlay/Android Auto. Điểm hạn chế của Suzuki Ertiga l&agrave; vẫn chưa c&oacute; t&iacute;nh năng ga tự động v&agrave; ghế bọc da như Xpander.</p>\r\n\r\n<p><img alt=\"Những mẫu xe tầm giá 600 triệu phù hợp chạy dịch vụ - 4\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/xe-dich-vu-4.jpg\" title=\"Những mẫu xe tầm giá 600 triệu phù hợp chạy dịch vụ - 4\" /></p>\r\n\r\n<p>Suzuki trang bị cho Ertiga động cơ xăng I4 dung t&iacute;ch 1.5L, c&ocirc;ng suất tối đa 103 m&atilde; lực v&agrave; m&ocirc;-men xoắn cực đại 138 Nm. Đi c&ugrave;ng với đ&oacute; l&agrave; hộp số tự động 4 cấp hoặc số s&agrave;n 5 cấp. So với c&aacute;c đối thủ, Ertiga c&oacute; mức ti&ecirc;u thụ nhi&ecirc;n liệu tốt hơn, đạt 5,95 l&iacute;t/100 km ở điều kiện hỗn hợp theo c&ocirc;ng bố của nh&agrave; sản xuất.</p>\r\n\r\n<p>Doanh số t&iacute;nh đến hết th&aacute;ng 7/2020 của Suzuki Ertiga l&agrave; 1.651 xe, &iacute;t hơn Mitsubishi Xpander với 7.493 chiếc. Xếp sau mẫu MPV của Suzuki l&agrave; Kia Rondo (640 chiếc) v&agrave; Toyota Avanza (185 chiếc).</p>\r\n\r\n<p><strong>Theo Ho&agrave;ng Phạm (Tri Thức Trực Tuyến)</strong></p>\r\n', 1, '1640187053_chicago.jpg'),
(10, 'VinFast President lộ diện tại đại lý: Dài hơn 5,1m, nội thất gây chú ý', '<p>S&aacute;ng 7/9, VinFast President bắt đầu được trưng b&agrave;y tại một số đại l&yacute; tr&ecirc;n to&agrave;n quốc. Đ&acirc;y l&agrave; mẫu xe đầu bảng mới của VinFast, nhằm đối đầu với những mẫu SUV full-size đầu bảng như Lexus LX570 hay BMW X7. Gi&aacute; b&aacute;n ch&iacute;nh thức vẫn l&agrave; một ẩn số. Trong khi đ&oacute;, c&aacute;c đại l&yacute; tr&ecirc;n to&agrave;n quốc đ&atilde; nhận đặt cọc d&ograve;ng xe n&agrave;y từ hơn 2 tuần trước.</p>\r\n', '<p><img alt=\"VinFast President lộ diện tại đại lý: Dài hơn 5,1m, nội thất gây chú ý - 1\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/11878486036083208225118083153028368974773756o-1599447254226412865993.jpg\" title=\"VinFast President lộ diện tại đại lý: Dài hơn 5,1m, nội thất gây chú ý - 1\" /></p>\r\n\r\n<p>D&ugrave; mang kiểu d&aacute;ng tương đồng Lux SA2.0, nhưng VinFast President c&oacute; chiều d&agrave;i cơ sở lớn hơn đ&aacute;ng kể so với Lux SA2.0 để tăng kh&ocirc;ng gian cho h&agrave;ng ghế thứ hai. K&iacute;ch thước tổng thể d&agrave;i x rộng x cao lần lượt 5.146 x 1.987 x 1.760 mm.</p>\r\n\r\n<p><img alt=\"VinFast President lộ diện tại đại lý: Dài hơn 5,1m, nội thất gây chú ý - 2\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/11873146236083221191783454790297719361395835o-1599447342605836490707.jpg\" title=\"VinFast President lộ diện tại đại lý: Dài hơn 5,1m, nội thất gây chú ý - 2\" /></p>\r\n\r\n<p>President l&agrave; mẫu xe VinFast c&oacute; nhiều t&ugrave;y chọn m&agrave;u sơn nhất. Chiếc xe xuất hiện trong b&agrave;i viết c&oacute; m&agrave;u sơn Sunset (V&agrave;ng), ngo&agrave;i ra c&ograve;n c&oacute; 5 t&ugrave;y chọn kh&aacute;c, bao gồm Đen b&oacute;ng, Gun Metal (X&aacute;m), Competition Red (Đỏ), Purple Rain (T&iacute;m) v&agrave; Deep Ocean (Xanh).</p>\r\n\r\n<p><img alt=\"VinFast President lộ diện tại đại lý: Dài hơn 5,1m, nội thất gây chú ý - 3\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/11897988836083219758450268430614037557080152o-15994473427272082543017.jpg\" title=\"VinFast President lộ diện tại đại lý: Dài hơn 5,1m, nội thất gây chú ý - 3\" /></p>\r\n\r\n<p><img alt=\"VinFast President lộ diện tại đại lý: Dài hơn 5,1m, nội thất gây chú ý - 4\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/11880229436083217258450518569561270565357571o-15994473429461452327921.jpg\" title=\"VinFast President lộ diện tại đại lý: Dài hơn 5,1m, nội thất gây chú ý - 4\" /></p>\r\n\r\n<p><img alt=\"VinFast President lộ diện tại đại lý: Dài hơn 5,1m, nội thất gây chú ý - 5\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/11878697236083222425116665983592381891571117o-15994473425281589262149.jpg\" title=\"VinFast President lộ diện tại đại lý: Dài hơn 5,1m, nội thất gây chú ý - 5\" /></p>\r\n\r\n<p>VinFast President c&oacute; một số kh&aacute;c biệt với Lux SA2.0, như hốc h&uacute;t gi&oacute; tr&ecirc;n nắp capo, lưới tản nhiệt mắt c&aacute;o, m&acirc;m mới v&agrave; 4 ống xả ph&iacute;a sau. Xe trang bị động cơ V8 6.2L h&uacute;t kh&iacute; tự nhi&ecirc;n của Chevrolet,&nbsp;khả năng tăng tốc 0-100 km/h chỉ trong 6,8 gi&acirc;y.</p>\r\n\r\n<p><img alt=\"VinFast President lộ diện tại đại lý: Dài hơn 5,1m, nội thất gây chú ý - 6\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/11869534736083211191784451584592460798027813o-15994473421541141431804.jpg\" title=\"VinFast President lộ diện tại đại lý: Dài hơn 5,1m, nội thất gây chú ý - 6\" /></p>\r\n\r\n<p>B&ecirc;n trong, điểm dễ nhận ra nhất l&agrave; m&agrave;n h&igrave;nh giải tr&iacute; mới, đặt ngang, k&iacute;ch thước tr&ecirc;n 10 inch. Cửa gi&oacute; điều h&ograve;a cũng được xoay ngang. Đặt ph&iacute;a dưới c&ugrave;ng l&agrave; d&atilde;y n&uacute;t c&oacute; khả năng để điều chỉnh c&aacute;c chức năng như th&ocirc;ng gi&oacute;, sưởi ghế v&agrave; massage ghế.</p>\r\n\r\n<p><img alt=\"VinFast President lộ diện tại đại lý: Dài hơn 5,1m, nội thất gây chú ý - 7\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/11876658536083213691784204671846162600310349o-1599447343464674639441.jpg\" title=\"VinFast President lộ diện tại đại lý: Dài hơn 5,1m, nội thất gây chú ý - 7\" /></p>\r\n\r\n<p>Loại da sử dụng b&ecirc;n trong nội thất VinFast President cao cấp hơn, họa tiết kh&acirc;u cũng kh&aacute;c biệt c&ugrave;ng dải chỉ đỏ nhấn mạnh v&agrave;o t&iacute;nh thể thao.</p>\r\n', 1, '1640187047_1lap.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `orderdetails`
--

INSERT INTO `orderdetails` (`id`, `order_id`, `product_id`, `quantity`, `price`) VALUES
(30, 12, 19, 3, 15000000),
(31, 12, 18, 1, 9000000),
(32, 13, 20, 1, 20000000),
(33, 13, 19, 1, 15000000),
(34, 13, 18, 1, 9000000),
(35, 14, 18, 3, 9000000),
(36, 15, 3, 3, 5000000),
(37, 15, 12, 2, 8000000),
(38, 16, 19, 4, 15000000),
(39, 16, 29, 1, 5000000),
(40, 17, 53, 6, 700000),
(41, 18, 52, 4, 2000000),
(42, 18, 54, 3, 750000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `price` float NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `date`, `price`, `status`) VALUES
(12, 3, '2021-10-31', 52200000, 0),
(13, 3, '2021-10-31', 36200000, 0),
(14, 3, '2022-01-01', 21600000, 1),
(15, 3, '2022-01-04', 24800000, 1),
(16, 8, '2022-01-25', 65000000, 1),
(17, 3, '2022-04-11', 3990000, 1),
(18, 9, '2022-04-11', 9737500, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `description` varchar(4000) NOT NULL,
  `content` text NOT NULL,
  `hot` int(11) NOT NULL DEFAULT 0,
  `photo` varchar(500) NOT NULL,
  `price` float NOT NULL,
  `discount` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `content`, `hot`, `photo`, `price`, `discount`, `category_id`) VALUES
(31, 'Urbas Corluray - Low Top', '<p>Lấy cảm hứng từ k&igrave; nghỉ Xu&acirc;n 2020 &quot;d&agrave;i hạn đặc biệt&quot; vượt qua cả m&ugrave;a Hạ để chạm đến m&ugrave;a Thu, &ldquo;Corluray Pack&rdquo; ra đời với n&eacute;t c&aacute;ch điệu mới mẻ, hiếm thấy ở d&ograve;ng Urbas. Chất liệu Corduroy với t&ecirc;n gọi kh&aacute;c Elephant Cord (nhung g&acirc;n sợi to) lần đầu ti&ecirc;n được sử dụng tr&ecirc;n th&acirc;n gi&agrave;y, g&acirc;y ấn tượng c&ugrave;ng những phối m&agrave;u như những tia nắng cuối Xu&acirc;n ấm &aacute;p.</p>\r\n', '<p>Đến với Shop bạn ho&agrave;n to&agrave;n c&oacute; thể y&ecirc;n t&acirc;m h&agrave;ng đảm bảo chất lượng, tốt nhất trong tầm gi&aacute;.( kh&ocirc;ng c&oacute; h&agrave;ng lỗi, h&agrave;ng thứ cấp )</p>\r\n\r\n<p>Chất liệu: Gi&agrave;y được l&agrave;m từ Vải sợi tho&aacute;ng kh&iacute; bền đẹp theo thời gian</p>\r\n\r\n<p>Đế gi&agrave;y được l&agrave;m bằng chất liệu cao su đ&uacute;c nguy&ecirc;n khối chắc chắn c&oacute; khắc họa tiết để tăng độ ma s&aacute;t, chống trơn trượt.</p>\r\n', 1, '1646992479_1631358856_01.1.jpg', 550000, 10, 25),
(32, 'Vintas The New Military - High Top', '<p>Mang vẻ ngo&agrave;i bụi bặm, mộc mạc v&agrave; được lấy cảm hứng từ những bộ qu&acirc;n phục của nhiều binh chủng trong qu&acirc;n đội, Vintas &quot;The New Military&quot; đem lại một &quot;chất l&iacute;nh&quot; rất ri&ecirc;ng cho những ai y&ecirc;u phong c&aacute;ch &quot;Military&quot; v&agrave; những t&acirc;m hồn điềm đạm, ki&ecirc;n cường đầy tinh tế.</p>\r\n', '<p>Đến với Shop bạn ho&agrave;n to&agrave;n c&oacute; thể y&ecirc;n t&acirc;m h&agrave;ng đảm bảo chất lượng, tốt nhất trong tầm gi&aacute;.( kh&ocirc;ng c&oacute; h&agrave;ng lỗi, h&agrave;ng thứ cấp</p>\r\n\r\n<p>Chất liệu: Gi&agrave;y được l&agrave;m từ Vải sợi tho&aacute;ng kh&iacute; bền đẹp theo thời gian</p>\r\n\r\n<p>Đế gi&agrave;y được l&agrave;m bằng chất liệu cao su đ&uacute;c nguy&ecirc;n khối chắc chắn c&oacute; khắc họa tiết để tăng độ ma s&aacute;t, chống trơn trượt.</p>\r\n', 1, '1646992599_1631358856_01.3.jpg', 500000, 5, 25),
(33, 'Urbas Irrelevant - Slip On', '<p>Lạ lẫm trong c&aacute;ch sắp xếp c&aacute;c m&agrave;u sắc ngẫu nhi&ecirc;n kh&ocirc;ng r&otilde; &yacute; đồ. Urbas Irrelevant Pack mang đậm sự ngẫu hứng kh&ocirc;ng cần điểm chung, cũng ko cần c&oacute; sự li&ecirc;n quan qu&aacute; nhiều với nhau trong &yacute; đồ s&aacute;ng t&aacute;c giữa c&aacute;c sản phẩm trong bộ. Đ&acirc;y chắc chắn l&agrave; mảnh gh&eacute;p kh&ocirc;ng thể thiếu cho những ai muốn điều đặc biệt m&agrave; kh&ocirc;ng ph&acirc;n t&iacute;ch qu&aacute; nhiều</p>\r\n', '<p>Đến với Shop bạn ho&agrave;n to&agrave;n c&oacute; thể y&ecirc;n t&acirc;m h&agrave;ng đảm bảo chất lượng, tốt nhất trong tầm gi&aacute;.( kh&ocirc;ng c&oacute; h&agrave;ng lỗi, h&agrave;ng thứ cấp )</p>\r\n\r\n<p>Chất liệu: Gi&agrave;y được l&agrave;m từ Vải sợi tho&aacute;ng kh&iacute; bền đẹp theo thời gian</p>\r\n\r\n<p>Đế gi&agrave;y được l&agrave;m bằng chất liệu cao su đ&uacute;c nguy&ecirc;n khối chắc chắn c&oacute; khắc họa tiết để tăng độ ma s&aacute;t, chống trơn trượt.</p>\r\n', 1, '1646992713_1631360708_03.2.jpg', 1000000, 0, 25),
(34, 'Vintas Mister', '<p>D&aacute;ng Low Top truyền thống, kết hợp c&ugrave;ng phối m&agrave;u gợi n&eacute;t cổ điển, xưa cũ với chất vải Canvas, da Suede tr&ecirc;n Upper v&agrave; một phần nhỏ da Nappa ở tem logo tr&ecirc;n lưỡi g&agrave;. Một sự lựa chọn của những ai muốn l&agrave;m nổi bật l&ecirc;n sự ch&iacute;n chắn, t&iacute;nh điềm đạm c&ugrave;ng n&eacute;t lịch thiệp cho bộ outfit của m&igrave;nh.</p>\r\n', '<p>Đến với Shop bạn ho&agrave;n to&agrave;n c&oacute; thể y&ecirc;n t&acirc;m h&agrave;ng đảm bảo chất lượng, tốt nhất trong tầm gi&aacute;.( kh&ocirc;ng c&oacute; h&agrave;ng lỗi, h&agrave;ng thứ cấp )&nbsp;</p>\r\n\r\n<p>Chất liệu: Gi&agrave;y được l&agrave;m từ Vải sợi tho&aacute;ng kh&iacute; bền đẹp theo thời gian</p>\r\n\r\n<p>Đế gi&agrave;y được l&agrave;m bằng chất liệu cao su đ&uacute;c nguy&ecirc;n khối chắc chắn c&oacute; khắc họa tiết để tăng độ ma s&aacute;t, chống trơn trượt.</p>\r\n', 1, '1646992841_1631365746_07.1.jpg', 600000, 5, 25),
(36, 'Ecko Unltd áo khoác nữ IS21-07303 ECKO NAVY', '<p>&Aacute;o kho&aacute;c gi&oacute; Nữ ECKO UNLTD. IS21-07303 534 Xanh dương sở hữu thiết kế trẻ trung, khỏe khoắn sử dụng m&agrave;u sắc đơn giản, tươi tắn. Dễ kết hợp với nhiều loại trang phục, diện đi học, đi chơi hay đi l&agrave;m đều đẹp.</p>\r\n', '<p>Kiểu d&aacute;ng thể thao, trẻ trung, c&aacute; t&iacute;nh, bao ngầu.</p>\r\n\r\n<p>Điểm nhấn ch&iacute;nh l&agrave; sự kết hợp giữa phần &aacute;o họa tiết trơn v&agrave; phần &aacute;o họa tiết lạ mắt.</p>\r\n\r\n<p>&Aacute;o kho&aacute;c c&oacute; mũ tr&ugrave;m chống nắng, mưa.</p>\r\n\r\n<p>Mặc với trang phục n&agrave;o cũng đẹp.</p>\r\n', 1, '1646993149_is21-07303_ss21_ecko_navy-1.jpg', 1367000, 10, 23),
(37, 'Ecko Unltd áo khoác nữ IS21-07303 VIOLET TULLE', '<p>&Aacute;o kho&aacute;c gi&oacute; Nữ ECKO UNLTD. IS21-07303 605 T&iacute;m sở hữu thiết kế trẻ trung, khỏe khoắn sử dụng m&agrave;u sắc đơn giản, tươi tắn. Dễ kết hợp với nhiều loại trang phục, diện đi học, đi chơi hay đi l&agrave;m đều đẹp.</p>\r\n', '<h3>Chất liệu 100% POLYAMIDE</h3>\r\n\r\n<h3>Kiểu d&aacute;ng thể thao, trẻ trung, c&aacute; t&iacute;nh.</h3>\r\n\r\n<h3>Phối được với nhiều loại trang phục kh&aacute;c nhau. D&ugrave; bạn diện &aacute;o kho&aacute;c ECKO UNLTD. đi học, đi chơi, hay đi l&agrave;m đều rất đẹp v&agrave; thoải m&aacute;i.</h3>\r\n\r\n<p>Điểm nhấn ch&iacute;nh l&agrave; sự kết hợp giữa phần &aacute;o họa tiết trơn v&agrave; phần &aacute;o họa tiết lạ mắt.</p>\r\n\r\n<p>&Aacute;o kho&aacute;c c&oacute; mũ tr&ugrave;m chống nắng, mưa.</p>\r\n\r\n<p>Mặc với trang phục n&agrave;o cũng đẹp.</p>\r\n', 1, '1646993300_is21-07303_ss21_violet_tulle-5.jpg', 2000000, 0, 23),
(38, 'Ecko Unltd áo khoác gió dáng suông nữ IF20-07601 BURGUNDY', '<p>Kiểu d&aacute;ng thể thao v&agrave; năng động. Thiết kế ấn tượng với sự đồng m&agrave;u ở phần cổ, bo cổ tay v&agrave; lai &aacute;o tạo hiệu ứng thị gi&aacute;c mạnh mẽ c&ugrave;ng họa tiết chữ Ecko Red nổi bật tr&ecirc;n nền trắng. Chiếc &aacute;o kho&aacute;c đem đến một phong c&aacute;ch trẻ trung v&agrave; c&aacute; t&iacute;nh.<br />\r\nPh&ugrave; hợp:Mọi hoạt động thường ng&agrave;y: đi học, đi l&agrave;m, đi chơi,...</p>\r\n', '<p>Bộ sưu tập: SUNDAY MOOD<br />\r\nChất liệu: 100% Nylon. Chất liệu nhẹ, kh&ocirc;ng nhăn v&agrave; hạn chế thấm nước.<br />\r\nNguồn gốc thương hiệu: Mỹ</p>\r\n', 1, '1646993412_if20_07601.burgundy-1.jpg', 1900000, 6, 23),
(39, 'Ecko Unltd áo thun tay ngắn nam OS22-90448 GREY HEATHER', '<p>&Aacute;O THUN TAY NGẮN NAM ECKO UNLTD. OS22-90448 X&aacute;m thuộc bộ sưu tập 2022 mới nhất của nh&atilde;n hiệu ECKO UNLTD. đến từ Mỹ. &Aacute;o mang thiết kế d&aacute;ng basic, dễ phối đồ v&agrave; c&oacute; nhiều lựa chọn m&agrave;u sắc v&ocirc; c&ugrave;ng đa dạng cho c&aacute;c ch&agrave;ng trai bộc lộ c&aacute; t&iacute;nh ri&ecirc;ng.</p>\r\n', '<p>Thiết kế thời trang, gi&uacute;p bạn nổi bật c&aacute; t&iacute;nh ri&ecirc;ng.</p>\r\n\r\n<p>Logo t&ecirc; gi&aacute;c v&agrave; d&ograve;ng chữ ECKO UNLTD. nổi bật.</p>\r\n\r\n<p>Chất liệu: 100% cotton tho&aacute;ng m&aacute;t, h&uacute;t mồ h&ocirc;i hiệu quả.</p>\r\n', 1, '1646993598_os22-90448_ss22_grey_heather-1.jpg', 700000, 5, 20),
(40, 'Kappa áo thun tay ngắn nam K0B32TD20 8117', '<p>&Aacute;o thun thể thao Kappa chất liệu cotton 96% v&agrave; spandex 4% h&uacute;t ẩm hiệu quả, tho&aacute;ng m&aacute;t. Th&acirc;n &aacute;o phối hai m&agrave;u độc đ&aacute;o. Họa tiết đậm chất &yacute; b&ecirc;n th&acirc;n phải l&agrave; điểm nhấn độc đ&aacute;o của sản phẩm, gi&uacute;p thể hiện vẻ thời trang thanh lịch v&agrave; trẻ trung</p>\r\n', '<p>Ph&ugrave; Hợp:&nbsp;Tập thể thao, tham gia c&aacute;c hoạt động ngo&agrave;i trời, đi học, đi l&agrave;m, vui chơi,...</p>\r\n\r\n<p>Xuất Xứ Thương Hiệu:&nbsp;Italia</p>\r\n\r\n<p>Bộ Sưu Tập:&nbsp;CLASSIC</p>\r\n\r\n<p>Chất liệu:&nbsp;100%cotton</p>\r\n', 1, '1646993737_k0b32td20-8117-7.jpg', 800000, 5, 20),
(41, 'Kappa áo khoác gió dáng suông nam', '<p>&Aacute;o kho&aacute;c Kappa nằm trong bộ sưu tập SPORT kiểu d&aacute;ng thể thao v&agrave; năng động. Thiết kế tay d&agrave;i v&agrave; cổ đứng. Hai b&ecirc;n tay &aacute;o l&agrave; hai dải m&agrave;u c&aacute; t&iacute;nh. Logo Omini tr&ecirc;n phần vai thể hiện sự phong c&aacute;ch của thương hiệu Kappa, gi&uacute;p người mặc cảm nhận sự trẻ trung v&agrave; năng động.</p>\r\n', '<p>Sản phẩm c&oacute; t&uacute;i b&ecirc;n trong tiện dụng.</p>\r\n', 1, '1646993908_311b7tw_a1a-2.jpg', 1500000, 10, 19),
(42, 'Áo vest Nazafu Đen 1109', '<p>Những bộ veston nam lịch l&atilde;m v&agrave; sang trọng l&agrave; trang phục kh&ocirc;ng thể thiếu của c&aacute;c đấng m&agrave;y r&acirc;u trong mọi ho&agrave;n cảnh</p>\r\n', '<p>&Aacute;o vest Nam đẹp</p>\r\n', 1, '1646994217_ao-vest-nazafu-den-1107-9866-slide-products-5b3af822d7599.jpg', 1600000, 5, 24),
(43, 'Bộ quần áo vest nam cao cấp HAAVSD 48', '<p>Bộ quần &aacute;o vest nam cao cấp HAAVSD 48 thương hiệu Matino, form d&aacute;ng 1 c&uacute;c body chất liệu co d&atilde;n nhẹ,&nbsp;kh&ocirc;ng nhăn nh&agrave;u bai x&ugrave; - Made in Viet Nam</p>\r\n', '<p>Bộ vest nam, tặng c&agrave; vạt, sơ mi sản phẩm bao gồm &aacute;o vest, quần t&acirc;y, &aacute;o sơ mi, c&agrave; vạt</p>\r\n\r\n<p>Th&iacute;ch hợp mặc trong nhiều m&ocirc;i trường kh&aacute;c nhau như c&ocirc;ng sở, tiệc, event, du lịch...</p>\r\n', 1, '1646994531_lvZVIt_simg_de2fe0_500x500_maxb.jpg', 1990000, 10, 24),
(44, 'Áo crop top phối ren', '<p>&Aacute;o crop top phối ren&nbsp;được l&agrave;m từ sợi viscose th&acirc;n thiện với m&ocirc;i trường. C&aacute;c nh&agrave; thiết kế lựa chọn loại sợi c&oacute; nguồn gốc từ bột gỗ n&agrave;y bởi n&oacute; đảm bảo quản l&yacute; rừng bền vững.</p>\r\n', '<p>&Aacute;o sơ mi d&aacute;ng ngắn<br />\r\nH&agrave;ng khuy nhỏ c&agrave;i trước<br />\r\nCổ &aacute;o phối ren guipure c&ugrave;ng m&agrave;u<br />\r\nTay lỡ rộng<br />\r\nThiết kế d&aacute;ng ngắn, rộng<br />\r\nNgười mẫu mặc size 1 v&agrave; cao 175 cm</p>\r\n\r\n<p>Vải ch&iacute;nh: 60% viscose, 35% linen, 4% polyester, 1% polyamide</p>\r\n\r\n<p>Ren: 100% polyester</p>\r\n\r\n<p>Khuy: 100% nacre</p>\r\n', 1, '1646994714_Sandro_SFPTO00498-D244_V_P_1.jpg', 6800000, 5, 17),
(45, 'Kappa giày sneakers nam 311CNXW A01', '<p>GI&Agrave;Y SNEAKERS NAM KAPPA 311CNXW A01 N&Acirc;U c&oacute; thiết kế nam t&iacute;nh, mẫu gi&agrave;y n&agrave;y đem lại vẻ cool ngầu v&agrave; sự nổi bật cho c&aacute;c ch&agrave;ng trai. Gi&agrave;y c&oacute; thiết kế &ocirc;m ch&acirc;n, đế cao su &ecirc;m &aacute;i, dễ d&agrave;ng di chuyển, v&agrave; đặc biệt l&agrave; phối c&ugrave;ng trang phục n&agrave;o cũng đẹp.</p>\r\n', '<p>Size chuẩn ch&acirc;u &Acirc;u từ 39-45</p>\r\n\r\n<p>Thiết kế cool ngầu với những mảng m&agrave;u đối lập nổi bật.</p>\r\n\r\n<p>Diện với trang phục n&agrave;o cũng đẹp trai.</p>\r\n\r\n<p>Chất liệu: Th&acirc;n gi&agrave;y: 100% PU; Đế gi&agrave;y: 100% Phylon.</p>\r\n', 1, '1646994930_311cnxw-a01-2.jpg', 1711000, 10, 25),
(46, 'Áo dài cách tân cổ ngang bản vai chéo', '<p>Sản phẩm được BẢO H&Agrave;NH TRỌN ĐỜI về đường may, c&uacute;c, kh&oacute;a.</p>\r\n', '<p>Ưu ti&ecirc;n c&aacute;c h&igrave;nh thức giặt kh&ocirc;, giặt tay để giữ được độ bền v&agrave; m&agrave;u sắc của vải.</p>\r\n\r\n<p>Sử dụng t&uacute;i giặt ri&ecirc;ng trong trường hợp giặt m&aacute;y.</p>\r\n\r\n<p>Kh&ocirc;ng phơi trực tiếp dưới nắng mặt trời.</p>\r\n\r\n<p>Tr&aacute;nh va chạm với đồ c&oacute; g&oacute;c nhọn, sắc.</p>\r\n', 1, '1646995237_DSC_9430.jpg', 1600000, 5, 22),
(48, 'Kappa áo khoác thun nam 341988W A65', '<p>&Aacute;O KHO&Aacute;C THUN NAM KAPPA 341988W A65 XANH L&Aacute; mang m&agrave;u sắc ấn tượng, thiết kế trẻ trung v&agrave; c&oacute; thể phối với nhiều trang phục kh&aacute;c nhau, đem đến sự tự tin cho người mặc. Mẫu &aacute;o kho&aacute;c n&agrave;y c&ograve;n c&oacute; hai t&uacute;i trước rất thời trang v&agrave; tiện lợi.</p>\r\n', '<p>Thiết kế d&aacute;ng thể thao, &ocirc;m vừa vặn, năng động v&agrave; cool ngầu.</p>\r\n\r\n<p>Kh&oacute;a k&eacute;o tiện dụng, &ecirc;m &aacute;i, dễ thao t&aacute;c.</p>\r\n\r\n<p>Dải logo Kappa hai b&ecirc;n tay &aacute;o tạo ấn tượng thời trang độc đ&aacute;o.</p>\r\n\r\n<p>Chất liệu: 100% Polyester.</p>\r\n', 1, '1646995472_341988w-a65-1.jpg', 1500000, 5, 19),
(49, 'Áo dài cách tân nam họa tiết Phượng hoàng thêu tay cao cấp - HMB130', '<p>&Aacute;o d&agrave;i c&aacute;ch t&acirc;n nam th&ecirc;u tay, &aacute;o d&agrave;i c&aacute;ch t&acirc;n nam m&agrave;u đỏ thiết kế lịch l&atilde;m, sang trọng. Kiểu d&aacute;ng trẻ trung, hiện đại. Chất liệu vải được lựa chọn cao cấp, mềm mại, l&ecirc;n fom chuẩn. Lu&ocirc;n cập nhật xu hướng mới nhất, đa dạng mẫu m&atilde; sản...</p>\r\n', '<p>&Aacute;o d&agrave;i c&aacute;ch t&acirc;n nam thiết kế lịch l&atilde;m, sang trọng. Kiểu d&aacute;ng trẻ trung, hiện đại. Chất liệu vải được lựa chọn cao cấp, mềm mại, l&ecirc;n fom chuẩn. Lu&ocirc;n cập nhật xu hướng mới nhất, đa dạng mẫu m&atilde; sản phẩm&nbsp;</p>\r\n\r\n<p>&Aacute;o d&agrave;i c&aacute;ch t&acirc;n nam HMB130 họa tiết Phượng Ho&agrave;ng độc đ&aacute;o, sang trọng, &yacute; nghĩa. Họa tiết sản phẩm được th&ecirc;u tay tỉ mỉ, &yacute; nghĩa, độc đ&aacute;o,</p>\r\n\r\n<p>Thiết kế lịch l&atilde;m, mạnh mẽ, nam t&iacute;nh</p>\r\n\r\n<p>M&agrave;u sắc nổi bật, sang trọng.</p>\r\n', 1, '1646995727_xtYlnw_simg_de2fe0_500x500_maxb.jpg', 1300000, 5, 22),
(50, 'Áo dài cách tân vải đũi thêu hoa - trắng', '<p>&Aacute;o d&agrave;i chỉ c&oacute; một, đ&oacute; l&agrave; trang phục được kết tinh từ tinh th&acirc;n của d&acirc;n tộc v&agrave; c&aacute;i đẹp của người phụ nữ Việt. Qua mỗi giai đoạn &Aacute;o d&agrave;i lại c&oacute; th&ecirc;m những chấm ph&aacute; đương thời, nhưng vẫn lu&ocirc;n giữ trọn vẹn cốt c&aacute;ch v&agrave; vẻ đẹp của t&agrave; &aacute;o d&agrave;i d&agrave;nh ri&ecirc;ng cho phụ nữ Việt Nam.</p>\r\n\r\n<p>&Aacute;o d&agrave;i c&aacute;ch t&acirc;n - được lấy cảm hứng thiết kế từ t&agrave; &aacute;o d&agrave;i truyền thống.Thiết kế i tuy quen thuộc, nhưng chỉ cần một ch&uacute;t biến tấu đ&atilde; c&oacute; thể tạo ra một item mới đầy nghệ thuật</p>\r\n', '<p>&Aacute;o d&agrave;i c&aacute;ch t&acirc;n với chất liệu vải đũi mềm mại, điểm nổi bật của sản phẩm l&agrave; những b&ocirc;ng hoa th&ecirc;u tay tinh tế tr&ecirc;n nền vải đũi mịn, mềm.&nbsp;</p>\r\n\r\n<p>&Aacute;o d&agrave;i c&aacute;ch t&acirc;n nữ cung cấp bởi &aacute;o d&agrave;i Hiền Minh</p>\r\n\r\n<p>Chất liệu: Đũi</p>\r\n\r\n<p>M&agrave;u sắc: Trắng</p>\r\n\r\n<p>Kiểu d&aacute;ng: Cổ viền cao 2,5cm. xẻ t&agrave; 2 b&ecirc;n, tay lỡ trẻ trung, hiện đại</p>\r\n\r\n<p>Ph&ugrave; hợp đi học, c&ocirc;ng việc c&ocirc;ng sở, gi&aacute;o vi&ecirc;n</p>\r\n', 1, '1646995904_z809773025747_f34648efdee6b1409821b0e2dd19a99c.jpg', 1500000, 10, 22),
(51, 'Áo thun tay ngắn nam K0B32TD41 990', '<p>&Aacute;o thun tay ngắn với form d&aacute;ng basic, dễ d&agrave;ng phối c&ugrave;ng nhiều bộ outfit.</p>\r\n', '<p>Bộ sưu tập:&nbsp;Newtro-KU<br />\r\nChất liệu:&nbsp;100% Cotton. Chất liệu thoải m&aacute;i, tho&aacute;ng m&aacute;t v&agrave; khả năng thấm h&uacute;t mồ h&ocirc;i tốt.</p>\r\n', 1, '1646996084_k0b32td41_990-1.jpg', 800000, 5, 20),
(52, 'Kappa áo khoác thun nam K0B52MK11 8802', '<p>&Aacute;O KHO&Aacute;C THUN NAM KAPPA K0B52MK11 8802 XANH DƯƠNG sở hữu thiết kế thể thao, trẻ trung, c&aacute; t&iacute;nh. Sử dụng m&agrave;u sắc đơn giản với c&aacute;ch phối d&acirc;y k&eacute;o nổi bật mang lại cảm gi&aacute;c mạnh mẽ, khỏe khoắn. Diện đi l&agrave;m, đi học, đi chơi hay đi tập đều đẹp.</p>\r\n', '<p>Thiết kế trẻ trung, thể thao, năng động.</p>\r\n\r\n<p>Điểm nhấn ch&iacute;nh l&agrave; phần d&acirc;y k&eacute;o in nổi bật, bắt mắt.</p>\r\n\r\n<p>Mặc đẹp với nhiều trang phục kh&aacute;c nhau.</p>\r\n', 1, '1646996204_k0b52mk11-8802-1.jpg', 2000000, 5, 19),
(53, 'Áo sơ mi dáng suông nữ IS19-02035 LT BLUE', '<p>&Aacute;o sơ mi tay ngắn nữ Ecko Unltd với m&agrave;u xanh nữ t&iacute;nh, năng động theo phong c&aacute;ch đường phố New York.</p>\r\n\r\n<p>Chất liệu 100% sợi tơ nh&acirc;n tạo thấm h&uacute;t mồ h&ocirc;i, mang lại sự thoải m&aacute;i, dễ d&agrave;ng di chuyển suốt ng&agrave;y d&agrave;i.</p>\r\n', '', 1, '1646996546_IS19-02035-LT_BLUE-1_qe0j-v1.jpg', 700000, 5, 17),
(54, 'Ecko Unltd áo sơ mi short nữ IS19-02037B DK.BLU', '<p>&Aacute;o sơ mi tay ngắn nữ Ecko Unltd với m&agrave;u xanh dương đậm nữ t&iacute;nh, năng động theo phong c&aacute;ch đường phố New York. Chất liệu cotton thấm h&uacute;t mồ h&ocirc;i, &iacute;t nhăn, mang lại sự thoải m&aacute;i, dễ d&agrave;ng di chuyển suốt ng&agrave;y d&agrave;i.</p>\r\n', '', 1, '1646996621_is19-02037b-dk.blu-1_4.jpg', 750000, 5, 17);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `star` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `rating`
--

INSERT INTO `rating` (`id`, `product_id`, `star`) VALUES
(39, 20, 1),
(40, 20, 1),
(41, 20, 5),
(42, 20, 4),
(43, 20, 3),
(44, 1, 1),
(45, 1, 1),
(46, 1, 1),
(47, 18, 2),
(48, 19, 1),
(49, 19, 4),
(50, 19, 1),
(51, 19, 4),
(52, 19, 5),
(53, 19, 5),
(54, 19, 3),
(55, 19, 2),
(56, 29, 2),
(57, 19, 5),
(58, 19, 5),
(59, 30, 4),
(60, 30, 4),
(61, 30, 5),
(62, 30, 5),
(63, 19, 3),
(64, 19, 2),
(65, 29, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Nguyễn Văn A', 'nva@gmail.com', '202cb962ac59075b964b07152d234b70'),
(2, 'Nguyễn Văn B', 'nvb@gmail.com', '202cb962ac59075b964b07152d234b70'),
(3, 'Nguyễn Văn C', 'nvc@gmail.com', '202cb962ac59075b964b07152d234b70'),
(4, 'Nguyễn Văn D', 'nvd@gmail.com', '202cb962ac59075b964b07152d234b70'),
(5, 'Nguyễn Văn E', 'nve@gmail.com', '202cb962ac59075b964b07152d234b70');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `rating`
--
ALTER TABLE `rating`
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
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
