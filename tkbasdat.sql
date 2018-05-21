-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 20, 2018 at 10:17 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tkbasdat`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `url` varchar(50) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `topik` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `jumlah_kata` int(11) NOT NULL,
  `rerata_rating` double NOT NULL,
  `id_universitas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`url`, `judul`, `topik`, `created_at`, `updated_at`, `jumlah_kata`, `rerata_rating`, `id_universitas`) VALUES
('http://1und1.de', 'Penangkapan Pelaku Bom Bunuh Diri Surabaya Berinisial YSP Berhasil Di Tangkap', 'News', '2018-05-20 12:18:11', '2018-01-04 17:00:00', 600, 90, 5),
('http://flavors.me', 'Atlit Basket Yogine Adjie Berhasil Membawa Timnas Indonesia Menjuarai ASEAN Games 2018', 'Sport', '2018-05-20 09:42:31', '2018-01-30 17:00:00', 900, 100, 31),
('http://livejournal.com', 'Tips and Trick Kuliah Online ala Wahyu Ziwangga', 'Tips and Trick', '2016-12-11 17:00:00', '2017-06-04 17:00:00', 98, 74.6, 42),
('http://microsoft.com', 'Mahasiswa Fasilkom Berhasil Merebut Juara 1 & 2 pada Kompetisi Hackgov Jakarta', 'Pendidikan', '2018-05-20 09:44:20', '2017-08-27 17:00:00', 81, 84.3, 6),
('http://ning.com', 'Kampus Universitas Indonesia Menepati Urutan 1 Kampus Favorit ala Webometrics', 'Documentary', '2016-04-28 17:00:00', '2017-06-14 17:00:00', 6, 78.8, 20),
('https://reuters.com', 'Justice League: The New Frontier ', 'Action', '2018-05-20 12:37:16', '2018-01-22 17:00:00', 44, 78.4, 12),
('https://shinystat.com', 'Vlad', 'Horror|Thriller', '2016-08-28 17:00:00', '2017-08-21 17:00:00', 43, 12.9, 20);

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id_narasumber` int(11) NOT NULL,
  `nik_dosen` varchar(20) NOT NULL,
  `jurusan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `honor`
--

CREATE TABLE `honor` (
  `id_narasumber` int(11) NOT NULL,
  `tgl_diberikan` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jumlah_berita` int(11) NOT NULL,
  `jumlah_gaji` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jam` time NOT NULL,
  `konten` varchar(100) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `email_user` varchar(50) NOT NULL,
  `url_user` varchar(50) NOT NULL,
  `url_berita` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id`, `tanggal`, `jam`, `konten`, `nama_user`, `email_user`, `url_user`, `url_berita`) VALUES
(3, '2018-05-20 19:33:38', '02:33:38', 'I like how they explain the detail with clear yet understandable sentences', 'Yohannes', 'john.magic@zimbra.com', '/narasumber/Yohannes', 'http://1und1.de');

-- --------------------------------------------------------

--
-- Table structure for table `kupon`
--

CREATE TABLE `kupon` (
  `id` int(11) NOT NULL,
  `tgl_diberikan` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tgl_kadaluarsa` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `id_narasumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_narasumber` int(11) NOT NULL,
  `npm` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `narasumber`
--

CREATE TABLE `narasumber` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tempat` varchar(50) NOT NULL,
  `tanggal` varchar(50) NOT NULL,
  `no_hp` varchar(50) NOT NULL,
  `jumlah_berita` int(11) NOT NULL,
  `rerata_kata` int(11) NOT NULL,
  `id_universitas` int(11) NOT NULL,
  `role` varchar(50) NOT NULL,
  `enabled` int(5) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `narasumber`
--

INSERT INTO `narasumber` (`id`, `nama`, `email`, `tempat`, `tanggal`, `no_hp`, `jumlah_berita`, `rerata_kata`, `id_universitas`, `role`, `enabled`, `password`) VALUES
(1, 'Yogine', 'yogine.adjie@gmail.com', 'Jakarta', '1995-12-06', '081284900768', 3, 400, 45, 'ROLE_NARASUMBER', 1, 'password'),
(2, 'Yohannes', 'john.magic@zimbra.com', 'Medan', '1994-06-27', '0218314401', 3, 200, 8, 'ROLE_NARASUMBER', 1, 'password'),
(3, 'Wahyu', 'wahyu.ziwangga@gmail.com', 'Bekasi', '1994-09-03', '0218377212', 19, 6, 25, 'ROLE_ADMIN', 1, 'password');

-- --------------------------------------------------------

--
-- Table structure for table `narasumber_berita`
--

CREATE TABLE `narasumber_berita` (
  `url_berita` varchar(50) NOT NULL,
  `id_narasumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `narasumber_berita`
--

INSERT INTO `narasumber_berita` (`url_berita`, `id_narasumber`) VALUES
('http://1und1.de', 1),
('http://flavors.me', 1),
('http://livejournal.com', 3),
('http://microsoft.com', 2),
('http://ning.com', 2),
('https://reuters.com', 3);

-- --------------------------------------------------------

--
-- Table structure for table `polling`
--

CREATE TABLE `polling` (
  `id` int(11) NOT NULL,
  `polling_start` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `polling_end` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `total_responden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `polling`
--

INSERT INTO `polling` (`id`, `polling_start`, `polling_end`, `total_responden`) VALUES
(1, '2018-05-20 12:30:00', '2018-05-25 07:00:00', 1),
(2, '2018-05-20 23:30:00', '2018-05-30 23:30:00', 3);

-- --------------------------------------------------------

--
-- Table structure for table `polling_berita`
--

CREATE TABLE `polling_berita` (
  `id_polling` int(11) NOT NULL,
  `url_berita` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `polling_berita`
--

INSERT INTO `polling_berita` (`id_polling`, `url_berita`) VALUES
(1, 'http://1und1.de'),
(2, 'http://flavors.me');

-- --------------------------------------------------------

--
-- Table structure for table `polling_biasa`
--

CREATE TABLE `polling_biasa` (
  `id_polling` int(11) NOT NULL,
  `url` varchar(50) NOT NULL,
  `deskripsi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `url_berita` varchar(50) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `nilai` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`url_berita`, `ip_address`, `nilai`) VALUES
('http://1und1.de', '0:0:0:0:0:0:0:1', 5);

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE `rekening` (
  `nomor` varchar(20) NOT NULL,
  `nama_bank` varchar(20) NOT NULL,
  `id_narasumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `respon`
--

CREATE TABLE `respon` (
  `id_polling` int(11) NOT NULL,
  `jawaban` varchar(50) NOT NULL,
  `jumlah_dipilih` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `responden`
--

CREATE TABLE `responden` (
  `id_polling` int(11) NOT NULL,
  `ip_address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `riwayat`
--

CREATE TABLE `riwayat` (
  `url_berita` varchar(50) NOT NULL,
  `id_riwayat` int(11) NOT NULL,
  `waktu_revisi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `konten` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staf`
--

CREATE TABLE `staf` (
  `id_narasumber` int(11) NOT NULL,
  `nik_staf` varchar(20) NOT NULL,
  `posisi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `url_berita` varchar(50) NOT NULL,
  `tag` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `universitas`
--

CREATE TABLE `universitas` (
  `id` int(11) NOT NULL,
  `jalan` varchar(100) NOT NULL,
  `kelurahan` varchar(50) NOT NULL,
  `provinsi` varchar(50) NOT NULL,
  `kodepos` varchar(10) NOT NULL,
  `website` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `universitas`
--

INSERT INTO `universitas` (`id`, `jalan`, `kelurahan`, `provinsi`, `kodepos`, `website`) VALUES
(1, '11561 Acker Pass', 'Shreveport', 'Louisiana', '73719', 'https://ebay.co.uk'),
(2, '5 Buena Vista Junction', 'Tulsa', 'Oklahoma', '39783', 'http://un.org'),
(3, '5 Beilfuss Road', 'Bellevue', 'Washington', '84453', 'http://unicef.org'),
(4, '08 Hallows Parkway', 'Bronx', 'New York', '331', 'http://toplist.cz'),
(5, '086 Hazelcrest Terrace', 'Roanoke', 'Virginia', '50697', 'https://flavors.me'),
(6, '79 Vahlen Street', 'Houston', 'Texas', '06055', 'http://de.vu'),
(7, '9 Shasta Terrace', 'Pittsburgh', 'Pennsylvania', '1218', 'http://wufoo.com'),
(8, '99636 Columbus Parkway', 'Lexington', 'Kentucky', '2', 'http://dedecms.com'),
(9, '74 Dahle Trail', 'Seattle', 'Washington', '2386', 'https://nbcnews.com'),
(10, '4 Summerview Junction', 'Brooklyn', 'New York', '7009', 'http://opera.com'),
(11, '88 Homewood Terrace', 'Toledo', 'Ohio', '265', 'http://kickstarter.com'),
(12, '8641 Hallows Parkway', 'Springfield', 'Illinois', '34', 'http://example.com'),
(13, '7 Amoth Way', 'San Jose', 'California', '7520', 'https://engadget.com'),
(14, '9390 Elka Circle', 'Des Moines', 'Iowa', '014', 'http://jalbum.net'),
(15, '5390 Brown Place', 'San Diego', 'California', '678', 'https://drupal.org'),
(16, '5 Manley Plaza', 'Kalamazoo', 'Michigan', '50', 'http://va.gov'),
(17, '76006 Glacier Hill Road', 'Cincinnati', 'Ohio', '3', 'http://theguardian.com'),
(18, '88571 Buhler Drive', 'Indianapolis', 'Indiana', '724', 'https://senate.gov'),
(19, '0907 Kipling Park', 'Hicksville', 'New York', '55', 'http://sphinn.com'),
(20, '447 Bartelt Plaza', 'San Antonio', 'Texas', '84', 'https://bloglovin.com'),
(21, '1 Sugar Street', 'Young America', 'Minnesota', '734', 'https://china.com.cn'),
(22, '4 Sachs Point', 'Louisville', 'Kentucky', '2641', 'http://ebay.co.uk'),
(23, '908 Park Meadow Road', 'Riverside', 'California', '4276', 'https://va.gov'),
(24, '98405 Northview Lane', 'Naperville', 'Illinois', '493', 'http://buzzfeed.com'),
(25, '90 Dovetail Terrace', 'Wichita Falls', 'Texas', '9', 'https://imgur.com'),
(26, '9 Fisk Circle', 'Washington', 'District of Columbia', '076', 'https://a8.net'),
(27, '9 Colorado Junction', 'Newark', 'New Jersey', '6866', 'https://telegraph.co.uk'),
(28, '77019 Oneill Park', 'Hot Springs National Park', 'Arkansas', '1428', 'http://ovh.net'),
(29, '819 Coleman Place', 'Monticello', 'Minnesota', '476', 'https://nbcnews.com'),
(30, '2286 Orin Parkway', 'Memphis', 'Tennessee', '56348', 'https://aol.com'),
(31, '6 Cody Lane', 'Albuquerque', 'New Mexico', '8', 'http://mediafire.com'),
(32, '5 Bluestem Plaza', 'Memphis', 'Tennessee', '58282', 'http://usgs.gov'),
(33, '2496 Crest Line Trail', 'Lincoln', 'Nebraska', '06804', 'https://ted.com'),
(34, '03 Emmet Street', 'Sandy', 'Utah', '54329', 'http://prnewswire.com'),
(35, '68 Armistice Center', 'Norwalk', 'Connecticut', '213', 'https://infoseek.co.jp'),
(36, '453 Schiller Lane', 'Albany', 'New York', '08645', 'https://miitbeian.gov.cn'),
(37, '004 Monica Park', 'Indianapolis', 'Indiana', '4', 'https://scribd.com'),
(38, '84 Fairfield Pass', 'El Paso', 'Texas', '55', 'http://google.com.au'),
(39, '06 Thompson Road', 'Amarillo', 'Texas', '68063', 'https://cisco.com'),
(40, '3 Mitchell Way', 'New Orleans', 'Louisiana', '9', 'https://aol.com'),
(41, '438 Loeprich Point', 'Houston', 'Texas', '16', 'http://devhub.com'),
(42, '571 Oakridge Terrace', 'Dallas', 'Texas', '244', 'http://wordpress.com'),
(43, '86880 Iowa Parkway', 'Dallas', 'Texas', '30', 'https://weebly.com'),
(44, '54125 Dayton Plaza', 'Jeffersonville', 'Indiana', '95', 'http://cafepress.com'),
(45, '05 Hermina Plaza', 'Lehigh Acres', 'Florida', '1781', 'http://netscape.com'),
(46, '9 Arrowood Way', 'Bonita Springs', 'Florida', '37253', 'http://ucoz.com'),
(47, '5643 South Alley', 'Sioux Falls', 'South Dakota', '893', 'http://github.com'),
(48, '7 Mockingbird Plaza', 'Saint Louis', 'Missouri', '624', 'http://noaa.gov'),
(49, '6315 Lerdahl Circle', 'Albuquerque', 'New Mexico', '876', 'http://prlog.org'),
(50, '00 Valley Edge Street', 'Saint Paul', 'Minnesota', '60409', 'https://bloomberg.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_account`
--

CREATE TABLE `user_account` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  `enabled` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_account`
--

INSERT INTO `user_account` (`username`, `password`, `role`, `enabled`) VALUES
('john', 'john', 'ROLE_NARASUMBER', 1),
('magic', 'magic', 'ROLE_ADMIN', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`url`),
  ADD KEY `id_universitas` (`id_universitas`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_narasumber`);

--
-- Indexes for table `honor`
--
ALTER TABLE `honor`
  ADD PRIMARY KEY (`id_narasumber`,`tgl_diberikan`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `url_berita` (`url_berita`);

--
-- Indexes for table `kupon`
--
ALTER TABLE `kupon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_narasumber` (`id_narasumber`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_narasumber`);

--
-- Indexes for table `narasumber`
--
ALTER TABLE `narasumber`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_universitas` (`id_universitas`);

--
-- Indexes for table `narasumber_berita`
--
ALTER TABLE `narasumber_berita`
  ADD PRIMARY KEY (`url_berita`,`id_narasumber`),
  ADD KEY `id_narasumber` (`id_narasumber`);

--
-- Indexes for table `polling`
--
ALTER TABLE `polling`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `polling_berita`
--
ALTER TABLE `polling_berita`
  ADD PRIMARY KEY (`id_polling`),
  ADD KEY `url_berita` (`url_berita`);

--
-- Indexes for table `polling_biasa`
--
ALTER TABLE `polling_biasa`
  ADD PRIMARY KEY (`id_polling`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`url_berita`,`ip_address`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`nomor`),
  ADD KEY `id_narasumber` (`id_narasumber`);

--
-- Indexes for table `respon`
--
ALTER TABLE `respon`
  ADD PRIMARY KEY (`id_polling`,`jawaban`);

--
-- Indexes for table `responden`
--
ALTER TABLE `responden`
  ADD PRIMARY KEY (`id_polling`);

--
-- Indexes for table `riwayat`
--
ALTER TABLE `riwayat`
  ADD PRIMARY KEY (`url_berita`,`id_riwayat`);

--
-- Indexes for table `staf`
--
ALTER TABLE `staf`
  ADD PRIMARY KEY (`id_narasumber`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`url_berita`,`tag`);

--
-- Indexes for table `universitas`
--
ALTER TABLE `universitas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_account`
--
ALTER TABLE `user_account`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `berita`
--
ALTER TABLE `berita`
  ADD CONSTRAINT `berita_ibfk_1` FOREIGN KEY (`id_universitas`) REFERENCES `universitas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dosen`
--
ALTER TABLE `dosen`
  ADD CONSTRAINT `dosen_ibfk_1` FOREIGN KEY (`id_narasumber`) REFERENCES `narasumber` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `honor`
--
ALTER TABLE `honor`
  ADD CONSTRAINT `honor_ibfk_1` FOREIGN KEY (`id_narasumber`) REFERENCES `narasumber` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT `komentar_ibfk_1` FOREIGN KEY (`url_berita`) REFERENCES `berita` (`url`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kupon`
--
ALTER TABLE `kupon`
  ADD CONSTRAINT `kupon_ibfk_1` FOREIGN KEY (`id_narasumber`) REFERENCES `narasumber` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`id_narasumber`) REFERENCES `narasumber` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `narasumber`
--
ALTER TABLE `narasumber`
  ADD CONSTRAINT `narasumber_ibfk_1` FOREIGN KEY (`id_universitas`) REFERENCES `universitas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `narasumber_berita`
--
ALTER TABLE `narasumber_berita`
  ADD CONSTRAINT `narasumber_berita_ibfk_1` FOREIGN KEY (`url_berita`) REFERENCES `berita` (`url`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `narasumber_berita_ibfk_2` FOREIGN KEY (`id_narasumber`) REFERENCES `narasumber` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `polling_berita`
--
ALTER TABLE `polling_berita`
  ADD CONSTRAINT `polling_berita_ibfk_1` FOREIGN KEY (`id_polling`) REFERENCES `polling` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `polling_berita_ibfk_2` FOREIGN KEY (`url_berita`) REFERENCES `berita` (`url`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `polling_biasa`
--
ALTER TABLE `polling_biasa`
  ADD CONSTRAINT `polling_biasa_ibfk_1` FOREIGN KEY (`id_polling`) REFERENCES `polling` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`url_berita`) REFERENCES `berita` (`url`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rekening`
--
ALTER TABLE `rekening`
  ADD CONSTRAINT `rekening_ibfk_1` FOREIGN KEY (`id_narasumber`) REFERENCES `narasumber` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `respon`
--
ALTER TABLE `respon`
  ADD CONSTRAINT `respon_ibfk_1` FOREIGN KEY (`id_polling`) REFERENCES `polling` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `responden`
--
ALTER TABLE `responden`
  ADD CONSTRAINT `responden_ibfk_1` FOREIGN KEY (`id_polling`) REFERENCES `polling` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `riwayat`
--
ALTER TABLE `riwayat`
  ADD CONSTRAINT `riwayat_ibfk_1` FOREIGN KEY (`url_berita`) REFERENCES `berita` (`url`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staf`
--
ALTER TABLE `staf`
  ADD CONSTRAINT `staf_ibfk_1` FOREIGN KEY (`id_narasumber`) REFERENCES `narasumber` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tag`
--
ALTER TABLE `tag`
  ADD CONSTRAINT `tag_ibfk_1` FOREIGN KEY (`url_berita`) REFERENCES `berita` (`url`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
