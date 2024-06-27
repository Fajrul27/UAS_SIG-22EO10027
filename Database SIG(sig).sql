-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2024 at 05:29 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sig`
--

-- --------------------------------------------------------

--
-- Table structure for table `kabupaten`
--

CREATE TABLE `kabupaten` (
  `id_kabupaten` int(11) NOT NULL,
  `kode_kabupaten` varchar(100) NOT NULL,
  `nama_kabupaten` varchar(100) NOT NULL,
  `koordinat` varchar(100) NOT NULL,
  `jumlah_penduduk` int(11) NOT NULL,
  `luas_wilayah` float(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kabupaten`
--

INSERT INTO `kabupaten` (`id_kabupaten`, `kode_kabupaten`, `nama_kabupaten`, `koordinat`, `jumlah_penduduk`, `luas_wilayah`) VALUES
(1, '3302', 'Banyumas', '-7.509465460332697, 109.06282955220277', 1679124, 132758.00);

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `kode_kecamatan` varchar(100) NOT NULL,
  `id_kabupaten` int(11) NOT NULL,
  `nama_kecamatan` varchar(100) NOT NULL,
  `jumlah_penduduk` int(11) NOT NULL,
  `luas_wilayah` float(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`kode_kecamatan`, `id_kabupaten`, `nama_kecamatan`, `jumlah_penduduk`, `luas_wilayah`) VALUES
('3302010', 1, 'Lumbir', 51757, 102.66),
('3302020', 1, 'WANGON', 85464, 60.78),
('3302030', 1, 'JATILAWANG', 68313, 48.16),
('3302040', 1, 'Rawalo', 55104, 49.64),
('3302050', 1, 'Kebasen', 69879, 54.00),
('3302060', 1, 'Kemranjen', 59199, 60.71),
('3302070', 1, 'Sumpiuh', 59426, 60.01),
('3302080', 1, 'Tambak', 55943, 52.03),
('3302090', 1, 'Somagede', 38746, 40.11),
('3302100', 1, 'Kalibagor', 58430, 35.73),
('3302110', 1, 'Banyumas', 54305, 38.09),
('3302120', 1, 'Patikraja', 62696, 43.23),
('3302130', 1, 'Purwojati', 38793, 37.86),
('3302140', 1, 'Ajibarang', 104534, 66.50),
('3302150', 1, 'GUMELAR', 59703, 93.95),
('3302160', 1, 'Pekuncen', 77664, 92.70),
('3302170', 1, 'Cilongok', 127607, 105.34),
('3302180', 1, 'Karanglewas', 63765, 32.50),
('3302190', 1, 'Kedungbanteng', 68580, 60.22),
('3302200', 1, 'Baturraden', 58379, 45.53),
('3302210', 1, 'Sumbang', 59968, 53.42),
('3302220', 1, 'Kembaran', 83367, 25.92),
('3302230', 1, 'Sokaraja', 75658, 29.92),
('3302710', 1, 'Purwokerto Selatan', 55453, 13.75),
('3302720', 1, 'Purwokerto Barat', 50715, 7.40),
('3302730', 1, 'Purwokerto Timur', 55648, 8.42),
('3302740', 1, 'Purwokerto Utara', 58316, 9.01);

-- --------------------------------------------------------

--
-- Table structure for table `sekolah`
--

CREATE TABLE `sekolah` (
  `npsn` int(11) NOT NULL,
  `kode_kecamatan` varchar(100) NOT NULL,
  `nama_sekolah` varchar(100) NOT NULL,
  `alamat_sekolah` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `jenjang_pendidikan` varchar(100) NOT NULL,
  `koordinat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sekolah`
--

INSERT INTO `sekolah` (`npsn`, `kode_kecamatan`, `nama_sekolah`, `alamat_sekolah`, `status`, `jenjang_pendidikan`, `koordinat`) VALUES
(20301601, '3302150', 'SMP NEGERI 2 GUMELAR', 'Jalan Raya Paningkaban', 'NEGERI', 'SMP', '-7.3456,108.9774'),
(20301846, '3302020', 'SDN 4 PENGADEGAN', 'Pengadegan RT 2 RW 8', 'NEGERI', 'SD', '-7.5135,109.0969'),
(20302112, '3302020', 'SMA NEGERI 1 WANGON', 'JL. PEJARAKAN KELAPA GADING', 'NEGERI', 'SMA', '-7.521791108271613, 109.06192545353314'),
(20317487, '3302030', 'SD NEGERI 2 SAMUDRA', 'Jl. Raya Renggong RT 01 / 06 Desa Samudra', 'NEGERI', 'SD', '-7.5134,109.0144'),
(20318419, '3302020', 'SMP MUHAMMADIYAH 1 WANGON', 'Jalan Raya Utara Wangon', 'SWASTA', 'SMP', '-7.3446,109.0702'),
(20358492, '3302030', 'SMKS KARYA TEKNOLOGI', 'JL. RAYA KEDUNGRINGIN NO. 4 JATILAWANG', 'SWASTA', 'SMK', '-7.3557,108.1217'),
(20363455, '3302020', 'MTs MA`ARIF NU 1 WANGON', 'JL. RAYA TIMUR WANGON RT.01/06', 'SWASTA', 'SMP', '-7.517831139769668, 109.05959593732337'),
(20534395, '3302020', 'SD NEGERI 2 PEKUNCEN', 'Jl. Kaliirip', 'NEGERI', 'SD', '-7.5693,109.1201'),
(60710498, '3302020', 'MI MA`ARIF NU 1 KLAPAGADING', 'JL. LINGKAR TIMUR TERMINAL WANGON, RT 002 RW 005', 'SWASTA', 'SD', '-7.516722023113122, 109.0711707228431');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`id_kabupaten`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`kode_kecamatan`),
  ADD KEY `kecamatan_ibfk_1` (`id_kabupaten`);

--
-- Indexes for table `sekolah`
--
ALTER TABLE `sekolah`
  ADD PRIMARY KEY (`npsn`),
  ADD KEY `sekolah_ibfk_1` (`kode_kecamatan`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD CONSTRAINT `kecamatan_ibfk_1` FOREIGN KEY (`id_kabupaten`) REFERENCES `kabupaten` (`id_kabupaten`);

--
-- Constraints for table `sekolah`
--
ALTER TABLE `sekolah`
  ADD CONSTRAINT `sekolah_ibfk_1` FOREIGN KEY (`kode_kecamatan`) REFERENCES `kecamatan` (`kode_kecamatan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
