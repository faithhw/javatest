-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2016 at 08:09 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phonebook`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `student_id` varchar(10) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(5) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `email` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`student_id`, `name`, `class`, `phone`, `email`) VALUES
('1201040003', 'Hoàng Anh', '7C-13', '0973709614', 'hoanganhpt208@gmail.com'),
('1201040011', 'Nguyễn Tuấn Anh', '8C-13', '01692699046', 'luvmoon0204@gmail.com'),
('1201040017', 'Duong Minh Chau', '6C-13', '0972475283', 'duongchauhanu@gmail.com'),
('1201040049', 'Phạm Thanh Duyên', '2C-13', '01659192938', 'sambalisoi@gmail.com'),
('1201040069', 'Trịnh Thị Thu Hiền', '2C-13', '0978026128', 'trinhhien94.bs@gmail.com'),
('1201040073', 'Nguyễn Mạnh Hiệp', '7C-13', '0966007894', 'daominhly113@gmail.com'),
('1201040100', 'Bùi Thị Thu Hương', '4C-13', '0983807794', 'huongbt794@gmail.com'),
('1201040101', 'Phạm Thị Lan Hương', '1C-13', '01695585258', 'phamlu95@gmail.com'),
('1201040109', 'Đỗ Duy Khánh', '6C-13', '01666888929', 'khachhangdt@gmail.com'),
('1201040121', 'Nguyễn Phương Linh', '4C-13', '0909071108', 'linhtheleon@gmail.com'),
('1201040125', 'Đào Thị Minh Lý', '8C-13', '01666004326', 'nhattrinh240895@gmail.com'),
('1201040143', 'Lê Công Phúc', '5C-13', '01685635499', 'truongnucntt@gmail.com'),
('1201040153', 'Phạm Thị Quế', '3C-13', '01683639607', 'cayxanh158@gmail.com'),
('1201040155', 'Hà Văn Quyền', '7C-13', '0984307730', 'binhboonghanu@gmail.com'),
('1201040178', 'Vương Thị Thảo', '3C-13', '0977321211', 'vuongthithaohy@gmail.com'),
('1201040179', 'Giáp Văn Thạo', '3C-13', '01656917693', 'nhudoank95@gmail.com'),
('1201040192', 'Vũ Thị Thu', '1C-13', '01633521281', 'thuthu12.hy@gmail.com'),
('1201040195', 'Vũ Thị Thương', '5C-13', '0987558352', 'thuongvuhanu94@gmail.com'),
('1201040196', 'Lâm Thị Thúy', '8C-13', '01658754229', 'lamthuy94@gmail.com'),
('1301040003', 'Lê Tuấn Anh', '5C-13', '0965366982', 'lekoi9x@gmail.com'),
('1301040004', 'Nguyễn Thị Anh', '2C-13', '0967223774', 'anhuno.rubik@gmail.com'),
('1301040006', 'Nguyễn Việt Anh', '1C-13', '0969186083', 'vietanhhaky@gmail.com'),
('1301040008', 'Phạm Ngọc Anh', '5C-13', '0962600062', 'ngocanh5c13@gmail.com'),
('1301040010', 'Phạm Tuấn Anh', '4C-13', '01687866456', 'tuananhpham9695@gmail.com'),
('1301040011', 'Tạ Duy Anh', '3C-13', '0918045995', 'taduyanh1708@gmail.com'),
('1301040014', 'Phạm Ngọc Ánh', '8C-13', '0946938995', 'anhcunmio9@gmail.com'),
('1301040017', 'Nguyễn Thanh Bình', '5C-13', '01657590751', 'nguyenanhtu20395@gmail.com'),
('1301040018', 'Nguyễn Thanh Bình', '1C-13', '01698295144', 'peace.out@gmail.com'),
('1301040025', 'Đặng Xuân Cường', '5C-13', '01677813207', 'dangxuancuong354@gmail.com'),
('1301040027', 'Phạm Ngọc Đại', '6C-13', '0967906995', 'daipn1995@gmail.com'),
('1301040031', 'Bùi Thị Diệu', '4C-13', '01695013526', 'dieuhanu2008@gmail.com'),
('1301040034', 'Đinh Công Đức', '6C-13', '0969861342', 'no data'),
('1301040036', 'Nguyễn Tiến Đức', '1C-13', '01263448279', 'klick0511@gmail.com'),
('1301040038', 'Vũ Anh Đức', '3C-13', '0972134885', 'phamlong2312@gmail.com'),
('1301040041', 'Nguyễn Việt Dũng', '1C-13', '01667111375', 'dungkunit@gmail.com'),
('1301040043', 'Trần Xuân Dũng', '4C-13', '01663558251', 'dungtx32@gmail.com'),
('1301040046', 'Nguyễn Xuân Dương', '3C-13', '0949531095', 'doanhung95@gmail.com'),
('1301040055', 'Tạ Hương Giang', '7C-13', '01635474990', 'huonggianghanu01@gmail.com'),
('1301040057', 'Hoàng Thị Thu Hà', '8C-13', '0987904839', 'hatron95@gmail.com'),
('1301040062', 'Nguyễn Thị Hải', '3C-13', '0973793594', 'hainguyenhanua10@gmail.com'),
('1301040063', 'Phạm Thị Hải', '6C-13', '0989254774', 'haipham28895@gmail.com'),
('1301040066', 'Nguyễn Thị Thanh Hằng', '7C-13', '01883025554', 'duongnguyen3c13@gmail.com'),
('1301040069', 'Nguyễn Thị Quỳnh Hậu', '8C-13', '01226282088', 'azatbay94@gmail.com'),
('1301040078', 'Phan Thị Hoa', '7C-13', '01659116365', 'hoain1995@gmail.com'),
('1301040080', 'Trần Thị Hoài', '5C-13', '0967684117', 'hoaimin112206@gmail.com'),
('1301040087', 'Đỗ Thị Bích Huệ', '8C-13', '01644224699', 'dthue270795@gmail.com'),
('1301040088', 'Trần Thị Phương Huệ', '6C-13', '0975735761', 'lanhuong94.hanu@gmail.com'),
('1301040089', 'Phạm Huy Hùng', '5C-13', '01658231963', 'hungpham.huy95@gmail.com'),
('1301040091', 'Đoàn Văn Hưng', '4C-13', '0987423744', 'lephuc16193@gmail.com'),
('1301040093', 'Tăng Mạnh Hưng', '8C-13', '01685709512', 'hungtang2804@gmail.com'),
('1301040094', 'Nguyễn Lan Hương', '5C-13', '0989591783', 'huong0805@gmail.com'),
('1301040095', 'Trần Thu Hường', '2C-13', '0975311526', 'huongtran.hanu.2c13@gmail.com'),
('1301040098', 'Đặng Thị Thanh Huyền', '5C-13', '0982903895', 'huyenhanu308@gmail.com'),
('1301040101', 'Trương ngọc huyền', '6C-13', '01664567262', 'truongngochuyen17695@gmail.com'),
('1301040104', 'Phạm Văn Khánh', '6C-13', '0973625343', 'khanhhh95@gmail.com'),
('1301040105', 'Tạ Duy Khánh', '5C-13', '01658337610', 'quynhhaua7@gmail.com'),
('1301040107', 'Hoàng Văn Kiên', '3C-13', '01658309609', 'xuantrank13hanu@gmail.com'),
('1301040109', 'Nguyễn Phú Kiên', '6C-13', '0965365195', 'manucianszz@gmail.com'),
('1301040114', 'Trần Thị Mỹ Lệ', '5C-13', '0979426877', 'myletran.hys@gmail.com'),
('1301040116', 'Nguyễn Thùy Linh', '4C-13', '01652139424', 'linhbabo21@gmail.com'),
('1301040121', 'Phạm Hoàng Long', '6C-13', '0943331793', 'Hnnclass2014@gmail.com'),
('1301040123', 'Pham Thanh Long', '1C-13', '01636918430', 'duckyboy6868@gmail.com'),
('1301040126', 'Phạm Thị Lữ', '4C-13', '0969021405', 'mainguyen95bn@gmail.com'),
('1301040129', 'Nguyễn Thị Mai', '6C-13', '0946938995', 'anhcunmio9@gmail.com'),
('1301040133', 'Nguyễn Duy Mạnh', '2C-13', '0966554831', 'manhnd.hanu@gmail.com'),
('1301040138', 'Phan Thế Minh', '4C-13', '0914499925', 'phanminh65@gmail.com'),
('1301040143', 'Nguyễn Hoài Nam', '6C-13', '01628750196', 'namnh240795@gmail.com'),
('1301040145', 'Trần Thuượng Hoàng Nam', '5C-13', '01692103880', 'tdkhanh178@gmail.com'),
('1301040146', 'Trần Văn Nam', '1C-13', '01638838438', 'trannamhanu@gmail.com'),
('1301040147', 'Nguyễn Thị Ngân', '6C-13', '01648494020', 'phuongoanh.wizard@gmail.com'),
('1301040148', 'Nguyễn Thị Thủy Ngân', '4C-13', '0973428802', 'thuyngan0995@gmail.com'),
('1301040150', 'Đỗ Thị Ngát', '7C-13', '01677145870', 'dongat2501@gmail.com'),
('1301040155', 'Đỗ Thị Ngọc Nguyên', '3C-13', '0984401271', 'nguyendtn1995@gmail.com'),
('1301040156', 'Dương Thị Nhài', '4C-13', '0983198900', 'duongnhai4695@gmail.com'),
('1301040159', 'Trịnh Quang Nhật', '8C-13', '01659977593', 'giapthao.hanu@gmail.com'),
('1301040160', 'Đoàn Thị Như', '7C-13', '01674914138', 'xuanvinh291195@gmail.com'),
('1301040161', 'Trần Thị Hồng Nhung', '4C-13', '01676710974', 'tranhongnhung2681995@gmail.com'),
('1301040163', 'Trương Thị Nụ', '8C-13', '01652323689', 'vuanhduc1369@gmail.com'),
('1301040165', 'Nguyễn Thị Kiều Oanh', '6C-13', '01257976686', 'oaoa2709@gmail.com'),
('1301040166', 'Trần Phương Oanh', '4C-13', '0902483555', 'Binh21195@gmail.com'),
('1301040167', 'Nguyễn Đình Phú', '8C-13', '01648292355', 'nguyenphu.hanu@gmail.com'),
('1301040171', 'Nguyễn Huy Phước', '1C-13', '0972762338', 'nguyenhuyphuoc10695@gmail.com'),
('1301040173', 'Nguyễn Công Phương', '4C-13', '0965921210', 'phuongnc4c13@gmail.com'),
('1301040176', 'Vũ Tùng Quân', '7C-13', '01688587941', 'vuquan710@gmail.com'),
('1301040178', 'Nguyễn Thị Quỳnh', '8C-13', '0986360427', 'nhocquynh.94@gmail.com'),
('1301040184', 'Lê Xuân Thái', '1C-13', '01673314495', 'thailx1901@gmail.com'),
('1301040185', 'Đoàn Tất Thắng', '4C-13', '0943957577', 'lonelybi95@gmail.com'),
('1301040187', 'Phan Chiến Thắng', '2C-13', '01634561472', 'thangpc1510@gmail.com'),
('1301040188', 'Vu Manh Thang', '5C-13', '0964551190', 'kienhv128@gmail.com'),
('1301040190', 'Nguyễn Thị Thanh', '1C-13', '0972204016', 'nguyenthanhslp@gmail.com'),
('1301040191', 'Chu Hữu Thành', '4C-13', '0979625694', 'mrsilver256@gmail.com'),
('1301040192', 'Nguyễn Tiến Thành', '3C-13', '01675126649', 'nguyentienthanh25121995@gmail.com'),
('1301040193', 'Trần Thanh Thảo', '2C-13', '0975289629', 'thanhthao.hanu95@gmail.com'),
('1301040197', 'Trần Thị Thu', '4C-13', '0974024786', 'tranthutak10.1@gmail.com'),
('1301040199', 'Vũ Xuân Thụ', '3C-13', '0966890829', 'vxthu.hanu@gmail.com'),
('1301040200', 'Trương Minh Thức', '7C-13', '01639499975', 'minhthuc229@gmail.com'),
('1301040203', 'Phạm Thị Thùy', '6C-13', '01657248973', 'phamthithuy251195@gmail.com'),
('1301040204', 'Đào Thị Thủy', '5C-13', '0976474753', 'thuydt2504@gmail.com'),
('1301040205', 'Đoàn Thị Thủy', '7C-13', '0968730778', 'doanthithuy260895@gmail.com'),
('1301040206', 'Nguyễn Thị Thủy', '5C-13', '01648274373', 'thuynguyen5c13hanu@gmail.com'),
('1301040210', 'Trần Kim Tiến', '4C-13', '01646081847', 'nhantv.95@gmail.com'),
('1301040223', 'Nguyễn Anh Tú', '5C-13', '0934590999', 'tien4c@gmail.com'),
('1301040224', 'Nguyễn Minh Tú', '1C-13', '01234567895', '420.69@blaze.it'),
('1301040228', 'Nguyễn Mạnh Tuấn', '5C-13', '0984540134', 'manhtuan165@gmail.com'),
('1301040229', 'Phạm Minh Tuấn', '4C-13', '01639950860', 'tuan4c13@gmail.com'),
('1301040233', 'Nguyễn Thanh Tùng', '1C-13', '01698803730', 'tung031295@gmail.com'),
('1301040234', 'Trần Thanh Tùng', '1C-13', '01626245166', 'tungtttb95@gmail.com'),
('1301040242', 'Hoàng Tuấn Việt', '5C-13', '01659664777', 'hoangviethanu@gmail.com'),
('1301040245', 'Phạm Xuân Vinh', '7C-13', '0987568794', 'ngannt224@gmail.com'),
('1301041057', 'Tân Văn Nhân', '3C-13', '0988765934', 'Tranthiphuonghue95@gmail.com'),
('1302040249', 'Trần Thị Xuân', '8C-13', '01689025364', 'thanhhang.hanu@gmail.com'),
('13L1040001', 'Tagandurdiyev Azatbay ', '1C-13', '0988020045', 'vumanhthangemail@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`student_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
