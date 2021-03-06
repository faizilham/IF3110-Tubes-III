-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2013 at 11:07 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wbd3`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
  `id_barang` int(11) NOT NULL AUTO_INCREMENT,
  `nama_barang` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `kategori` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `deskripsi` text COLLATE latin1_general_ci NOT NULL,
  `jumlah_beli` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_barang`),
  UNIQUE KEY `nama_barang` (`nama_barang`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=89 ;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `harga`, `stok`, `kategori`, `deskripsi`, `jumlah_beli`) VALUES
(50, 'Hime, Maa, and Aria', 12000, 93, 'peralatan sekolah', 'Kartu Hime, Maa, dan Aria!', 23),
(51, 'Akari, Aika, and Alice A', 13000, 94, 'peralatan sekolah', 'Kartu Akari, Aika, dan Alice A!', 34),
(52, 'Akari, Aika, and Alice B', 14000, 93, 'peralatan sekolah', 'Kartu Akari, Aika dan Alice B!', 45),
(53, 'Ametsuchi Akino', 15000, 92, 'peralatan sekolah', 'Kartu Ametsuchi Akino!', 56),
(54, 'Akari, Aika and Alice C', 16500, 91, 'mainan', 'Kartu Akari, Aika and Alice C!', 67),
(55, 'Alice Caroll A', 17250, 50, 'mainan', 'Kartu Alice Carroll A!', 19),
(56, 'Alice Carroll B', 18750, 60, 'mainan', 'Kartu Alice Carroll B!', 17),
(57, 'Athena Glory A', 19500, 70, 'mainan', 'Kartu Athena Glory A!', 15),
(58, 'Alice Carroll C', 20250, 80, 'mainan', 'Kartu Alice Carroll C!', 13),
(59, 'Alice Carroll D', 21500, 86, 'mainan', 'Kartu Alice Carroll D!', 21),
(60, 'Athena Glory B', 22250, 13, 'mainan', 'Kartu Athena Glory B!', 3),
(61, 'Athena Glory C', 24750, 15, 'mainan', 'Kartu Athena Glory C', 5),
(62, 'Athena Glory D', 26750, 156, 'mainan', 'Kartu Athena Glory D', 56),
(63, 'Woody Ayanokouji the 51st', 27500, 115, 'peralatan serbaguna', 'Kartu Woody Ayanokouji the 51st!', 15),
(64, 'Alice Carroll E', 28000, 74, 'peralatan rumah', 'Kartu Alice Carroll E!', 14),
(65, 'Athena Glory E', 19500, 24, 'peralatan rumah', 'Kartu Athena Glory E!', 20),
(66, 'Alice Carroll F', 25700, 22, 'peralatan rumah', 'Kartu Alice Carroll F!', 15),
(67, 'Alice Carroll G', 33750, 16, 'peralatan rumah', 'Kartu Alice Carroll G!', 6),
(68, 'Athena Glory F', 18500, 2, 'peralatan rumah', 'Kartu Athena Glory F!', 2),
(69, 'Athena Glory G', 22200, 36, 'makanan', 'Kartu Athena Glory G!', 35),
(70, 'Kartu Alice Carroll H', 115000, 1, 'makanan', 'Kartu Alice Carroll H!', 1),
(71, 'Alice Carroll I', 250000, 11, 'makanan', 'Kartu Alice Carroll I!', 6),
(72, 'Alice Carroll J', 68750, 25, 'makanan', 'Kartu Alice Carroll J!', 20),
(73, 'Akira E Ferarri', 36000, 23, 'makanan', 'Kartu Aika E Ferarri A!', 18),
(74, 'Albert Pitt', 500000, 35, 'peralatan sekolah', 'Kartu Albert Pitt!', 20),
(75, 'Aika S Granzchesta A', 25000, 23, 'peralatan sekolah', 'Kartu Aika S Granzchesta A!', 3),
(76, 'Aika S Granzchesta B', 2000, 11, 'peralatan sekolah', 'Kartu Aika S Granzchesta B', 9),
(77, 'Akira E Ferarri B', 55000, 21, 'peralatan sekolah', 'Kartu Akira E Ferarri B!', 19),
(78, 'Akira E Ferarri C', 150000, 8, 'peralatan sekolah', 'Kartu Akira E Ferarri C!', 5),
(79, 'Aika S Granzchesta C', 14000, 22, 'peralatan serbaguna', 'Kartu Aika S Granzchesta C!', 16),
(80, 'Aika S Granzchesta D', 12250, 55, 'peralatan serbaguna', 'Kartu Aika S Granzchesta D!', 54),
(81, 'Aika S Granzchesta E', 35000, 21, 'peralatan serbaguna', 'Kartu Aika S Granzchesta E!', 17),
(82, 'Akira E Ferrari D', 25000, 25, 'peralatan serbaguna', 'Kartu Akira E Ferrari D!', 23),
(83, 'Aika S Granzchesta F', 33500, 25, 'peralatan serbaguna', 'Kartu Aika S Granzchesta F!', 24),
(84, 'Akira E Ferrari E', 45600, 89, 'mainan', 'Kartu Akira E Ferrari F', 78),
(85, 'Aika and Hime', 78500, 4, 'mainan', 'Kartu Aika dan Hime-sachou!', 2),
(86, 'Aika S Granzchesta G', 47650, 43, 'mainan', 'Kartu Aika S Granzchesta G!', 13),
(87, 'Akira E Ferrari G', 125000, 250, 'mainan', 'Kartu Akira E Ferarri G!', 225),
(88, 'Aika S Granzchesta H', 33850, 65, 'mainan', 'Kartu Aika S Granzchesta H!', 60);

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE IF NOT EXISTS `token` (
  `token_id` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`token_id`),
  KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`token_id`, `username`, `waktu`) VALUES
('12345', 'admin', '2013-12-06 11:02:49'),
('abcde', 'abcd', '2013-12-06 11:51:10');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `alamat` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `provinsi` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `kota` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `kodepos` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `telepon` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `jumlah_transaksi` int(11) NOT NULL DEFAULT '0',
  `role` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `card_name` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `card_number` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `card_date` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `email`, `nama_lengkap`, `alamat`, `provinsi`, `kota`, `kodepos`, `telepon`, `jumlah_transaksi`, `role`, `card_name`, `card_number`, `card_date`) VALUES
('abcd', 'abcd', 'abcd@email.com', '', 'alamat2', 'p1', 'kota1', '', '', 2, 'user', 'abcd', '14543', '12/21'),
('admin', 'admin', 'admin@a.com', '', '', '', '', '', '', 1, 'admin', 'abcde', 'asdasd', 'asdad'),
('user', 'user', 'user@a.com', '', '', '', '', '', '', 0, 'user', NULL, NULL, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `token`
--
ALTER TABLE `token`
  ADD CONSTRAINT `token_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
