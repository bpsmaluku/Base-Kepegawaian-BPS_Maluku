-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Okt 2020 pada 16.40
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

SET AUTOCOMMIT = 0;

START TRANSACTION;

SET TIME_ZONE = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_pegawai`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pegawai`
--

CREATE TABLE `TB_PEGAWAI` (
  `NIP` VARCHAR(50) NOT NULL,
  `NAMA` VARCHAR(50) NOT NULL,
  `ALAMAT` TEXT NOT NULL,
  `NO_HP` VARCHAR(20) NOT NULL,
  `STATUS` ENUM('Pegawai', 'Honorer') NOT NULL,
  `JABATAN` VARCHAR(50) NOT NULL,
  `FOTO` VARCHAR(500) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=LATIN1;

--
-- Dumping data untuk tabel `tb_pegawai`
--

INSERT INTO `TB_PEGAWAI` (
  `NIP`,
  `NAMA`,
  `ALAMAT`,
  `NO_HP`,
  `STATUS`,
  `JABATAN`,
  `FOTO`
) VALUES (
  '123',
  'Agus',
  'demak',
  '087789987654',
  'Pegawai',
  'Operator',
  'Tulips.jpg'
),
(
  '1298',
  'Sunandar',
  'Jakarta',
  '089987789011',
  'Honorer',
  'Produksi',
  'Penguins.jpg'
),
(
  '67',
  'joni',
  'semarang',
  '089987789098',
  'Honorer',
  'ketua',
  'Jellyfish.jpg'
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengguna`
--

CREATE TABLE `TB_PENGGUNA` (
  `ID_PENGGUNA` INT(11) NOT NULL,
  `NAMA_PENGGUNA` VARCHAR(30) NOT NULL,
  `USERNAME` VARCHAR(30) NOT NULL,
  `PASSWORD` VARCHAR(20) NOT NULL,
  `LEVEL` ENUM('Administrator', 'Sekretaris') NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=LATIN1;

--
-- Dumping data untuk tabel `tb_pengguna`
--

INSERT INTO `TB_PENGGUNA` (
  `ID_PENGGUNA`,
  `NAMA_PENGGUNA`,
  `USERNAME`,
  `PASSWORD`,
  `LEVEL`
) VALUES (
  1,
  'Zainal Arifin',
  'admin',
  '123',
  'Administrator'
),
(
  2,
  'Somat',
  'sek',
  '1',
  'Sekretaris'
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_profil`
--

CREATE TABLE `TB_PROFIL` (
  `ID_PROFIL` INT(11) NOT NULL,
  `NAMA_PROFIL` VARCHAR(50) NOT NULL,
  `ALAMAT` TEXT NOT NULL,
  `BIDANG` VARCHAR(50) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=LATIN1;

--
-- Dumping data untuk tabel `tb_profil`
--

INSERT INTO `TB_PROFIL` (
  `ID_PROFIL`,
  `NAMA_PROFIL`,
  `ALAMAT`,
  `BIDANG`
) VALUES (
  1,
  'PT MAJU JAYA INDUSTRIES',
  'JAKARTA',
  'MANUFACTUR'
);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_pegawai`
--
ALTER TABLE `TB_PEGAWAI` ADD PRIMARY KEY (`NIP`);

--
-- Indeks untuk tabel `tb_pengguna`
--
ALTER TABLE `TB_PENGGUNA` ADD PRIMARY KEY (`ID_PENGGUNA`);

--
-- Indeks untuk tabel `tb_profil`
--
ALTER TABLE `TB_PROFIL` ADD PRIMARY KEY (`ID_PROFIL`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_pengguna`
--
ALTER TABLE `TB_PENGGUNA` MODIFY `ID_PENGGUNA` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_profil`
--
ALTER TABLE `TB_PROFIL` MODIFY `ID_PROFIL` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;