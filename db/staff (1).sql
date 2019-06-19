-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Waktu pembuatan: 29 Bulan Mei 2019 pada 01.43
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `staff`
--

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
  `devisi_id` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `staff`
--

INSERT INTO `staff` (`staff_id`, `no_absen`, `name`, `status`, `jabatan`, `keterangan`, `prioritas`, `panitia_id`, `devisi_id`) VALUES
(3, 56, 'bacoke', 'aktiv', 'asisten payabo', 'sdfsdf', 100, '0', '0'),
(4, 85, 'taqwa', 'aktiv', 'menejer', '65hynyn', 100, '0', '0'),
(5, 0, 'becce', 'aktiv', 'itumi', 'wfwewevw', 100, '0', '0'),
(6, 0, 'baco', 'nonaktiv', 'mulung', 'sadasaawd', 100, '0', '0'),
(7, 0, 'bacoo', 'aktiv', 'boss', 'wedwfwefw', 100, '1', '0'),
(8, 0, 'namaku', 'aktiv', 'penyapu', 'apakau', 10, '0', '0'),
(9, 0, 'yolo', 'aktiv', 'itumi', 'sadasd', 100, '1', '0'),
(10, 89, 'russa', 'nonaktiv', 'asisten payabo', 'sdawad', 100, '1', '0'),
(31, 15, 'Ma\'mur', 'aktiv', 'SUBBAG. UMUM', '', 100, '', ''),
(32, 0, '', '', '', '', 0, '', ''),
(33, 14, 'Andri Warsono', 'aktiv', 'SEKSI PENINGKATAN KOMPETENSI', '', 100, '', ''),
(34, 14, 'Andri Warsono', 'aktiv', 'SEKSI PENINGKATAN KOMPETENSI', '', 100, '', ''),
(35, 13, 'Nurul Hayati', 'aktiv', 'SUBBAG. UMUM', '', 100, '', ''),
(37, 12, 'Jamaluddin Tani', 'aktiv', 'SUBBAG. UMUM', '', 100, '', ''),
(38, 10, 'Nazaruddin', 'aktiv', 'SUBBAG. UMUM', '', 100, '', ''),
(41, 9, 'Darwis M', 'aktiv', 'MANAJEMEN', '', 100, '', ''),
(42, 11, 'Al Azhar', 'aktiv', 'SUBBAG. UMUM', '', 100, '', ''),
(43, 7, 'Liyani', 'aktiv', 'SUBBAG. UMUM', '', 100, '', ''),
(44, 6, 'Karina Lolo Manik', 'aktiv', 'SEKSI PENINGKATAN', '', 100, '', ''),
(45, 5, 'Syafaruddin', 'aktiv', 'SUBBAG. UMUM', '', 100, '', ''),
(46, 4, 'Yopi Sopian', 'aktiv', 'MANAJEMEN', '', 100, '', ''),
(47, 3, 'Mahfud Junaid', 'aktiv', '', '', 100, '', ''),
(48, 2, 'Suwadi', 'aktiv', 'MANAJEMEN', '', 100, '', ''),
(49, 32, 'Imran', 'aktiv', 'WIDYAISWARA', '', 100, '', ''),
(50, 31, 'Muhammad Hasri', 'aktiv', 'WIDYAISWARA', '', 100, '', ''),
(51, 1, 'Rusdi', 'aktiv', '', '', 100, '', ''),
(52, 1504, 'Suryanti', 'aktiv', 'SUBBAG. UMUM', '', 100, '', ''),
(53, 69, 'Hasrullah', 'aktiv', '', '', 100, '', ''),
(54, 19, 'Janwar', 'aktiv', 'SUBBAG. UMUM', '', 100, '', ''),
(55, 20, 'Singgih Afifa Putra', 'aktiv', 'SUBBAG. UMUM', '', 100, '', ''),
(56, 22, 'Dwi Bagus Fitriyanto', 'aktiv', 'SEKSI PROGRAM DAN INFORMASI', '', 100, '', ''),
(57, 24, 'Descy Arfiyani', 'aktiv', 'SEKSI PROGRAM DAN INFORMASI', '', 100, '', ''),
(58, 25, 'Anshari Marewa', 'aktiv', 'SUBBAG. UMUM', '', 100, '', ''),
(59, 26, 'Robert Polikarpus', 'aktiv', 'SEKSI PENINGKATAN KOMPETENSI', '', 100, '', ''),
(60, 27, 'Destilawaty', 'aktiv', 'SEKSI PROGRAM DAN INFORMASI', '', 100, '', ''),
(61, 28, 'Novi Nurlaela', 'aktiv', 'SEKSI PENINGKATAN KOMPETENSI', '', 100, '', ''),
(62, 29, 'Santia Gardenia Widyaswari', 'aktiv', 'WIDYAISWARA', '', 100, '', ''),
(63, 30, 'Sri Rini Dwiari', 'aktiv', 'WIDYAISWARA', '', 100, '', ''),
(64, 33, 'Amriani', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(65, 34, 'Zein Rifal', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(66, 35, 'Murni Dg. Te\'ne', 'aktiv', '', '', 100, '', ''),
(67, 38, 'Sudirman Rante Padang', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(68, 39, 'Hasnawati', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(69, 40, 'Ahmad', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(70, 41, 'Rabai Dg. Lurang', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(71, 42, 'Kawali Dg. Nyomba', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(72, 43, 'Tambaru Dg. Sikki', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(73, 44, 'Basri Dg. Tika', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(74, 45, 'Abdul Kadir Dg. Tiro', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(75, 46, 'Jumais', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(76, 47, 'Supriyanto', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(77, 48, 'Yumran', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(78, 49, 'Ahmad Pance Dg. Yerang', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(79, 60, 'Syamsul Hidayat', 'aktiv', '', '', 100, '', ''),
(80, 51, 'Hamka A. Rusdi', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(81, 52, 'Rudi', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(82, 53, 'Firly Irham', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(83, 54, 'Faizal Reza Nurzeha', 'aktiv', '', '', 100, '', ''),
(84, 61, 'Muhammad Ilyas', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(85, 57, 'Salihuddin', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(86, 58, 'Muh. Natsir R', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(87, 59, 'Hasanuddin', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(88, 36, 'Ansar Dg. Tobo', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(89, 37, 'A. Rinaldi', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(90, 8, 'Siera Maulida Asrin', 'aktiv', 'SUBBAG. UMUM', '', 100, '', ''),
(91, 21, 'Khaidir', 'aktiv', 'SEKSI PROGRAM DAN INFORMASI', '', 100, '', ''),
(92, 67, 'Zulfikar', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(93, 1500, 'Firga Jafar', 'aktiv', 'SUBBAG. UMUM', '', 100, '', ''),
(94, 1501, 'Anwar', 'aktiv', 'SUBBAG. UMUM', '', 100, '', ''),
(95, 1503, 'Hukmiah Arif', 'aktiv', 'WIDYAISWARA', '', 100, '', ''),
(96, 234, 'Arifudin', 'aktiv', 'WIDYAISWARA', '', 100, '', ''),
(97, 81, 'A. Risdawati Ap', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(98, 231, 'Andi Mu\'min Ap', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(99, 233, 'Eva Nurlail', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(100, 77, 'Aeril Imrat', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(101, 79, 'Nur Anugrah Ilahi', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(102, 80, 'Ahmad Rismal', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(103, 74, 'Firman', 'aktiv', '', '', 100, '', ''),
(104, 75, 'A. Bambang Fajar', 'aktiv', '', '', 100, '', ''),
(105, 76, 'Abd. Jalil', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(106, 78, 'Lizha Dwi Mulya P', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(107, 73, 'Muh. Rizal Mattawang', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(108, 83, 'Samsul Rizal', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(109, 82, 'Nursanti A', 'akitv', 'TENAGA KONTRAK', '', 100, '', ''),
(110, 1019, 'Retno Yuniarmala Pratiwi', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(111, 112, 'Wardirianto', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(112, 206, 'Muhammad Andy Siswanto', 'akitv', 'TENAGA KONTRAK', '', 100, '', ''),
(113, 204, 'Andi Arman Arsyad', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(114, 203, 'Azhar Waliullah Syafir', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(115, 115, 'Andi Guntur', 'aktiv', '', '', 100, '', ''),
(116, 116, 'Jauri Firdaus', 'aktiv', '', '', 100, '', ''),
(117, 114, 'Alfian Jufri', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(118, 113, 'Risnawati', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(119, 1020, 'Ahkam Zubair', 'aktiv', 'WIDYAISWARA', '', 100, '', ''),
(120, 1505, 'Magisrahayu', 'aktiv', 'WIDYAISWARA', '', 100, '', ''),
(121, 63, 'Albi Alfian', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(122, 1031, 'Thaha', 'aktiv', 'WIDYAISWARA', '', 100, '', ''),
(123, 1033, 'Abdul Waqif', 'aktiv', 'WIDYAISWARA', '', 100, '', ''),
(124, 1032, 'Ahmad', 'aktiv', 'WIDYAISWARA', '', 100, '', ''),
(125, 1507, 'Irlidiya', 'aktiv', 'WIDYAISWARA', '', 100, '', ''),
(126, 235, 'Maqfirah Nur Arifin', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(127, 236, 'Yun Setiani Putri', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(128, 1508, 'Andi Ummi Rahmah', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(129, 1506, 'Syarifuddin', 'aktiv', 'SUBBAG. UMUM', '', 100, '', ''),
(130, 238, 'Sumarlin', 'TENAGA KONTRAK', '', '', 100, '', ''),
(131, 1509, 'Febriyani Ramayanti Rahman', 'aktiv', 'SUBBAG. UMUM', '', 100, '', ''),
(132, 1021, 'Hijrah', 'aktiv', '', '', 100, '', ''),
(133, 1022, 'Nurul Khusaimah', 'aktiv', '', '', 100, '', ''),
(134, 1512, 'Irwan', 'aktiv', 'MANAJEMEN', '', 100, '', ''),
(135, 1511, 'Ahmad Miswar', 'aktiv', 'SUBBAG. UMUM', '', 100, '', ''),
(136, 1510, 'Risna Amriani', 'aktiv', 'SEKSI PENINGKATAN', '', 100, '', ''),
(137, 1513, 'Nurkhalis Latif', 'aktiv', 'SUBBAG. UMUM', '', 100, '', ''),
(138, 1514, 'Hasnawati', 'aktiv', 'SEKSI PENINGKATAN KOMPETENSI', '', 100, '', ''),
(139, 16, 'Moch Rofik Mochaimin', 'aktiv', 'SUBBAG. UMUM', '', 100, '', ''),
(140, 17, 'Muhammad Sufi Zulkarnaen', 'aktiv', 'SUBBAG. UMUM', '', 100, '', ''),
(141, 68, 'Aldi Efendi', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(142, 64, 'Suwarwin', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(143, 65, 'Makhmuddin', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(144, 66, 'A. Muh. Ardiansyah', 'aktiv', '', '', 100, '', ''),
(145, 50, 'Dg. Nia', 'aktiv', '', '', 100, '', ''),
(146, 72, 'Rama Halis Halidi', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(147, 232, 'Ahmad Mauluddin', 'aktiv', '', '', 100, '', ''),
(148, 240, 'Jufri', 'aktiv', 'TENAGA KONTRAK', '', 100, '', ''),
(149, 1519, 'Andi Muhammad Zuhdy', 'aktiv', 'SUBBAG. UMUM', '', 100, '', ''),
(150, 1515, 'Muhammad Syahrir', 'aktiv', 'SEKSI PENINGKATAN KOMPETENSI', '', 100, '', ''),
(151, 1521, 'Muhammad Abdi', 'akitv', 'SUBBAG. UMUM', '', 100, '', ''),
(152, 1517, 'Andi Nirma', 'aktiv', 'SEKSI PROGRAM DAN INFORMASI', '', 100, '', ''),
(153, 1520, 'Andi Asmawadi', 'aktiv', 'SUBBAG. UMUM', '', 100, '', ''),
(154, 1518, 'Makmur Musma', 'aktiv', 'SEKSI PENINGKATAN KOMPETENSI', '', 100, '', ''),
(155, 1522, 'Rakhmat Syam', 'aktiv', 'SEKSI PENINGKATAN KOMPETENSI', '', 100, '', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
