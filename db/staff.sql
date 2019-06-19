-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Bulan Mei 2019 pada 17.13
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
(10, 89, 'russa', 'nonaktiv', 'asisten payabo', 'sdawad', 100, '1', '0');

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
  MODIFY `staff_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
