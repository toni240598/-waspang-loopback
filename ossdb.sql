-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Waktu pembuatan: 30 Jul 2019 pada 11.54
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
-- Database: `ossdb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alarm`
--

CREATE TABLE `alarm` (
  `id` varchar(255) NOT NULL,
  `ack_time` datetime DEFAULT NULL,
  `ack_user` varchar(255) DEFAULT NULL,
  `act_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `severity` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `alarm_obj_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `alarm`
--

INSERT INTO `alarm` (`id`, `ack_time`, `ack_user`, `act_time`, `description`, `severity`, `type`, `alarm_obj_id`) VALUES
('1', '2019-07-08 07:07:00', 'admin', '2019-06-26 00:00:00', 'CCR', 2, 'Security', 2),
('9834221230', NULL, NULL, '2019-07-08 08:00:00', 'Possible break in at Dago!', 3, 'Security', 4),
('9834221232', NULL, NULL, '2019-07-08 08:00:00', 'Possible break in at Dago!', 3, 'Security', 4),
('98342310', '2019-07-12 07:24:11', 'admin', '2019-07-08 08:00:00', 'Possible break in at Dago!', 3, 'Security', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `disc_object`
--

CREATE TABLE `disc_object` (
  `id` int(11) NOT NULL,
  `latitude` decimal(9,6) NOT NULL,
  `longitude` decimal(9,6) NOT NULL,
  `name` varchar(48) NOT NULL,
  `eq_type_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `disc_object`
--

INSERT INTO `disc_object` (`id`, `latitude`, `longitude`, `name`, `eq_type_id`, `parent_id`) VALUES
(1, '-6.263623', '106.891586', 'BandaraHalim', 1, NULL),
(2, '-6.263623', '106.891586', 'PAPI ( P1/P2 )', 2, 1),
(4, '-6.263623', '106.891586', 'RW Edge Ele Light ( R1 )', 2, 1),
(5, '-6.263623', '106.891586', 'RW Edge Ele Light ( R2 )', 2, 1),
(6, '-6.263623', '106.891586', 'Taxiway Ele Light ( T1 )', 2, 1),
(7, '-6.263623', '106.891586', 'Apron Ele Light ( T2 )', 2, 1),
(8, '-6.263623', '106.891586', 'Approach Ele Light ( A1 )', 2, 1),
(9, '-6.263623', '106.891586', 'Appraoch Inset Light ( A2 )', 2, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `equipment_type`
--

CREATE TABLE `equipment_type` (
  `id` int(11) NOT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `series` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `equipment_type`
--

INSERT INTO `equipment_type` (`id`, `brand`, `series`, `type`) VALUES
(1, 'generic', 'generic', 'Site'),
(2, 'generic', 'generic', 'Lamp');

-- --------------------------------------------------------

--
-- Struktur dari tabel `historical_alarm`
--

CREATE TABLE `historical_alarm` (
  `id` varchar(255) NOT NULL,
  `ack_time` datetime DEFAULT NULL,
  `ack_user` varchar(255) DEFAULT NULL,
  `act_time` datetime DEFAULT NULL,
  `clear_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `severity` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `alarm_obj_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `historical_alarm`
--

INSERT INTO `historical_alarm` (`id`, `ack_time`, `ack_user`, `act_time`, `clear_time`, `description`, `severity`, `type`, `alarm_obj_id`) VALUES
('', '2019-07-02 00:00:00', 'itadmin', '2019-07-01 00:00:00', '2019-07-01 00:00:00', 'r1 light', 2, 'Severity', 4),
('1', '2019-07-02 00:00:00', 'user', '2019-06-24 00:00:00', '2019-06-26 10:00:00', 'papi light', 2, 'Security', 2),
('2', '2019-07-02 00:00:00', 'ituser', '2019-07-01 00:00:00', '2019-07-02 00:00:00', 'r1 light', 2, 'Severity', 4),
('9834221230', NULL, NULL, '2019-07-08 08:00:00', '2019-07-08 08:00:00', 'Possible break in at Dago!', 3, 'Security', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `perf_counter`
--

CREATE TABLE `perf_counter` (
  `id` int(11) NOT NULL,
  `disc_obj_id` int(11) DEFAULT NULL,
  `perf_obj_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `perf_counter`
--

INSERT INTO `perf_counter` (`id`, `disc_obj_id`, `perf_obj_id`) VALUES
(3, 2, 1),
(4, 2, 2),
(2, 4, 1),
(1, 4, 2),
(5, 5, 1),
(6, 5, 2),
(7, 6, 1),
(8, 6, 2),
(9, 7, 1),
(10, 7, 2),
(11, 8, 1),
(12, 8, 2),
(13, 9, 1),
(14, 9, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `perf_measurement`
--

CREATE TABLE `perf_measurement` (
  `id` bigint(20) NOT NULL,
  `measurement_time` datetime NOT NULL,
  `measurement_value` decimal(9,3) NOT NULL,
  `perf_ctr_id` int(11) DEFAULT NULL,
  `period` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `perf_measurement`
--

INSERT INTO `perf_measurement` (`id`, `measurement_time`, `measurement_value`, `perf_ctr_id`, `period`) VALUES
(7, '2019-07-12 14:00:00', '1.000', 1, 0),
(8, '2019-06-11 16:05:00', '0.000', 1, 0),
(9, '2019-06-11 16:05:00', '0.000', 1, 0),
(10, '2019-06-11 16:05:00', '0.000', 1, 0),
(11, '2019-06-11 16:05:00', '0.000', 1, 0),
(12, '2019-06-11 16:05:00', '0.000', 1, 0),
(13, '2019-06-11 16:05:00', '1.000', 1, 0),
(14, '2019-06-11 16:05:00', '1.000', 1, 0),
(15, '2019-06-11 16:05:00', '0.000', 1, 0),
(16, '2019-06-11 16:05:00', '1.000', 1, 0),
(17, '2019-07-15 16:20:00', '1.000', 1, 0),
(18, '2019-07-15 09:20:00', '1.000', 1, 0),
(19, '2019-07-15 09:20:00', '1.000', 1, 0),
(20, '2019-07-15 09:20:00', '1.000', 2, 0),
(21, '2019-07-15 09:20:00', '0.000', 2, 0),
(22, '2019-07-15 10:18:00', '1.000', 2, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `perf_object`
--

CREATE TABLE `perf_object` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `period` int(11) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `perf_object`
--

INSERT INTO `perf_object` (`id`, `name`, `period`, `unit`) VALUES
(1, 'IO', 0, NULL),
(2, 'Current', 0, 'A');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alarm`
--
ALTER TABLE `alarm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK7r0xbtbofxoi49vokxk4di108` (`alarm_obj_id`);

--
-- Indeks untuk tabel `disc_object`
--
ALTER TABLE `disc_object`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_LOCATION` (`latitude`,`longitude`),
  ADD KEY `FKfrpjy6hmda9u6o5337wjt6r94` (`eq_type_id`),
  ADD KEY `FKpse6gwsxxb8wp6wtemg2yald5` (`parent_id`);

--
-- Indeks untuk tabel `equipment_type`
--
ALTER TABLE `equipment_type`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `historical_alarm`
--
ALTER TABLE `historical_alarm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK7y88hlkj9sbs2na2v836vff9v` (`alarm_obj_id`);

--
-- Indeks untuk tabel `perf_counter`
--
ALTER TABLE `perf_counter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKo2w2ikgebrc74bplyx750pt3t` (`disc_obj_id`,`perf_obj_id`),
  ADD KEY `FKg1bel60hnlinx3ne07li43fj` (`perf_obj_id`);

--
-- Indeks untuk tabel `perf_measurement`
--
ALTER TABLE `perf_measurement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKtq062bfo185jqxl96qr96piwd` (`perf_ctr_id`);

--
-- Indeks untuk tabel `perf_object`
--
ALTER TABLE `perf_object`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `disc_object`
--
ALTER TABLE `disc_object`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `equipment_type`
--
ALTER TABLE `equipment_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `perf_counter`
--
ALTER TABLE `perf_counter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `perf_measurement`
--
ALTER TABLE `perf_measurement`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `perf_object`
--
ALTER TABLE `perf_object`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `alarm`
--
ALTER TABLE `alarm`
  ADD CONSTRAINT `FK7r0xbtbofxoi49vokxk4di108` FOREIGN KEY (`alarm_obj_id`) REFERENCES `disc_object` (`id`);

--
-- Ketidakleluasaan untuk tabel `disc_object`
--
ALTER TABLE `disc_object`
  ADD CONSTRAINT `FKfrpjy6hmda9u6o5337wjt6r94` FOREIGN KEY (`eq_type_id`) REFERENCES `equipment_type` (`id`),
  ADD CONSTRAINT `FKpse6gwsxxb8wp6wtemg2yald5` FOREIGN KEY (`parent_id`) REFERENCES `disc_object` (`id`);

--
-- Ketidakleluasaan untuk tabel `historical_alarm`
--
ALTER TABLE `historical_alarm`
  ADD CONSTRAINT `FK7y88hlkj9sbs2na2v836vff9v` FOREIGN KEY (`alarm_obj_id`) REFERENCES `disc_object` (`id`);

--
-- Ketidakleluasaan untuk tabel `perf_counter`
--
ALTER TABLE `perf_counter`
  ADD CONSTRAINT `FKg1bel60hnlinx3ne07li43fj` FOREIGN KEY (`perf_obj_id`) REFERENCES `perf_object` (`id`),
  ADD CONSTRAINT `FKmxbln594onliom1pyda3bkbb6` FOREIGN KEY (`disc_obj_id`) REFERENCES `disc_object` (`id`);

--
-- Ketidakleluasaan untuk tabel `perf_measurement`
--
ALTER TABLE `perf_measurement`
  ADD CONSTRAINT `FKtq062bfo185jqxl96qr96piwd` FOREIGN KEY (`perf_ctr_id`) REFERENCES `perf_counter` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
