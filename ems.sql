-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Waktu pembuatan: 30 Jul 2019 pada 01.54
-- Versi server: 5.7.26
-- Versi PHP: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ems`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `equipment_type`
--

CREATE TABLE `equipment_type` (
  `id` int(11) NOT NULL,
  `type` varchar(512) DEFAULT NULL,
  `brand` varchar(512) DEFAULT NULL,
  `series` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `equipment_type`
--

INSERT INTO `equipment_type` (`id`, `type`, `brand`, `series`) VALUES
(1, 'Site', 'Generic', 'Generic'),
(2, 'AC', 'Generic', 'Generic');

-- --------------------------------------------------------

--
-- Struktur dari tabel `managed_object`
--

CREATE TABLE `managed_object` (
  `id` int(11) NOT NULL,
  `name` varchar(512) DEFAULT NULL,
  `eqTypeId` int(11) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `managed_object`
--

INSERT INTO `managed_object` (`id`, `name`, `eqTypeId`, `parentId`) VALUES
(1, 'Area 1', 1, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `perf_counter`
--

CREATE TABLE `perf_counter` (
  `id` int(11) NOT NULL,
  `managedObjId` int(11) DEFAULT NULL,
  `perfObjId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `perf_counter`
--

INSERT INTO `perf_counter` (`id`, `managedObjId`, `perfObjId`) VALUES
(1, 1, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `perf_measurement`
--

CREATE TABLE `perf_measurement` (
  `id` int(11) NOT NULL,
  `perfCounterId` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `perf_measurement`
--

INSERT INTO `perf_measurement` (`id`, `perfCounterId`, `time`, `value`) VALUES
(1, 1, '2019-07-30 00:00:00', 10),
(2, 1, '2019-07-30 00:05:00', 25);

-- --------------------------------------------------------

--
-- Struktur dari tabel `perf_object`
--

CREATE TABLE `perf_object` (
  `id` int(11) NOT NULL,
  `type` varchar(512) DEFAULT NULL,
  `unit` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `perf_object`
--

INSERT INTO `perf_object` (`id`, `type`, `unit`) VALUES
(1, 'Temperature', 'C'),
(2, 'Power', 'W');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `equipment_type`
--
ALTER TABLE `equipment_type`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `managed_object`
--
ALTER TABLE `managed_object`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `perf_counter`
--
ALTER TABLE `perf_counter`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `perf_measurement`
--
ALTER TABLE `perf_measurement`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `perf_object`
--
ALTER TABLE `perf_object`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `equipment_type`
--
ALTER TABLE `equipment_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `managed_object`
--
ALTER TABLE `managed_object`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `perf_counter`
--
ALTER TABLE `perf_counter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `perf_measurement`
--
ALTER TABLE `perf_measurement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `perf_object`
--
ALTER TABLE `perf_object`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
