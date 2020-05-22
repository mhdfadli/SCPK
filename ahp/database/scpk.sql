-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2020 at 05:10 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scpk`
--

-- --------------------------------------------------------

--
-- Table structure for table `alternatif`
--

CREATE TABLE `alternatif` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alternatif`
--

INSERT INTO `alternatif` (`id`, `nama`) VALUES
(19, 'RSUD KOTA DUMAI'),
(20, 'RSUD Dr. RM Pratomo '),
(21, 'RSUD DURI'),
(22, 'RS Awal Bros Panam'),
(23, 'RSUD ARIFIN ACHMAD ');

-- --------------------------------------------------------

--
-- Table structure for table `ir`
--

CREATE TABLE `ir` (
  `jumlah` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ir`
--

INSERT INTO `ir` (`jumlah`, `nilai`) VALUES
(1, 0),
(2, 0),
(3, 0.58),
(4, 0.9),
(5, 1.12),
(6, 1.24),
(7, 1.32),
(8, 1.41),
(9, 1.45),
(10, 1.49),
(11, 1.51),
(12, 1.48),
(13, 1.56),
(14, 1.57),
(15, 1.59);

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id`, `nama`) VALUES
(28, 'pelayanan kesehatan'),
(29, 'fasilitas kesehatan'),
(30, 'kemudahan akses'),
(31, 'jarak'),
(32, 'biaya perawatan');

-- --------------------------------------------------------

--
-- Table structure for table `perbandingan_alternatif`
--

CREATE TABLE `perbandingan_alternatif` (
  `id` int(11) NOT NULL,
  `alternatif1` int(11) NOT NULL,
  `alternatif2` int(11) NOT NULL,
  `pembanding` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perbandingan_alternatif`
--

INSERT INTO `perbandingan_alternatif` (`id`, `alternatif1`, `alternatif2`, `pembanding`, `nilai`) VALUES
(16, 19, 20, 28, 5),
(17, 19, 21, 28, 3),
(18, 19, 22, 28, 1),
(19, 19, 23, 28, 1),
(20, 20, 21, 28, 0.5),
(21, 20, 22, 28, 0.2),
(22, 20, 23, 28, 0.2),
(23, 21, 22, 28, 0.5),
(24, 21, 23, 28, 0.5),
(25, 22, 23, 28, 1),
(26, 19, 20, 29, 5),
(27, 19, 21, 29, 3),
(28, 19, 22, 29, 0.5),
(29, 19, 23, 29, 0.333),
(30, 20, 21, 29, 0.2),
(31, 20, 22, 29, 0.14),
(32, 20, 23, 29, 0.14),
(33, 21, 22, 29, 0.3333),
(34, 21, 23, 29, 0.33),
(35, 22, 23, 29, 1),
(36, 19, 20, 30, 5),
(37, 19, 21, 30, 3),
(38, 19, 22, 30, 5),
(39, 19, 23, 30, 5),
(40, 20, 21, 30, 0.5),
(41, 20, 22, 30, 3),
(42, 20, 23, 30, 3),
(43, 21, 22, 30, 3),
(44, 21, 23, 30, 3),
(45, 22, 23, 30, 1),
(46, 19, 20, 31, 3),
(47, 19, 21, 31, 3),
(48, 19, 22, 31, 5),
(49, 19, 23, 31, 5),
(50, 20, 21, 31, 1),
(51, 20, 22, 31, 4),
(52, 20, 23, 31, 5),
(53, 21, 22, 31, 3),
(54, 21, 23, 31, 3),
(55, 22, 23, 31, 1),
(56, 19, 20, 32, 5),
(57, 19, 21, 32, 3),
(58, 19, 22, 32, 5),
(59, 19, 23, 32, 5),
(60, 20, 21, 32, 0.5),
(61, 20, 22, 32, 3),
(62, 20, 23, 32, 3),
(63, 21, 22, 32, 5),
(64, 21, 23, 32, 5),
(65, 22, 23, 32, 0.5);

-- --------------------------------------------------------

--
-- Table structure for table `perbandingan_kriteria`
--

CREATE TABLE `perbandingan_kriteria` (
  `id` int(11) NOT NULL,
  `kriteria1` int(11) NOT NULL,
  `kriteria2` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perbandingan_kriteria`
--

INSERT INTO `perbandingan_kriteria` (`id`, `kriteria1`, `kriteria2`, `nilai`) VALUES
(7, 28, 29, 3),
(8, 28, 30, 5),
(9, 28, 31, 5),
(10, 28, 32, 3),
(11, 29, 30, 5),
(12, 29, 31, 3),
(13, 29, 32, 3),
(14, 30, 31, 0.5),
(15, 30, 32, 0.2),
(16, 31, 32, 0.333333);

-- --------------------------------------------------------

--
-- Table structure for table `pv_alternatif`
--

CREATE TABLE `pv_alternatif` (
  `id` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pv_alternatif`
--

INSERT INTO `pv_alternatif` (`id`, `id_alternatif`, `id_kriteria`, `nilai`) VALUES
(40, 19, 28, 0.290856),
(41, 20, 28, 0.0558182),
(42, 21, 28, 0.118674),
(43, 22, 28, 0.267326),
(44, 23, 28, 0.267326),
(45, 19, 29, 0.186187),
(46, 20, 29, 0.0373455),
(47, 21, 29, 0.115262),
(48, 22, 29, 0.314964),
(49, 23, 29, 0.346241),
(50, 19, 30, 0.488808),
(51, 20, 30, 0.155429),
(52, 21, 30, 0.211654),
(53, 22, 30, 0.0720544),
(54, 23, 30, 0.0720544),
(55, 19, 31, 0.450844),
(56, 20, 31, 0.228059),
(57, 21, 31, 0.187107),
(58, 22, 31, 0.0679129),
(59, 23, 31, 0.066078),
(60, 19, 32, 0.472747),
(61, 20, 32, 0.143054),
(62, 21, 32, 0.252918),
(63, 22, 32, 0.0559418),
(64, 23, 32, 0.0753383);

-- --------------------------------------------------------

--
-- Table structure for table `pv_kriteria`
--

CREATE TABLE `pv_kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pv_kriteria`
--

INSERT INTO `pv_kriteria` (`id_kriteria`, `nilai`) VALUES
(28, 0.435263),
(29, 0.256556),
(30, 0.0519949),
(31, 0.0801252),
(32, 0.176061);

-- --------------------------------------------------------

--
-- Table structure for table `ranking`
--

CREATE TABLE `ranking` (
  `id_alternatif` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ranking`
--

INSERT INTO `ranking` (`id_alternatif`, `nilai`) VALUES
(19, 0.319138),
(20, 0.0854178),
(21, 0.151751),
(22, 0.2162),
(23, 0.227492);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ir`
--
ALTER TABLE `ir`
  ADD PRIMARY KEY (`jumlah`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perbandingan_alternatif`
--
ALTER TABLE `perbandingan_alternatif`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perbandingan_kriteria`
--
ALTER TABLE `perbandingan_kriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pv_alternatif`
--
ALTER TABLE `pv_alternatif`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pv_kriteria`
--
ALTER TABLE `pv_kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `ranking`
--
ALTER TABLE `ranking`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `perbandingan_alternatif`
--
ALTER TABLE `perbandingan_alternatif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `perbandingan_kriteria`
--
ALTER TABLE `perbandingan_kriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `pv_alternatif`
--
ALTER TABLE `pv_alternatif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
