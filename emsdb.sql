-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Waktu pembuatan: 02 Agu 2019 pada 02.36
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
-- Database: `emsdb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `AccessToken`
--

CREATE TABLE `AccessToken` (
  `id` varchar(255) NOT NULL,
  `ttl` int(11) DEFAULT NULL,
  `scopes` text,
  `created` datetime DEFAULT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `channel`
--

CREATE TABLE `channel` (
  `id` int(11) NOT NULL,
  `label` varchar(512) NOT NULL,
  `sensorTypeId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `channel`
--

INSERT INTO `channel` (`id`, `label`, `sensorTypeId`) VALUES
(1, 'T1', 1),
(2, 'T2', 1),
(3, 'T3', 1),
(4, 'H1', 1),
(5, 'DI1', 1),
(6, 'DI2', 1),
(7, 'IR1', 2),
(8, 'IR2', 2),
(9, 'IR3', 2),
(10, 'I1', 3),
(11, 'I2', 3),
(12, 'I3', 3),
(13, 'I4', 3),
(14, 'I5', 3),
(15, 'I6', 3),
(16, 'O1', 3),
(17, 'O2', 3),
(18, 'O3', 3),
(19, 'O4', 3),
(20, 'O5', 3),
(21, 'O6', 3),
(22, 'T1', 4),
(23, 'DS', 4),
(24, 'CS', 4),
(25, 'TS', 4),
(26, 'LS', 5),
(27, 'DS', 5),
(28, 'KEY', 5),
(29, 'LS', 6),
(30, 'DS', 6),
(31, 'KEY', 6),
(32, 'R-V', 7),
(33, 'R-I', 7),
(34, 'R-VAR', 7),
(35, 'R-WATT', 7),
(38, 'R-PF', 7),
(40, 'S-V', 7),
(42, 'S-I', 7),
(43, 'S-VAR', 7),
(44, 'S-WATT', 7),
(47, 'S-PF', 7),
(49, 'T-V', 7),
(50, 'T-I', 7),
(51, 'T-VAR', 7),
(52, 'T-WATT', 7),
(55, 'T-PF', 7),
(57, 'R1-V', 8),
(58, 'R1-I', 8),
(59, 'R1-VAR', 8),
(60, 'R1-WATT', 8),
(61, 'R1-KWh', 8),
(62, 'R1-KVARh', 8),
(63, 'R1-PF', 8),
(64, 'R1-F', 8),
(65, 'R2-V', 8),
(66, 'R2-I', 8),
(67, 'R2-VAR', 8),
(68, 'R2-WATT', 8),
(69, 'R2-KWh', 8),
(70, 'R2-KVARh', 8),
(71, 'R2-PF', 8),
(72, 'R2-F', 8),
(73, 'R3-V', 8),
(74, 'R3-I', 8),
(75, 'R3-VAR', 8),
(76, 'R3-WATT', 8),
(77, 'R3-KWh', 8),
(78, 'R3-KVARh', 8),
(79, 'R3-PF', 8),
(80, 'R3-F', 8),
(81, 'R4-V', 8),
(82, 'R4-I', 8),
(83, 'R4-VAR', 8),
(84, 'R4-WATT', 8),
(85, 'R4-KWh', 8),
(86, 'R4-KVARh', 8),
(87, 'R4-PF', 8),
(88, 'R4-F', 8),
(89, 'R5-V', 8),
(90, 'R5-I', 8),
(91, 'R5-VAR', 8),
(92, 'R5-WATT', 8),
(93, 'R5-KWh', 8),
(94, 'R5-KVARh', 8),
(95, 'R5-PF', 8),
(96, 'R5-F', 8),
(97, 'R6-V', 8),
(98, 'R6-I', 8),
(99, 'R6-VAR', 8),
(100, 'R6-WATT', 8),
(101, 'R6-KWh', 8),
(102, 'R6-KVARh', 8),
(103, 'R6-PF', 8),
(104, 'R6-F', 8),
(105, 'S1-V', 8),
(106, 'S1-I', 8),
(107, 'SI-VAR', 8),
(108, 'S1-WATT', 8),
(109, 'S1-KWh', 8),
(110, 'S1-KVARh', 8),
(111, 'S1-PF', 8),
(112, 'S1-F', 8),
(113, 'S2-V', 8),
(114, 'S2-I', 8),
(115, 'S2-VAR', 8),
(116, 'S2-WATT', 8),
(117, 'S2-KWh', 8),
(118, 'S2-KVARh', 8),
(119, 'S2-PF', 8),
(120, 'S2-F', 8),
(121, 'S3-V', 8),
(122, 'S3-I', 8),
(123, 'S3-VAR', 8),
(124, 'S3-WATT', 8),
(125, 'S3-KWh', 8),
(126, 'S3-KVARh', 8),
(127, 'S3-PF', 8),
(128, 'S3-F', 8),
(129, 'S4-V', 8),
(130, 'S4-I', 8),
(131, 'S4-VAR', 8),
(132, 'S4-WATT', 8),
(133, 'S4-KWh', 8),
(134, 'S4-KVARh', 8),
(135, 'S4-PF', 8),
(136, 'S4-F', 8),
(137, 'S5-V', 8),
(138, 'S5-I', 8),
(139, 'S5-VAR', 8),
(140, 'S5-WATT', 8),
(141, 'S5-KWh', 8),
(142, 'S5-KVARh', 8),
(143, 'S5-PF', 8),
(144, 'S5-F', 8),
(145, 'S6-V', 8),
(146, 'S6-I', 8),
(147, 'S6-VAR', 8),
(148, 'S6-WATT', 8),
(149, 'S6-KWh', 8),
(150, 'S6-KVARh', 8),
(151, 'S6-PF', 8),
(152, 'S6-F', 8),
(153, 'T1-V', 8),
(154, 'T1-I', 8),
(155, 'T1-VAR', 8),
(156, 'T1-WATT', 8),
(157, 'T1-KWh', 8),
(158, 'T1-KVARh', 8),
(159, 'T1-PF', 8),
(160, 'T1-F', 8),
(161, 'T2-V', 8),
(162, 'T2-1', 8),
(163, 'T2-VAR', 8),
(164, 'T2-WATT', 8),
(165, 'T2-KWh', 8),
(166, 'T2-KVARh', 8),
(167, 'T2-PF', 8),
(168, 'T2-F', 8),
(169, 'T3-V', 8),
(170, 'T3-I', 8),
(171, 'T3-VAR', 8),
(172, 'T3-WATT', 8),
(173, 'T3-KWh', 8),
(174, 'T3-KVARh', 8),
(175, 'T3-PF', 8),
(176, 'T3-F', 8),
(177, 'T4-V', 8),
(178, 'T4-I', 8),
(179, 'T4-VAR', 8),
(180, 'T4-WATT', 8),
(181, 'T4-KWh', 8),
(182, 'T4-KVARh', 8),
(183, 'T4-PF', 8),
(184, 'T4-F', 8),
(185, 'T5-V', 8),
(186, 'T5-I', 8),
(187, 'T5-VAR', 8),
(188, 'T5-WATT', 8),
(189, 'T5-KWh', 8),
(190, 'T5-KVARh', 8),
(191, 'T5-PF', 8),
(192, 'T5-F', 8),
(193, 'T6-V', 8),
(194, 'T6-I', 8),
(195, 'T6-VAR', 8),
(196, 'T6-WATT', 8),
(197, 'T6-KWh', 8),
(198, 'T6-KVARh', 8),
(199, 'T6-PF', 8),
(200, 'T6-F', 8),
(201, 'MAIN_CHANNEL', 9),
(202, 'SUB_CHANNEL', 9),
(203, 'R-VA', 7),
(204, 'S-VA', 7),
(205, 'T-VA', 7),
(206, 'AVG-I', 7),
(207, 'AVG-V', 7),
(208, 'TOT-PF', 7),
(210, 'TOT-VAR', 7),
(211, 'TOT-VA', 7),
(212, 'DMD-KWH', 7),
(213, 'DMD-KVARH', 7),
(214, 'FREQ', 7),
(215, 'TOT-WATT', 7),
(216, 'I-S', 10),
(217, 'RunningHours', 10),
(218, 'V-R', 10),
(219, 'V-S', 10),
(220, 'V-T', 10),
(221, 'I-R', 10),
(222, 'I-T', 10),
(223, 'PF-R', 10),
(224, 'PF-S', 10),
(225, 'PF-T', 10),
(226, 'W', 10),
(227, 'WH', 10),
(228, 'RPM', 10),
(229, 'CoolantLevel', 10),
(230, 'OilPressure', 10),
(231, 'CollantTemperature', 10),
(232, 'Frequency', 10),
(233, 'BatteryVoltage', 10),
(234, 'NumberStart', 10),
(235, 'EngineStatus', 10),
(236, 'FuelComsumed', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `label` varchar(512) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `zoom` int(11) NOT NULL,
  `provinceId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `city`
--

INSERT INTO `city` (`id`, `label`, `latitude`, `longitude`, `zoom`, `provinceId`) VALUES
(1, 'Bandung', -6.917464, 107.619125, 11, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `label` varchar(512) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `zoom` int(11) NOT NULL,
  `cityId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `district`
--

INSERT INTO `district` (`id`, `label`, `latitude`, `longitude`, `zoom`, `cityId`) VALUES
(1, 'Cibeunying', -6.88149, 107.6469, 15, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `containerId` varchar(255) NOT NULL,
  `containerName` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `log` longtext NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mappingPerformance`
--

CREATE TABLE `mappingPerformance` (
  `id` int(11) NOT NULL,
  `mappingSensorId` int(11) NOT NULL,
  `counterId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mappingPerformance`
--

INSERT INTO `mappingPerformance` (`id`, `mappingSensorId`, `counterId`) VALUES
(3, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mappingSensor`
--

CREATE TABLE `mappingSensor` (
  `id` int(11) NOT NULL,
  `sensorId` int(11) NOT NULL,
  `managedObjId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mappingSensor`
--

INSERT INTO `mappingSensor` (`id`, `sensorId`, `managedObjId`, `channelId`) VALUES
(1, 1, 2, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `permission`
--

CREATE TABLE `permission` (
  `id` int(11) NOT NULL,
  `label` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `position`
--

CREATE TABLE `position` (
  `id` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `managedObjId` int(11) NOT NULL,
  `top` int(11) NOT NULL,
  `left` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `position`
--

INSERT INTO `position` (`id`, `siteId`, `managedObjId`, `top`, `left`) VALUES
(1, 1, 1, 50, 50),
(2, 1, 2, 50, 50),
(3, 1, 3, 50, 50),
(4, 1, 4, 50, 50);

-- --------------------------------------------------------

--
-- Struktur dari tabel `province`
--

CREATE TABLE `province` (
  `id` int(11) NOT NULL,
  `label` varchar(512) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `zoom` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `province`
--

INSERT INTO `province` (`id`, `label`, `latitude`, `longitude`, `zoom`) VALUES
(1, 'Jawa Barat', -6.86735, 107.604332, 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `roleType` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rolepermission`
--

CREATE TABLE `rolepermission` (
  `id` int(11) NOT NULL,
  `roleId` int(11) DEFAULT NULL,
  `permissionId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sensor`
--

CREATE TABLE `sensor` (
  `id` int(11) NOT NULL,
  `address` varchar(512) NOT NULL,
  `sensorTypeId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sensor`
--

INSERT INTO `sensor` (`id`, `address`, `sensorTypeId`, `siteId`) VALUES
(1, '127.0.0.1', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sensorType`
--

CREATE TABLE `sensorType` (
  `id` int(11) NOT NULL,
  `label` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sensorType`
--

INSERT INTO `sensorType` (`id`, `label`) VALUES
(1, 'TH31CC'),
(2, 'IR03CC'),
(3, 'IO6CC'),
(4, 'CLR01W'),
(5, 'ELCK01CC'),
(6, 'ELCK01BT'),
(7, 'KWH301U'),
(8, 'KWH306CC'),
(9, 'HIKVISION'),
(10, 'GENSET');

-- --------------------------------------------------------

--
-- Struktur dari tabel `site`
--

CREATE TABLE `site` (
  `id` int(11) NOT NULL,
  `label` varchar(512) NOT NULL,
  `address` varchar(512) NOT NULL,
  `zoom` int(11) NOT NULL,
  `typeSite` varchar(512) NOT NULL,
  `districtId` int(11) NOT NULL,
  `managedObjId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `site`
--

INSERT INTO `site` (`id`, `label`, `address`, `zoom`, `typeSite`, `districtId`, `managedObjId`) VALUES
(1, 'BojongKonengOffice', 'Komp. Griya Bukit Mas, Cibeunying, Cimenyan, Bandung', 16, 'End Site', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(512) NOT NULL,
  `password` varchar(512) NOT NULL,
  `name` varchar(512) NOT NULL,
  `email` varchar(512) NOT NULL,
  `realm` varchar(512) DEFAULT NULL,
  `emailVerified` tinyint(1) DEFAULT NULL,
  `verificationToken` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `userrole`
--

CREATE TABLE `userrole` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `AccessToken`
--
ALTER TABLE `AccessToken`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `channel`
--
ALTER TABLE `channel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mappingPerformance`
--
ALTER TABLE `mappingPerformance`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mappingSensor`
--
ALTER TABLE `mappingSensor`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rolepermission`
--
ALTER TABLE `rolepermission`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sensor`
--
ALTER TABLE `sensor`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sensorType`
--
ALTER TABLE `sensorType`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `userrole`
--
ALTER TABLE `userrole`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `channel`
--
ALTER TABLE `channel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT untuk tabel `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mappingPerformance`
--
ALTER TABLE `mappingPerformance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `mappingSensor`
--
ALTER TABLE `mappingSensor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `permission`
--
ALTER TABLE `permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `position`
--
ALTER TABLE `position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `province`
--
ALTER TABLE `province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `rolepermission`
--
ALTER TABLE `rolepermission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `sensor`
--
ALTER TABLE `sensor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sensorType`
--
ALTER TABLE `sensorType`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `site`
--
ALTER TABLE `site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `userrole`
--
ALTER TABLE `userrole`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
