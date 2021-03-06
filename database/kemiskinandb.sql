-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 01 Nov 2016 pada 09.53
-- Versi Server: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kemiskinandb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `nama`, `username`, `password`, `email`) VALUES
(1, 'Nizar Hafizullah', 'ichal', 'c20ad4d76fe97759aa27a0c99bff6710', 'nizarhafizullah66@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `datamart`
--

CREATE TABLE IF NOT EXISTS `datamart` (
`id` int(11) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `nama_file` varchar(50) NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `datamart`
--

INSERT INTO `datamart` (`id`, `jenis`, `nama_file`, `link`) VALUES
(1, 'assets/img/pdf.png', 'KSB Dalam Angka 20151', 'https://drive.google.com/open?id=0B-9PXb8xWYQRZ2NHcG9Ja0paUDdlckJKTmxBMm41R09WMElJ'),
(2, '', 'PDRB KSB 2010-2014', 'https://drive.google.com/open?id=0B-9PXb8xWYQRdlpWX0FmZENQakdvZnZVVWlWRjhTbWstdUEw'),
(3, '', 'Statistik Daerah KSB Tahun 2015', 'https://drive.google.com/open?id=0B-9PXb8xWYQRem5iVFE0eldqUVIyMnpTMXNWeWJCWmFvX0xj');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_garis_miskin`
--

CREATE TABLE IF NOT EXISTS `data_garis_miskin` (
  `id_kab` int(11) NOT NULL,
  `tahun` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_garis_miskin`
--

INSERT INTO `data_garis_miskin` (`id_kab`, `tahun`, `jumlah`) VALUES
(1, 2006, 456),
(1, 2007, 123),
(1, 2009, 43983),
(2, 2006, 123),
(2, 2007, 123),
(2, 2009, 73882),
(3, 2006, 234),
(3, 2007, 123),
(3, 2009, 37844),
(4, 2006, 452),
(4, 2007, 323),
(4, 2009, 84775),
(5, 2006, 342),
(5, 2007, 454),
(5, 2009, 90348),
(6, 2006, 342),
(6, 2007, 700),
(6, 2009, 90849),
(7, 2006, 543),
(7, 2007, 800),
(7, 2009, 98493),
(8, 2006, 342),
(8, 2007, 203),
(8, 2009, 93438),
(9, 2006, 222),
(9, 2007, 821),
(9, 2009, 23344);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_kemiskinan`
--

CREATE TABLE IF NOT EXISTS `data_kemiskinan` (
  `nik` char(16) NOT NULL,
  `tahun` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_kemiskinan`
--

INSERT INTO `data_kemiskinan` (`nik`, `tahun`) VALUES
('123123123', 2015),
('1231231231', 2013),
('1231231231', 2015),
('1231233123111', 2015),
('124124', 2013),
('124124', 2015),
('2131232132', 2013),
('2131232132', 2014),
('2131232132', 2015),
('2839218938', 2013),
('2839218938', 2014),
('2839218938', 2015),
('7687687687676', 2014),
('7687687687676', 2015),
('838792719', 2013),
('838792719', 2014),
('838792719', 2015),
('98298309128', 2015);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_penduduk_miskin`
--

CREATE TABLE IF NOT EXISTS `data_penduduk_miskin` (
  `id_kab` int(11) NOT NULL,
  `tahun` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_penduduk_miskin`
--

INSERT INTO `data_penduduk_miskin` (`id_kab`, `tahun`, `jumlah`) VALUES
(1, 2000, 331),
(1, 2001, 111),
(1, 2007, 200),
(1, 2009, 61173),
(1, 2010, 400),
(1, 2012, 500),
(2, 2000, 767),
(2, 2001, 222),
(2, 2007, 100),
(2, 2009, 25170),
(2, 2010, 400),
(2, 2012, 445),
(3, 2000, 565),
(3, 2001, 333),
(3, 2007, 1000),
(3, 2009, 25370),
(3, 2010, 300),
(3, 2012, 345),
(4, 2000, 6),
(4, 2001, 444),
(4, 2007, 100),
(4, 2009, 38980),
(4, 2010, 100),
(4, 2012, 534),
(5, 2000, 4),
(5, 2001, 555),
(5, 2007, 100),
(5, 2009, 30980),
(5, 2010, 200),
(5, 2012, 435),
(6, 2000, 6),
(6, 2001, 666),
(6, 2007, 100),
(6, 2009, 24336),
(6, 2010, 200),
(6, 2012, 345),
(7, 2000, 6),
(7, 2001, 777),
(7, 2007, 100),
(7, 2009, 78208),
(7, 2010, 200),
(7, 2012, 534),
(8, 0, 12),
(8, 2000, 6),
(8, 2001, 888),
(8, 2007, 100),
(8, 2009, 30000),
(8, 2010, 200),
(8, 2012, 530),
(9, 0, 123),
(9, 2000, 6),
(9, 2001, 999),
(9, 2007, 100),
(9, 2009, 67423),
(9, 2010, 100),
(9, 2012, 400);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kegiatan`
--

CREATE TABLE IF NOT EXISTS `kegiatan` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `judul` varchar(200) NOT NULL,
  `keterangan` text NOT NULL,
  `photo` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kegiatan`
--

INSERT INTO `kegiatan` (`id`, `tanggal`, `judul`, `keterangan`, `photo`) VALUES
(32, '2016-09-23', 'kegiatan 1', 'Ketetangan kegiatan1', 'kegiatan6.jpg'),
(33, '2016-09-23', 'kegiatan 2', 'Keterangan kegiatan2', 'kegiatan10.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `klaster`
--

CREATE TABLE IF NOT EXISTS `klaster` (
  `id` int(11) NOT NULL,
  `klaster` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `klaster`
--

INSERT INTO `klaster` (`id`, `klaster`) VALUES
(2, 'Klaster 1'),
(3, 'Klaster 2'),
(4, 'Klaster 3'),
(5, 'Klaster 4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lupa_password`
--

CREATE TABLE IF NOT EXISTS `lupa_password` (
`id` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `hash` varchar(32) NOT NULL,
  `tanggal` datetime NOT NULL,
  `valid` int(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `lupa_password`
--

INSERT INTO `lupa_password` (`id`, `id_admin`, `hash`, `tanggal`, `valid`) VALUES
(1, 1, '0790990bb5e62f35b7fda69372faff1e', '2016-09-08 07:48:42', 1),
(2, 1, 'c8a10e1475acfd0fc14bcc73ab3227a1', '2016-09-08 07:53:09', 1),
(3, 1, '4d4b2381ac9a303ff1415216b53247ad', '2016-09-08 07:53:22', 0),
(4, 1, 'c61b9b48935130ff43d08301eb67d889', '2016-09-08 08:18:43', 0),
(5, 1, '9d380cd9acee12041ce8e87c76e257b5', '2016-09-09 01:48:21', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pekerjaan`
--

CREATE TABLE IF NOT EXISTS `pekerjaan` (
`id` int(11) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data untuk tabel `pekerjaan`
--

INSERT INTO `pekerjaan` (`id`, `pekerjaan`) VALUES
(1, 'PNS'),
(2, 'Wiraswasta'),
(4, 'Petani'),
(5, 'MAHASISWA'),
(6, 'Dosen');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penduduk`
--

CREATE TABLE IF NOT EXISTS `penduduk` (
  `nik` char(16) NOT NULL,
  `nomor_kk` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `rt` int(11) NOT NULL,
  `rw` int(11) NOT NULL,
  `id_desa` char(30) NOT NULL,
  `id_kecamatan` char(30) NOT NULL,
  `jk` char(1) NOT NULL,
  `hubungan_keluarga` int(11) NOT NULL COMMENT '1=kepala keluarga',
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `pekerjaan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penduduk`
--

INSERT INTO `penduduk` (`nik`, `nomor_kk`, `nama`, `alamat`, `rt`, `rw`, `id_desa`, `id_kecamatan`, `jk`, `hubungan_keluarga`, `tempat_lahir`, `tanggal_lahir`, `pekerjaan`) VALUES
('123123123', '23123123123', 'Abdurahman', 'Jlan. Meraran', 2, 3, '52_7_5_2001', '52_7_5', 'l', 1, 'Taliwang', '1992-02-19', 1),
('1231231231', '1231124313', 'Aklaoma', 'Jlan. Manggis Mujahidin 11', 1, 10, '52_7_6_2004', '52_7_6', 'l', 1, 'Taliwang', '1967-08-08', 2),
('1231233123111', '1212432432', 'Nizar Hafizullah', 'Jlan. Olat Maras No. 17', 1, 10, '52_7_5_2006', '52_7_5', 'l', 1, 'Sumbawa', '1995-06-06', 2),
('124124', '21213123', 'Jaelani', 'Jlan. Osap Sio III', 1, 10, '52_7_5_2001', '52_7_5', 'l', 1, 'Sumbawa', '1976-12-08', 1),
('2131232132', '124124123', 'Yahya Gunawan', 'Jlan. Osap Sio 3', 1, 10, '52_7_5_2006', '52_7_5', 'l', 1, 'Sumbawa Besar', '1992-02-09', 2),
('2839218938', '12891829898291', 'Mulyanto', 'Jlan. Meraran No. 3', 1, 10, '52_7_5_2001', '52_7_5', 'l', 2, 'Sumbawa Besar', '1978-04-09', 1),
('7687687687676', '6556576576', 'Erwin Mardinata', 'Sumbawa', 2, 1, '52_7_7_2003', '52_7_7', 'l', 2, 'Sumbawa', '1995-03-07', 2),
('838792719', '37912838', 'Abdurahma', 'Jlan. Tebo Sampai Petang ', 2, 3, '52_7_1_2002', '52_7_1', 'l', 2, 'Sumbawa', '1967-08-19', 2),
('98298309128', '8132018392803', 'Fitrah Arisandi', 'Kec. Utan', 1, 10, '52_7_5_2001', '52_7_5', 'l', 1, 'Utan', '1995-08-09', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `program`
--

CREATE TABLE IF NOT EXISTS `program` (
`id` int(11) NOT NULL,
  `program` varchar(400) NOT NULL,
  `kegiatan` varchar(400) NOT NULL,
  `jumlah_pagu` double(15,2) NOT NULL,
  `skpd` varchar(50) NOT NULL,
  `id_klaster` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `tahun` int(4) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data untuk tabel `program`
--

INSERT INTO `program` (`id`, `program`, `kegiatan`, `jumlah_pagu`, `skpd`, `id_klaster`, `keterangan`, `tahun`) VALUES
(1, 'Distribusi Dana Stimulus Rukun Tetangga', 'Distribusi Dana Stimulus Rukun Tetangga', 135600000.00, 'BPM PEMDES', 2, 'Program Distribusi Dana Stimulus Rukun Tetangga di berikan kepada keluarga yang kurang mampu memlalui pemerintah terdekat. pendistribusian dana stimulus rukun tetangga ini diharapkan dapat membantu mensejahterakan kehidupan ekonomi dari setiap keluarga miskin yang berada di Kabupaten Sumbawa Barat.', 2014),
(3, 'Program Rehab Rumah', 'Peningkatan Kualitas Rumah Tidak Layak Huni Bagi Masyarkat Berpenghasil Rendah', 190920000.00, 'BPM PEMDES', 2, 'Program Distribusi Dana Stimulus Rukun Tetangga di berikan kepada keluarga yang kurang mampu memlalui pemerintah terdekat. pendistribusian dana stimulus rukun tetangga ini diharapkan dapat membantu mensejahterakan kehidupan ekonomi dari setiap keluarga miskin yang berada di Kabupaten Sumbawa Barat. ', 2014),
(6, 'Program Pendidikan Anak Usia Dini', 'Pembangunan Gedung Sekolah', 1223100000.00, 'DIKBUDPORA', 5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2014),
(7, 'Program Pendidikan Menengah', 'Pembangunan Gedung Sekolah', 522000000.00, 'DIKBUDPORA', 5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2014),
(8, 'Program Peningkatan Mutu Sarana dan Prasarana Sekolah', 'Peningkatan Mutu Sarana dan Prasarana Pendidikan Dasar (Optimalisasi DAK 2012)', 7085951841.00, 'DIKBUDPORA', 5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2014),
(9, 'Program Peningkatan Mutu Sarana dan Prasarana Sekolah', 'Peningkatan Mutu Sarana dan Prasarana Pendidikan Dasar', 944653400.00, 'DIKBUDPORA', 5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2014),
(10, 'Program Pendidikan Tinggi', 'Dukungan Pembiayaan Penyelenggaraan  Pendidikan Tinggi', 2300105500.00, 'DIKBUDPORA', 5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2014),
(11, 'Program Peningkatan Derajat Pendidikan Masyarakat', 'Dukungan Pembiayaan Penyelenggaraan Pendidikan Pra Sekolah, Pendidikan Dasar dan Menengah', 2380800000.00, 'DIKBUDPORA', 5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2014),
(12, 'Program Pembangunan Sarana Prasarana Pendidikan Dasar', 'Pembangunan dan/atau Pemeliharaan Sekolah Dasar (SD)', 2837200000.00, 'DIKBUDPORA', 5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2014),
(13, 'Program Pembangunan Sarana Prasarana Pendidikan Dasar', 'Pembangunan dan/atau Pemeliharaan Sekolah SMP/MTs', 1795129000.00, 'DIKBUDPORA', 5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2014),
(14, 'Program Pembangunan Sarana Prasarana Pendidikan Dasar', 'Pengadaan atau Bantuan Sarana Penunjang Pendidikan Sekolah Dasar (SD)', 1617000000.00, 'DIKBUDPORA', 5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2014),
(15, 'Program Pembangunan Sarana Prasarana Pendidikan Dasar', 'Pengadaan atau Bantuan Sarana Penunjang Pendidikan dan Pelatihan pada SMP/MTs', 1406000000.00, 'DIKBUDPORA', 5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2014),
(16, 'Program Pembangunan Sarana Prasarana Pendidikan Menengah', 'Pembangunan dan/atau Pemeliharaan Sekolah SMA/MA', 1460100000.00, 'DIKBUDPORA', 5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2014),
(17, 'Program Pembangunan Sarana Prasarana Pendidikan Menengah', 'Pembangunan dan/atau Pemeliharaan Sekolah SMK', 1994850000.00, 'DIKBUDPORA', 5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2014),
(18, 'Program Pembangunan Sarana Prasarana Pendidikan Menengah', 'Pengadaan atau Bantuan Sarana Penunjang Pendidikan dan Pelatihan pada SMK', 697675000.00, 'DIKBUDPORA', 5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2014),
(19, 'Program Upaya Kesehatan Masyarakat', 'Peningkatan Mutu Pelayanan Kesehatan (DAK)', 5121349000.00, 'DIKES', 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2014),
(20, 'Program Pengembangan dan Pengelolaan Jaringan Irigasi, Rawa dan Jaringan Pengairan Lainnya', 'Pembangunan jaringan air bersih/air minum', 9437982162.00, 'DPU', 5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2014),
(21, 'Program Pengembangan dan Pengelolaan Jaringan Irigasi, Rawa dan Jaringan Pengairan Lainnya', 'Pelaksanaan Program Pengembangan dan Pengelolaan Sistem Irigasi Partisipatif (PPSIP) (NTB ? WISMP II)', 175000000.00, 'DPU', 5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2014),
(22, 'Program Pengembangan dan Pengelolaan Jaringan Irigasi, Rawa dan Jaringan Pengairan Lainnya', 'Pelaksanaan Program Pengembangan dan Pengelolaan Sistem Irigasi Partisipatif (PPSIP) (LOAN ? WISMP II)', 492490000.00, 'DPU', 5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2014),
(23, 'Program Pembangunan Infrastruktur Perdesaaan', 'Pembangunan Sarana dan Prasarana Pedesaaan', 3795750000.00, 'DPU', 5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2014),
(24, 'Program Lingkungan Sehat Pemukiman dan Fasilitas Umum', 'Penyediaan Sarana Sanitasi Pemukiman dan Fasilitas Umum', 3617896000.00, 'DPU', 5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2014),
(25, 'Program Peningkatan Kesejahteraan Petani', 'Pelatihan Petani dan Pelaku Agribisnis', 450399130.00, 'DISHUTBUNTAN', 5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2014),
(26, 'Program Peningkatan Kesejahteraan Petani', 'Penguatan Kelembagaan Petani (WISMP)', 236611000.00, 'DISHUTBUNTAN', 4, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2014),
(27, 'Program Peningkatan Ketahanan Pangan Pertanian / Perkebunan', 'Pengembangan Cadangan Pangan Daerah', 3330440000.00, 'DISHUTBUNTAN', 3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2014),
(28, 'Program rehabilitasi hutan dan lahan', 'Pengadaan Bibit Untuk Pemanfaatan Lahan Kering/Tidur dan Pengembangan MDM (Model Das Mikro)', 178600000.00, 'DISHUTBUNTAN', 3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2014),
(29, 'Program Peningkatan Penerapan Teknologi Pertanian / Perkebunan', 'Pengadaan sarana dan prasarana teknologi pertanian tepat guna', 1291879100.00, 'DISHUTBUNTAN', 5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2014),
(30, 'Program Pemberdayaan Fakir Miskin, Komunitas Adat Terpencil (KAT) dan Penyandang Masalah Kesejahteraan Sosial (PMKS) Lainnya', 'Pemberdayaan Sosial Bagi Sasaran Program Keluarga Harapan', 69222500.00, 'DISOSNAKERTRANS', 3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2014),
(31, 'Program Peningkatan Kualitas dan Produktivitas Tenaga Kerja', 'Pendidikan dan Pelatihan Ketrampilan Bagi Pencari Kerja', 33276000.00, 'DISOSNAKERTRANS', 4, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2014),
(32, 'Program Pengembangan Kewirausahaan dan Keunggulan Kompetitif Usaha Kecil Menengah', 'Penyelenggaraan Pelatihan Kewirausahaan', 2727164500.00, 'DISPERINDAGKOP & UMKM', 4, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2014),
(33, 'Program Pengembangan Industri Kecil dan Menengah', 'Pembinaan Industri Kecil dan Menengah dalam Memperkuat Jaringan Klaster Industri', 1311053985.00, 'DISPERINDAGKOP & UMKM', 4, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2014);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tiger_desa`
--

CREATE TABLE IF NOT EXISTS `tiger_desa` (
  `id` char(13) NOT NULL,
  `desa` varchar(100) NOT NULL,
  `kode_desa` varchar(10) DEFAULT NULL,
  `id_kecamatan` char(13) NOT NULL,
  `kelompok` int(10) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tiger_desa`
--

INSERT INTO `tiger_desa` (`id`, `desa`, `kode_desa`, `id_kecamatan`, `kelompok`) VALUES
('52_1_12_2001', 'LINGSAR', '2001', '52_1_12', 1),
('52_1_12_2002', 'BATU KUMBANG', '2002', '52_1_12', 1),
('52_1_12_2003', 'SIGERONGAN', '2003', '52_1_12', 1),
('52_1_12_2004', 'DUMAN', '2004', '52_1_12', 1),
('52_1_12_2005', 'KARANG BAYAN', '2005', '52_1_12', 1),
('52_1_12_2006', 'LANGKO', '2006', '52_1_12', 1),
('52_1_12_2007', 'DASAN GERIA', '2007', '52_1_12', 1),
('52_1_12_2008', 'PETELUAN INDAH', '2008', '52_1_12', 1),
('52_1_12_2009', 'GEGERUNG', '2009', '52_1_12', 1),
('52_1_12_2010', 'BATU MEKAR', '2010', '52_1_12', 1),
('52_1_12_2011', 'GIRI MADIA', '2011', '52_1_12', 1),
('52_1_12_2012', 'BUG-BUG', '2012', '52_1_12', 1),
('52_1_12_2013', 'GEGELANG', '2013', '52_1_12', 1),
('52_1_12_2014', 'SARIBAYE', '2014', '52_1_12', 1),
('52_1_12_2015', 'GONTORAN', '2015', '52_1_12', 1),
('52_1_13_2001', 'LEMBAR', '2001', '52_1_13', 1),
('52_1_13_2002', 'JEMBATAN KEMBAR', '2002', '52_1_13', 1),
('52_1_13_2003', 'MAREJE', '2003', '52_1_13', 1),
('52_1_13_2004', 'SEKOTONG TIMUR', '2004', '52_1_13', 1),
('52_1_13_2005', 'LABUAN TERENG', '2005', '52_1_13', 1),
('52_1_13_2006', 'JEMBATAN GANTUNG', '2006', '52_1_13', 1),
('52_1_13_2007', 'LEMBAR SELATAN', '2007', '52_1_13', 1),
('52_1_13_2008', 'MAREJE TIMUR', '2008', '52_1_13', 1),
('52_1_13_2009', 'JEMBATAN KEMBAR TIMUR', '2009', '52_1_13', 1),
('52_1_13_2010', 'EYAT MAYANG', '2010', '52_1_13', 1),
('52_1_14_2001', 'BATULAYAR', '2001', '52_1_14', 1),
('52_1_14_2002', 'MENINTING', '2002', '52_1_14', 1),
('52_1_14_2003', 'SANDIK', '2003', '52_1_14', 1),
('52_1_14_2004', 'LEMBAH SARI', '2004', '52_1_14', 1),
('52_1_14_2005', 'SENTELUK', '2005', '52_1_14', 1),
('52_1_14_2006', 'SENGGIGI', '2006', '52_1_14', 1),
('52_1_14_2007', 'BENGKAUNG', '2007', '52_1_14', 1),
('52_1_14_2008', 'PUSUK LESTARI', '2008', '52_1_14', 1),
('52_1_14_2009', 'BATU LAYAR BARAT', '2009', '52_1_14', 1),
('52_1_15_2001', 'KURIPAN', '2001', '52_1_15', 1),
('52_1_15_2002', 'JAGARAGA', '2002', '52_1_15', 1),
('52_1_15_2003', 'KURIPAN UTARA', '2003', '52_1_15', 1),
('52_1_15_2004', 'KURIPAN SELATAN', '2004', '52_1_15', 1),
('52_1_15_2005', 'KURIPAN TIMUR', '2005', '52_1_15', 1),
('52_1_15_2006', 'GIRI SASAK', '2006', '52_1_15', 1),
('52_1_1_1001', 'GERUNG UTARA', '1001', '52_1_1', 1),
('52_1_1_1004', 'DASAN GERES', '1004', '52_1_1', 1),
('52_1_1_1011', 'GERUNG SELATAN', '1011', '52_1_1', 1),
('52_1_1_2002', 'KEBON AYU', '2002', '52_1_1', 1),
('52_1_1_2003', 'GAPUK', '2003', '52_1_1', 1),
('52_1_1_2005', 'SUKA MAKMUR', '2005', '52_1_1', 1),
('52_1_1_2006', 'BANYU URIP', '2006', '52_1_1', 1),
('52_1_1_2007', 'BABUSSALAM', '2007', '52_1_1', 1),
('52_1_1_2008', 'DASAN TAPEN', '2008', '52_1_1', 1),
('52_1_1_2009', 'BELEKE', '2009', '52_1_1', 1),
('52_1_1_2010', 'TEMPOS', '2010', '52_1_1', 1),
('52_1_1_2012', 'MESANGGOK', '2012', '52_1_1', 1),
('52_1_1_2013', 'TAMAN AYU', '2013', '52_1_1', 1),
('52_1_1_2014', 'GIRI TEMBESI', '2014', '52_1_1', 1),
('52_1_2_2001', 'KEDIRI', '2001', '52_1_2', 1),
('52_1_2_2002', 'MONTONG ARE', '2002', '52_1_2', 1),
('52_1_2_2003', 'JAGARAGA INDAH', '2003', '52_1_2', 1),
('52_1_2_2004', 'GELOGOR', '2004', '52_1_2', 1),
('52_1_2_2005', 'RUMAK', '2005', '52_1_2', 1),
('52_1_2_2006', 'BANYUMULEK', '2006', '52_1_2', 1),
('52_1_2_2007', 'OMBE BARU', '2007', '52_1_2', 1),
('52_1_2_2008', 'DASAN BARU', '2008', '52_1_2', 1),
('52_1_2_2009', 'KEDIRI SELATAN', '2009', '52_1_2', 1),
('52_1_2_2010', 'LELEDE', '2010', '52_1_2', 1),
('52_1_3_2001', 'LEMBUAK', '2001', '52_1_3', 1),
('52_1_3_2002', 'NYUR LEMBANG', '2002', '52_1_3', 1),
('52_1_3_2003', 'PERESAK', '2003', '52_1_3', 1),
('52_1_3_2004', 'KERU', '2004', '52_1_3', 1),
('52_1_3_2005', 'BATU KUTA', '2005', '52_1_3', 1),
('52_1_3_2006', 'TANAK BEAK', '2006', '52_1_3', 1),
('52_1_3_2007', 'SEDAU', '2007', '52_1_3', 1),
('52_1_3_2008', 'SURANADI', '2008', '52_1_3', 1),
('52_1_3_2009', 'SELAT', '2009', '52_1_3', 1),
('52_1_3_2010', 'LEBAH SEMPAGE', '2010', '52_1_3', 1),
('52_1_3_2011', 'SESAOT', '2011', '52_1_3', 1),
('52_1_3_2012', 'DASAN TERENG', '2012', '52_1_3', 1),
('52_1_3_2013', 'BADRAIN', '2013', '52_1_3', 1),
('52_1_3_2014', 'SEMBUNG', '2014', '52_1_3', 1),
('52_1_3_2015', 'KRAMAT JAYA', '2015', '52_1_3', 1),
('52_1_3_2016', 'GRIMAX INDAH', '2016', '52_1_3', 1),
('52_1_3_2017', 'PAKUAN', '2017', '52_1_3', 1),
('52_1_3_2018', 'GOLONG', '2018', '52_1_3', 1),
('52_1_3_2019', 'MEKARSARI', '2019', '52_1_3', 1),
('52_1_3_2020', 'BUWUN SEJATI', '2020', '52_1_3', 1),
('52_1_3_2021', 'NARMADA', '2021', '52_1_3', 1),
('52_1_7_2001', 'SEKOTONG TENGAH', '2001', '52_1_7', 1),
('52_1_7_2002', 'SEKOTONG BARAT', '2002', '52_1_7', 1),
('52_1_7_2003', 'PELANGAN', '2003', '52_1_7', 1),
('52_1_7_2004', 'BUWUN MAS', '2004', '52_1_7', 1),
('52_1_7_2005', 'KEDARO', '2005', '52_1_7', 1),
('52_1_7_2006', 'BATU PUTIH', '2006', '52_1_7', 1),
('52_1_7_2007', 'GILI GEDE INDAH', '2007', '52_1_7', 1),
('52_1_7_2008', 'CENDI MANIK', '2008', '52_1_7', 1),
('52_1_7_2009', 'TAMAN BARU', '2009', '52_1_7', 1),
('52_1_8_2001', 'BENGKEL', '2001', '52_1_8', 1),
('52_1_8_2002', 'MEREMBU', '2002', '52_1_8', 1),
('52_1_8_2003', 'BAGIK POLAK', '2003', '52_1_8', 1),
('52_1_8_2004', 'TELAGAWARU', '2004', '52_1_8', 1),
('52_1_8_2005', 'PERAMPUAN', '2005', '52_1_8', 1),
('52_1_8_2006', 'BAJUR', '2006', '52_1_8', 1),
('52_1_8_2007', 'TERONG TAWAH', '2007', '52_1_8', 1),
('52_1_8_2008', 'KURANJI', '2008', '52_1_8', 1),
('52_1_8_2009', 'KARANG BONGKOT', '2009', '52_1_8', 1),
('52_1_8_2010', 'LABUAPI', '2010', '52_1_8', 1),
('52_1_8_2011', 'BAGIK POLAK BARAT', '2011', '52_1_8', 1),
('52_1_8_2012', 'KURANJI DALANG', '2012', '52_1_8', 1),
('52_1_9_2001', 'GUNUNGSARI', '2001', '52_1_9', 1),
('52_1_9_2002', 'MIDANG', '2002', '52_1_9', 1),
('52_1_9_2003', 'SESELE', '2003', '52_1_9', 1),
('52_1_9_2004', 'KEKAIT', '2004', '52_1_9', 1),
('52_1_9_2005', 'KEKERI', '2005', '52_1_9', 1),
('52_1_9_2006', 'MAMBALAN', '2006', '52_1_9', 1),
('52_1_9_2007', 'DOPANG', '2007', '52_1_9', 1),
('52_1_9_2008', 'PENIMBUNG', '2008', '52_1_9', 1),
('52_1_9_2009', 'TAMAN SARI', '2009', '52_1_9', 1),
('52_1_9_2010', 'JATISELA', '2010', '52_1_9', 1),
('52_1_9_2011', 'GUNTUR MACAN', '2011', '52_1_9', 1),
('52_1_9_2012', 'MEKAR SARI', '2012', '52_1_9', 1),
('52_1_9_2013', 'RANJOK', '2013', '52_1_9', 1),
('52_1_9_2014', 'GELANGSAR', '2014', '52_1_9', 1),
('52_1_9_2015', 'JERINGO', '2015', '52_1_9', 1),
('52_1_9_2016', 'BUKITTINGGI', '2016', '52_1_9', 1),
('52_2_10_1001', 'GERANTUNG', '1001', '52_2_10', 1),
('52_2_10_1002', 'JONTLAK', '1002', '52_2_10', 1),
('52_2_10_1003', 'SASAKE', '1003', '52_2_10', 1),
('52_2_10_2004', 'JURANG JALER', '2004', '52_2_10', 1),
('52_2_10_2005', 'BERAIM', '2005', '52_2_10', 1),
('52_2_10_2006', 'BATUNYALA', '2006', '52_2_10', 1),
('52_2_10_2007', 'LAJUT', '2007', '52_2_10', 1),
('52_2_10_2008', 'PENGADANG', '2008', '52_2_10', 1),
('52_2_10_2009', 'KELEBUH', '2009', '52_2_10', 1),
('52_2_10_2010', 'PEJANGGIK', '2010', '52_2_10', 1),
('52_2_10_2011', 'DAKUNG', '2011', '52_2_10', 1),
('52_2_10_2012', 'PRAI MEKE', '2012', '52_2_10', 1),
('52_2_11_2001', 'MONTONG SAPAH', '2001', '52_2_11', 1),
('52_2_11_2002', 'UNGGA', '2002', '52_2_11', 1),
('52_2_11_2003', 'KABUL', '2003', '52_2_11', 1),
('52_2_11_2004', 'PELAMBIK', '2004', '52_2_11', 1),
('52_2_11_2005', 'DAREK', '2005', '52_2_11', 1),
('52_2_11_2006', 'RANGGAGATA', '2006', '52_2_11', 1),
('52_2_11_2007', 'PANDAN INDAH', '2007', '52_2_11', 1),
('52_2_11_2008', 'SERAGE', '2008', '52_2_11', 1),
('52_2_11_2009', 'MONTONG AJAN', '2009', '52_2_11', 1),
('52_2_11_2010', 'BATU JANGKIH', '2010', '52_2_11', 1),
('52_2_11_2011', 'TEDUH', '2011', '52_2_11', 1),
('52_2_12_2001', 'LANTAN', '2001', '52_2_12', 1),
('52_2_12_2002', 'SETILING', '2002', '52_2_12', 1),
('52_2_12_2003', 'TANAK BEAK', '2003', '52_2_12', 1),
('52_2_12_2004', 'AIK BUKAQ', '2004', '52_2_12', 1),
('52_2_12_2005', 'TERATAK', '2005', '52_2_12', 1),
('52_2_12_2006', 'AIK BERIK', '2006', '52_2_12', 1),
('52_2_12_2007', 'MAS-MAS', '2007', '52_2_12', 1),
('52_2_12_2008', 'KARANG SIDEMEN', '2008', '52_2_12', 1),
('52_2_1_1001', 'PRAYA', '1001', '52_2_1', 1),
('52_2_1_1002', 'LENENG', '1002', '52_2_1', 1),
('52_2_1_1003', 'GERUNUNG', '1003', '52_2_1', 1),
('52_2_1_1004', 'SEMAYAN', '1004', '52_2_1', 1),
('52_2_1_1005', 'PERAPEN', '1005', '52_2_1', 1),
('52_2_1_1006', 'TIWUGALIH', '1006', '52_2_1', 1),
('52_2_1_1007', 'GONJAK', '1007', '52_2_1', 1),
('52_2_1_1008', 'PANJI SARI', '1008', '52_2_1', 1),
('52_2_1_1009', 'RENTENG', '1009', '52_2_1', 1),
('52_2_1_2010', 'MERTAK TOMBOK', '2010', '52_2_1', 1),
('52_2_1_2011', 'AIK MUAL', '2011', '52_2_1', 1),
('52_2_1_2012', 'MONTONG TEREP', '2012', '52_2_1', 1),
('52_2_1_2013', 'JAGO', '2013', '52_2_1', 1),
('52_2_1_2014', 'BUNUT BAOK', '2014', '52_2_1', 1),
('52_2_1_2015', 'MEKAR DAMAI', '2015', '52_2_1', 1),
('52_2_2_2001', 'BAREJULAT', '2001', '52_2_2', 1),
('52_2_2_2002', 'UBUNG', '2002', '52_2_2', 1),
('52_2_2_2003', 'JELANTIK', '2003', '52_2_2', 1),
('52_2_2_2004', 'LABULIA', '2004', '52_2_2', 1),
('52_2_2_2005', 'BATU TULIS', '2005', '52_2_2', 1),
('52_2_2_2006', 'PERINA', '2006', '52_2_2', 1),
('52_2_2_2007', 'PENGENJEK', '2007', '52_2_2', 1),
('52_2_2_2008', 'PUYUNG', '2008', '52_2_2', 1),
('52_2_2_2009', 'NYEROT', '2009', '52_2_2', 1),
('52_2_2_2010', 'SUKARARA', '2010', '52_2_2', 1),
('52_2_2_2011', 'GEMEL', '2011', '52_2_2', 1),
('52_2_2_2012', 'BONJERUK', '2012', '52_2_2', 1),
('52_2_2_2013', 'BUNKATE', '2013', '52_2_2', 1),
('52_2_3_2001', 'BUJAK', '2001', '52_2_3', 1),
('52_2_3_2002', 'SELEBUNG', '2002', '52_2_3', 1),
('52_2_3_2003', 'PERESAK', '2003', '52_2_3', 1),
('52_2_3_2004', 'MANTANG', '2004', '52_2_3', 1),
('52_2_3_2005', 'AIK DAREK', '2005', '52_2_3', 1),
('52_2_3_2006', 'TAMPAK SIRING', '2006', '52_2_3', 1),
('52_2_3_2007', 'BARABALI', '2007', '52_2_3', 1),
('52_2_3_2008', 'BEBER', '2008', '52_2_3', 1),
('52_2_3_2009', 'PAGUTAN', '2009', '52_2_3', 1),
('52_2_3_2010', 'MEKAR BERSATU', '2010', '52_2_3', 1),
('52_2_4_2001', 'SENGKOL', '2001', '52_2_4', 1),
('52_2_4_2002', 'SEGALA ANYAR', '2002', '52_2_4', 1),
('52_2_4_2003', 'SUKADANA', '2003', '52_2_4', 1),
('52_2_4_2004', 'TERUWAI', '2004', '52_2_4', 1),
('52_2_4_2005', 'PENGENGAT', '2005', '52_2_4', 1),
('52_2_4_2006', 'KAWO', '2006', '52_2_4', 1),
('52_2_4_2007', 'GAPURA', '2007', '52_2_4', 1),
('52_2_4_2008', 'REMBITAN', '2008', '52_2_4', 1),
('52_2_4_2009', 'KUTA', '2009', '52_2_4', 1),
('52_2_4_2010', 'PENGEMBUR', '2010', '52_2_4', 1),
('52_2_4_2011', 'TUMPAK', '2011', '52_2_4', 1),
('52_2_4_2012', 'MERTAK', '2012', '52_2_4', 1),
('52_2_4_2013', 'PRABU', '2013', '52_2_4', 1),
('52_2_4_2014', 'TANAK AWU', '2014', '52_2_4', 1),
('52_2_4_2015', 'KETARA', '2015', '52_2_4', 1),
('52_2_4_2016', 'BANGKET PARAK', '2016', '52_2_4', 1),
('52_2_5_2001', 'BONDER', '2001', '52_2_5', 1),
('52_2_5_2002', 'BANYU URIP', '2002', '52_2_5', 1),
('52_2_5_2003', 'MANGKUNG', '2003', '52_2_5', 1),
('52_2_5_2004', 'KATENG', '2004', '52_2_5', 1),
('52_2_5_2005', 'SETANGGOR', '2005', '52_2_5', 1),
('52_2_5_2006', 'PENUJAK', '2006', '52_2_5', 1),
('52_2_5_2007', 'SELONG BLANAK', '2007', '52_2_5', 1),
('52_2_5_2008', 'MEKAR SARI', '2008', '52_2_5', 1),
('52_2_5_2009', 'BATUJAI', '2009', '52_2_5', 1),
('52_2_5_2010', 'TANAK RARANG', '2010', '52_2_5', 1),
('52_2_6_2001', 'SUKARAJA', '2001', '52_2_6', 1),
('52_2_6_2002', 'BELEKA', '2002', '52_2_6', 1),
('52_2_6_2003', 'SEMOYANG', '2003', '52_2_6', 1),
('52_2_6_2004', 'MUJUR', '2004', '52_2_6', 1),
('52_2_6_2005', 'LANDAH', '2005', '52_2_6', 1),
('52_2_6_2006', 'SENGKERANG', '2006', '52_2_6', 1),
('52_2_6_2007', 'BILELANDO', '2007', '52_2_6', 1),
('52_2_6_2008', 'GANTI', '2008', '52_2_6', 1),
('52_2_6_2009', 'MARONG', '2009', '52_2_6', 1),
('52_2_6_2010', 'KIDANG', '2010', '52_2_6', 1),
('52_2_7_2001', 'LEKOR', '2001', '52_2_7', 1),
('52_2_7_2002', 'LANGKO', '2002', '52_2_7', 1),
('52_2_7_2003', 'JANAPRIA', '2003', '52_2_7', 1),
('52_2_7_2004', 'LOANG MAKA', '2004', '52_2_7', 1),
('52_2_7_2005', 'SABA', '2005', '52_2_7', 1),
('52_2_7_2006', 'BAKAN', '2006', '52_2_7', 1),
('52_2_7_2007', 'DURIAN', '2007', '52_2_7', 1),
('52_2_7_2008', 'PENDEM', '2008', '52_2_7', 1),
('52_2_7_2009', 'SELEBUNG REMBIGA', '2009', '52_2_7', 1),
('52_2_7_2010', 'KEREMBONG', '2010', '52_2_7', 1),
('52_2_7_2011', 'JANGO', '2011', '52_2_7', 1),
('52_2_7_2012', 'SETUTA', '2012', '52_2_7', 1),
('52_2_8_2001', 'PRINGARATA', '2001', '52_2_8', 1),
('52_2_8_2002', 'SEPAKEK', '2002', '52_2_8', 1),
('52_2_8_2003', 'MURBAYA', '2003', '52_2_8', 1),
('52_2_8_2004', 'BAGU', '2004', '52_2_8', 1),
('52_2_8_2005', 'SINTUNG', '2005', '52_2_8', 1),
('52_2_8_2006', 'BILEBANTE', '2006', '52_2_8', 1),
('52_2_8_2007', 'PEMEPEK', '2007', '52_2_8', 1),
('52_2_8_2008', 'MENEMENG', '2008', '52_2_8', 1),
('52_2_8_2009', 'ARJANGKA', '2009', '52_2_8', 1),
('52_2_8_2010', 'TAMAN INDAH', '2010', '52_2_8', 1),
('52_2_8_2011', 'SISIK', '2011', '52_2_8', 1),
('52_2_9_2001', 'LENDANG ARE', '2001', '52_2_9', 1),
('52_2_9_2002', 'MONGGAS', '2002', '52_2_9', 1),
('52_2_9_2003', 'MUNCAN', '2003', '52_2_9', 1),
('52_2_9_2004', 'BEBUAK', '2004', '52_2_9', 1),
('52_2_9_2005', 'KOPANG REMBIGA', '2005', '52_2_9', 1),
('52_2_9_2006', 'DASAN BARU', '2006', '52_2_9', 1),
('52_2_9_2007', 'MONTONG GAMANG', '2007', '52_2_9', 1),
('52_2_9_2008', 'DARMAJI', '2008', '52_2_9', 1),
('52_2_9_2009', 'WAJAGESENG', '2009', '52_2_9', 1),
('52_2_9_2010', 'AIK BUAL', '2010', '52_2_9', 1),
('52_2_9_2011', 'SEMPARU', '2011', '52_2_9', 1),
('52_3_10_2001', 'OBEL-OBEL', '2001', '52_3_10', 1),
('52_3_10_2002', 'BELANTING', '2002', '52_3_10', 1),
('52_3_10_2003', 'SAMBALIA', '2003', '52_3_10', 1),
('52_3_10_2004', 'LABUHAN PANDAN', '2004', '52_3_10', 1),
('52_3_10_2005', 'SUGIAN', '2005', '52_3_10', 1),
('52_3_10_2006', 'DARAKUNCI', '2006', '52_3_10', 1),
('52_3_10_2007', 'BAGIK MANIS', '2007', '52_3_10', 1),
('52_3_10_2008', 'DADAP', '2008', '52_3_10', 1),
('52_3_10_2009', 'MADAYIN', '2009', '52_3_10', 1),
('52_3_10_2010', 'SENANGGALIH', '2010', '52_3_10', 1),
('52_3_10_2011', 'PADAK GUAR', '2011', '52_3_10', 1),
('52_3_11_2001', 'PRINGGA JURANG', '2001', '52_3_11', 1),
('52_3_11_2002', 'MONTONG BETOK', '2002', '52_3_11', 1),
('52_3_11_2003', 'KILANG', '2003', '52_3_11', 1),
('52_3_11_2004', 'PERIAN', '2004', '52_3_11', 1),
('52_3_11_2005', 'JENGGIK UTARA', '2005', '52_3_11', 1),
('52_3_11_2006', 'PRINGGAJURANG UTARA', '2006', '52_3_11', 1),
('52_3_11_2007', 'PESANGGRAHAN', '2007', '52_3_11', 1),
('52_3_11_2008', 'LENDANG BELO', '2008', '52_3_11', 1),
('52_3_12_2001', 'REMPUNG', '2001', '52_3_12', 1),
('52_3_12_2002', 'PRINGGASELA', '2002', '52_3_12', 1),
('52_3_12_2003', 'JURIT', '2003', '52_3_12', 1),
('52_3_12_2004', 'PENGADANGAN', '2004', '52_3_12', 1),
('52_3_12_2005', 'AIK DEWA', '2005', '52_3_12', 1),
('52_3_12_2006', 'JURIT BARU', '2006', '52_3_12', 1),
('52_3_12_2007', 'PRINGGASELA SELATAN', '2007', '52_3_12', 1),
('52_3_12_2008', 'PENGADANGAN BARAT', '2008', '52_3_12', 1),
('52_3_12_2009', 'TIMBANUH', '2009', '52_3_12', 1),
('52_3_12_2010', 'PRINGGASELA TIMUR', '2010', '52_3_12', 1),
('52_3_13_2001', 'ANJANI', '2001', '52_3_13', 1),
('52_3_13_2002', 'TEBABAN', '2002', '52_3_13', 1),
('52_3_13_2003', 'KERONGKONG', '2003', '52_3_13', 1),
('52_3_13_2004', 'BAGIK PAYUNG', '2004', '52_3_13', 1),
('52_3_13_2005', 'SURALAGA', '2005', '52_3_13', 1),
('52_3_13_2006', 'BAGIK PAYUNG SELATAN', '2006', '52_3_13', 1),
('52_3_13_2007', 'TUMBUH MULIA', '2007', '52_3_13', 1),
('52_3_13_2008', 'DASAN BOROK', '2008', '52_3_13', 1),
('52_3_13_2009', 'GERUNG PERMAI', '2009', '52_3_13', 1),
('52_3_13_2010', 'DAMES DAMAI', '2010', '52_3_13', 1),
('52_3_13_2011', 'BAGIK PAYUNG TIMUR', '2011', '52_3_13', 1),
('52_3_13_2012', 'WARINGIN', '2012', '52_3_13', 1),
('52_3_13_2013', 'GAPUK', '2013', '52_3_13', 1),
('52_3_13_2014', 'BINTANG RINJANI', '2014', '52_3_13', 1),
('52_3_13_2015', 'PAOK LOMBOK', '2015', '52_3_13', 1),
('52_3_14_2001', 'MAMBEN DAYA', '2001', '52_3_14', 1),
('52_3_14_2002', 'MAMBEN LAUK', '2002', '52_3_14', 1),
('52_3_14_2003', 'WANASABA', '2003', '52_3_14', 1),
('52_3_14_2004', 'KARANG BARU', '2004', '52_3_14', 1),
('52_3_14_2005', 'BEBIDAS', '2005', '52_3_14', 1),
('52_3_14_2006', 'TEMBENG PUTIK', '2006', '52_3_14', 1),
('52_3_14_2007', 'WANASABA LAUK', '2007', '52_3_14', 1),
('52_3_14_2008', 'BERIRI JARAK', '2008', '52_3_14', 1),
('52_3_14_2009', 'BANDOK', '2009', '52_3_14', 1),
('52_3_14_2010', 'MAMBEN BARU', '2010', '52_3_14', 1),
('52_3_14_2011', 'OTAK RARANGAN', '2011', '52_3_14', 1),
('52_3_14_2012', 'JINENG', '2012', '52_3_14', 1),
('52_3_14_2013', 'WANASABA DAYA', '2013', '52_3_14', 1),
('52_3_14_2014', 'KARANG BARU TIMUR', '2014', '52_3_14', 1),
('52_3_15_2001', 'SEMBALUN BUMBUNG', '2001', '52_3_15', 1),
('52_3_15_2002', 'SEMBALUN LAWANG', '2002', '52_3_15', 1),
('52_3_15_2003', 'SAJANG', '2003', '52_3_15', 1),
('52_3_15_2004', 'BILOK PETUNG', '2004', '52_3_15', 1),
('52_3_15_2005', 'SEMBALUN', '2005', '52_3_15', 1),
('52_3_15_2006', 'SEMBALUN TIMBA GADING', '2006', '52_3_15', 1),
('52_3_16_2001', 'SELAPARANG', '2001', '52_3_16', 1),
('52_3_16_2002', 'KETANGGA', '2002', '52_3_16', 1),
('52_3_16_2003', 'SUNTALANGU', '2003', '52_3_16', 1),
('52_3_16_2004', 'SUELA', '2004', '52_3_16', 1),
('52_3_16_2005', 'SAPIT', '2005', '52_3_16', 1),
('52_3_16_2006', 'PERIGI', '2006', '52_3_16', 1),
('52_3_16_2007', 'MEKAR SARI', '2007', '52_3_16', 1),
('52_3_16_2008', 'PUNCAK JERINGO', '2008', '52_3_16', 1),
('52_3_17_1004', 'TANJUNG', '1004', '52_3_17', 1),
('52_3_17_1005', 'SURYAWANGI', '1005', '52_3_17', 1),
('52_3_17_1007', 'IJOBALIT', '1007', '52_3_17', 1),
('52_3_17_1012', 'GERES', '1012', '52_3_17', 1),
('52_3_17_2001', 'LABUHAN HAJI', '2001', '52_3_17', 1),
('52_3_17_2002', 'PENEDA GANDOR', '2002', '52_3_17', 1),
('52_3_17_2003', 'TEROS', '2003', '52_3_17', 1),
('52_3_17_2006', 'KORLEKO', '2006', '52_3_17', 1),
('52_3_17_2008', 'KERTASARI', '2008', '52_3_17', 1),
('52_3_17_2009', 'TIRTANADI', '2009', '52_3_17', 1),
('52_3_17_2010', 'BANJARSARI', '2010', '52_3_17', 1),
('52_3_17_2011', 'KORLEKO SELATAN', '2011', '52_3_17', 1),
('52_3_18_2001', 'GELANGGANG', '2001', '52_3_18', 1),
('52_3_18_2002', 'SURABAYA', '2002', '52_3_18', 1),
('52_3_18_2003', 'LEPAK', '2003', '52_3_18', 1),
('52_3_18_2004', 'GERENENG', '2004', '52_3_18', 1),
('52_3_18_2005', 'MONTONG TANGI', '2005', '52_3_18', 1),
('52_3_18_2006', 'MENCEH', '2006', '52_3_18', 1),
('52_3_18_2007', 'LEPAK TIMUR', '2007', '52_3_18', 1),
('52_3_18_2008', 'SURABAYA UTARA', '2008', '52_3_18', 1),
('52_3_18_2009', 'GERENENG TIMUR', '2009', '52_3_18', 1),
('52_3_18_2010', 'LENTING', '2010', '52_3_18', 1),
('52_3_19_2001', 'SUKARARA', '2001', '52_3_19', 1),
('52_3_19_2002', 'GUNUNG RAJAK', '2002', '52_3_19', 1),
('52_3_19_2003', 'RENSING', '2003', '52_3_19', 1),
('52_3_19_2004', 'BUNGTIANG', '2004', '52_3_19', 1),
('52_3_19_2005', 'PENGKELAK MAS', '2005', '52_3_19', 1),
('52_3_19_2006', 'BOROK TOYANG', '2006', '52_3_19', 1),
('52_3_19_2007', 'RENSING RAYA', '2007', '52_3_19', 1),
('52_3_19_2008', 'PEMATUNG', '2008', '52_3_19', 1),
('52_3_19_2009', 'JEROGUNUNG', '2009', '52_3_19', 1),
('52_3_19_2010', 'PEJARING', '2010', '52_3_19', 1),
('52_3_19_2011', 'BOYEMARE', '2011', '52_3_19', 1),
('52_3_19_2012', 'MONTONG BETER', '2012', '52_3_19', 1),
('52_3_19_2013', 'MENGKURU', '2013', '52_3_19', 1),
('52_3_19_2014', 'GADUNGMAS', '2014', '52_3_19', 1),
('52_3_19_2015', 'KEMBANG ARE SAMPAI', '2015', '52_3_19', 1),
('52_3_19_2016', 'RENSING BAT', '2016', '52_3_19', 1),
('52_3_19_2017', 'TANAK KAKEN', '2017', '52_3_19', 1),
('52_3_19_2018', 'GERISAK SEMANGGELENG', '2018', '52_3_19', 1),
('52_3_1_2001', 'TANJUNG LUAR', '2001', '52_3_1', 1),
('52_3_1_2002', 'PIJOT', '2002', '52_3_1', 1),
('52_3_1_2003', 'SELEBUNG KETANGGA', '2003', '52_3_1', 1),
('52_3_1_2004', 'SEPIT', '2004', '52_3_1', 1),
('52_3_1_2005', 'BATU PUTIK', '2005', '52_3_1', 1),
('52_3_1_2006', 'SENYIUR', '2006', '52_3_1', 1),
('52_3_1_2007', 'KERUAK', '2007', '52_3_1', 1),
('52_3_1_2008', 'KETAPANG RAYA', '2008', '52_3_1', 1),
('52_3_1_2009', 'PIJOT UTARA', '2009', '52_3_1', 1),
('52_3_1_2010', 'DANE RASE', '2010', '52_3_1', 1),
('52_3_1_2011', 'KETANGGA JERAENG', '2011', '52_3_1', 1),
('52_3_1_2012', 'MENDANA RAYA', '2012', '52_3_1', 1),
('52_3_1_2013', 'SETUNGKEP LINGSAR', '2013', '52_3_1', 1),
('52_3_1_2014', 'MONTONG BELAE', '2014', '52_3_1', 1),
('52_3_1_2015', 'PULAU MARINGKIK', '2015', '52_3_1', 1),
('52_3_20_2001', 'BATU NAMPAR', '2001', '52_3_20', 1),
('52_3_20_2002', 'SUKARAJA', '2002', '52_3_20', 1),
('52_3_20_2003', 'JEROWARU', '2003', '52_3_20', 1),
('52_3_20_2004', 'PEMONGKONG', '2004', '52_3_20', 1),
('52_3_20_2005', 'SEKAROH', '2005', '52_3_20', 1),
('52_3_20_2006', 'PANDAN WANGI', '2006', '52_3_20', 1),
('52_3_20_2007', 'WAKAN', '2007', '52_3_20', 1),
('52_3_20_2008', 'KWANG RUNDUN', '2008', '52_3_20', 1),
('52_3_20_2009', 'EKAS BUANA', '2009', '52_3_20', 1),
('52_3_20_2010', 'SEPAPAN', '2010', '52_3_20', 1),
('52_3_20_2011', 'SERIWE', '2011', '52_3_20', 1),
('52_3_20_2012', 'PENE', '2012', '52_3_20', 1),
('52_3_20_2013', 'BATUNAMPAR SELATAN', '2013', '52_3_20', 1),
('52_3_20_2014', 'SUKADAMAI', '2014', '52_3_20', 1),
('52_3_20_2015', 'PARE MAS', '2015', '52_3_20', 1),
('52_3_2_2001', 'SUWANGI', '2001', '52_3_2', 1),
('52_3_2_2002', 'SAKRA', '2002', '52_3_2', 1),
('52_3_2_2003', 'KABAR', '2003', '52_3_2', 1),
('52_3_2_2004', 'RUMBUK', '2004', '52_3_2', 1),
('52_3_2_2005', 'KESELET', '2005', '52_3_2', 1),
('52_3_2_2006', 'SAKRA SELATAN', '2006', '52_3_2', 1),
('52_3_2_2007', 'RUMBUK TIMUR', '2007', '52_3_2', 1),
('52_3_2_2008', 'SUWANGI TIMUR', '2008', '52_3_2', 1),
('52_3_2_2009', 'MOYOT', '2009', '52_3_2', 1),
('52_3_2_2010', 'SONGAK', '2010', '52_3_2', 1),
('52_3_2_2011', 'PERESAK', '2011', '52_3_2', 1),
('52_3_2_2012', 'KUANG BARU', '2012', '52_3_2', 1),
('52_3_3_2001', 'JENGGIK', '2001', '52_3_3', 1),
('52_3_3_2002', 'RARANG', '2002', '52_3_3', 1),
('52_3_3_2003', 'SURADADI', '2003', '52_3_3', 1),
('52_3_3_2004', 'SANTONG', '2004', '52_3_3', 1),
('52_3_3_2005', 'TERARA', '2005', '52_3_3', 1),
('52_3_3_2006', 'SUKADANA', '2006', '52_3_3', 1),
('52_3_3_2007', 'RARANG SELATAN', '2007', '52_3_3', 1),
('52_3_3_2008', 'LEMING', '2008', '52_3_3', 1),
('52_3_3_2009', 'LANDO', '2009', '52_3_3', 1),
('52_3_3_2010', 'RARANG TENGAH', '2010', '52_3_3', 1),
('52_3_3_2011', 'EMBUNG RAJA', '2011', '52_3_3', 1),
('52_3_3_2012', 'SELAGIK', '2012', '52_3_3', 1),
('52_3_3_2013', 'EMBUNG KANDONG', '2013', '52_3_3', 1),
('52_3_3_2014', 'KALIANYAR', '2014', '52_3_3', 1),
('52_3_3_2015', 'RARANG BATAS', '2015', '52_3_3', 1),
('52_3_3_2016', 'PANDAN DURI', '2016', '52_3_3', 1),
('52_3_4_2001', 'SEMAYA', '2001', '52_3_4', 1),
('52_3_4_2002', 'SIKUR', '2002', '52_3_4', 1),
('52_3_4_2003', 'MONTONG BAAN', '2003', '52_3_4', 1),
('52_3_4_2004', 'LOYOK', '2004', '52_3_4', 1),
('52_3_4_2005', 'KOTA RAJA', '2005', '52_3_4', 1),
('52_3_4_2006', 'TETE BATU', '2006', '52_3_4', 1),
('52_3_4_2007', 'KEMBANG KUNING', '2007', '52_3_4', 1),
('52_3_4_2008', 'MONTONG BAAN SELATAN', '2008', '52_3_4', 1),
('52_3_4_2009', 'GELORA', '2009', '52_3_4', 1),
('52_3_4_2010', 'DARMASARI', '2010', '52_3_4', 1),
('52_3_4_2011', 'TETEBATU SELATAN', '2011', '52_3_4', 1),
('52_3_4_2012', 'JERUK MANIS', '2012', '52_3_4', 1),
('52_3_4_2013', 'SIKUR SELATAN', '2013', '52_3_4', 1),
('52_3_4_2014', 'SIKUR BARAT', '2014', '52_3_4', 1),
('52_3_5_2001', 'KESIK', '2001', '52_3_5', 1),
('52_3_5_2002', 'PAOKMOTONG', '2002', '52_3_5', 1),
('52_3_5_2003', 'MASBAGIK SELATAN', '2003', '52_3_5', 1),
('52_3_5_2004', 'MASBAGIK TIMUR', '2004', '52_3_5', 1),
('52_3_5_2005', 'MASBAGIK UTARA', '2005', '52_3_5', 1),
('52_3_5_2006', 'DANGER', '2006', '52_3_5', 1),
('52_3_5_2007', 'LENDANG NANGKA', '2007', '52_3_5', 1),
('52_3_5_2008', 'MASBAGIK UTARA BARU', '2008', '52_3_5', 1),
('52_3_5_2009', 'LENDANG NANGKA UTARA', '2009', '52_3_5', 1),
('52_3_5_2010', 'KUMBANG', '2010', '52_3_5', 1),
('52_3_6_2001', 'SETANGGOR', '2001', '52_3_6', 1),
('52_3_6_2002', 'JANTUK', '2002', '52_3_6', 1),
('52_3_6_2003', 'PADAMARA', '2003', '52_3_6', 1),
('52_3_6_2004', 'DASAN LEKONG', '2004', '52_3_6', 1),
('52_3_6_2005', 'SUKAMULIA', '2005', '52_3_6', 1),
('52_3_6_2006', 'PAOK PAMPANG', '2006', '52_3_6', 1),
('52_3_6_2007', 'SUKAMULIA TIMUR', '2007', '52_3_6', 1),
('52_3_6_2008', 'NYIUR TEBEL', '2008', '52_3_6', 1),
('52_3_6_2009', 'SETANGGOR SELATAN', '2009', '52_3_6', 1),
('52_3_7_1001', 'PANCOR', '1001', '52_3_7', 1),
('52_3_7_1002', 'SELONG', '1002', '52_3_7', 1),
('52_3_7_1003', 'KELAYU SELATAN', '1003', '52_3_7', 1),
('52_3_7_1004', 'DENGGEN', '1004', '52_3_7', 1),
('52_3_7_1005', 'SEKARTEJA', '1005', '52_3_7', 1),
('52_3_7_1006', 'MAJIDI', '1006', '52_3_7', 1),
('52_3_7_1007', 'RAKAM', '1007', '52_3_7', 1),
('52_3_7_1008', 'SANDU BAYA', '1008', '52_3_7', 1),
('52_3_7_1009', 'KEMBANG SARI', '1009', '52_3_7', 1),
('52_3_7_1010', 'KELAYU UTARA', '1010', '52_3_7', 1),
('52_3_7_1011', 'KELAJU JORONG', '1011', '52_3_7', 1),
('52_3_7_2012', 'DANGGEN TIMUR', '2012', '52_3_7', 1),
('52_3_8_2001', 'BAGIK PAPAN', '2001', '52_3_8', 1),
('52_3_8_2002', 'APIT AIK', '2002', '52_3_8', 1),
('52_3_8_2003', 'KERUMUT', '2003', '52_3_8', 1),
('52_3_8_2004', 'POHGADING', '2004', '52_3_8', 1),
('52_3_8_2005', 'BATUYANG', '2005', '52_3_8', 1),
('52_3_8_2006', 'PRINGGABAYA', '2006', '52_3_8', 1),
('52_3_8_2007', 'LABUHAN LOMBOK', '2007', '52_3_8', 1),
('52_3_8_2008', 'PRINGGABAYA UTARA', '2008', '52_3_8', 1),
('52_3_8_2009', 'POHGADING TIMUR', '2009', '52_3_8', 1),
('52_3_8_2010', 'TEKO', '2010', '52_3_8', 1),
('52_3_8_2011', 'ANGGARAKSA', '2011', '52_3_8', 1),
('52_3_8_2012', 'TANAK GADANG', '2012', '52_3_8', 1),
('52_3_8_2013', 'GUNUNG MALANG', '2013', '52_3_8', 1),
('52_3_8_2014', 'SERUNI MUMBUL', '2014', '52_3_8', 1),
('52_3_8_2015', 'TELAGA WARU', '2015', '52_3_8', 1),
('52_3_9_2001', 'LENEK', '2001', '52_3_9', 1),
('52_3_9_2002', 'AIKMEL', '2002', '52_3_9', 1),
('52_3_9_2003', 'KALIJAGA', '2003', '52_3_9', 1),
('52_3_9_2004', 'KEMBANG KERANG', '2004', '52_3_9', 1),
('52_3_9_2005', 'LENEK LAUK', '2005', '52_3_9', 1),
('52_3_9_2006', 'LENEK DAYA', '2006', '52_3_9', 1),
('52_3_9_2007', 'AIKMEL UTARA', '2007', '52_3_9', 1),
('52_3_9_2008', 'KALIJAGA TIMUR', '2008', '52_3_9', 1),
('52_3_9_2009', 'KALIJAGA SELATAN', '2009', '52_3_9', 1),
('52_3_9_2010', 'AIKMEL BARAT', '2010', '52_3_9', 1),
('52_3_9_2011', 'KEMBANG KERANG DAYA', '2011', '52_3_9', 1),
('52_3_9_2012', 'LENEK BARU', '2012', '52_3_9', 1),
('52_3_9_2013', 'LENEK PASIRAMAN', '2013', '52_3_9', 1),
('52_3_9_2014', 'TOYA', '2014', '52_3_9', 1),
('52_3_9_2015', 'LENEK KALI BAMBANG', '2015', '52_3_9', 1),
('52_3_9_2016', 'LENEK RAMBAN BIAK', '2016', '52_3_9', 1),
('52_3_9_2017', 'SUKAREMA', '2017', '52_3_9', 1),
('52_3_9_2018', 'KALIJAGA BARU', '2018', '52_3_9', 1),
('52_3_9_2019', 'KALIJAGA TENGAH', '2019', '52_3_9', 1),
('52_3_9_2020', 'BAGIK NYAKA SANTRI', '2020', '52_3_9', 1),
('52_3_9_2021', 'AIK PRAPA', '2021', '52_3_9', 1),
('52_3_9_2022', 'LENEK DUREN', '2022', '52_3_9', 1),
('52_3_9_2023', 'AIKMEL TIMUR', '2023', '52_3_9', 1),
('52_3_9_2024', 'KEROYA', '2024', '52_3_9', 1),
('52_4_10_2001', 'SEMPE', '2001', '52_4_10', 1),
('52_4_10_2002', 'SEMAMUNG', '2002', '52_4_10', 1),
('52_4_10_2003', 'SEBASANG', '2003', '52_4_10', 1),
('52_4_10_2004', 'BATU TERING', '2004', '52_4_10', 1),
('52_4_10_2005', 'BATU BULAN', '2005', '52_4_10', 1),
('52_4_10_2006', 'MOKONG', '2006', '52_4_10', 1),
('52_4_10_2007', 'PERNEK', '2007', '52_4_10', 1),
('52_4_10_2008', 'LESENG', '2008', '52_4_10', 1),
('52_4_10_2009', 'LITO', '2009', '52_4_10', 1),
('52_4_10_2010', 'MARGA KARYA', '2010', '52_4_10', 1),
('52_4_10_2011', 'MAMAN', '2011', '52_4_10', 1),
('52_4_10_2012', 'BRANG REA', '2012', '52_4_10', 1),
('52_4_11_2002', 'LEBIN', '2002', '52_4_11', 1),
('52_4_11_2003', 'LEBANGKAR', '2003', '52_4_11', 1),
('52_4_11_2008', 'ROPANG', '2008', '52_4_11', 1),
('52_4_11_2009', 'LAWIN', '2009', '52_4_11', 1),
('52_4_11_2010', 'RANAN', '2010', '52_4_11', 1),
('52_4_12_2003', 'LAPE', '2003', '52_4_12', 1),
('52_4_12_2005', 'LABUHAN KURIS', '2005', '52_4_12', 1),
('52_4_12_2006', 'DETE', '2006', '52_4_12', 1),
('52_4_12_2009', 'HIJRAH', '2009', '52_4_12', 1),
('52_4_13_2003', 'MUER', '2003', '52_4_13', 1),
('52_4_13_2004', 'PLAMPANG', '2004', '52_4_13', 1),
('52_4_13_2005', 'TELUK SANTONG', '2005', '52_4_13', 1),
('52_4_13_2006', 'SEPAYUNG', '2006', '52_4_13', 1),
('52_4_13_2007', 'SEPAKAT', '2007', '52_4_13', 1),
('52_4_13_2008', 'UPT. PERODE SP I', '2008', '52_4_13', 1),
('52_4_13_2009', 'UPT. PERODE SP II', '2009', '52_4_13', 1),
('52_4_13_2010', 'UPT PERODE SP III', '2010', '52_4_13', 1),
('52_4_13_2012', 'SELANTEH', '2012', '52_4_13', 1),
('52_4_13_2013', 'BRANG KOLONG', '2013', '52_4_13', 1),
('52_4_13_2014', 'USAR', '2014', '52_4_13', 1),
('52_4_14_2001', 'BOAL', '2001', '52_4_14', 1),
('52_4_14_2002', 'JOTANG', '2002', '52_4_14', 1),
('52_4_14_2003', 'EMPANG ATAS', '2003', '52_4_14', 1),
('52_4_14_2004', 'EMPANG BAWA', '2004', '52_4_14', 1),
('52_4_14_2005', 'ONGKO', '2005', '52_4_14', 1),
('52_4_14_2012', 'LAMENTA', '2012', '52_4_14', 1),
('52_4_14_2013', 'GAPIT', '2013', '52_4_14', 1),
('52_4_14_2014', 'PAMANTO', '2014', '52_4_14', 1),
('52_4_14_2015', 'BUNGA EJA', '2015', '52_4_14', 1),
('52_4_14_2016', 'JOTANG BERU', '2016', '52_4_14', 1),
('52_4_17_2001', 'MAPIN REA', '2001', '52_4_17', 1),
('52_4_17_2002', 'MAPIN KEBAK', '2002', '52_4_17', 1),
('52_4_17_2003', 'LABUHAN MAPIN', '2003', '52_4_17', 1),
('52_4_17_2004', 'LEKONG', '2004', '52_4_17', 1),
('52_4_17_2005', 'GONTAR', '2005', '52_4_17', 1),
('52_4_17_2006', 'USAR MAPIN', '2006', '52_4_17', 1),
('52_4_17_2007', 'GONTAR BARU', '2007', '52_4_17', 1),
('52_4_17_2008', 'MAPIN BERU', '2008', '52_4_17', 1),
('52_4_18_2001', 'LABUHAN BADAS', '2001', '52_4_18', 1),
('52_4_18_2002', 'KARANG DIMA', '2002', '52_4_18', 1),
('52_4_18_2003', 'LABUHAN SUMBAWA', '2003', '52_4_18', 1),
('52_4_18_2004', 'LABUHAN AJI', '2004', '52_4_18', 1),
('52_4_18_2005', 'SEBOTOK', '2005', '52_4_18', 1),
('52_4_18_2006', 'BAJO MEDANG', '2006', '52_4_18', 1),
('52_4_18_2007', 'BUGIS MEDANG', '2007', '52_4_18', 1),
('52_4_19_2001', 'LABANGKA', '2001', '52_4_19', 1),
('52_4_19_2002', 'SEKOKAT', '2002', '52_4_19', 1),
('52_4_19_2003', 'SUKA MULYA', '2003', '52_4_19', 1),
('52_4_19_2004', 'SUKA DAMAI', '2004', '52_4_19', 1),
('52_4_19_2005', 'JAYA MAKMUR', '2005', '52_4_19', 1),
('52_4_20_2001', 'TARUSA', '2001', '52_4_20', 1),
('52_4_20_2002', 'JURU  MAPIN', '2002', '52_4_20', 1),
('52_4_20_2003', 'KALABESO', '2003', '52_4_20', 1),
('52_4_20_2004', 'LABUHAN BURUNG', '2004', '52_4_20', 1),
('52_4_20_2005', 'PULAU KAUNG', '2005', '52_4_20', 1),
('52_4_20_2006', 'BUIN BARU', '2006', '52_4_20', 1),
('52_4_21_2001', 'RHEE', '2001', '52_4_21', 1),
('52_4_21_2002', 'SAMPE', '2002', '52_4_21', 1),
('52_4_21_2003', 'LUK', '2003', '52_4_21', 1),
('52_4_21_2004', 'RHEE LOKA', '2004', '52_4_21', 1),
('52_4_22_2001', 'PELAT', '2001', '52_4_22', 1),
('52_4_22_2002', 'KEREKEH', '2002', '52_4_22', 1),
('52_4_22_2003', 'BOAK', '2003', '52_4_22', 1),
('52_4_22_2004', 'JOROK', '2004', '52_4_22', 1),
('52_4_22_2005', 'KERATO', '2005', '52_4_22', 1),
('52_4_22_2006', 'PUNGKA', '2006', '52_4_22', 1),
('52_4_22_2007', 'UMA BERINGIN', '2007', '52_4_22', 1),
('52_4_22_2008', 'NIJANG', '2008', '52_4_22', 1),
('52_4_23_2001', 'PUNGKIT', '2001', '52_4_23', 1),
('52_4_23_2002', 'SEBEWE', '2002', '52_4_23', 1),
('52_4_23_2003', 'PENYARING', '2003', '52_4_23', 1),
('52_4_23_2004', 'KUKIN', '2004', '52_4_23', 1),
('52_4_23_2005', 'BARU TAHAN', '2005', '52_4_23', 1),
('52_4_23_2006', 'SONGKAR', '2006', '52_4_23', 1),
('52_4_24_2001', 'SIMU', '2001', '52_4_24', 1),
('52_4_24_2002', 'MARONGE', '2002', '52_4_24', 1),
('52_4_24_2003', 'PAMASAR', '2003', '52_4_24', 1),
('52_4_24_2004', 'LABUHAN SANGORO', '2004', '52_4_24', 1),
('52_4_25_2001', 'BANTULANTE', '2001', '52_4_25', 1),
('52_4_25_2002', 'LABUHAN BONTONG', '2002', '52_4_25', 1),
('52_4_25_2003', 'LABUHAN AJI', '2003', '52_4_25', 1),
('52_4_25_2004', 'LABUHAN JAMBU', '2004', '52_4_25', 1),
('52_4_25_2005', 'MATA', '2005', '52_4_25', 1),
('52_4_25_2006', 'TOLO OI', '2006', '52_4_25', 1),
('52_4_25_2007', 'BANDA', '2007', '52_4_25', 1),
('52_4_25_2008', 'LABUHAN PIDANG', '2008', '52_4_25', 1),
('52_4_26_2001', 'PUNGKIT', '2001', '52_4_26', 1),
('52_4_26_2002', 'BERORA', '2002', '52_4_26', 1),
('52_4_26_2003', 'LOPOK', '2003', '52_4_26', 1),
('52_4_26_2004', 'LANGAM', '2004', '52_4_26', 1),
('52_4_26_2005', 'MAMAK', '2005', '52_4_26', 1),
('52_4_26_2006', 'LOPOK BERU', '2006', '52_4_26', 1),
('52_4_26_2007', 'TATEDE', '2007', '52_4_26', 1),
('52_4_27_2001', 'TATEBAL', '2001', '52_4_27', 1),
('52_4_27_2002', 'LENANGGUAR', '2002', '52_4_27', 1),
('52_4_27_2003', 'LEDANG', '2003', '52_4_27', 1),
('52_4_27_2004', 'TELAGA', '2004', '52_4_27', 1),
('52_4_28_2001', 'SENAWANG', '2001', '52_4_28', 1),
('52_4_28_2002', 'KELAWIS', '2002', '52_4_28', 1),
('52_4_28_2003', 'MUNGKIN', '2003', '52_4_28', 1),
('52_4_28_2004', 'SEBEOK', '2004', '52_4_28', 1),
('52_4_29_2001', 'LANTUNG', '2001', '52_4_29', 1),
('52_4_29_2002', 'SEPUKUR', '2002', '52_4_29', 1),
('52_4_29_2003', 'AI MUAL', '2003', '52_4_29', 1),
('52_4_29_2004', 'PADESA', '2004', '52_4_29', 1),
('52_4_2_2001', 'LUNYUK REA', '2001', '52_4_2', 1),
('52_4_2_2002', 'LUNYUK ODE', '2002', '52_4_2', 1),
('52_4_2_2003', 'JAMU', '2003', '52_4_2', 1),
('52_4_2_2007', 'PADA SUKA', '2007', '52_4_2', 1),
('52_4_2_2008', 'SUKA  MAJU', '2008', '52_4_2', 1),
('52_4_2_2009', 'PERUNG', '2009', '52_4_2', 1),
('52_4_2_2010', 'EMANG LESTARI', '2010', '52_4_2', 1),
('52_4_5_2001', 'LUAR', '2001', '52_4_5', 1),
('52_4_5_2002', 'BARU', '2002', '52_4_5', 1),
('52_4_5_2003', 'KALIMANGO', '2003', '52_4_5', 1),
('52_4_5_2004', 'MARENTE', '2004', '52_4_5', 1),
('52_4_5_2005', 'JURAN ALAS', '2005', '52_4_5', 1),
('52_4_5_2006', 'DALAM', '2006', '52_4_5', 1),
('52_4_5_2007', 'PULAU BUNGIN', '2007', '52_4_5', 1),
('52_4_5_2012', 'LABUHAN  ALAS', '2012', '52_4_5', 1),
('52_4_6_2001', 'STOWE BRANG', '2001', '52_4_6', 1),
('52_4_6_2002', 'LABUHAN BAJO', '2002', '52_4_6', 1),
('52_4_6_2003', 'PUKAT', '2003', '52_4_6', 1),
('52_4_6_2004', 'ORONG BAWA', '2004', '52_4_6', 1),
('52_4_6_2005', 'JOROK', '2005', '52_4_6', 1),
('52_4_6_2006', 'MOTONG', '2006', '52_4_6', 1),
('52_4_6_2007', 'TENGAH', '2007', '52_4_6', 1),
('52_4_6_2008', 'SEBEDO', '2008', '52_4_6', 1),
('52_4_6_2012', 'BALE BRANG', '2012', '52_4_6', 1),
('52_4_7_2001', 'BATU ROTOK', '2001', '52_4_7', 1),
('52_4_7_2002', 'TANGKAM PULIT', '2002', '52_4_7', 1),
('52_4_7_2003', 'BAO DESA', '2003', '52_4_7', 1),
('52_4_7_2004', 'TEPAL', '2004', '52_4_7', 1),
('52_4_7_2005', 'BATU DULANG', '2005', '52_4_7', 1),
('52_4_7_2006', 'KELUNGKUNG', '2006', '52_4_7', 1),
('52_4_8_1001', 'SAMAPUIN', '1001', '52_4_8', 1),
('52_4_8_1002', 'BRANG BARA', '1002', '52_4_8', 1),
('52_4_8_1003', 'PEKAT', '1003', '52_4_8', 1),
('52_4_8_1004', 'SEKETENG', '1004', '52_4_8', 1),
('52_4_8_1005', 'BUGIS', '1005', '52_4_8', 1),
('52_4_8_1006', 'LEMPEH', '1006', '52_4_8', 1),
('52_4_8_1007', 'BRANG BIJI', '1007', '52_4_8', 1),
('52_4_8_1008', 'UMA SIMA', '1008', '52_4_8', 1),
('52_4_9_2001', 'MOYO', '2001', '52_4_9', 1),
('52_4_9_2002', 'KAKIANG', '2002', '52_4_9', 1),
('52_4_9_2003', 'NGERU', '2003', '52_4_9', 1),
('52_4_9_2004', 'BERARE', '2004', '52_4_9', 1),
('52_4_9_2005', 'POTO', '2005', '52_4_9', 1),
('52_4_9_2009', 'SERADING', '2009', '52_4_9', 1),
('52_4_9_2010', 'OLAT RAWA', '2010', '52_4_9', 1),
('52_4_9_2011', 'BATU BANGKA', '2011', '52_4_9', 1),
('52_4_9_2013', 'MOYO MEKAR', '2013', '52_4_9', 1),
('52_4_9_2014', 'LABUHAN IJUK', '2014', '52_4_9', 1),
('52_5_1_1001', 'BADA', '1001', '52_5_1', 1),
('52_5_1_1002', 'BALI', '1002', '52_5_1', 1),
('52_5_1_1003', 'POTU', '1003', '52_5_1', 1),
('52_5_1_1004', 'KARIJAWA', '1004', '52_5_1', 1),
('52_5_1_1005', 'DORA TANGGA', '1005', '52_5_1', 1),
('52_5_1_1006', 'KANDAI I', '1006', '52_5_1', 1),
('52_5_1_2007', 'O''O', '2007', '52_5_1', 1),
('52_5_1_2008', 'KATUA', '2008', '52_5_1', 1),
('52_5_1_2009', 'KARAMABURA', '2009', '52_5_1', 1),
('52_5_1_2010', 'MBAWI', '2010', '52_5_1', 1),
('52_5_1_2011', 'DORE BARA', '2011', '52_5_1', 1),
('52_5_1_2012', 'KAREKE', '2012', '52_5_1', 1),
('52_5_1_2013', 'MANGGE NAE', '2013', '52_5_1', 1),
('52_5_1_2014', 'MANGGEASI', '2014', '52_5_1', 1),
('52_5_1_2015', 'SORI SAKOLO', '2015', '52_5_1', 1),
('52_5_2_2001', 'KEMPO', '2001', '52_5_2', 1),
('52_5_2_2002', 'TA''A', '2002', '52_5_2', 1),
('52_5_2_2003', 'SORO', '2003', '52_5_2', 1),
('52_5_2_2004', 'KONTE', '2004', '52_5_2', 1),
('52_5_2_2005', 'TOLO KALO', '2005', '52_5_2', 1),
('52_5_2_2006', 'SONGGAJA', '2006', '52_5_2', 1),
('52_5_2_2007', 'DORO KOBO', '2007', '52_5_2', 1),
('52_5_2_2008', 'SORO BARAT', '2008', '52_5_2', 1),
('52_5_3_2001', 'RASA BOU', '2001', '52_5_3', 1),
('52_5_3_2002', 'DAHA', '2002', '52_5_3', 1),
('52_5_3_2003', 'HU''U', '2003', '52_5_3', 1),
('52_5_3_2004', 'ADU', '2004', '52_5_3', 1),
('52_5_3_2005', 'CEMPI JAYA', '2005', '52_5_3', 1),
('52_5_3_2006', 'MERADA', '2006', '52_5_3', 1),
('52_5_3_2007', 'JALA', '2007', '52_5_3', 1),
('52_5_3_2008', 'SAWE', '2008', '52_5_3', 1),
('52_5_4_2001', 'MALAJU', '2001', '52_5_4', 1),
('52_5_4_2002', 'LASI', '2002', '52_5_4', 1),
('52_5_4_2003', 'MBUJU', '2003', '52_5_4', 1),
('52_5_4_2004', 'KIWU', '2004', '52_5_4', 1),
('52_5_4_2005', 'TAROPO', '2005', '52_5_4', 1),
('52_5_4_2006', 'KARAMA', '2006', '52_5_4', 1),
('52_5_5_1001', 'MONTA BARU', '1001', '52_5_5', 1),
('52_5_5_1002', 'KANDAI II', '1002', '52_5_5', 1),
('52_5_5_1003', 'SIMPASAI', '1003', '52_5_5', 1),
('52_5_5_2004', 'SANEO', '2004', '52_5_5', 1),
('52_5_5_2005', 'WAWONDURU', '2005', '52_5_5', 1),
('52_5_5_2006', 'MATUA', '2006', '52_5_5', 1),
('52_5_5_2007', 'NOWA', '2007', '52_5_5', 1),
('52_5_5_2008', 'BARA', '2008', '52_5_5', 1),
('52_5_5_2009', 'MADA PRAMA', '2009', '52_5_5', 1),
('52_5_5_2010', 'RIWO', '2010', '52_5_5', 1),
('52_5_5_2011', 'MUMBU', '2011', '52_5_5', 1),
('52_5_5_2012', 'SERA KAPI', '2012', '52_5_5', 1),
('52_5_5_2013', 'RABA BAKA', '2013', '52_5_5', 1),
('52_5_5_2014', 'BAKA JAYA', '2014', '52_5_5', 1),
('52_5_6_2001', 'PEKAT', '2001', '52_5_6', 1),
('52_5_6_2002', 'NANGAMIRO', '2002', '52_5_6', 1),
('52_5_6_2003', 'KADINDI', '2003', '52_5_6', 1),
('52_5_6_2004', 'BERINGIN JAYA', '2004', '52_5_6', 1),
('52_5_6_2005', 'SORI NOMO', '2005', '52_5_6', 1),
('52_5_6_2006', 'TAMBORA', '2006', '52_5_6', 1),
('52_5_6_2007', 'DORO PETI', '2007', '52_5_6', 1),
('52_5_6_2008', 'KAROMBO', '2008', '52_5_6', 1),
('52_5_6_2009', 'KADINDI BARAT', '2009', '52_5_6', 1),
('52_5_6_2010', 'NANGAKARA', '2010', '52_5_6', 1),
('52_5_6_2011', 'SORI TATANGA', '2011', '52_5_6', 1),
('52_5_6_2012', 'CALABAI', '2012', '52_5_6', 1),
('52_5_7_2001', 'SORIUTU', '2001', '52_5_7', 1),
('52_5_7_2002', 'BANGGO', '2002', '52_5_7', 1),
('52_5_7_2003', 'KWANGKO', '2003', '52_5_7', 1),
('52_5_7_2004', 'LANCI JAYA', '2004', '52_5_7', 1),
('52_5_7_2005', 'SUKA DAMAI', '2005', '52_5_7', 1),
('52_5_7_2006', 'NUSA JAYA', '2006', '52_5_7', 1),
('52_5_7_2007', 'DOROMELO', '2007', '52_5_7', 1),
('52_5_7_2008', 'NANGATUMPU', '2008', '52_5_7', 1),
('52_5_7_2009', 'KAMPASI MECI', '2009', '52_5_7', 1),
('52_5_7_2010', 'TEKA SIRE', '2010', '52_5_7', 1),
('52_5_7_2011', 'ANAMINA', '2011', '52_5_7', 1),
('52_5_7_2012', 'TANJU', '2012', '52_5_7', 1),
('52_5_8_2001', 'RANGGO', '2001', '52_5_8', 1),
('52_5_8_2002', 'JAMBU', '2002', '52_5_8', 1),
('52_5_8_2003', 'LEPADI', '2003', '52_5_8', 1),
('52_5_8_2004', 'LUNE', '2004', '52_5_8', 1),
('52_5_8_2005', 'WOKO', '2005', '52_5_8', 1),
('52_5_8_2006', 'TEMBAL LAE', '2006', '52_5_8', 1),
('52_6_10_2001', 'NIPA', '2001', '52_6_10', 1),
('52_6_10_2002', 'TOLOWATA', '2002', '52_6_10', 1),
('52_6_10_2003', 'RITE', '2003', '52_6_10', 1),
('52_6_10_2004', 'MAWU', '2004', '52_6_10', 1),
('52_6_10_2005', 'TALAPITI', '2005', '52_6_10', 1),
('52_6_10_2006', 'KOLE', '2006', '52_6_10', 1),
('52_6_11_2001', 'WAWORADA', '2001', '52_6_11', 1),
('52_6_11_2002', 'KARUMBU', '2002', '52_6_11', 1),
('52_6_11_2003', 'RUPE', '2003', '52_6_11', 1),
('52_6_11_2004', 'KALODU', '2004', '52_6_11', 1),
('52_6_11_2005', 'KAWUWU', '2005', '52_6_11', 1),
('52_6_11_2006', 'DORO O''O', '2006', '52_6_11', 1),
('52_6_11_2007', 'LAJU', '2007', '52_6_11', 1),
('52_6_11_2008', 'KANGGA', '2008', '52_6_11', 1),
('52_6_11_2009', 'KARAMPI', '2009', '52_6_11', 1),
('52_6_11_2010', 'WADURUKA', '2010', '52_6_11', 1),
('52_6_11_2011', 'DUMU', '2011', '52_6_11', 1),
('52_6_11_2012', 'ROMPO', '2012', '52_6_11', 1),
('52_6_11_2013', 'SARAE RUMA', '2013', '52_6_11', 1),
('52_6_11_2014', 'PUSU', '2014', '52_6_11', 1),
('52_6_11_2015', 'SAMBANE', '2015', '52_6_11', 1),
('52_6_12_2001', 'KALEO', '2001', '52_6_12', 1),
('52_6_12_2002', 'SIMPASAI', '2002', '52_6_12', 1),
('52_6_12_2003', 'MANGGE', '2003', '52_6_12', 1),
('52_6_12_2004', 'LANTA', '2004', '52_6_12', 1),
('52_6_12_2005', 'NGGELU', '2005', '52_6_12', 1),
('52_6_12_2006', 'RATO', '2006', '52_6_12', 1),
('52_6_12_2007', 'SUMI', '2007', '52_6_12', 1),
('52_6_12_2008', 'SORO', '2008', '52_6_12', 1),
('52_6_12_2009', 'LAMBU', '2009', '52_6_12', 1),
('52_6_12_2010', 'HIDIRASA', '2010', '52_6_12', 1),
('52_6_12_2011', 'LANTA BARAT', '2011', '52_6_12', 1),
('52_6_12_2012', 'MELAYU', '2012', '52_6_12', 1),
('52_6_12_2013', 'SANGGA', '2013', '52_6_12', 1),
('52_6_12_2014', 'MONTA BARU', '2014', '52_6_12', 1),
('52_6_13_2001', 'WORO', '2001', '52_6_13', 1),
('52_6_13_2002', 'CAMPA', '2002', '52_6_13', 1),
('52_6_13_2003', 'MPURI', '2003', '52_6_13', 1),
('52_6_13_2004', 'NDANO', '2004', '52_6_13', 1),
('52_6_13_2005', 'MONGGO', '2005', '52_6_13', 1),
('52_6_13_2006', 'DENA', '2006', '52_6_13', 1),
('52_6_13_2007', 'RADE', '2007', '52_6_13', 1),
('52_6_13_2008', 'TONDA', '2008', '52_6_13', 1),
('52_6_13_2009', 'BOLO', '2009', '52_6_13', 1),
('52_6_13_2010', 'MADAWAU', '2010', '52_6_13', 1),
('52_6_13_2011', 'NCANDI', '2011', '52_6_13', 1),
('52_6_14_2001', 'LABUHAN KENANGA', '2001', '52_6_14', 1),
('52_6_14_2002', 'KAWINDA NAE', '2002', '52_6_14', 1),
('52_6_14_2003', 'KAWINDA TOI', '2003', '52_6_14', 1),
('52_6_14_2004', 'OI PANIHI', '2004', '52_6_14', 1),
('52_6_14_2005', 'OI BURA', '2005', '52_6_14', 1),
('52_6_14_2006', 'OI KATUPA', '2006', '52_6_14', 1),
('52_6_14_2007', 'RASABOU', '2007', '52_6_14', 1),
('52_6_15_2001', 'BAJO', '2001', '52_6_15', 1),
('52_6_15_2002', 'PUNTI', '2002', '52_6_15', 1),
('52_6_15_2003', 'WADUKOPA', '2003', '52_6_15', 1),
('52_6_15_2004', 'KANATA', '2004', '52_6_15', 1),
('52_6_15_2005', 'SAI', '2005', '52_6_15', 1),
('52_6_15_2006', 'SAMPUNGU', '2006', '52_6_15', 1),
('52_6_15_2007', 'LEWINTANA', '2007', '52_6_15', 1),
('52_6_16_2001', 'PARADO WANE', '2001', '52_6_16', 1),
('52_6_16_2002', 'PARADO RATO', '2002', '52_6_16', 1),
('52_6_16_2003', 'KUTA', '2003', '52_6_16', 1),
('52_6_16_2004', 'KANCA', '2004', '52_6_16', 1),
('52_6_16_2005', 'LERE', '2005', '52_6_16', 1),
('52_6_17_2001', 'KABARO', '2001', '52_6_17', 1),
('52_6_17_2002', 'KUTA', '2002', '52_6_17', 1),
('52_6_17_2003', 'SAMBORI', '2003', '52_6_17', 1),
('52_6_17_2004', 'TETA', '2004', '52_6_17', 1),
('52_6_17_2005', 'KA''OWA', '2005', '52_6_17', 1),
('52_6_17_2006', 'LONDU', '2006', '52_6_17', 1),
('52_6_18_2001', 'PANDA', '2001', '52_6_18', 1),
('52_6_18_2002', 'BELO', '2002', '52_6_18', 1),
('52_6_18_2003', 'TOLONGONDOA', '2003', '52_6_18', 1),
('52_6_18_2004', 'TONGGORISA', '2004', '52_6_18', 1),
('52_6_18_2005', 'TEKE', '2005', '52_6_18', 1),
('52_6_18_2006', 'NTONGGU', '2006', '52_6_18', 1),
('52_6_18_2007', 'NATA', '2007', '52_6_18', 1),
('52_6_18_2008', 'DORE', '2008', '52_6_18', 1),
('52_6_18_2009', 'ROI', '2009', '52_6_18', 1),
('52_6_18_2011', 'RAGI', '2011', '52_6_18', 1),
('52_6_18_2012', 'PADOLO', '2012', '52_6_18', 1),
('52_6_18_2013', 'BRE', '2013', '52_6_18', 1),
('52_6_1_2005', 'TOLOTANGGA', '2005', '52_6_1', 1),
('52_6_1_2006', 'SONDO', '2006', '52_6_1', 1),
('52_6_1_2007', 'SIMPASAI', '2007', '52_6_1', 1),
('52_6_1_2008', 'SIE', '2008', '52_6_1', 1),
('52_6_1_2009', 'TANGGA', '2009', '52_6_1', 1),
('52_6_1_2010', 'MONTA', '2010', '52_6_1', 1),
('52_6_1_2011', 'SAKURU', '2011', '52_6_1', 1),
('52_6_1_2012', 'BARALAU', '2012', '52_6_1', 1),
('52_6_1_2014', 'TOLOUWI', '2014', '52_6_1', 1),
('52_6_1_2015', 'WILAMACI', '2015', '52_6_1', 1),
('52_6_1_2016', 'PELA', '2016', '52_6_1', 1),
('52_6_1_2017', 'TANGGA BARU', '2017', '52_6_1', 1),
('52_6_1_2018', 'NONTOTERA', '2018', '52_6_1', 1),
('52_6_1_2019', 'WARO', '2019', '52_6_1', 1),
('52_6_2_2001', 'TAMBE', '2001', '52_6_2', 1),
('52_6_2_2002', 'RASABAU', '2002', '52_6_2', 1),
('52_6_2_2003', 'RATO', '2003', '52_6_2', 1),
('52_6_2_2004', 'KANANGA', '2004', '52_6_2', 1),
('52_6_2_2005', 'LEU', '2005', '52_6_2', 1),
('52_6_2_2006', 'TIMU', '2006', '52_6_2', 1),
('52_6_2_2007', 'BONTOKAPE', '2007', '52_6_2', 1),
('52_6_2_2008', 'SONDOSIA', '2008', '52_6_2', 1),
('52_6_2_2009', 'NGGEMBE', '2009', '52_6_2', 1),
('52_6_2_2010', 'SANOLO', '2010', '52_6_2', 1),
('52_6_2_2011', 'TUMPU', '2011', '52_6_2', 1),
('52_6_2_2012', 'RADA', '2012', '52_6_2', 1),
('52_6_2_2013', 'KARA', '2013', '52_6_2', 1),
('52_6_2_2014', 'DARUSSALAM', '2014', '52_6_2', 1),
('52_6_3_2001', 'KELI', '2001', '52_6_3', 1),
('52_6_3_2002', 'TENGA', '2002', '52_6_3', 1),
('52_6_3_2003', 'TENTE', '2003', '52_6_3', 1),
('52_6_3_2004', 'RABAKODO', '2004', '52_6_3', 1),
('52_6_3_2005', 'SAMILI', '2005', '52_6_3', 1),
('52_6_3_2006', 'KALAMPA', '2006', '52_6_3', 1),
('52_6_3_2007', 'RISA', '2007', '52_6_3', 1),
('52_6_3_2008', 'PANDAI', '2008', '52_6_3', 1),
('52_6_3_2009', 'DONGGOBOLO', '2009', '52_6_3', 1),
('52_6_3_2010', 'DADIBOU', '2010', '52_6_3', 1),
('52_6_3_2011', 'TALABIU', '2011', '52_6_3', 1),
('52_6_3_2012', 'NARU', '2012', '52_6_3', 1),
('52_6_3_2013', 'NISA', '2013', '52_6_3', 1),
('52_6_3_2014', 'WADUWANI', '2014', '52_6_3', 1),
('52_6_3_2015', 'PENAPALI', '2015', '52_6_3', 1),
('52_6_4_2001', 'NCERA', '2001', '52_6_4', 1),
('52_6_4_2002', 'LIDO', '2002', '52_6_4', 1),
('52_6_4_2003', 'NGALI', '2003', '52_6_4', 1),
('52_6_4_2004', 'RENDA', '2004', '52_6_4', 1),
('52_6_4_2005', 'CENGGU', '2005', '52_6_4', 1),
('52_6_4_2006', 'RUNGGU', '2006', '52_6_4', 1),
('52_6_4_2014', 'SOKI', '2014', '52_6_4', 1),
('52_6_4_2015', 'ROKA', '2015', '52_6_4', 1),
('52_6_4_2016', 'DIHA', '2016', '52_6_4', 1),
('52_6_5_2001', 'TARLAWI', '2001', '52_6_5', 1),
('52_6_5_2005', 'NTORI', '2005', '52_6_5', 1),
('52_6_5_2006', 'MARIA', '2006', '52_6_5', 1),
('52_6_5_2007', 'PESA', '2007', '52_6_5', 1),
('52_6_5_2008', 'RABA', '2008', '52_6_5', 1),
('52_6_5_2011', 'KAMBILO', '2011', '52_6_5', 1),
('52_6_5_2012', 'MARIA UTARA', '2012', '52_6_5', 1),
('52_6_5_2013', 'KOMBO', '2013', '52_6_5', 1),
('52_6_5_2014', 'RIANMAU', '2014', '52_6_5', 1),
('52_6_6_2001', 'SARI', '2001', '52_6_6', 1),
('52_6_6_2002', 'BOKE', '2002', '52_6_6', 1),
('52_6_6_2003', 'JIA', '2003', '52_6_6', 1),
('52_6_6_2004', 'BUGIS', '2004', '52_6_6', 1),
('52_6_6_2005', 'NARU', '2005', '52_6_6', 1),
('52_6_6_2006', 'RASABOU', '2006', '52_6_6', 1),
('52_6_6_2007', 'SANGIA', '2007', '52_6_6', 1),
('52_6_6_2008', 'NA''E', '2008', '52_6_6', 1),
('52_6_6_2009', 'RAI O''I', '2009', '52_6_6', 1),
('52_6_6_2010', 'PARANGINA', '2010', '52_6_6', 1),
('52_6_6_2011', 'KOWO', '2011', '52_6_6', 1),
('52_6_6_2012', 'BUNCU', '2012', '52_6_6', 1),
('52_6_6_2013', 'POJA', '2013', '52_6_6', 1),
('52_6_6_2014', 'BAJO PULO', '2014', '52_6_6', 1),
('52_6_6_2015', 'NARU BARAT', '2015', '52_6_6', 1),
('52_6_6_2016', 'TANAH PUTIH', '2016', '52_6_6', 1),
('52_6_6_2017', 'LAMERA', '2017', '52_6_6', 1),
('52_6_6_2018', 'OI MACI', '2018', '52_6_6', 1),
('52_6_7_2001', 'NTOKE', '2001', '52_6_7', 1),
('52_6_7_2002', 'PAI', '2002', '52_6_7', 1),
('52_6_7_2003', 'NUNGGI', '2003', '52_6_7', 1),
('52_6_7_2004', 'TAWALI', '2004', '52_6_7', 1),
('52_6_7_2005', 'HADIRASA', '2005', '52_6_7', 1),
('52_6_7_2006', 'WORA', '2006', '52_6_7', 1),
('52_6_7_2007', 'SANGIANG', '2007', '52_6_7', 1),
('52_6_7_2008', 'BALA', '2008', '52_6_7', 1),
('52_6_7_2009', 'OI TUI', '2009', '52_6_7', 1),
('52_6_7_2010', 'TADEWA', '2010', '52_6_7', 1),
('52_6_7_2011', 'NANGA WERA', '2011', '52_6_7', 1),
('52_6_7_2012', 'RANGGASOLO', '2012', '52_6_7', 1),
('52_6_7_2013', 'KALAJENA', '2013', '52_6_7', 1),
('52_6_7_2014', 'MANDALA', '2014', '52_6_7', 1),
('52_6_8_2005', 'DORI DUNGGA', '2005', '52_6_8', 1),
('52_6_8_2006', 'KALA', '2006', '52_6_8', 1),
('52_6_8_2007', 'O''O', '2007', '52_6_8', 1),
('52_6_8_2008', 'MBAWA', '2008', '52_6_8', 1),
('52_6_8_2009', 'PALAMA', '2009', '52_6_8', 1),
('52_6_8_2010', 'RORA', '2010', '52_6_8', 1),
('52_6_8_2012', 'MPILI', '2012', '52_6_8', 1),
('52_6_8_2013', 'BUMI PAJO', '2013', '52_6_8', 1),
('52_6_8_2014', 'NDANO NA''E', '2014', '52_6_8', 1),
('52_6_9_2001', 'PIONG', '2001', '52_6_9', 1),
('52_6_9_2002', 'BORO', '2002', '52_6_9', 1),
('52_6_9_2003', 'KORE', '2003', '52_6_9', 1),
('52_6_9_2004', 'TALOKO', '2004', '52_6_9', 1),
('52_6_9_2005', 'OI SARO', '2005', '52_6_9', 1),
('52_6_9_2006', 'SANDUE', '2006', '52_6_9', 1),
('52_71_1_1004', 'AMPENAN SELATAN', '1004', '52_71_1', 1),
('52_71_1_1005', 'AMPENAN TENGAH', '1005', '52_71_1', 1),
('52_71_1_1006', 'PEJERUK', '1006', '52_71_1', 1),
('52_71_1_1007', 'AMPENAN UTARA', '1007', '52_71_1', 1),
('52_71_1_1008', 'TAMAN SARI', '1008', '52_71_1', 1),
('52_71_1_1009', 'BANJAR', '1009', '52_71_1', 1),
('52_71_1_1010', 'KEBUN SARI', '1010', '52_71_1', 1),
('52_71_1_1011', 'PAJARAKAN KARYA', '1011', '52_71_1', 1),
('52_71_1_1012', 'DAYAN PEKEN', '1012', '52_71_1', 1),
('52_71_1_1013', 'BINTARO', '1013', '52_71_1', 1),
('52_71_2_1001', 'PAGESANGAN', '1001', '52_71_2', 1),
('52_71_2_1002', 'MATARAM TIMUR', '1002', '52_71_2', 1),
('52_71_2_1008', 'PAGUTAN', '1008', '52_71_2', 1),
('52_71_2_1009', 'PAGESANGAN BARAT', '1009', '52_71_2', 1),
('52_71_2_1010', 'PAGESANGAN TIMUR', '1010', '52_71_2', 1),
('52_71_2_1011', 'PEJANGGIK', '1011', '52_71_2', 1),
('52_71_2_1012', 'PUNIA', '1012', '52_71_2', 1),
('52_71_2_1013', 'PAGUTAN TIMUR', '1013', '52_71_2', 1),
('52_71_2_1014', 'PAGUTAN BARAT', '1014', '52_71_2', 1),
('52_71_3_1004', 'CAKRANEGARA SELATAN', '1004', '52_71_3', 1),
('52_71_3_1005', 'CAKRANEGARA BARAT', '1005', '52_71_3', 1),
('52_71_3_1006', 'CAKRANEGARA TIMUR', '1006', '52_71_3', 1),
('52_71_3_1007', 'CAKRANEGARA UTARA', '1007', '52_71_3', 1),
('52_71_3_1009', 'SAYANG-SAYANG', '1009', '52_71_3', 1),
('52_71_3_1010', 'CAKRANEGARA SELATAN BARU', '1010', '52_71_3', 1),
('52_71_3_1011', 'SAPTA MARGA', '1011', '52_71_3', 1),
('52_71_3_1012', 'CILINAYA', '1012', '52_71_3', 1),
('52_71_3_1013', 'MAYURA', '1013', '52_71_3', 1),
('52_71_3_1014', 'KARANG TALIWANG', '1014', '52_71_3', 1),
('52_71_4_1001', 'KARANG PULE', '1001', '52_71_4', 1),
('52_71_4_1002', 'TANJUNG KARANG', '1002', '52_71_4', 1),
('52_71_4_1003', 'JEMPONG BARU', '1003', '52_71_4', 1),
('52_71_4_1004', 'TANJUNG KARANG PERMAI', '1004', '52_71_4', 1),
('52_71_4_1005', 'KEKALIK JAYA', '1005', '52_71_4', 1),
('52_71_5_1001', 'MATARAM BARAT', '1001', '52_71_5', 1),
('52_71_5_1002', 'DASAN AGUNG', '1002', '52_71_5', 1),
('52_71_5_1003', 'MONJOK', '1003', '52_71_5', 1),
('52_71_5_1004', 'KARANG BARU', '1004', '52_71_5', 1),
('52_71_5_1005', 'REMBIGA', '1005', '52_71_5', 1),
('52_71_5_1006', 'GOMONG', '1006', '52_71_5', 1),
('52_71_5_1007', 'DASAN AGUNG BARU', '1007', '52_71_5', 1),
('52_71_5_1008', 'MONJOK TIMUR', '1008', '52_71_5', 1),
('52_71_5_1009', 'MONJOK BARAT', '1009', '52_71_5', 1),
('52_71_6_1001', 'DASAN CERMEN', '1001', '52_71_6', 1),
('52_71_6_1002', 'BABAKAN', '1002', '52_71_6', 1),
('52_71_6_1003', 'BERTAIS', '1003', '52_71_6', 1),
('52_71_6_1004', 'SELAGALAS', '1004', '52_71_6', 1),
('52_71_6_1005', 'ABIAN TUBUH BARU', '1005', '52_71_6', 1),
('52_71_6_1006', 'TURIDA', '1006', '52_71_6', 1),
('52_71_6_1007', 'MANDALIKA', '1007', '52_71_6', 1),
('52_72_1_1001', 'PARUGA', '1001', '52_72_1', 1),
('52_72_1_1002', 'NAE', '1002', '52_72_1', 1),
('52_72_1_1003', 'SARAE', '1003', '52_72_1', 1),
('52_72_1_1004', 'TANJUNG', '1004', '52_72_1', 1),
('52_72_1_1013', 'PANE', '1013', '52_72_1', 1),
('52_72_1_1014', 'DARA', '1014', '52_72_1', 1),
('52_72_2_1004', 'KUMBE', '1004', '52_72_2', 1);
INSERT INTO `tiger_desa` (`id`, `desa`, `kode_desa`, `id_kecamatan`, `kelompok`) VALUES
('52_72_2_1008', 'LAMPE', '1008', '52_72_2', 1),
('52_72_2_1009', 'DODU', '1009', '52_72_2', 1),
('52_72_2_1011', 'NUNGGA', '1011', '52_72_2', 1),
('52_72_2_1018', 'KODO', '1018', '52_72_2', 1),
('52_72_2_1019', 'OI FO''O', '1019', '52_72_2', 1),
('52_72_2_1020', 'LELAMASE', '1020', '52_72_2', 1),
('52_72_3_1001', 'MELAYU', '1001', '52_72_3', 1),
('52_72_3_1002', 'JATIWANGI', '1002', '52_72_3', 1),
('52_72_3_1003', 'JATIBARU', '1003', '52_72_3', 1),
('52_72_3_1004', 'KOLO', '1004', '52_72_3', 1),
('52_72_4_1001', 'PENARAGA', '1001', '52_72_4', 1),
('52_72_4_1002', 'RONTU', '1002', '52_72_4', 1),
('52_72_4_1003', 'PENANAE', '1003', '52_72_4', 1),
('52_72_4_1004', 'KENDO', '1004', '52_72_4', 1),
('52_72_4_1005', 'NTOBO', '1005', '52_72_4', 1),
('52_72_4_1006', 'NITU', '1006', '52_72_4', 1),
('52_72_4_1007', 'RABANGODU SELATAN', '1007', '52_72_4', 1),
('52_72_4_1008', 'RABADOMPU TIMUR', '1008', '52_72_4', 1),
('52_72_4_1009', 'RITE', '1009', '52_72_4', 1),
('52_72_4_1010', 'RABADOMPU BARAT', '1010', '52_72_4', 1),
('52_72_4_1011', 'RABANGODU UTARA', '1011', '52_72_4', 1),
('52_72_5_1001', 'MONGGONAO', '1001', '52_72_5', 1),
('52_72_5_1002', 'SADIA', '1002', '52_72_5', 1),
('52_72_5_1003', 'SANTI', '1003', '52_72_5', 1),
('52_72_5_1004', 'SAMBINAE', '1004', '52_72_5', 1),
('52_72_5_1005', 'PENATOI', '1005', '52_72_5', 1),
('52_72_5_1006', 'LEWIRATO', '1006', '52_72_5', 1),
('52_72_5_1007', 'MANDE', '1007', '52_72_5', 1),
('52_72_5_1008', 'PANGGI', '1008', '52_72_5', 1),
('52_72_5_1009', 'MANGGEMACI', '1009', '52_72_5', 1),
('52_72_5_1010', 'MATAKANDO', '1010', '52_72_5', 1),
('52_7_1_2001', 'GOA', '2001', '52_7_1', 1),
('52_7_1_2002', 'BELO', '2002', '52_7_1', 1),
('52_7_1_2003', 'BERU', '2003', '52_7_1', 1),
('52_7_1_2009', 'DASAN ANYAR', '2009', '52_7_1', 1),
('52_7_2_1004', 'MENALA', '1004', '52_7_2', 1),
('52_7_2_1005', 'KUANG', '1005', '52_7_2', 1),
('52_7_2_1006', 'BUGIS', '1006', '52_7_2', 1),
('52_7_2_1007', 'DALAM', '1007', '52_7_2', 1),
('52_7_2_1008', 'SAMPIR', '1008', '52_7_2', 1),
('52_7_2_1012', 'TELAGA BERTONG', '1012', '52_7_2', 1),
('52_7_2_1019', 'ARAB KENANGAN', '1019', '52_7_2', 1),
('52_7_2_2001', 'LABUHAN LALAR', '2001', '52_7_2', 1),
('52_7_2_2009', 'LALAR LIANG', '2009', '52_7_2', 1),
('52_7_2_2010', 'LABUHAN KERTASARI', '2010', '52_7_2', 1),
('52_7_2_2011', 'SELOTO', '2011', '52_7_2', 1),
('52_7_2_2013', 'TAMEKAN', '2013', '52_7_2', 1),
('52_7_2_2014', 'BANJAR', '2014', '52_7_2', 1),
('52_7_2_2015', 'BATU PUTIH', '2015', '52_7_2', 1),
('52_7_2_2020', 'SERMONG', '2020', '52_7_2', 1),
('52_7_3_2001', 'MERARAN', '2001', '52_7_3', 1),
('52_7_3_2002', 'AIR SUNING', '2002', '52_7_3', 1),
('52_7_3_2003', 'REMPE', '2003', '52_7_3', 1),
('52_7_3_2004', 'SETELUK ATAS', '2004', '52_7_3', 1),
('52_7_3_2005', 'SETELUK TENGAH', '2005', '52_7_3', 1),
('52_7_3_2008', 'KELANIR', '2008', '52_7_3', 1),
('52_7_3_2011', 'TAPIR', '2011', '52_7_3', 1),
('52_7_3_2012', 'LAMUSUNG', '2012', '52_7_3', 1),
('52_7_3_2013', 'DESA LOKA', '2013', '52_7_3', 1),
('52_7_3_2014', 'SERAN', '2014', '52_7_3', 1),
('52_7_4_2001', 'SEKONGKANG ATAS', '2001', '52_7_4', 1),
('52_7_4_2002', 'SEKONGKANG BAWAH', '2002', '52_7_4', 1),
('52_7_4_2003', 'TONGO', '2003', '52_7_4', 1),
('52_7_4_2004', 'AIKANGKUNG', '2004', '52_7_4', 1),
('52_7_4_2005', 'TATAR', '2005', '52_7_4', 1),
('52_7_4_2006', 'TALONANG BARU', '2006', '52_7_4', 1),
('52_7_4_2007', 'KEMUNING', '2007', '52_7_4', 1),
('52_7_5_2001', 'DESA BERU', '2001', '52_7_5', 1),
('52_7_5_2002', 'TEPAS', '2002', '52_7_5', 1),
('52_7_5_2003', 'BANGKAT MONTEH', '2003', '52_7_5', 1),
('52_7_5_2004', 'SAPUGARA BREE', '2004', '52_7_5', 1),
('52_7_5_2005', 'MOTENG', '2005', '52_7_5', 1),
('52_7_5_2006', 'LAMUNTET', '2006', '52_7_5', 1),
('52_7_5_2007', 'TEPAS SEPAKAT', '2007', '52_7_5', 1),
('52_7_5_2008', 'RARAK RONGES', '2008', '52_7_5', 1),
('52_7_5_2009', 'SEMINAR SALIT', '2009', '52_7_5', 1),
('52_7_6_2001', 'SENAYAN', '2001', '52_7_6', 1),
('52_7_6_2002', 'MANTAR', '2002', '52_7_6', 1),
('52_7_6_2003', 'KIANTAR', '2003', '52_7_6', 1),
('52_7_6_2004', 'POTO TANO', '2004', '52_7_6', 1),
('52_7_6_2005', 'UPT. TAMBAK SARI', '2005', '52_7_6', 1),
('52_7_6_2006', 'TUANANGA', '2006', '52_7_6', 1),
('52_7_6_2007', 'TEBO', '2007', '52_7_6', 1),
('52_7_6_2008', 'KOKARLIAN', '2008', '52_7_6', 1),
('52_7_7_2001', 'MURA', '2001', '52_7_7', 1),
('52_7_7_2002', 'KALIMANTONG', '2002', '52_7_7', 1),
('52_7_7_2003', 'LAMPOK', '2003', '52_7_7', 1),
('52_7_7_2004', 'MANEMENG', '2004', '52_7_7', 1),
('52_7_7_2005', 'MUJAHIDIN', '2005', '52_7_7', 1),
('52_7_7_2006', 'MATAIYANG', '2006', '52_7_7', 1),
('52_7_8_2001', 'MALUK', '2001', '52_7_8', 1),
('52_7_8_2002', 'BENETE', '2002', '52_7_8', 1),
('52_7_8_2003', 'BUKIT DAMAI', '2003', '52_7_8', 1),
('52_7_8_2004', 'MANTUN', '2004', '52_7_8', 1),
('52_7_8_2005', 'PASIR PUTIH', '2005', '52_7_8', 1),
('52_8_1_2001', 'TANJUNG', '2001', '52_8_1', 1),
('52_8_1_2002', 'SOKONG', '2002', '52_8_1', 1),
('52_8_1_2003', 'JENGGALA', '2003', '52_8_1', 1),
('52_8_1_2004', 'TEGAL MAJA', '2004', '52_8_1', 1),
('52_8_1_2005', 'SIGAR PENJALIN', '2005', '52_8_1', 1),
('52_8_1_2006', 'MEDANA', '2006', '52_8_1', 1),
('52_8_1_2007', 'TENIGA', '2007', '52_8_1', 1),
('52_8_2_2001', 'GONDANG', '2001', '52_8_2', 1),
('52_8_2_2002', 'BENTEK', '2002', '52_8_2', 1),
('52_8_2_2003', 'GENGGELANG', '2003', '52_8_2', 1),
('52_8_2_2004', 'REMPEK', '2004', '52_8_2', 1),
('52_8_2_2005', 'SAMBIK BANGKOL', '2005', '52_8_2', 1),
('52_8_3_2001', 'KAYANGAN', '2001', '52_8_3', 1),
('52_8_3_2002', 'SANTONG', '2002', '52_8_3', 1),
('52_8_3_2003', 'SELENGEN', '2003', '52_8_3', 1),
('52_8_3_2004', 'SESAIT', '2004', '52_8_3', 1),
('52_8_3_2005', 'GUMANTAR', '2005', '52_8_3', 1),
('52_8_3_2006', 'SALUT', '2006', '52_8_3', 1),
('52_8_3_2007', 'DANGIANG', '2007', '52_8_3', 1),
('52_8_3_2008', 'PENDUA', '2008', '52_8_3', 1),
('52_8_4_2001', 'BAYAN', '2001', '52_8_4', 1),
('52_8_4_2002', 'LOLOAN', '2002', '52_8_4', 1),
('52_8_4_2003', 'ANYAR', '2003', '52_8_4', 1),
('52_8_4_2004', 'SUKADANA', '2004', '52_8_4', 1),
('52_8_4_2005', 'AKAT AKAR', '2005', '52_8_4', 1),
('52_8_4_2006', 'SENARU', '2006', '52_8_4', 1),
('52_8_4_2007', 'MUMBUL SARI', '2007', '52_8_4', 1),
('52_8_4_2008', 'SAMBIK ELEN', '2008', '52_8_4', 1),
('52_8_4_2009', 'KARANG BAJO', '2009', '52_8_4', 1),
('52_8_5_2001', 'PEMENANG TIMUR', '2001', '52_8_5', 1),
('52_8_5_2002', 'PEMENANG BARAT', '2002', '52_8_5', 1),
('52_8_5_2003', 'GILI INDAH', '2003', '52_8_5', 1),
('52_8_5_2004', 'MALAKA', '2004', '52_8_5', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tiger_kabupaten`
--

CREATE TABLE IF NOT EXISTS `tiger_kabupaten` (
`id` int(11) NOT NULL,
  `nama_kab` varchar(200) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data untuk tabel `tiger_kabupaten`
--

INSERT INTO `tiger_kabupaten` (`id`, `nama_kab`) VALUES
(1, 'Mataram'),
(2, 'Lombok Barat'),
(3, 'Lombok Tengah'),
(4, 'Lombok Timur'),
(5, 'Lombok Utara'),
(6, 'Sumbawa Barat'),
(7, 'Sumbawa'),
(8, 'Dompu'),
(9, 'Bima');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tiger_kecamatan`
--

CREATE TABLE IF NOT EXISTS `tiger_kecamatan` (
  `id` char(13) NOT NULL,
  `kecamatan` varchar(300) NOT NULL DEFAULT '',
  `kode_kecamatan` varchar(10) DEFAULT NULL,
  `id_kota` char(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tiger_kecamatan`
--

INSERT INTO `tiger_kecamatan` (`id`, `kecamatan`, `kode_kecamatan`, `id_kota`) VALUES
('52_1_1', 'GERUNG', '1', '52_1'),
('52_1_12', 'LINGSAR', '12', '52_1'),
('52_1_13', 'LEMBAR', '13', '52_1'),
('52_1_14', 'BATU LAYAR', '14', '52_1'),
('52_1_15', 'KURIPAN', '15', '52_1'),
('52_1_2', 'KEDIRI', '2', '52_1'),
('52_1_3', 'NARMADA', '3', '52_1'),
('52_1_7', 'SEKOTONG', '7', '52_1'),
('52_1_8', 'LABUAPI', '8', '52_1'),
('52_1_9', 'GUNUNGSARI', '9', '52_1'),
('52_2_1', 'PRAYA', '1', '52_2'),
('52_2_10', 'PRAYA TENGAH', '10', '52_2'),
('52_2_11', 'PRAYA BARAT DAYA', '11', '52_2'),
('52_2_12', 'BATUKLIANG UTARA', '12', '52_2'),
('52_2_2', 'JONGGAT', '2', '52_2'),
('52_2_3', 'BATUKLIANG', '3', '52_2'),
('52_2_4', 'PUJUT', '4', '52_2'),
('52_2_5', 'PRAYA BARAT', '5', '52_2'),
('52_2_6', 'PRAYA TIMUR', '6', '52_2'),
('52_2_7', 'JANAPRIA', '7', '52_2'),
('52_2_8', 'PRINGGARATA', '8', '52_2'),
('52_2_9', 'KOPANG', '9', '52_2'),
('52_3_1', 'KERUAK', '1', '52_3'),
('52_3_10', 'SAMBELIA', '10', '52_3'),
('52_3_11', 'MONTONG GADING', '11', '52_3'),
('52_3_12', 'PRINGGASELA', '12', '52_3'),
('52_3_13', 'SURALAGA', '13', '52_3'),
('52_3_14', 'WANASABA', '14', '52_3'),
('52_3_15', 'SEMBALUN', '15', '52_3'),
('52_3_16', 'SUWELA', '16', '52_3'),
('52_3_17', 'LABUHAN HAJI', '17', '52_3'),
('52_3_18', 'SAKRA TIMUR', '18', '52_3'),
('52_3_19', 'SAKRA BARAT', '19', '52_3'),
('52_3_2', 'SAKRA', '2', '52_3'),
('52_3_20', 'JEROWARU', '20', '52_3'),
('52_3_3', 'TERARA', '3', '52_3'),
('52_3_4', 'SIKUR', '4', '52_3'),
('52_3_5', 'MASBAGIK', '5', '52_3'),
('52_3_6', 'SUKAMULIA', '6', '52_3'),
('52_3_7', 'SELONG', '7', '52_3'),
('52_3_8', 'PRINGGABAYA', '8', '52_3'),
('52_3_9', 'AIKMEL', '9', '52_3'),
('52_4_10', 'MOYO HULU', '10', '52_4'),
('52_4_11', 'ROPANG', '11', '52_4'),
('52_4_12', 'LAPE', '12', '52_4'),
('52_4_13', 'PLAMPANG', '13', '52_4'),
('52_4_14', 'EMPANG', '14', '52_4'),
('52_4_17', 'ALAS BARAT', '17', '52_4'),
('52_4_18', 'LABUHAN BADAS', '18', '52_4'),
('52_4_19', 'LABANGKA', '19', '52_4'),
('52_4_2', 'LUNYUK', '2', '52_4'),
('52_4_20', 'BUER', '20', '52_4'),
('52_4_21', 'RHEE', '21', '52_4'),
('52_4_22', 'UNTER IWES', '22', '52_4'),
('52_4_23', 'MOYO UTARA', '23', '52_4'),
('52_4_24', 'MARONGE', '24', '52_4'),
('52_4_25', 'TARANO', '25', '52_4'),
('52_4_26', 'LOPOK', '26', '52_4'),
('52_4_27', 'LENANGGUAR', '27', '52_4'),
('52_4_28', 'ORONG TELU', '28', '52_4'),
('52_4_29', 'LANTUNG', '29', '52_4'),
('52_4_5', 'ALAS', '5', '52_4'),
('52_4_6', 'UTAN', '6', '52_4'),
('52_4_7', 'BATU LANTEH', '7', '52_4'),
('52_4_8', 'SUMBAWA', '8', '52_4'),
('52_4_9', 'MOYO HILIR', '9', '52_4'),
('52_5_1', 'DOMPU', '1', '52_5'),
('52_5_2', 'KEMPO', '2', '52_5'),
('52_5_3', 'HU''U', '3', '52_5'),
('52_5_4', 'KILO', '4', '52_5'),
('52_5_5', 'WOJA', '5', '52_5'),
('52_5_6', 'PEKAT', '6', '52_5'),
('52_5_7', 'MANGGALEWA', '7', '52_5'),
('52_5_8', 'PAJO', '8', '52_5'),
('52_6_1', 'MONTA', '1', '52_6'),
('52_6_10', 'AMBALAWI', '10', '52_6'),
('52_6_11', 'LANGGUDU', '11', '52_6'),
('52_6_12', 'LAMBU', '12', '52_6'),
('52_6_13', 'MADAPANGGA', '13', '52_6'),
('52_6_14', 'TAMBORA', '14', '52_6'),
('52_6_15', 'SOROMANDI', '15', '52_6'),
('52_6_16', 'PARADO', '16', '52_6'),
('52_6_17', 'LAMBITU', '17', '52_6'),
('52_6_18', 'PALIBELO', '18', '52_6'),
('52_6_2', 'BOLO', '2', '52_6'),
('52_6_3', 'WOHA', '3', '52_6'),
('52_6_4', 'BELO', '4', '52_6'),
('52_6_5', 'WAWO', '5', '52_6'),
('52_6_6', 'SAPE', '6', '52_6'),
('52_6_7', 'WERA', '7', '52_6'),
('52_6_8', 'DONGGO', '8', '52_6'),
('52_6_9', 'SANGGAR', '9', '52_6'),
('52_71_1', 'AMPENAN', '1', '52_71'),
('52_71_2', 'MATARAM', '2', '52_71'),
('52_71_3', 'CAKRANEGARA', '3', '52_71'),
('52_71_4', 'SEKARBELA', '4', '52_71'),
('52_71_5', 'SELAPRANG', '5', '52_71'),
('52_71_6', 'SANDUBAYA', '6', '52_71'),
('52_72_1', 'RASANAE BARAT', '1', '52_72'),
('52_72_2', 'RASANAE TIMUR', '2', '52_72'),
('52_72_3', 'ASAKOTA', '3', '52_72'),
('52_72_4', 'RABA', '4', '52_72'),
('52_72_5', 'MPUNDA', '5', '52_72'),
('52_7_1', 'JEREWEH', '1', '52_7'),
('52_7_2', 'TALIWANG', '2', '52_7'),
('52_7_3', 'SETELUK', '3', '52_7'),
('52_7_4', 'SEKONGKANG', '4', '52_7'),
('52_7_5', 'BRANG REA', '5', '52_7'),
('52_7_6', 'POTO TANO', '6', '52_7'),
('52_7_7', 'BRANG ENE', '7', '52_7'),
('52_7_8', 'MALUK', '8', '52_7'),
('52_8_1', 'TANJUNG', '1', '52_8'),
('52_8_2', 'GANGGA', '2', '52_8'),
('52_8_3', 'KAYANGAN', '3', '52_8'),
('52_8_4', 'BAYAN', '4', '52_8'),
('52_8_5', 'PEMENANG', '5', '52_8');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tiger_kota`
--

CREATE TABLE IF NOT EXISTS `tiger_kota` (
  `id` char(13) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `kode_kota` varchar(10) DEFAULT NULL,
  `id_provinsi` char(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tiger_kota`
--

INSERT INTO `tiger_kota` (`id`, `kota`, `kode_kota`, `id_provinsi`) VALUES
('52_1', 'LOMBOK BARAT', '1', '52'),
('52_2', 'LOMBOK TENGAH', '2', '52'),
('52_3', 'LOMBOK TIMUR', '3', '52'),
('52_4', 'SUMBAWA', '4', '52'),
('52_5', 'DOMPU', '5', '52'),
('52_6', 'BIMA', '6', '52'),
('52_7', 'SUMBAWA BARAT', '7', '52'),
('52_71', 'KOTA MATARAM', '71', '52'),
('52_72', 'KOTA  BIMA', '72', '52'),
('52_8', 'LOMBOK UTARA', '8', '52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tiger_provinsi`
--

CREATE TABLE IF NOT EXISTS `tiger_provinsi` (
  `id` char(13) NOT NULL,
  `provinsi` varchar(100) DEFAULT NULL,
  `kode_prov` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tiger_provinsi`
--

INSERT INTO `tiger_provinsi` (`id`, `provinsi`, `kode_prov`) VALUES
('52', 'NUSA TENGGARA BARAT', '52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datamart`
--
ALTER TABLE `datamart`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_garis_miskin`
--
ALTER TABLE `data_garis_miskin`
 ADD PRIMARY KEY (`id_kab`,`tahun`);

--
-- Indexes for table `data_kemiskinan`
--
ALTER TABLE `data_kemiskinan`
 ADD PRIMARY KEY (`nik`,`tahun`);

--
-- Indexes for table `data_penduduk_miskin`
--
ALTER TABLE `data_penduduk_miskin`
 ADD PRIMARY KEY (`id_kab`,`tahun`);

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `klaster`
--
ALTER TABLE `klaster`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lupa_password`
--
ALTER TABLE `lupa_password`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penduduk`
--
ALTER TABLE `penduduk`
 ADD PRIMARY KEY (`nik`), ADD UNIQUE KEY `nik` (`nik`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tiger_desa`
--
ALTER TABLE `tiger_desa`
 ADD PRIMARY KEY (`id`), ADD KEY `id_kecamatan` (`id_kecamatan`);

--
-- Indexes for table `tiger_kabupaten`
--
ALTER TABLE `tiger_kabupaten`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tiger_kecamatan`
--
ALTER TABLE `tiger_kecamatan`
 ADD PRIMARY KEY (`id`), ADD KEY `id_kotaidx` (`id_kota`);

--
-- Indexes for table `tiger_kota`
--
ALTER TABLE `tiger_kota`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `kota` (`kota`,`id_provinsi`), ADD KEY `idx_id_provinsi` (`id_provinsi`);

--
-- Indexes for table `tiger_provinsi`
--
ALTER TABLE `tiger_provinsi`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `prov` (`provinsi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datamart`
--
ALTER TABLE `datamart`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `lupa_password`
--
ALTER TABLE `lupa_password`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `tiger_kabupaten`
--
ALTER TABLE `tiger_kabupaten`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
