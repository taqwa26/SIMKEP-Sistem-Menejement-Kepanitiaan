-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Bulan Mei 2019 pada 06.56
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
(36, 'Konsumsi', 'Al Azhar', '');

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
(78, 'DD.293ndj1', 'example', '2019-06-28', '-', '5cef55d001778');

-- --------------------------------------------------------

--
-- Struktur dari tabel `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(10) NOT NULL,
  `no_absen` int(11) NOT NULL,
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

INSERT INTO `staff` (`staff_id`, `no_absen`, `name`, `status`, `jabatan`, `keterangan`, `prioritas`, `panitia_id`, `kep_dev`) VALUES
(31, 15, 'Ma\'mur', 'aktiv', 'SUBBAG. UMUM', '', 75, '0', 2),
(34, 14, 'Andri Warsono', 'aktiv', 'SEKSI PENINGKATAN KOMPETENSI', '', 45, '0', 1),
(35, 13, 'Nurul Hayati', 'aktiv', 'SUBBAG. UMUM', '', 45, '0', 1),
(37, 12, 'Jamaluddin Tani', 'aktiv', 'SUBBAG. UMUM', '', 15, '0', 2),
(38, 10, 'Nazaruddin', 'aktiv', 'SUBBAG. UMUM', '', 30, '0', 1),
(41, 9, 'Darwis M', 'aktiv', 'MANAJEMEN', '', 30, '0', 1),
(42, 11, 'Al Azhar', 'aktiv', 'SUBBAG. UMUM', '', 15, '0', 2),
(43, 7, 'Liyani', 'aktiv', 'SUBBAG. UMUM', '', 30, '0', 1),
(44, 6, 'Karina Lolo Manik', 'aktiv', 'SEKSI PENINGKATAN', '', 45, '0', 1),
(45, 5, 'Syafaruddin', 'aktiv', 'SUBBAG. UMUM', '', 95, '0', 1),
(46, 4, 'Yopi Sopian', 'aktiv', 'MANAJEMEN', '', 95, '0', 1),
(47, 3, 'Mahfud Junaid', 'aktiv', '', '', 95, '0', 1),
(48, 2, 'Suwadi', 'aktiv', 'MANAJEMEN', '', 95, '0', 1),
(49, 32, 'Imran', 'aktiv', 'WIDYAISWARA', '', 85, '0', 1),
(50, 31, 'Muhammad Hasri', 'aktiv', 'WIDYAISWARA', '', 85, '0', 1),
(51, 1, 'Rusdi', 'aktiv', '', '', 85, '0', 1),
(52, 1504, 'Suryanti', 'aktiv', 'SUBBAG. UMUM', '', 85, '0', 1),
(53, 69, 'Hasrullah', 'aktiv', '', '', 85, '0', 1),
(54, 19, 'Janwar', 'aktiv', 'SUBBAG. UMUM', '', 85, '0', 1),
(55, 20, 'Singgih Afifa Putra', 'aktiv', 'SUBBAG. UMUM', '', 30, '0', 1),
(56, 22, 'Dwi Bagus Fitriyanto', 'aktiv', 'SEKSI PROGRAM DAN INFORMASI', '', 30, '0', 1),
(57, 24, 'Descy Arfiyani', 'aktiv', 'SEKSI PROGRAM DAN INFORMASI', '', 30, '0', 1),
(58, 25, 'Anshari Marewa', 'aktiv', 'SUBBAG. UMUM', '', 30, '0', 1),
(59, 26, 'Robert Polikarpus', 'aktiv', 'SEKSI PENINGKATAN KOMPETENSI', '', 30, '0', 1),
(60, 27, 'Destilawaty', 'aktiv', 'SEKSI PROGRAM DAN INFORMASI', '', 15, '5cef55d001778', 1),
(61, 28, 'Novi Nurlaela', 'aktiv', 'SEKSI PENINGKATAN KOMPETENSI', '', 95, '0', 1),
(62, 29, 'Santia Gardenia Widyaswari', 'aktiv', 'WIDYAISWARA', '', 95, '0', 1),
(63, 30, 'Sri Rini Dwiari', 'aktiv', 'WIDYAISWARA', '', 95, '0', 1),
(64, 33, 'Amriani', 'aktiv', 'TENAGA KONTRAK', '', 95, '0', 1),
(65, 34, 'Zein Rifal', 'aktiv', 'TENAGA KONTRAK', '', 95, '0', 1),
(66, 35, 'Murni Dg. Te\'ne', 'aktiv', '', '', 95, '0', 1),
(67, 38, 'Sudirman Rante Padang', 'aktiv', 'TENAGA KONTRAK', '', 85, '0', 1),
(68, 39, 'Hasnawati', 'aktiv', 'TENAGA KONTRAK', '', 85, '0', 1),
(69, 40, 'Ahmad', 'aktiv', 'TENAGA KONTRAK', '', 85, '0', 1),
(70, 41, 'Rabai Dg. Lurang', 'aktiv', 'TENAGA KONTRAK', '', 85, '0', 1),
(71, 42, 'Kawali Dg. Nyomba', 'aktiv', 'TENAGA KONTRAK', '', 85, '0', 1),
(72, 43, 'Tambaru Dg. Sikki', 'aktiv', 'TENAGA KONTRAK', '', 85, '0', 1),
(73, 44, 'Basri Dg. Tika', 'aktiv', 'TENAGA KONTRAK', '', 85, '0', 1),
(74, 45, 'Abdul Kadir Dg. Tiro', 'aktiv', 'TENAGA KONTRAK', '', 85, '0', 1),
(75, 46, 'Jumais', 'aktiv', 'TENAGA KONTRAK', '', 85, '0', 1),
(76, 47, 'Supriyanto', 'aktiv', 'TENAGA KONTRAK', '', 85, '0', 1),
(77, 48, 'Yumran', 'aktiv', 'TENAGA KONTRAK', '', 85, '0', 1),
(78, 49, 'Ahmad Pance Dg. Yerang', 'aktiv', 'TENAGA KONTRAK', '', 75, '0', 1),
(79, 60, 'Syamsul Hidayat', 'aktiv', '', '', 75, '0', 1),
(80, 51, 'Hamka A. Rusdi', 'aktiv', 'TENAGA KONTRAK', '', 75, '0', 1),
(81, 52, 'Rudi', 'aktiv', 'TENAGA KONTRAK', '', 75, '0', 1),
(82, 53, 'Firly Irham', 'aktiv', 'TENAGA KONTRAK', '', 75, '0', 1),
(83, 54, 'Faizal Reza Nurzeha', 'aktiv', '', '', 75, '0', 1),
(84, 61, 'Muhammad Ilyas', 'aktiv', 'TENAGA KONTRAK', '', 60, '0', 1),
(85, 57, 'Salihuddin', 'aktiv', 'TENAGA KONTRAK', '', 60, '0', 1),
(86, 58, 'Muh. Natsir R', 'aktiv', 'TENAGA KONTRAK', '', 60, '0', 1),
(87, 59, 'Hasanuddin', 'aktiv', 'TENAGA KONTRAK', '', 60, '0', 1),
(88, 36, 'Ansar Dg. Tobo', 'aktiv', 'TENAGA KONTRAK', '', 60, '0', 1),
(89, 37, 'A. Rinaldi', 'aktiv', 'TENAGA KONTRAK', '', 60, '0', 1),
(90, 8, 'Siera Maulida Asrin', 'aktiv', 'SUBBAG. UMUM', '', 60, '0', 1),
(91, 21, 'Khaidir', 'aktiv', 'SEKSI PROGRAM DAN INFORMASI', '', 45, '0', 1),
(92, 67, 'Zulfikar', 'aktiv', 'TENAGA KONTRAK', '', 45, '0', 1),
(93, 1500, 'Firga Jafar', 'aktiv', 'SUBBAG. UMUM', '', 45, '0', 1),
(94, 1501, 'Anwar', 'aktiv', 'SUBBAG. UMUM', '', 45, '0', 1),
(95, 1503, 'Hukmiah Arif', 'aktiv', 'WIDYAISWARA', '', 15, '5cef55d001778', 1),
(96, 234, 'Arifudin', 'aktiv', 'WIDYAISWARA', '', 15, '5cef55d001778', 1),
(97, 81, 'A. Risdawati Ap', 'aktiv', 'TENAGA KONTRAK', '', 15, '5cef55d001778', 1),
(98, 231, 'Andi Mu\'min Ap', 'aktiv', 'TENAGA KONTRAK', '', 15, '5cef55d001778', 1),
(99, 233, 'Eva Nurlail', 'aktiv', 'TENAGA KONTRAK', '', 15, '5cef55d001778', 1),
(100, 77, 'Aeril Imrat', 'aktiv', 'TENAGA KONTRAK', '', 15, '5cef55d001778', 1),
(101, 79, 'Nur Anugrah Ilahi', 'aktiv', 'TENAGA KONTRAK', '', 15, '5cef55d001778', 1),
(102, 80, 'Ahmad Rismal', 'aktiv', 'TENAGA KONTRAK', '', 15, '5cef55d001778', 1),
(103, 74, 'Firman', 'aktiv', '', '', 15, '5cef55d001778', 1),
(104, 75, 'A. Bambang Fajar', 'aktiv', '', '', 15, '5cef55d001778', 1),
(105, 76, 'Abd. Jalil', 'aktiv', 'TENAGA KONTRAK', '', 15, '5cef55d001778', 1),
(106, 78, 'Lizha Dwi Mulya P', 'aktiv', 'TENAGA KONTRAK', '', 15, '5cef55d001778', 1),
(107, 73, 'Muh. Rizal Mattawang', 'aktiv', 'TENAGA KONTRAK', '', 15, '5cef55d001778', 1),
(108, 83, 'Samsul Rizal', 'aktiv', 'TENAGA KONTRAK', '', 15, '5cef55d001778', 1),
(109, 82, 'Nursanti A', 'akitv', 'TENAGA KONTRAK', '', 100, '0', 1),
(110, 1019, 'Retno Yuniarmala Pratiwi', 'aktiv', 'TENAGA KONTRAK', '', 15, '5cef55d001778', 1),
(111, 112, 'Wardirianto', 'aktiv', 'TENAGA KONTRAK', '', 15, '5cef55d001778', 1),
(112, 206, 'Muhammad Andy Siswanto', 'akitv', 'TENAGA KONTRAK', '', 100, '0', 1),
(113, 204, 'Andi Arman Arsyad', 'aktiv', 'TENAGA KONTRAK', '', 15, '5cef55d001778', 1),
(114, 203, 'Azhar Waliullah Syafir', 'aktiv', 'TENAGA KONTRAK', '', 15, '5cef55d001778', 1),
(115, 115, 'Andi Guntur', 'aktiv', '', '', 15, '5cef55d001778', 1),
(116, 116, 'Jauri Firdaus', 'aktiv', '', '', 105, '0', 1),
(117, 114, 'Alfian Jufri', 'aktiv', 'TENAGA KONTRAK', '', 105, '0', 1),
(118, 113, 'Risnawati', 'aktiv', 'TENAGA KONTRAK', '', 105, '0', 1),
(119, 1020, 'Ahkam Zubair', 'aktiv', 'WIDYAISWARA', '', 105, '0', 1),
(120, 1505, 'Magisrahayu', 'aktiv', 'WIDYAISWARA', '', 105, '0', 1),
(121, 63, 'Albi Alfian', 'aktiv', 'TENAGA KONTRAK', '', 105, '0', 1),
(122, 1031, 'Thaha', 'aktiv', 'WIDYAISWARA', '', 105, '0', 1),
(123, 1033, 'Abdul Waqif', 'aktiv', 'WIDYAISWARA', '', 105, '0', 1),
(124, 1032, 'Ahmad', 'aktiv', 'WIDYAISWARA', '', 105, '0', 1),
(125, 1507, 'Irlidiya', 'aktiv', 'WIDYAISWARA', '', 105, '0', 1),
(126, 235, 'Maqfirah Nur Arifin', 'aktiv', 'TENAGA KONTRAK', '', 105, '0', 1),
(127, 236, 'Yun Setiani Putri', 'aktiv', 'TENAGA KONTRAK', '', 105, '0', 1),
(128, 1508, 'Andi Ummi Rahmah', 'aktiv', 'TENAGA KONTRAK', '', 105, '0', 1),
(129, 1506, 'Syarifuddin', 'aktiv', 'SUBBAG. UMUM', '', 105, '0', 1),
(130, 238, 'Sumarlin', 'aktiv', 'TENAGA KONTRAK', '', 75, '0', 1),
(131, 1509, 'Febriyani Ramayanti Rahman', 'aktiv', 'SUBBAG. UMUM', '', 105, '0', 1),
(132, 1021, 'Hijrah', 'aktiv', '', '', 105, '0', 1),
(133, 1022, 'Nurul Khusaimah', 'aktiv', '', '', 105, '0', 1),
(134, 1512, 'Irwan', 'aktiv', 'MANAJEMEN', '', 105, '0', 1),
(135, 1511, 'Ahmad Miswar', 'aktiv', 'SUBBAG. UMUM', '', 105, '0', 1),
(136, 1510, 'Risna Amriani', 'aktiv', 'SEKSI PENINGKATAN', '', 105, '0', 1),
(137, 1513, 'Nurkhalis Latif', 'aktiv', 'SUBBAG. UMUM', '', 105, '0', 1),
(138, 1514, 'Hasnawati', 'aktiv', 'SEKSI PENINGKATAN KOMPETENSI', '', 105, '0', 1),
(139, 16, 'Moch Rofik Mochaimin', 'aktiv', 'SUBBAG. UMUM', '', 105, '0', 1),
(140, 17, 'Muhammad Sufi Zulkarnaen', 'aktiv', 'SUBBAG. UMUM', '', 105, '0', 1),
(141, 68, 'Aldi Efendi', 'aktiv', 'TENAGA KONTRAK', '', 105, '0', 1),
(142, 64, 'Suwarwin', 'aktiv', 'TENAGA KONTRAK', '', 105, '0', 1),
(143, 65, 'Makhmuddin', 'aktiv', 'TENAGA KONTRAK', '', 105, '0', 1),
(144, 66, 'A. Muh. Ardiansyah', 'aktiv', '', '', 105, '0', 1),
(145, 50, 'Dg. Nia', 'aktiv', '', '', 105, '0', 1),
(146, 72, 'Rama Halis Halidi', 'aktiv', 'TENAGA KONTRAK', '', 105, '0', 1),
(147, 232, 'Ahmad Mauluddin', 'aktiv', '', '', 105, '0', 1),
(148, 240, 'Jufri', 'aktiv', 'TENAGA KONTRAK', '', 105, '0', 1),
(149, 1519, 'Andi Muhammad Zuhdy', 'aktiv', 'SUBBAG. UMUM', '', 105, '0', 1),
(150, 1515, 'Muhammad Syahrir', 'aktiv', 'SEKSI PENINGKATAN KOMPETENSI', '', 105, '0', 1),
(151, 1521, 'Muhammad Abdi', 'akitv', 'SUBBAG. UMUM', '', 100, '0', 1),
(152, 1517, 'Andi Nirma', 'aktiv', 'SEKSI PROGRAM DAN INFORMASI', '', 105, '0', 1),
(153, 1520, 'Andi Asmawadi', 'aktiv', 'SUBBAG. UMUM', '', 105, '0', 1),
(154, 1518, 'Makmur Musma', 'aktiv', 'SEKSI PENINGKATAN KOMPETENSI', '', 105, '0', 1),
(155, 1522, 'Rakhmat Syam', 'aktiv', 'SEKSI PENINGKATAN KOMPETENSI', '', 105, '0', 1);

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
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `devisi`
--
ALTER TABLE `devisi`
  MODIFY `devisi_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `kepanitiaan`
--
ALTER TABLE `kepanitiaan`
  MODIFY `kepanitiaan_id` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT untuk tabel `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
