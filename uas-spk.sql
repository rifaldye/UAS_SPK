-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Des 2021 pada 08.21
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas-spk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `interview`
--

CREATE TABLE `interview` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `learn` int(100) NOT NULL,
  `teamwork` int(100) NOT NULL,
  `ethic` int(100) NOT NULL,
  `discipline` int(100) NOT NULL,
  `salary` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `interview`
--

INSERT INTO `interview` (`id`, `user_id`, `learn`, `teamwork`, `ethic`, `discipline`, `salary`) VALUES
(3, 1, 2, 4, 5, 3, 10000000),
(4, 2, 5, 5, 2, 4, 7000000),
(5, 3, 2, 3, 4, 5, 6000000),
(6, 4, 5, 2, 3, 3, 6000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `resume`
--

CREATE TABLE `resume` (
  `id` int(100) NOT NULL,
  `user_id` int(50) NOT NULL,
  `pengalaman` int(100) NOT NULL,
  `portofolio` int(100) NOT NULL,
  `umur` int(100) NOT NULL,
  `pendidikan` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `resume`
--

INSERT INTO `resume` (`id`, `user_id`, `pengalaman`, `portofolio`, `umur`, `pendidikan`) VALUES
(1, 1, 5, 10, 32, 4),
(2, 2, 3, 5, 24, 3),
(3, 3, 4, 7, 26, 2),
(4, 4, 2, 4, 22, 1),
(5, 5, 3, 2, 20, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `technical`
--

CREATE TABLE `technical` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `php` int(100) NOT NULL,
  `python` int(100) NOT NULL,
  `golang` int(100) NOT NULL,
  `js` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `technical`
--

INSERT INTO `technical` (`id`, `user_id`, `php`, `python`, `golang`, `js`) VALUES
(8, 1, 90, 80, 70, 90),
(9, 2, 80, 60, 60, 90),
(10, 3, 70, 70, 90, 70),
(14, 4, 90, 90, 70, 70);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `telp` bigint(13) NOT NULL,
  `email` varchar(100) NOT NULL,
  `cv` varchar(100) NOT NULL DEFAULT 'default.pdf',
  `step` int(11) NOT NULL,
  `resume` float NOT NULL DEFAULT 0,
  `technical` float NOT NULL DEFAULT 0,
  `interview` float NOT NULL DEFAULT 0,
  `offering` float NOT NULL DEFAULT 0,
  `nilai` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `telp`, `email`, `cv`, `step`, `resume`, `technical`, `interview`, `offering`, `nilai`) VALUES
(1, 'Adi', 895392741323, 'arif@gmail.com', 'default.pdf', 4, 0.928834, 0.600763, 0.499613, 0, 0.471495),
(2, 'Bambang', 89777, 'andi@gmail.com', 'default.pdf', 4, 0.317872, 0.321616, 0.575973, 0.75, 0.542502),
(3, 'Citra', 1111, 'c@c.com', 'default.pdf', 4, 0.60055, 0.497025, 0.445854, 1, 0.646167),
(4, 'dadang', 222, 'a', 'default.pdf', 4, 0.0711661, 0.567096, 0.428669, 1, 0.576474),
(5, 'angga', 2222, 'angga@gmail.com', 'default.pdf', 2, 0.248256, 0, 0, 0, 0),
(8, 'rifaldy', 896392741323, 'rifaldielninoru2@gmail.com', '3120CV (3).pdf', 0, 0, 0, 0, 0, 0),
(9, 'gress', 83939274132, 'gress@gmail.com', '1695CV (3).pdf', 1, 0, 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `interview`
--
ALTER TABLE `interview`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `resume`
--
ALTER TABLE `resume`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `technical`
--
ALTER TABLE `technical`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `interview`
--
ALTER TABLE `interview`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `resume`
--
ALTER TABLE `resume`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `technical`
--
ALTER TABLE `technical`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
