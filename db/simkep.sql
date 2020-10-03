-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Okt 2020 pada 23.37
-- Versi server: 10.1.32-MariaDB
-- Versi PHP: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simkep`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `devisi`
--

CREATE TABLE `devisi` (
  `devisi_id` int(10) NOT NULL,
  `devisi` varchar(64) NOT NULL,
  `nama` varchar(64) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `devisi`
--

INSERT INTO `devisi` (`devisi_id`, `devisi`, `nama`, `keterangan`) VALUES
(34, 'Keuangan', 'Ma\'mur', 'dwdas'),
(35, 'Peralatan', 'Jamaluddin Tani', '-'),
(36, 'Konsumsi', 'Al Azhar', ''),
(37, 'example', 'Rudi', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kepanitiaan`
--

CREATE TABLE `kepanitiaan` (
  `kepanitiaan_id` int(64) NOT NULL,
  `no_surat` varchar(64) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` text NOT NULL,
  `relasi` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kepanitiaan`
--

INSERT INTO `kepanitiaan` (`kepanitiaan_id`, `no_surat`, `nama`, `tanggal`, `keterangan`, `relasi`) VALUES
(81, 'DD.293ndjw', 'Pelatihan', '2019-07-01', 'lol', '5cef868743d0d');

-- --------------------------------------------------------

--
-- Struktur dari tabel `staff`
--

CREATE TABLE `staff` (
  `staff_id` varchar(64) NOT NULL,
  `no_absen` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL DEFAULT 'default.jpg',
  `name` varchar(64) NOT NULL,
  `status` varchar(64) NOT NULL,
  `jabatan` varchar(64) NOT NULL,
  `keterangan` text NOT NULL,
  `prioritas` int(11) NOT NULL,
  `panitia_id` varchar(64) NOT NULL,
  `kep_dev` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `staff`
--

INSERT INTO `staff` (`staff_id`, `no_absen`, `foto`, `name`, `status`, `jabatan`, `keterangan`, `prioritas`, `panitia_id`, `kep_dev`) VALUES
('100', 77, 'default.jpg', 'Aeril Imrat', 'aktiv', 'TENAGA KONTRAK', '', 60, '0', 1),
('101', 79, 'default.jpg', 'Nur Anugrah Ilahi', 'aktiv', 'TENAGA KONTRAK', '', 60, '0', 1),
('102', 80, 'default.jpg', 'Ahmad Rismal', 'aktiv', 'TENAGA KONTRAK', '', 60, '0', 1),
('103', 74, 'default.jpg', 'Firman', 'aktiv', '', '', 60, '0', 1),
('104', 75, 'default.jpg', 'A. Bambang Fajar', 'aktiv', '', '', 60, '0', 1),
('105', 76, 'default.jpg', 'Abd. Jalil', 'aktiv', 'TENAGA KONTRAK', '', 60, '0', 1),
('106', 78, 'default.jpg', 'Lizha Dwi Mulya P', 'aktiv', 'TENAGA KONTRAK', '', 60, '0', 1),
('107', 73, 'default.jpg', 'Muh. Rizal Mattawang', 'aktiv', 'TENAGA KONTRAK', '', 60, '0', 1),
('108', 83, 'default.jpg', 'Samsul Rizal', 'aktiv', 'TENAGA KONTRAK', '', 60, '0', 1),
('109', 82, 'default.jpg', 'Nursanti A', 'akitiv', 'TENAGA KONTRAK', '', 145, '0', 1),
('110', 1019, 'default.jpg', 'Retno Yuniarmala Pratiwi', 'aktiv', 'TENAGA KONTRAK', '', 60, '0', 1),
('111', 112, 'default.jpg', 'Wardirianto', 'aktiv', 'TENAGA KONTRAK', '', 60, '0', 1),
('112', 206, 'default.jpg', 'Muhammad Andy Siswanto', 'akitiv', 'TENAGA KONTRAK', '', 145, '0', 1),
('113', 204, 'default.jpg', 'Andi Arman Arsyad', 'aktiv', 'TENAGA KONTRAK', '', 60, '0', 1),
('114', 203, 'default.jpg', 'Azhar Waliullah Syafir', 'aktiv', 'TENAGA KONTRAK', '', 60, '0', 1),
('115', 115, 'default.jpg', 'Andi Guntur', 'aktiv', '', '', 60, '0', 1),
('116', 116, 'default.jpg', 'Jauri Firdaus', 'aktiv', '', '', 45, '0', 1),
('117', 114, 'default.jpg', 'Alfian Jufri', 'aktiv', 'TENAGA KONTRAK', '', 45, '0', 1),
('118', 113, 'default.jpg', 'Risnawati', 'aktiv', 'TENAGA KONTRAK', '', 45, '0', 1),
('119', 1020, 'default.jpg', 'Ahkam Zubair', 'aktiv', 'WIDYAISWARA', '', 45, '0', 1),
('120', 1505, 'default.jpg', 'Magisrahayu', 'aktiv', 'WIDYAISWARA', '', 45, '0', 1),
('121', 63, 'default.jpg', 'Albi Alfian', 'aktiv', 'TENAGA KONTRAK', '', 45, '0', 1),
('122', 1031, 'default.jpg', 'Thaha', 'aktiv', 'WIDYAISWARA', '', 45, '0', 1),
('123', 1033, 'default.jpg', 'Abdul Waqif', 'aktiv', 'WIDYAISWARA', '', 45, '0', 1),
('124', 1032, 'default.jpg', 'Ahmad', 'aktiv', 'WIDYAISWARA', '', 45, '0', 1),
('125', 1507, 'default.jpg', 'Irlidiya', 'aktiv', 'WIDYAISWARA', '', 45, '0', 1),
('126', 235, 'default.jpg', 'Maqfirah Nur Arifin', 'aktiv', 'TENAGA KONTRAK', '', 45, '0', 1),
('127', 236, 'default.jpg', 'Yun Setiani Putri', 'aktiv', 'TENAGA KONTRAK', '', 45, '0', 1),
('128', 1508, 'default.jpg', 'Andi Ummi Rahmah', 'aktiv', 'TENAGA KONTRAK', '', 45, '0', 1),
('129', 1506, 'default.jpg', 'Syarifuddin', 'aktiv', 'SUBBAG. UMUM', '', 45, '0', 1),
('130', 238, 'default.jpg', 'Sumarlin', 'aktiv', 'TENAGA KONTRAK', '', 120, '0', 1),
('131', 1509, 'default.jpg', 'Febriyani Ramayanti Rahman', 'aktiv', 'SUBBAG. UMUM', '', 45, '0', 1),
('132', 1021, 'default.jpg', 'Hijrah', 'aktiv', '', '', 45, '0', 1),
('133', 1022, 'default.jpg', 'Nurul Khusaimah', 'aktiv', '', '', 45, '0', 1),
('134', 1512, 'default.jpg', 'Irwan', 'aktiv', 'MANAJEMEN', '', 45, '0', 1),
('135', 1511, 'default.jpg', 'Ahmad Miswar', 'aktiv', 'SUBBAG. UMUM', '', 45, '0', 1),
('136', 1510, 'default.jpg', 'Risna Amriani', 'aktiv', 'SEKSI PENINGKATAN', '', 45, '0', 1),
('137', 1513, 'default.jpg', 'Nurkhalis Latif', 'aktiv', 'SUBBAG. UMUM', '', 30, '0', 1),
('138', 1514, 'default.jpg', 'Hasnawati', 'aktiv', 'SEKSI PENINGKATAN KOMPETENSI', '', 30, '0', 1),
('139', 16, 'default.jpg', 'Moch Rofik Mochaimin', 'aktiv', 'SUBBAG. UMUM', '', 30, '0', 1),
('140', 17, 'default.jpg', 'Muhammad Sufi Zulkarnaen', 'aktiv', 'SUBBAG. UMUM', '', 30, '0', 1),
('141', 68, 'default.jpg', 'Aldi Efendi', 'aktiv', 'TENAGA KONTRAK', '', 30, '0', 1),
('142', 64, 'default.jpg', 'Suwarwin', 'aktiv', 'TENAGA KONTRAK', '', 30, '0', 1),
('143', 65, 'default.jpg', 'Makhmuddin', 'aktiv', 'TENAGA KONTRAK', '', 30, '0', 1),
('144', 66, 'default.jpg', 'A. Muh. Ardiansyah', 'aktiv', '', '', 30, '0', 1),
('145', 50, 'default.jpg', 'Dg. Nia', 'aktiv', '', '', 30, '0', 1),
('146', 72, 'default.jpg', 'Rama Halis Halidi', 'aktiv', 'TENAGA KONTRAK', '', 30, '0', 1),
('147', 232, 'default.jpg', 'Ahmad Mauluddin', 'aktiv', '', '', 15, '5cef868743d0d', 1),
('148', 240, 'default.jpg', 'Jufri', 'aktiv', 'TENAGA KONTRAK', '', 15, '5cef868743d0d', 1),
('149', 1519, 'default.jpg', 'Andi Muhammad Zuhdy', 'aktiv', 'SUBBAG. UMUM', '', 15, '5cef868743d0d', 1),
('150', 1515, 'default.jpg', 'Muhammad Syahrir', 'aktiv', 'SEKSI PENINGKATAN KOMPETENSI', '', 150, '0', 1),
('151', 1521, 'default.jpg', 'Muhammad Abdi', 'akitv', 'SUBBAG. UMUM', '', 145, '0', 1),
('152', 1517, 'default.jpg', 'Andi Nirma', 'aktiv', 'SEKSI PROGRAM DAN INFORMASI', '', 150, '0', 1),
('153', 1520, 'default.jpg', 'Andi Asmawadi', 'aktiv', 'SUBBAG. UMUM', '', 150, '0', 1),
('154', 1518, 'default.jpg', 'Makmur Musma', 'aktiv', 'SEKSI PENINGKATAN KOMPETENSI', '', 150, '0', 1),
('155', 1522, 'default.jpg', 'Rakhmat Syam', 'aktiv', 'SEKSI PENINGKATAN KOMPETENSI', '', 150, '0', 1),
('156', 88, 'default.jpg', 'taqwa', 'nonaktiv', 'menejer', '-', 100, '', 1),
('157', 742, 'default.jpg', 'Taqwa Al Mutawakkil', 'aktiv', 'Software Enginer', 'noob', 100, '', 0),
('31', 15, 'default.jpg', 'Ma\'mur', 'aktiv', 'SUBBAG. UMUM', '', 75, '0', 2),
('34', 14, 'default.jpg', 'Andri Warsono', 'aktiv', 'SEKSI PENINGKATAN KOMPETENSI', '', 90, '0', 1),
('35', 13, 'default.jpg', 'Nurul Hayati', 'aktiv', 'SUBBAG. UMUM', '', 90, '0', 1),
('37', 12, 'default.jpg', 'Jamaluddin Tani', 'aktiv', 'SUBBAG. UMUM', '', 15, '0', 2),
('38', 10, 'default.jpg', 'Nazaruddin', 'aktiv', 'SUBBAG. UMUM', '', 75, '0', 1),
('41', 9, 'default.jpg', 'Darwis M', 'aktiv', 'MANAJEMEN', '', 75, '0', 1),
('42', 11, 'default.jpg', 'Al Azhar', 'aktiv', 'SUBBAG. UMUM', '', 15, '0', 2),
('43', 7, 'default.jpg', 'Liyani', 'aktiv', 'SUBBAG. UMUM', '', 75, '0', 1),
('44', 6, 'default.jpg', 'Karina Lolo Manik', 'aktiv', 'SEKSI PENINGKATAN', '', 90, '0', 1),
('45', 5, 'default.jpg', 'Syafaruddin', 'aktiv', 'SUBBAG. UMUM', '', 140, '0', 1),
('46', 4, 'default.jpg', 'Yopi Sopian', 'aktiv', 'MANAJEMEN', '', 140, '0', 1),
('47', 3, 'default.jpg', 'Mahfud Junaid', 'aktiv', '', '', 140, '0', 1),
('48', 2, 'default.jpg', 'Suwadi', 'aktiv', 'MANAJEMEN', '', 140, '0', 1),
('49', 32, 'default.jpg', 'Imran', 'aktiv', 'WIDYAISWARA', '', 130, '0', 1),
('50', 31, 'default.jpg', 'Muhammad Hasri', 'aktiv', 'WIDYAISWARA', '', 130, '0', 1),
('51', 1, 'default.jpg', 'Rusdi', 'aktiv', '', '', 130, '0', 1),
('52', 1504, 'default.jpg', 'Suryanti', 'aktiv', 'SUBBAG. UMUM', '', 130, '0', 1),
('53', 69, 'default.jpg', 'Hasrullah', 'aktiv', '', '', 130, '0', 1),
('54', 19, 'default.jpg', 'Janwar', 'aktiv', 'SUBBAG. UMUM', '', 130, '0', 1),
('55', 20, 'default.jpg', 'Singgih Afifa Putra', 'aktiv', 'SUBBAG. UMUM', '', 75, '0', 1),
('56', 22, 'default.jpg', 'Dwi Bagus Fitriyanto', 'aktiv', 'SEKSI PROGRAM DAN INFORMASI', '', 75, '0', 1),
('57', 24, 'default.jpg', 'Descy Arfiyani', 'aktiv', 'SEKSI PROGRAM DAN INFORMASI', '', 75, '0', 1),
('58', 25, 'default.jpg', 'Anshari Marewa', 'aktiv', 'SUBBAG. UMUM', '', 75, '0', 1),
('59', 26, 'default.jpg', 'Robert Polikarpus', 'aktiv', 'SEKSI PENINGKATAN KOMPETENSI', '', 75, '0', 1),
('60', 27, 'default.jpg', 'Destilawaty', 'aktiv', 'SEKSI PROGRAM DAN INFORMASI', '', 60, '0', 1),
('61', 28, 'default.jpg', 'Novi Nurlaela', 'aktiv', 'SEKSI PENINGKATAN KOMPETENSI', '', 140, '0', 1),
('62', 29, 'default.jpg', 'Santia Gardenia Widyaswari', 'aktiv', 'WIDYAISWARA', '', 140, '0', 1),
('63', 30, 'default.jpg', 'Sri Rini Dwiari', 'aktiv', 'WIDYAISWARA', '', 140, '0', 1),
('64', 33, 'default.jpg', 'Amriani', 'aktiv', 'TENAGA KONTRAK', '', 140, '0', 1),
('65', 34, 'default.jpg', 'Zein Rifal', 'aktiv', 'TENAGA KONTRAK', '', 140, '0', 1),
('66', 35, 'default.jpg', 'Murni Dg. Te\'ne', 'aktiv', '', '', 140, '0', 1),
('67', 38, 'default.jpg', 'Sudirman Rante Padang', 'aktiv', 'TENAGA KONTRAK', '', 130, '0', 1),
('68', 39, 'default.jpg', 'Hasnawati', 'aktiv', 'TENAGA KONTRAK', '', 130, '0', 1),
('69', 40, 'default.jpg', 'Ahmad', 'aktiv', 'TENAGA KONTRAK', '', 130, '0', 1),
('70', 41, 'default.jpg', 'Rabai Dg. Lurang', 'aktiv', 'TENAGA KONTRAK', '', 130, '0', 1),
('71', 42, 'default.jpg', 'Kawali Dg. Nyomba', 'aktiv', 'TENAGA KONTRAK', '', 130, '0', 1),
('72', 43, 'default.jpg', 'Tambaru Dg. Sikki', 'aktiv', 'TENAGA KONTRAK', '', 130, '0', 1),
('73', 44, 'default.jpg', 'Basri Dg. Tika', 'aktiv', 'TENAGA KONTRAK', '', 130, '0', 1),
('74', 45, 'default.jpg', 'Abdul Kadir Dg. Tiro', 'aktiv', 'TENAGA KONTRAK', '', 130, '0', 1),
('75', 46, 'default.jpg', 'Jumais', 'aktiv', 'TENAGA KONTRAK', '', 130, '0', 1),
('76', 47, 'default.jpg', 'Supriyanto', 'aktiv', 'TENAGA KONTRAK', '', 130, '0', 1),
('77', 48, 'default.jpg', 'Yumran', 'aktiv', 'TENAGA KONTRAK', '', 130, '0', 1),
('78', 49, 'default.jpg', 'Ahmad Pance Dg. Yerang', 'aktiv', 'TENAGA KONTRAK', '', 120, '0', 1),
('79', 60, 'default.jpg', 'Syamsul Hidayat', 'aktiv', '', '', 120, '0', 1),
('80', 51, 'default.jpg', 'Hamka A. Rusdi', 'aktiv', 'TENAGA KONTRAK', '', 120, '0', 1),
('81', 52, 'default.jpg', 'Rudi', 'aktiv', 'TENAGA KONTRAK', '', 105, '0', 2),
('82', 53, 'default.jpg', 'Firly Irham', 'aktiv', 'TENAGA KONTRAK', '', 120, '0', 1),
('83', 54, 'default.jpg', 'Faizal Reza Nurzeha', 'aktiv', '', '', 120, '0', 1),
('84', 61, 'default.jpg', 'Muhammad Ilyas', 'aktiv', 'TENAGA KONTRAK', '', 105, '0', 1),
('85', 57, 'default.jpg', 'Salihuddin', 'aktiv', 'TENAGA KONTRAK', '', 105, '0', 1),
('86', 58, 'default.jpg', 'Muh. Natsir R', 'aktiv', 'TENAGA KONTRAK', '', 105, '0', 1),
('87', 59, 'default.jpg', 'Hasanuddin', 'aktiv', 'TENAGA KONTRAK', '', 105, '0', 1),
('88', 36, 'default.jpg', 'Ansar Dg. Tobo', 'aktiv', 'TENAGA KONTRAK', '', 105, '0', 1),
('89', 37, 'default.jpg', 'A. Rinaldi', 'aktiv', 'TENAGA KONTRAK', '', 105, '0', 1),
('90', 8, 'default.jpg', 'Siera Maulida Asrin', 'aktiv', 'SUBBAG. UMUM', '', 105, '0', 1),
('91', 21, 'default.jpg', 'Khaidir', 'aktiv', 'SEKSI PROGRAM DAN INFORMASI', '', 90, '0', 1),
('92', 67, 'default.jpg', 'Zulfikar', 'aktiv', 'TENAGA KONTRAK', '', 90, '0', 1),
('93', 1500, 'default.jpg', 'Firga Jafar', 'aktiv', 'SUBBAG. UMUM', '', 90, '0', 1),
('94', 1501, 'default.jpg', 'Anwar', 'aktiv', 'SUBBAG. UMUM', '', 90, '0', 1),
('95', 1503, 'default.jpg', 'Hukmiah Arif', 'aktiv', 'WIDYAISWARA', '', 60, '0', 1),
('96', 234, 'default.jpg', 'Arifudin', 'aktiv', 'WIDYAISWARA', '', 60, '0', 1),
('97', 81, 'default.jpg', 'A. Risdawati Ap', 'aktiv', 'TENAGA KONTRAK', '', 60, '0', 1),
('98', 231, 'default.jpg', 'Andi Mu\'min Ap', 'aktiv', 'TENAGA KONTRAK', '', 60, '0', 1),
('99', 233, 'default.jpg', 'Eva Nurlail', 'aktiv', 'TENAGA KONTRAK', '', 60, '0', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `role` enum('admin','staff') NOT NULL DEFAULT 'staff',
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `photo` varchar(64) NOT NULL DEFAULT 'default.jpg',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `full_name`, `phone`, `role`, `last_login`, `photo`, `created_at`, `is_active`) VALUES
(1, 'admin', '$2y$10$tonZkQrnGnp9n38rWeMTieLPNxtDfvy4Z/35Q4rlFObsm/xFnSae.', 'kosit.mks@gmail.com', 'karaeng cakdi', '081234567890', 'admin', '2020-09-27 01:21:03', 'default.jpg', '2020-09-26 23:43:41', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `devisi`
--
ALTER TABLE `devisi`
  ADD PRIMARY KEY (`devisi_id`);

--
-- Indeks untuk tabel `kepanitiaan`
--
ALTER TABLE `kepanitiaan`
  ADD PRIMARY KEY (`kepanitiaan_id`);

--
-- Indeks untuk tabel `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `devisi`
--
ALTER TABLE `devisi`
  MODIFY `devisi_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `kepanitiaan`
--
ALTER TABLE `kepanitiaan`
  MODIFY `kepanitiaan_id` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
