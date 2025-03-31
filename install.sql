-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Vært: 127.0.0.1
-- Genereringstid: 22. 09 2021 kl. 22:26:38
-- Serverversion: 10.4.21-MariaDB
-- PHP-version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dev`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `wishy_gifts`
--

CREATE TABLE `wishy_gifts` (
  `gift_id` bigint(20) NOT NULL,
  `gift_image` varchar(255) DEFAULT NULL,
  `gift_name` varchar(255) DEFAULT NULL,
  `gift_qty` int(11) NOT NULL DEFAULT 1,
  `gift_reservations` int(11) NOT NULL DEFAULT 0,
  `gift_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `gift_note` varchar(255) DEFAULT NULL,
  `gift_link` varchar(255) DEFAULT NULL,
  `gift_list` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `wishy_lists`
--

CREATE TABLE `wishy_lists` (
  `list_id` bigint(20) NOT NULL,
  `list_date` datetime DEFAULT NULL,
  `list_title` text DEFAULT NULL,
  `list_subtitle` text DEFAULT NULL,
  `list_link` varchar(255) DEFAULT NULL,
  `list_user` bigint(20) DEFAULT NULL,
  `list_code` varchar(255) NOT NULL,
  `list_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `wish_sessions`
--

CREATE TABLE `wishy_sessions` (
  `session_id` bigint(20) NOT NULL,
  `session_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `session_list` bigint(20) NOT NULL,
  `session_hash` varchar(255) DEFAULT NULL,
  `session_gifts` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `wish_users`
--

CREATE TABLE `wishy_users` (
  `user_id` bigint(20) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_reset` varchar(255) NOT NULL,
  `user_session` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `wish_gifts`
--
ALTER TABLE `wishy_gifts`
  ADD PRIMARY KEY (`gift_id`);

--
-- Indeks for tabel `wishy_lists`
--
ALTER TABLE `wishy_lists`
  ADD PRIMARY KEY (`list_id`);

--
-- Indeks for tabel `wishy_sessions`
--
ALTER TABLE `wishy_sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indeks for tabel `wishy_users`
--
ALTER TABLE `wishy_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `wishy_gifts`
--
ALTER TABLE `wishy_gifts`
  MODIFY `gift_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;

--
-- Tilføj AUTO_INCREMENT i tabel `wishy_lists`
--
ALTER TABLE `wishy_lists`
  MODIFY `list_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;

--
-- Tilføj AUTO_INCREMENT i tabel `wishy_sessions`
--
ALTER TABLE `wishy_sessions`
  MODIFY `session_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;

--
-- Tilføj AUTO_INCREMENT i tabel `wishy_users`
--
ALTER TABLE `wishy_users`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
