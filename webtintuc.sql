-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 19, 2019 lúc 09:47 AM
-- Phiên bản máy phục vụ: 10.1.36-MariaDB
-- Phiên bản PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webtintuc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(10) UNSIGNED NOT NULL,
  `idUser` int(10) UNSIGNED NOT NULL,
  `idTinTuc` int(10) UNSIGNED NOT NULL,
  `NoiDung` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `id` int(10) UNSIGNED NOT NULL,
  `Ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TenKhongDau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`id`, `Ten`, `TenKhongDau`, `created_at`, `updated_at`) VALUES
(1, 'Xã Hội', 'Xa-Hoi', NULL, NULL),
(2, 'Thế Giới', 'The-Gioi', NULL, NULL),
(3, 'Kinh Doanh', 'Kinh-Doanh', NULL, NULL),
(4, 'Văn Hoá', 'Van-Hoa', NULL, NULL),
(5, 'Thể Thao', 'The-Thao', NULL, NULL),
(6, 'Pháp Luật', 'Phap-Luat', NULL, NULL),
(7, 'Đời Sống', 'Doi-Song', NULL, NULL),
(8, 'Khoa Học', 'Khoa-Hoc', NULL, NULL),
(9, 'Vi Tính', 'Vi-Tinh', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `id` int(10) UNSIGNED NOT NULL,
  `TieuDe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TieuDeKhongDau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TomTat` text COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` longtext COLLATE utf8_unicode_ci NOT NULL,
  `Hinh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NoiBat` int(11) NOT NULL DEFAULT '0',
  `SoLuotXem` int(11) NOT NULL DEFAULT '0',
  `idTheLoai` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tintuc`
--

INSERT INTO `tintuc` (`id`, `TieuDe`, `TieuDeKhongDau`, `TomTat`, `NoiDung`, `Hinh`, `NoiBat`, `SoLuotXem`, `idTheLoai`, `created_at`, `updated_at`) VALUES
(1, 'Lần đầu ĐH FPT cấp học bổng tiến sĩ ', 'Lan-Dau-Dh-Fpt-Cap-Hoc-Bong-Tien-Si', 'Bên cạnh 400 suất học bổng Nguyễn Văn Đạo, ĐH FPT lần đầu tiên chọn ra 30 học sinh xuất sắc nhất để cấp học bổng toàn phần đào tạo từ cử nhân lên thẳng tiến sĩ, với tổng giá trị quỹ lên tới 5 triệu USD.', '</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\r\n    	<p>\r\n    	<b>Hotline kỹ thuật <b>: 0967 908 907<br>\r\n    	<b>Hotline tư vấn kháo học <b>: 094 276 4080<br>\r\n    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM<br>\r\n    	<b>Website</b>: khoapham.vn<br>\r\n    	<b>Học Online tại :</b>online.khoapham.vn<br>\r\n    	</p>', 'FPT-2.jpg', 1, 0, 1, NULL, NULL),
(2, '300 tỷ đồng phát triển giáo dục mầm non ', '300-ty-dong-phat-trien-giao-duc-mam-non', '<p>aaaaaaaaaaaaaaa</p>\r\n', '</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\r\n    	<p>\r\n    	<b>Hotline kỹ thuật <b>: 0967 908 907<br>\r\n    	<b>Hotline tư vấn kháo học <b>: 094 276 4080<br>\r\n    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM<br>\r\n    	<b>Website</b>: khoapham.vn<br>\r\n    	<b>Học Online tại :</b>online.khoapham.vn<br>\r\n    	</p>', '2.jpg', 0, 0, 5, NULL, '2016-06-10 23:43:15'),
(3, 'Nợ giáo viên tiền tỷ chi phí phổ cập giáo dục ', 'No-Giao-Vien-Tien-Ty-Chi-Phi-Pho-Cap-Giao-Duc', 'Ba năm qua, nhiều giáo viên ở Khánh Hòa bỏ công sức, kể cả tiền bạc để thực hiện phổ cập giáo dục cho học sinh trên địa bàn tỉnh, song đến nay vẫn chưa nhận được tiền chính quyền chi trả. ', '</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\r\n    	<p>\r\n    	<b>Hotline kỹ thuật <b>: 0967 908 907<br>\r\n    	<b>Hotline tư vấn kháo học <b>: 094 276 4080<br>\r\n    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM<br>\r\n    	<b>Website</b>: khoapham.vn<br>\r\n    	<b>Học Online tại :</b>online.khoapham.vn<br>\r\n    	</p>', 'pho-cap-giao-duc-nho-2.jpg', 1, 0, 1, NULL, NULL),
(4, 'Đón và chăm sóc trẻ sau giờ tan trường qua dịch vụ ', 'Don-Va-Cham-Soc-Tre-Sau-Gio-Tan-Truong-Qua-Dich-Vu', 'Các bé sẽ được chăm sóc bữa ăn, tắm rửa sạch sẽ, vui chơi và học tập cùng cô giáo theo các nội dung trong sổ báo bài, mở rộng hoặc đào sâu kiến thức theo yêu cầu của phụ huynh. ', '</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\r\n    	<p>\r\n    	<b>Hotline kỹ thuật <b>: 0967 908 907<br>\r\n    	<b>Hotline tư vấn kháo học <b>: 094 276 4080<br>\r\n    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM<br>\r\n    	<b>Website</b>: khoapham.vn<br>\r\n    	<b>Học Online tại :</b>online.khoapham.vn<br>\r\n    	</p>', 'be-2.jpg', 1, 0, 3, NULL, NULL),
(5, '7 học sinh rơi từ tầng hai xuống đất vì gãy lan can ', '7-Hoc-Sinh-Roi-Tu-Tang-Hai-Xuong-Dat-Vi-Gay-Lan-Can', 'Đang giờ ra chơi, bất ngờ toàn bộ lan can tầng hai của Trường THCS thị trấn Chợ Rã (Bắc Kạn) gãy đổ ra ngoài, kéo theo 7 học sinh lớp 6A rơi xuống đất. ', '</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\r\n    	<p>\r\n    	<b>Hotline kỹ thuật <b>: 0967 908 907<br>\r\n    	<b>Hotline tư vấn kháo học <b>: 094 276 4080<br>\r\n    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM<br>\r\n    	<b>Website</b>: khoapham.vn<br>\r\n    	<b>Học Online tại :</b>online.khoapham.vn<br>\r\n    	</p>', 'tai_nan_set_top.gif', 1, 0, 1, NULL, NULL),
(6, 'Giáo viên TP HCM được thưởng tết tối thiểu 700.000 đồng ', 'Giao-Vien-Tp-Hcm-Duoc-Thuong-Tet-Toi-Thieu-700.000-Dong', 'Sở GD&ĐT TP HCM vừa có thông báo về việc UBND thành phố chấp thuận đề nghị hỗ trợ mức quà tết cho cán bộ công chức trong ngành tối thiểu là 700.000 đồng. Mức thưởng này cao hơn năm ngoái 100.000 đồng. ', '</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\r\n    	<p>\r\n    	<b>Hotline kỹ thuật <b>: 0967 908 907<br>\r\n    	<b>Hotline tư vấn kháo học <b>: 094 276 4080<br>\r\n    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM<br>\r\n    	<b>Website</b>: khoapham.vn<br>\r\n    	<b>Học Online tại :</b>online.khoapham.vn<br>\r\n    	</p>', 'thuong-tet-3.jpg', 1, 0, 1, NULL, NULL),
(7, 'Mức sinh hoạt phí tối đa cho lưu học sinh là 1.200 USD ', 'Muc-Sinh-Hoat-Phi-Toi-Da-Cho-Luu-Hoc-Sinh-La-1.200-Usd', 'Đối với lưu học sinh tại Ba Lan, Bungary, Nga..., mức sinh hoạt phí sẽ tăng từ 400 USD lên 480 USD; tại Australia, New Zealand tăng từ 860 USD lên 1.032 USD và tại Mỹ, Canada, Anh, Nhật Bản tăng từ 1.000 lên 1.200 USD một người một tháng... ', '</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\r\n    	<p>\r\n    	<b>Hotline kỹ thuật <b>: 0967 908 907<br>\r\n    	<b>Hotline tư vấn kháo học <b>: 094 276 4080<br>\r\n    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM<br>\r\n    	<b>Website</b>: khoapham.vn<br>\r\n    	<b>Học Online tại :</b>online.khoapham.vn<br>\r\n    	</p>', 'du_hoc_sinh_set_sub.jpg', 1, 0, 1, NULL, NULL),
(8, 'Học sinh Hà Nội được nghỉ 11 ngày Tết ', 'Hoc-Sinh-Ha-Noi-Duoc-Nghi-11-Ngay-Tet', 'UBND thành phố Hà Nội vừa đồng ý với đề xuất của Sở Giáo dục và Đào tạo về việc cho học sinh nghỉ tết Tết Nguyên đán Tân Mão 11 ngày. ', '</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\r\n    	<p>\r\n    	<b>Hotline kỹ thuật <b>: 0967 908 907<br>\r\n    	<b>Hotline tư vấn kháo học <b>: 094 276 4080<br>\r\n    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM<br>\r\n    	<b>Website</b>: khoapham.vn<br>\r\n    	<b>Học Online tại :</b>online.khoapham.vn<br>\r\n    	</p>', 't2.jpg', 1, 0, 8, NULL, NULL),
(9, 'Hàng trăm nghìn học sinh nghỉ học vì giá rét ', 'Hang-Tram-Nghin-Hoc-Sinh-Nghi-Hoc-Vi-Gia-Ret', 'Sớm nay, các trường tiểu học ở Hà Nội đều trưng biển thông báo nghỉ học do nhiệt độ ở mức 8 độ C. Một vài phụ huynh không theo dõi dự báo thời tiết vẫn đưa con đến trường và ngậm ngùi quay xe ra về. ', '</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\r\n    	<p>\r\n    	<b>Hotline kỹ thuật <b>: 0967 908 907<br>\r\n    	<b>Hotline tư vấn kháo học <b>: 094 276 4080<br>\r\n    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM<br>\r\n    	<b>Website</b>: khoapham.vn<br>\r\n    	<b>Học Online tại :</b>online.khoapham.vn<br>\r\n    	</p>', 'phu_huynh_xem_lich_nghi_hoc_set_sub.jpg', 1, 0, 1, NULL, NULL),
(10, 'Phương pháp Mathnasium giúp trẻ yêu thích môn toán ', 'Phuong-Phap-Mathnasium-Giup-Tre-Yeu-Thich-Mon-Toan', 'Phương pháp dạy toán Mathnasium với 5 kỹ thuật giảng dạy bổ sung nhau, giúp trẻ em tiếp thu kiến thức toán hiệu quả, không cảm thấy áp lực và nhàm chán. ', '</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\r\n    	<p>\r\n    	<b>Hotline kỹ thuật <b>: 0967 908 907<br>\r\n    	<b>Hotline tư vấn kháo học <b>: 094 276 4080<br>\r\n    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM<br>\r\n    	<b>Website</b>: khoapham.vn<br>\r\n    	<b>Học Online tại :</b>online.khoapham.vn<br>\r\n    	</p>', 'hinh_250x195[1]_JPG_thumb210x0_ns.jpg', 1, 0, 4, NULL, NULL),
(11, 'Những nụ hôn ngọt ngào trong đêm tình nhân ', 'Nhung-Nu-Hon-Ngot-Ngao-Trong-Dem-Tinh-Nhan', 'Tối 13/2, hàng nghìn bạn trẻ có mặt tại cầu Ánh Sao (quận 7, TP HCM) chứng kiến những lời tỏ tình cùng những nụ hôn ngọt ngào của 100 cặp tình nhân trong \"Đêm Valentine thế kỷ\". ', '</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\r\n    	<p>\r\n    	<b>Hotline kỹ thuật <b>: 0967 908 907<br>\r\n    	<b>Hotline tư vấn kháo học <b>: 094 276 4080<br>\r\n    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM<br>\r\n    	<b>Website</b>: khoapham.vn<br>\r\n    	<b>Học Online tại :</b>online.khoapham.vn<br>\r\n    	</p>', '250h_jpg_thumb210x0_ns.jpg', 1, 0, 2, NULL, NULL),
(12, 'Hot girl tâm sự về ngày Valentine ', 'Hot-Girl-Tam-Su-Ve-Ngay-Valentine', 'Một bông hồng trắng bằng khăn giấy, chiếc xe đạp gắn đầy hoa, hay bài thơ của chàng \"thi sĩ\" vô danh gửi tặng… là những món quà đầy ấn tượng mà hot girl Midu từng nhận được trong các mùa Valentine. ', '</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\r\n    	<p>\r\n    	<b>Hotline kỹ thuật <b>: 0967 908 907<br>\r\n    	<b>Hotline tư vấn kháo học <b>: 094 276 4080<br>\r\n    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM<br>\r\n    	<b>Website</b>: khoapham.vn<br>\r\n    	<b>Học Online tại :</b>online.khoapham.vn<br>\r\n    	</p>', 'hot-girl-valentine-2.jpg', 1, 0, 2, NULL, NULL),
(13, 'Nên duyên chồng vợ từ mạng mai mối ', 'Nen-Duyen-Chong-Vo-Tu-Mang-Mai-Moi', 'Quen nhau qua trang web kết bạn, để chiếm được tình cảm của cô nàng cao tới 1,71 m, chàng trai cao 1,58 m kiên trì tỏ tình tới 10 lần và hạnh phúc đã mỉm cười với họ. ', '</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\r\n    	<p>\r\n    	<b>Hotline kỹ thuật <b>: 0967 908 907<br>\r\n    	<b>Hotline tư vấn kháo học <b>: 094 276 4080<br>\r\n    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM<br>\r\n    	<b>Website</b>: khoapham.vn<br>\r\n    	<b>Học Online tại :</b>online.khoapham.vn<br>\r\n    	</p>', 'cap_doi_hoan_hao_set_sub.jpg', 1, 0, 2, NULL, NULL),
(14, 'Những món quà Valentine làm từ tình yêu ', 'Nhung-Mon-Qua-Valentine-Lam-Tu-Tinh-Yeu', 'Cặm cụi cả tuần để thêu móc chìa khóa bằng len tặng người yêu, làm tranh bằng chính những hạt đỗ \"kỷ niệm ngày quen nhau\" của hai đứa là cách mà giới trẻ đang làm để tặng người yêu dịp lễ Valentine. ', '</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\r\n    	<p>\r\n    	<b>Hotline kỹ thuật <b>: 0967 908 907<br>\r\n    	<b>Hotline tư vấn kháo học <b>: 094 276 4080<br>\r\n    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM<br>\r\n    	<b>Website</b>: khoapham.vn<br>\r\n    	<b>Học Online tại :</b>online.khoapham.vn<br>\r\n    	</p>', 'socola_set_sub.jpg', 1, 0, 2, NULL, NULL),
(15, '100 cặp tình nhân hôn nhau trên khinh khí cầu ', '100-Cap-Tinh-Nhan-Hon-Nhau-Tren-Khinh-Khi-Cau', '100 cặp tình nhân sẽ trao nhau nụ hôn trên khinh khí cầu và được tặng một bó hoa với 999 nụ hồng xanh, nhận \"lời cầu hôn của thần Cupid\"... trong lễ hội Valentine sẽ được tổ chức tại cầu Ánh Sao (quận 7, TP HCM) tối 13/2. ', '</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\r\n    	<p>\r\n    	<b>Hotline kỹ thuật <b>: 0967 908 907<br>\r\n    	<b>Hotline tư vấn kháo học <b>: 094 276 4080<br>\r\n    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM<br>\r\n    	<b>Website</b>: khoapham.vn<br>\r\n    	<b>Học Online tại :</b>online.khoapham.vn<br>\r\n    	</p>', 'valentine22.jpg', 1, 0, 2, NULL, NULL),
(16, 'Nhà thám hiểm 9 tuổi đặt chân tới Nam Cực ', 'Nha-Tham-Hiem-9-Tuoi-Dat-Chan-Toi-Nam-Cuc', 'Vượt qua hành trình dài nhiều ngày, Phạm Vũ Thiều Quang, cậu bé 9 tuổi đã cùng bố đặt chân tới Nam Cực vào chiều mùng 1 Tết. Cậu bé đã trở thành người châu Á trẻ tuổi nhất đặt chân tới vùng đất này. ', '</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\r\n    	<p>\r\n    	<b>Hotline kỹ thuật <b>: 0967 908 907<br>\r\n    	<b>Hotline tư vấn kháo học <b>: 094 276 4080<br>\r\n    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM<br>\r\n    	<b>Website</b>: khoapham.vn<br>\r\n    	<b>Học Online tại :</b>online.khoapham.vn<br>\r\n    	</p>', 'top-2.jpg', 1, 0, 2, NULL, '0000-00-00 00:00:00'),
(17, 'Giới trẻ nô nức xin chữ đầu năm ', 'Gioi-Tre-No-Nuc-Xin-Chu-Dau-Nam', '9h sáng mùng 4 Tết dòng người kéo đến Văn miếu Quốc Tử Giám đông nghẹt. Nhiều bạn trẻ đứng chen chân hàng tiếng đồng hồ để xin được chữ: Trạng nguyên, Đỗ đạt, Trí, Nhân... khi xuân về. ', '</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\r\n    	<p>\r\n    	<b>Hotline kỹ thuật <b>: 0967 908 907<br>\r\n    	<b>Hotline tư vấn kháo học <b>: 094 276 4080<br>\r\n    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM<br>\r\n    	<b>Website</b>: khoapham.vn<br>\r\n    	<b>Học Online tại :</b>online.khoapham.vn<br>\r\n    	</p>', 'tre-1.jpg', 1, 0, 9, NULL, NULL),
(18, 'Mong ước đầu năm của giới trẻ ', 'Mong-Uoc-Dau-Nam-Cua-Gioi-Tre', 'Trong năm mới, chàng thủ khoa ĐH Ngoại thương Tăng Văn Bình quyết tâm trau dồi ngoại ngữ để thực hiện ước mơ du học, còn Miss Teen Diễm Trang sẽ dành nhiều thời gian hơn cho hoạt động xã hội, giao lưu quốc tế. ', '</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\r\n    	<p>\r\n    	<b>Hotline kỹ thuật <b>: 0967 908 907<br>\r\n    	<b>Hotline tư vấn kháo học <b>: 094 276 4080<br>\r\n    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM<br>\r\n    	<b>Website</b>: khoapham.vn<br>\r\n    	<b>Học Online tại :</b>online.khoapham.vn<br>\r\n    	</p>', 'diem-trang-2.jpg', 1, 0, 2, NULL, NULL),
(19, 'Giám đốc tuổi mèo và thành tích đáng nể ', 'Giam-Doc-Tuoi-Meo-Va-Thanh-Tich-Dang-Ne', 'Học hết lớp 9, Nguyễn Hữu Năm phải nghỉ học vì nhà nghèo lại đông con, nhưng chàng trai đất Chương Mỹ (Hà Nội) đã xuất sắc giành nhiều giải thưởng sáng tạo trẻ và hiện là chủ công ty chuyên về chế tạo máy. ', '</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\r\n    	<p>\r\n    	<b>Hotline kỹ thuật <b>: 0967 908 907<br>\r\n    	<b>Hotline tư vấn kháo học <b>: 094 276 4080<br>\r\n    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM<br>\r\n    	<b>Website</b>: khoapham.vn<br>\r\n    	<b>Học Online tại :</b>online.khoapham.vn<br>\r\n    	</p>', 'Nguyen_Huu_Nam_set_sub.jpg', 1, 0, 6, NULL, NULL),
(20, 'Học sinh vùng cao nghỉ Tết kéo dài vì giá rét', 'Hoc-Sinh-Vung-Cao-Nghi-Tet-Keo-Dai-Vi-Gia-Ret', 'Học sinh Hà Giang có thể nghỉ Tết Tân Mão gần 20 ngày còn học sinh Lào Cai được nghỉ Tết hơn các vùng khác 3 ngày để tránh giá rét. ', '</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\r\n    	<p>\r\n    	<b>Hotline kỹ thuật <b>: 0967 908 907<br>\r\n    	<b>Hotline tư vấn kháo học <b>: 094 276 4080<br>\r\n    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM<br>\r\n    	<b>Website</b>: khoapham.vn<br>\r\n    	<b>Học Online tại :</b>online.khoapham.vn<br>\r\n    	</p>', 'sapa9.jpg', 1, 0, 1, NULL, NULL),
(21, 'Không để thí sinh đăng ký đại học như chơi xổ số', 'Khong-De-Thi-Sinh', '\"Chúng ta không thể để học sinh đăng ký nguyện vọng như chơi sổ xố, đến cuối cùng mới biết kết quả. Hãy để các em thấy rõ cơ hội của mình\", Bộ trưởng GD&ĐT Phạm Vũ Luận phát biểu tại Hội nghị tuyển sinh sáng 18/2. ', '</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\r\n    	<p>\r\n    	<b>Hotline kỹ thuật <b>: 0967 908 907<br>\r\n    	<b>Hotline tư vấn kháo học <b>: 094 276 4080<br>\r\n    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM<br>\r\n    	<b>Website</b>: khoapham.vn<br>\r\n    	<b>Học Online tại :</b>online.khoapham.vn<br>\r\n    	</p>', 'Pham_Vu_Luan.jpg', 1, 0, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_iduser_foreign` (`idUser`),
  ADD KEY `comment_idtintuc_foreign` (`idTinTuc`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idTheLoai` (`idTheLoai`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT cho bảng `theloai`
--
ALTER TABLE `theloai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`idTinTuc`) REFERENCES `tintuc` (`id`);

--
-- Các ràng buộc cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD CONSTRAINT `tintuc_ibfk_1` FOREIGN KEY (`idTheLoai`) REFERENCES `theloai` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
