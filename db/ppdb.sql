-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 22, 2022 at 06:59 AM
-- Server version: 5.7.38-0ubuntu0.18.04.1
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bayar`
--

CREATE TABLE `bayar` (
  `id_bayar` varchar(20) NOT NULL,
  `id_user` int(10) NOT NULL,
  `id_daftar` int(10) NOT NULL,
  `jumlah_bayar` int(10) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `keterangan` int(10) DEFAULT NULL,
  `bukti` varchar(50) DEFAULT NULL,
  `verifikasi` int(1) NOT NULL DEFAULT '0',
  `hapus` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bayar`
--

INSERT INTO `bayar` (`id_bayar`, `id_user`, `id_daftar`, `jumlah_bayar`, `tgl_bayar`, `keterangan`, `bukti`, `verifikasi`, `hapus`) VALUES
('202202130001', 0, 300, 800000, '2022-02-13', NULL, 'bukti_transaksi/bukti_202202130001.jpg', 1, NULL),
('202202130002', 0, 301, 400000, '2022-02-13', NULL, 'bukti_transaksi/bukti_202202130002.jpg', 1, NULL),
('202202130003', 0, 301, 400000, '2022-02-13', NULL, 'bukti_transaksi/bukti_202202130003.jpg', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `biaya`
--

CREATE TABLE `biaya` (
  `id_biaya` varchar(50) NOT NULL,
  `nama_biaya` varchar(200) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biaya`
--

INSERT INTO `biaya` (`id_biaya`, `nama_biaya`, `jumlah`, `status`) VALUES
('01', 'SERAGAM', 800000, '1');

-- --------------------------------------------------------

--
-- Table structure for table `daftar`
--

CREATE TABLE `daftar` (
  `id_daftar` int(11) NOT NULL,
  `no_daftar` varchar(20) DEFAULT NULL,
  `jenis` varchar(15) DEFAULT NULL,
  `nis` varchar(30) DEFAULT NULL,
  `nik` varchar(30) DEFAULT NULL,
  `no_kk` varchar(30) DEFAULT NULL,
  `nisn` varchar(30) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `warga_siswa` varchar(20) DEFAULT NULL,
  `foto` varchar(128) NOT NULL,
  `jenkel` varchar(1) DEFAULT NULL,
  `tempat_lahir` varchar(128) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `asal_sekolah` varchar(128) DEFAULT NULL,
  `npsn_asal` varchar(20) DEFAULT NULL,
  `kelas` varchar(11) DEFAULT NULL,
  `jurusan` varchar(30) DEFAULT NULL,
  `jenjang` varchar(11) DEFAULT NULL,
  `agama` varchar(50) DEFAULT NULL,
  `status_tinggal` varchar(100) DEFAULT NULL,
  `alamat` text,
  `rt` varchar(5) DEFAULT NULL,
  `rw` varchar(5) DEFAULT NULL,
  `desa` varchar(128) DEFAULT NULL,
  `kecamatan` varchar(128) DEFAULT NULL,
  `kota` varchar(128) DEFAULT NULL,
  `provinsi` varchar(128) DEFAULT NULL,
  `kode_pos` varchar(6) DEFAULT NULL,
  `koordinat` varchar(100) DEFAULT NULL,
  `transportasi` varchar(128) DEFAULT NULL,
  `no_hp` varchar(16) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `anak_ke` int(2) DEFAULT NULL,
  `saudara` int(11) DEFAULT NULL,
  `biaya_sekolah` varchar(100) DEFAULT NULL,
  `paud` text,
  `tk` text,
  `hepatitis` varchar(10) DEFAULT NULL,
  `polio` varchar(10) DEFAULT NULL,
  `bcg` varchar(10) DEFAULT NULL,
  `campak` varchar(10) DEFAULT NULL,
  `dpt` varchar(10) DEFAULT NULL,
  `covid` varchar(10) DEFAULT NULL,
  `citacita` text NOT NULL,
  `hobi` text NOT NULL,
  `status_keluarga` varchar(50) DEFAULT NULL,
  `tinggal` varchar(128) DEFAULT NULL,
  `jarak` varchar(128) DEFAULT NULL,
  `waktu` varchar(128) DEFAULT NULL,
  `nik_ayah` varchar(16) DEFAULT NULL,
  `nama_ayah` varchar(128) DEFAULT NULL,
  `tempat_lahir_ayah` varchar(100) DEFAULT NULL,
  `tahun_ayah` date DEFAULT NULL,
  `status_ayah` varchar(128) DEFAULT NULL,
  `pendidikan_ayah` varchar(128) DEFAULT NULL,
  `pekerjaan_ayah` varchar(128) DEFAULT NULL,
  `penghasilan_ayah` varchar(128) DEFAULT NULL,
  `no_hp_ayah` varchar(16) DEFAULT NULL,
  `nik_ibu` varchar(16) DEFAULT NULL,
  `nama_ibu` varchar(128) DEFAULT NULL,
  `tempat_lahir_ibu` varchar(100) DEFAULT NULL,
  `tahun_ibu` date DEFAULT NULL,
  `status_ibu` varchar(128) DEFAULT NULL,
  `pendidikan_ibu` varchar(128) DEFAULT NULL,
  `pekerjaan_ibu` varchar(128) DEFAULT NULL,
  `penghasilan_ibu` varchar(128) DEFAULT NULL,
  `no_hp_ibu` varchar(16) DEFAULT NULL,
  `nik_wali` varchar(16) DEFAULT NULL,
  `nama_wali` varchar(128) DEFAULT NULL,
  `tempat_lahir_wali` varchar(100) DEFAULT NULL,
  `tahun_wali` date DEFAULT NULL,
  `pendidikan_wali` varchar(50) DEFAULT NULL,
  `pekerjaan_wali` varchar(50) DEFAULT NULL,
  `penghasilan_wali` varchar(50) DEFAULT NULL,
  `no_hp_wali` varchar(16) DEFAULT NULL,
  `no_ijazah` varchar(128) DEFAULT NULL,
  `no_shun` varchar(128) DEFAULT NULL,
  `no_ujian` varchar(128) DEFAULT NULL,
  `no_kip` varchar(30) DEFAULT NULL,
  `kip` varchar(256) DEFAULT NULL,
  `kk` text,
  `kepala_keluarga` varchar(100) DEFAULT NULL,
  `ijazah` varchar(256) DEFAULT NULL,
  `akta` varchar(256) DEFAULT NULL,
  `file_shun` varchar(256) DEFAULT NULL,
  `tgl_keluar` date DEFAULT NULL,
  `alasan_keluar` varchar(100) DEFAULT NULL,
  `surat_keluar` varchar(255) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `aktif` int(1) DEFAULT '0',
  `status` int(1) DEFAULT '0',
  `sekolah_tujuan` varchar(10) DEFAULT NULL,
  `npsn_sekolah_tujuan` varchar(10) DEFAULT NULL,
  `tgl_daftar` date DEFAULT NULL,
  `tgl_konfirmasi` date DEFAULT NULL,
  `konfirmasi` int(1) DEFAULT NULL,
  `bayar` varchar(100) DEFAULT NULL,
  `online` int(1) DEFAULT '0',
  `password` text,
  `bin1` varchar(10) DEFAULT NULL,
  `mat1` varchar(10) DEFAULT NULL,
  `ipa1` varchar(10) DEFAULT NULL,
  `big1` varchar(10) DEFAULT NULL,
  `bin2` varchar(10) DEFAULT NULL,
  `mat2` varchar(10) DEFAULT NULL,
  `ipa2` varchar(10) DEFAULT NULL,
  `big2` varchar(10) DEFAULT NULL,
  `bin3` varchar(10) DEFAULT NULL,
  `mat3` varchar(10) DEFAULT NULL,
  `ipa3` varchar(10) DEFAULT NULL,
  `big3` varchar(10) DEFAULT NULL,
  `bin4` varchar(10) DEFAULT NULL,
  `mat4` varchar(10) DEFAULT NULL,
  `ipa4` varchar(10) DEFAULT NULL,
  `big4` varchar(10) DEFAULT NULL,
  `bin5` varchar(10) DEFAULT NULL,
  `mat5` varchar(10) DEFAULT NULL,
  `ipa5` varchar(10) DEFAULT NULL,
  `big5` varchar(10) DEFAULT NULL,
  `jumlah` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar`
--

INSERT INTO `daftar` (`id_daftar`, `no_daftar`, `jenis`, `nis`, `nik`, `no_kk`, `nisn`, `nama`, `warga_siswa`, `foto`, `jenkel`, `tempat_lahir`, `tgl_lahir`, `asal_sekolah`, `npsn_asal`, `kelas`, `jurusan`, `jenjang`, `agama`, `status_tinggal`, `alamat`, `rt`, `rw`, `desa`, `kecamatan`, `kota`, `provinsi`, `kode_pos`, `koordinat`, `transportasi`, `no_hp`, `email`, `anak_ke`, `saudara`, `biaya_sekolah`, `paud`, `tk`, `hepatitis`, `polio`, `bcg`, `campak`, `dpt`, `covid`, `citacita`, `hobi`, `status_keluarga`, `tinggal`, `jarak`, `waktu`, `nik_ayah`, `nama_ayah`, `tempat_lahir_ayah`, `tahun_ayah`, `status_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `penghasilan_ayah`, `no_hp_ayah`, `nik_ibu`, `nama_ibu`, `tempat_lahir_ibu`, `tahun_ibu`, `status_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `penghasilan_ibu`, `no_hp_ibu`, `nik_wali`, `nama_wali`, `tempat_lahir_wali`, `tahun_wali`, `pendidikan_wali`, `pekerjaan_wali`, `penghasilan_wali`, `no_hp_wali`, `no_ijazah`, `no_shun`, `no_ujian`, `no_kip`, `kip`, `kk`, `kepala_keluarga`, `ijazah`, `akta`, `file_shun`, `tgl_keluar`, `alasan_keluar`, `surat_keluar`, `level`, `aktif`, `status`, `sekolah_tujuan`, `npsn_sekolah_tujuan`, `tgl_daftar`, `tgl_konfirmasi`, `konfirmasi`, `bayar`, `online`, `password`, `bin1`, `mat1`, `ipa1`, `big1`, `bin2`, `mat2`, `ipa2`, `big2`, `bin3`, `mat3`, `ipa3`, `big3`, `bin4`, `mat4`, `ipa4`, `big4`, `bin5`, `mat5`, `ipa5`, `big5`, `jumlah`) VALUES
(300, 'PPDB2022001', '0', NULL, '123456879123456', '123456789123456', '123456789', 'CONTOH 1', 'WNI', 'assets/upload/foto_siswa/siswa330.jpg', 'L', 'WONOGIRI', '2010-01-01', 'SDN JUMOK', '12345678', NULL, 'BOARDING SCHOOL', NULL, 'Islam', 'Tinggal dengan Orangtua/Wali', 'JL. KESENENG', '02', '03', 'JENDI', 'CILONGOK', 'PURWOREJO', 'JAWA TENGAH', '123456', '-7.98989797, 101.98877897', 'Sepeda Motor', '081228603030', '', 1, 3, 'Orang Tua', 'Ya', NULL, 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'TNI/Polri', 'OIahraga', NULL, NULL, 'Antara 5-10 km', '1-10 menit', '123456789', 'AYAH', 'WONOGIRI', '1988-02-13', 'Masih Hidup', 'D4/S1', 'Politikus', 'Lebih dari 5.000.000', '081228603030', '123456789', 'IBU', 'WONOGIRI', '1990-10-18', 'Masih Hidup', 'S2', 'Petani/Peternak', '1.000.001 - 2.000.000', '081228603030', '', '', NULL, NULL, '', '', '', '', NULL, NULL, NULL, '', 'assets/upload/kip/kip638.jpg', 'assets/upload/kk/kk237.jpg', 'YOYOK GUNAWAN', 'assets/upload/ijazah/ijazah675.jpg', 'assets/upload/akta/akta344.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, '2022-02-13', 1, NULL, 1, '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(301, 'PPDB2022002', '0', NULL, '3312126002970001', '123456789123546', '123456', 'CONTOH 2', 'WNI', 'assets/upload/foto_siswa/siswa157.jpg', 'L', 'WONOGIRI', '2010-02-14', 'SDN JUMOK', '12345678', NULL, 'BOARDING SCHOOL', NULL, 'Islam', 'Tinggal dengan Orangtua/Wali', 'JL. KESENENG', '02', '03', 'JENDI', 'CILONGOK', 'PURWOREJO', 'JAWA TENGAH', '54119', '-7.98989797, 101.98877897', 'Sepeda Motor', '089999999999', '', 1, 10, 'Orang Tua', 'Ya', NULL, 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'TNI/Polri', 'OIahraga', NULL, NULL, 'Kurang dari 5 km', '10-19 menit', '123456789123456', 'AYAH', 'WONOGIRI', '1988-08-17', 'Masih Hidup', 'SMA/Sederajat', 'Petani/Peternak', '1.000.001 - 2.000.000', '081228603030', '123456789123456', 'IBU', 'WONOGIRI', '1989-02-14', 'Masih Hidup', 'SMA/Sederajat', 'Seniman/Pelukis/Artis/Sejenis', '500.000 - 1.000.000', '081228603030', '', '', NULL, NULL, '', '', '', '', NULL, NULL, NULL, '', 'assets/upload/kip/kip626.jpg', 'assets/upload/kk/kk330.jpg', 'SANTOSO', 'assets/upload/ijazah/ijazah782.jpg', 'assets/upload/akta/akta919.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, '2022-02-13', 1, NULL, 1, '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(302, 'PPDB2022003', '1', NULL, NULL, NULL, '321', 'qwerty', NULL, 'default.png', NULL, 'purworejo', '2022-07-17', NULL, NULL, NULL, 'BOARDING SCHOOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '123321', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(304, 'PPDB2022005', 'SB', '', NULL, NULL, '12345', 'Fatmawati', NULL, 'default.png', NULL, 'Purworejo', '2022-07-19', NULL, NULL, NULL, 'BOARDING SCHOOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '085643', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '12345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(305, 'PPDB2022006', 'SB', '', NULL, NULL, '321620', 'Fatmawati', NULL, 'default.png', NULL, 'Purworejo', '2022-07-19', NULL, NULL, NULL, 'BOARDING SCHOOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '085643999', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'fatma123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(306, 'PPDB2022007', 'PD', '', NULL, NULL, '151515', 'Rizal Hairus', NULL, 'default.png', NULL, 'Jakarta ', '2019-10-17', NULL, NULL, NULL, 'PROGRAM INGGRIS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0854319764943', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'R151515', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(307, 'PPDB2022008', 'SB', '', NULL, NULL, '131313', 'Restu Hendra', NULL, 'default.png', NULL, 'Bandung', '2000-10-11', NULL, NULL, NULL, 'PROGRAM KHUSUS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08652372316', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '131313', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `histori`
--

CREATE TABLE `histori` (
  `id` int(11) NOT NULL,
  `id_permohonan` varchar(30) NOT NULL,
  `nik` int(30) NOT NULL,
  `status` int(1) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE `jenis` (
  `id_jenis` varchar(50) NOT NULL,
  `nama_jenis` varchar(50) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`id_jenis`, `nama_jenis`, `status`) VALUES
('PD', 'Pindahan', 1),
('SB', 'Siswa Baru', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jenjang`
--

CREATE TABLE `jenjang` (
  `id_jenjang` varchar(5) NOT NULL,
  `nama_jenjang` varchar(50) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `wali` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` varchar(50) NOT NULL,
  `nama_jurusan` varchar(100) DEFAULT NULL,
  `kuota` int(10) DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama_jurusan`, `kuota`, `status`) VALUES
('BOARDING SCHOOL', 'BOARDING SCHOOL', 20, 1),
('PROGRAM  AKADEMIK', 'PROGRAM  AKADEMIK', 60, 1),
('PROGRAM  PRESENTASI', 'PROGRAM  PRESENTASI', 100, 1),
('PROGRAM INGGRIS', 'PROGRAM INGGRIS', 80, 1),
('PROGRAM KHUSUS', 'PROGRAM KHUSUS', 96, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` varchar(50) NOT NULL,
  `nama_kelas` varchar(100) DEFAULT NULL,
  `kuota` int(10) DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `kuota`, `status`) VALUES
('10', 'Kelas X', 108, 1),
('11', 'Kelas XI', 108, 1),
('12', 'Kelas XII', 108, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE `kontak` (
  `id_kontak` int(11) NOT NULL,
  `nama_kontak` varchar(50) DEFAULT NULL,
  `no_kontak` varchar(50) DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id_pengumuman` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `pengumuman` text,
  `tgl` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jenis` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`id_pengumuman`, `id_user`, `judul`, `pengumuman`, `tgl`, `jenis`) VALUES
(2, 5, 'INFORMASI PPDB', '<h3><b>JADWAL PPDB :</b></h3><h5><b>KELAS PROGRAM KHUSUS DAN PROGRAM BOARDING SCHOOL</b></h5><p></p><table class=\"MsoNormalTable\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\" style=\"margin-left: 84.8pt; border: none;\">\r\n <tbody><tr style=\"mso-yfti-irow:0;mso-yfti-firstrow:yes;height:39.3pt\">\r\n  \r\n  \r\n  <td width=\"216\" valign=\"top\" style=\"width:161.75pt;border:solid black 1.0pt;\r\n  border-left:none;mso-border-left-alt:solid black .5pt;mso-border-alt:solid black .5pt;\r\n  background: AND C5E0B3;mso-background-themecolor:accent6;mso-background-themetint:\r\n  102;padding:0in 0in 0in 0in;height:39.3pt\">\r\n  <p class=\"TableParagraph\" style=\"margin-top:5.95pt;margin-right:0in;margin-bottom:\r\n  0in;margin-left:52.3pt;margin-bottom:.0001pt\"><b><span style=\"font-size: 12pt; font-family: \" segoe=\"\" ui=\"\" semilight\",=\"\" sans-serif;\"=\"\">KEGIATAN</span></b><b><span style=\"font-size:12.0pt;\r\n  font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif\"=\"\"><o:p></o:p></span></b></p>\r\n  </td>\r\n  \r\n  <td width=\"154\" valign=\"top\" style=\"width:115.15pt;border:solid black 1.0pt;\r\n  border-left:none;mso-border-left-alt:solid black .5pt;mso-border-alt:solid black .5pt;\r\n  background: AND C5E0B3;mso-background-themecolor:accent6;mso-background-themetint:\r\n  102;padding:0in 0in 0in 0in;height:39.3pt\">\r\n  <p class=\"TableParagraph\" align=\"center\" style=\"margin-top:5.95pt;margin-right:\r\n  43.35pt;margin-bottom:0in;margin-left:43.75pt;margin-bottom:.0001pt;\r\n  text-align:center\"><b><span style=\"font-size: 12pt; font-family: \" segoe=\"\" ui=\"\" semilight\",=\"\" sans-serif;\"=\"\">WAKTU</span></b><b><span style=\"font-size:12.0pt;\r\n  font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif\"=\"\"><o:p></o:p></span></b></p>\r\n  </td>\r\n  \r\n  \r\n  \r\n </tr>\r\n <tr style=\"mso-yfti-irow:1;height:20.95pt\">\r\n  \r\n  \r\n  <td width=\"216\" valign=\"top\" style=\"width: 161.75pt; border-left: none; border-bottom: 1pt solid black; border-right: 1pt solid black; padding: 0in; height: 20.95pt;\">\r\n  <p class=\"TableParagraph\" style=\"margin-top:3.1pt\"><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif;=\"\" color:=\"\" and=\"\" 252525\"=\"\">Persiapan</span><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif\"=\"\"><o:p></o:p></span></p>\r\n  </td>\r\n  \r\n  <td width=\"154\" valign=\"top\" style=\"width: 115.15pt; border-left: none; border-bottom: 1pt solid black; border-right: 1pt solid black; padding: 0in; height: 20.95pt;\">\r\n  <p class=\"TableParagraph\" style=\"margin-top:3.1pt\"><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif;=\"\" color:=\"\" and=\"\" 252525\"=\"\">Januari 2022</span><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif\"=\"\"><o:p></o:p></span></p>\r\n  </td>\r\n  \r\n  \r\n  \r\n </tr>\r\n <tr style=\"mso-yfti-irow:2;height:20.85pt\">\r\n  \r\n  \r\n  <td width=\"216\" valign=\"top\" style=\"width: 161.75pt; border-left: none; border-bottom: 1pt solid black; border-right: 1pt solid black; padding: 0in; height: 20.85pt;\">\r\n  <p class=\"TableParagraph\"><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif;=\"\" color:=\"\" and=\"\" 252525\"=\"\">Sosialisasi dan Publikasi</span><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif\"=\"\"><o:p></o:p></span></p>\r\n  </td>\r\n  \r\n  <td width=\"154\" valign=\"top\" style=\"width: 115.15pt; border-left: none; border-bottom: 1pt solid black; border-right: 1pt solid black; padding: 0in; height: 20.85pt;\">\r\n  <p class=\"TableParagraph\"><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif;=\"\" color:=\"\" and=\"\" 252525\"=\"\">14-26 Februari 2022</span><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif\"=\"\"><o:p></o:p></span></p>\r\n  </td>\r\n  \r\n  \r\n  \r\n </tr>\r\n <tr style=\"mso-yfti-irow:3;height:20.95pt\">\r\n  \r\n  \r\n  <td width=\"216\" valign=\"top\" style=\"width: 161.75pt; border-left: none; border-bottom: 1pt solid black; border-right: 1pt solid black; padding: 0in; height: 20.95pt;\">\r\n  <p class=\"TableParagraph\"><b><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif;=\"\" color:=\"\" and=\"\" 252525\"=\"\">Program Khusus (PK) dan Boarding School<o:p></o:p></span></b></p>\r\n  </td>\r\n  \r\n  <td width=\"154\" valign=\"top\" style=\"width: 115.15pt; border-left: none; border-bottom: 1pt solid black; border-right: 1pt solid black; padding: 0in; height: 20.95pt;\">\r\n  <p class=\"TableParagraph\"><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif;=\"\" color:=\"\" and=\"\" 252525\"=\"\">Â </span></p>\r\n  </td>\r\n  \r\n  \r\n  \r\n </tr>\r\n <tr style=\"mso-yfti-irow:4;height:20.95pt\">\r\n  \r\n  \r\n  <td width=\"216\" valign=\"top\" style=\"width: 161.75pt; border-left: none; border-bottom: 1pt solid black; border-right: 1pt solid black; padding: 0in; height: 20.95pt;\">\r\n  <p class=\"TableParagraph\" style=\"margin-left:23.35pt;text-indent:-.25in;\r\n  mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"mso-bidi-font-family:\" book=\"\" antiqua\";color:=\"\" and=\"\" 252525\"=\"\">a.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">Â Â Â Â Â Â \r\n  </span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:\r\n  \" segoe=\"\" ui=\"\" semilight\",sans-serif;color:=\"\" and=\"\" 252525\"=\"\">Proses Pendaftaran (daring dan\r\n  luring)</span><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif\"=\"\"><o:p></o:p></span></p>\r\n  </td>\r\n  \r\n  <td width=\"154\" valign=\"top\" style=\"width: 115.15pt; border-left: none; border-bottom: 1pt solid black; border-right: 1pt solid black; padding: 0in; height: 20.95pt;\">\r\n  <p class=\"TableParagraph\"><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif;=\"\" color:=\"\" and=\"\" 252525\"=\"\">01-12 Maret 2022</span><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif\"=\"\"><o:p></o:p></span></p>\r\n  </td>\r\n  \r\n  \r\n  \r\n </tr>\r\n <tr style=\"mso-yfti-irow:5;height:20.85pt\">\r\n  \r\n  \r\n  <td width=\"216\" valign=\"top\" style=\"width: 161.75pt; border-left: none; border-bottom: 1pt solid black; border-right: 1pt solid black; padding: 0in; height: 20.85pt;\">\r\n  <p class=\"TableParagraph\" style=\"margin-left:23.35pt;text-indent:-.25in;\r\n  mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"mso-bidi-font-family:\" book=\"\" antiqua\";color:=\"\" and=\"\" 252525\"=\"\">b.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">Â Â Â Â Â \r\n  </span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:\r\n  \" segoe=\"\" ui=\"\" semilight\",sans-serif\"=\"\">Pengiriman Berkas <o:p></o:p></span></p>\r\n  </td>\r\n  \r\n  <td width=\"154\" valign=\"top\" style=\"width: 115.15pt; border-left: none; border-bottom: 1pt solid black; border-right: 1pt solid black; padding: 0in; height: 20.85pt;\">\r\n  <p class=\"TableParagraph\"><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif;=\"\" color:=\"\" and=\"\" 252525\"=\"\">01 - 12 Maret 2022</span><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif\"=\"\"><o:p></o:p></span></p>\r\n  </td>\r\n  \r\n  \r\n  \r\n </tr>\r\n <tr style=\"mso-yfti-irow:6;height:20.85pt\">\r\n  \r\n  \r\n  <td width=\"216\" valign=\"top\" style=\"width: 161.75pt; border-left: none; border-bottom: 1pt solid black; border-right: 1pt solid black; padding: 0in; height: 20.85pt;\">\r\n  <p class=\"TableParagraph\" style=\"margin-left:23.35pt;text-indent:-.25in;\r\n  mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"mso-bidi-font-family:\" book=\"\" antiqua\";color:=\"\" and=\"\" 252525\"=\"\">c.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">Â Â Â Â Â Â \r\n  </span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:\r\n  \" segoe=\"\" ui=\"\" semilight\",sans-serif;color:=\"\" and=\"\" 252525\"=\"\">Verifikasi Berkas<o:p></o:p></span></p>\r\n  </td>\r\n  \r\n  <td width=\"154\" valign=\"top\" style=\"width: 115.15pt; border-left: none; border-bottom: 1pt solid black; border-right: 1pt solid black; padding: 0in; height: 20.85pt;\">\r\n  <p class=\"TableParagraph\"><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif;=\"\" color:=\"\" and=\"\" 252525\"=\"\">01 - 12 Maret 2022<o:p></o:p></span></p>\r\n  </td>\r\n  \r\n  \r\n  \r\n </tr>\r\n <tr style=\"mso-yfti-irow:7;height:20.95pt\">\r\n  \r\n  \r\n  <td width=\"216\" valign=\"top\" style=\"width: 161.75pt; border-left: none; border-bottom: 1pt solid black; border-right: 1pt solid black; padding: 0in; height: 20.95pt;\">\r\n  <p class=\"TableParagraph\" style=\"margin-left:23.35pt;text-indent:-.25in;\r\n  mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"mso-bidi-font-family:\" book=\"\" antiqua\";color:=\"\" and=\"\" 252525\"=\"\">d.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">Â Â Â Â Â \r\n  </span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:\r\n  \" segoe=\"\" ui=\"\" semilight\",sans-serif;color:=\"\" and=\"\" 252525\"=\"\">Pelaksanaan Tes</span><span style=\"font-size:12.0pt;font-family:\r\n  \" segoe=\"\" ui=\"\" semilight\",sans-serif\"=\"\"><o:p></o:p></span></p>\r\n  </td>\r\n  \r\n  <td width=\"154\" valign=\"top\" style=\"width: 115.15pt; border-left: none; border-bottom: 1pt solid black; border-right: 1pt solid black; padding: 0in; height: 20.95pt;\">\r\n  <p class=\"TableParagraph\"><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif;=\"\" color:=\"\" and=\"\" 252525\"=\"\">14 - 19 Maret 2022</span><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif\"=\"\"><o:p></o:p></span></p>\r\n  </td>\r\n  \r\n  \r\n  \r\n </tr>\r\n <tr style=\"mso-yfti-irow:8;height:20.85pt\">\r\n  \r\n  \r\n  <td width=\"216\" valign=\"top\" style=\"width: 161.75pt; border-left: none; border-bottom: 1pt solid black; border-right: 1pt solid black; padding: 0in; height: 20.85pt;\">\r\n  <p class=\"TableParagraph\" style=\"margin-left:23.35pt;text-indent:-.25in;\r\n  mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"mso-bidi-font-family:\" book=\"\" antiqua\";color:=\"\" and=\"\" 252525\"=\"\">e.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">Â Â Â Â Â Â \r\n  </span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:\r\n  \" segoe=\"\" ui=\"\" semilight\",sans-serif;color:=\"\" and=\"\" 252525\"=\"\">Pengolahan hasil tes</span><span style=\"font-size:12.0pt;font-family:\r\n  \" segoe=\"\" ui=\"\" semilight\",sans-serif\"=\"\"><o:p></o:p></span></p>\r\n  </td>\r\n  \r\n  <td width=\"154\" valign=\"top\" style=\"width: 115.15pt; border-left: none; border-bottom: 1pt solid black; border-right: 1pt solid black; padding: 0in; height: 20.85pt;\">\r\n  <p class=\"TableParagraph\" style=\"margin-top:3.0pt\"><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif;=\"\" color:=\"\" and=\"\" 252525\"=\"\">21 â€“ 22 Maret 2022</span><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif\"=\"\"><o:p></o:p></span></p>\r\n  </td>\r\n  \r\n  \r\n  \r\n </tr>\r\n <tr style=\"mso-yfti-irow:9;height:20.85pt\">\r\n  \r\n  \r\n  <td width=\"216\" valign=\"top\" style=\"width: 161.75pt; border-left: none; border-bottom: 1pt solid black; border-right: 1pt solid black; padding: 0in; height: 20.85pt;\">\r\n  <p class=\"TableParagraph\" style=\"margin-left:23.35pt;text-indent:-.25in;\r\n  mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"mso-bidi-font-family:\" book=\"\" antiqua\";color:=\"\" and=\"\" 252525\"=\"\">f.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">Â Â Â Â Â Â Â \r\n  </span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:\r\n  \" segoe=\"\" ui=\"\" semilight\",sans-serif;color:=\"\" and=\"\" 252525\"=\"\">Pengumuman Kelulusan</span><span style=\"font-size:12.0pt;font-family:\r\n  \" segoe=\"\" ui=\"\" semilight\",sans-serif\"=\"\"><o:p></o:p></span></p>\r\n  </td>\r\n  \r\n  <td width=\"154\" valign=\"top\" style=\"width: 115.15pt; border-left: none; border-bottom: 1pt solid black; border-right: 1pt solid black; padding: 0in; height: 20.85pt;\">\r\n  <p class=\"TableParagraph\"><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif;=\"\" color:=\"\" and=\"\" 252525\"=\"\">23 Maret Â 2022</span><span style=\"font-size:12.0pt;font-family:\r\n  \" segoe=\"\" ui=\"\" semilight\",sans-serif\"=\"\"><o:p></o:p></span></p>\r\n  </td>\r\n  \r\n  \r\n  \r\n </tr>\r\n <tr style=\"mso-yfti-irow:10;height:20.85pt\">\r\n  \r\n  \r\n  <td width=\"216\" valign=\"top\" style=\"width: 161.75pt; border-left: none; border-bottom: 1pt solid black; border-right: 1pt solid black; padding: 0in; height: 20.85pt;\">\r\n  <p class=\"TableParagraph\" style=\"margin-left:23.35pt;text-indent:-.25in;\r\n  mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"mso-bidi-font-family:\" book=\"\" antiqua\";color:=\"\" and=\"\" 252525\"=\"\">g.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">Â Â Â Â Â \r\n  </span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:\r\n  \" segoe=\"\" ui=\"\" semilight\",sans-serif;color:=\"\" and=\"\" 252525\"=\"\">Daftar Ulang<o:p></o:p></span></p>\r\n  </td>\r\n  \r\n  <td width=\"154\" valign=\"top\" style=\"width: 115.15pt; border-left: none; border-bottom: 1pt solid black; border-right: 1pt solid black; padding: 0in; height: 20.85pt;\">\r\n  <p class=\"TableParagraph\"><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif;=\"\" color:=\"\" and=\"\" 252525\"=\"\">24 Maret 2022 â€“ <o:p></o:p></span></p>\r\n  <p class=\"TableParagraph\"><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif;=\"\" color:=\"\" and=\"\" 252525\"=\"\">02 Â April 2022</span><span style=\"font-size:12.0pt;font-family:\r\n  \" segoe=\"\" ui=\"\" semilight\",sans-serif\"=\"\"><o:p></o:p></span></p>\r\n  </td>\r\n  \r\n  \r\n  \r\n </tr>\r\n \r\n \r\n \r\n</tbody></table><p><b><br></b></p><h5><b>KELAS REGULER</b></h5><ul><li><b>PENDAFTARAN</b>Â Â Â Â Â  Â  Â  Â  : MULAI BULAN MEI 2022</li></ul><p><b><br></b></p>', '2022-02-13 21:30:15', 2),
(3, 5, 'Info PPDB Online 2022', '<p><b>Gelombang Pertama</b>&nbsp;Tanggal 1 Desember 2021 Sampai 30 Mei 2022&nbsp;<b>Gelombang Kedua </b>Tanggal 1 Juni Sampai Tanggal 30 Juni 2022</p><p>Note: Pendaftaran Gelombang Pertama Gratis Biaya Pendaftaran dan Biaya Daftar Ulang</p>', '2022-01-10 01:57:16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sekolah`
--

CREATE TABLE `sekolah` (
  `npsn` varchar(16) NOT NULL,
  `nama_sekolah` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sekolah`
--

INSERT INTO `sekolah` (`npsn`, `nama_sekolah`, `alamat`, `status`) VALUES
('69977331', 'SMP SANDIKTA BEKASI', ' Jl. Raya Hankam No.208 | Kec. Pondok Melati', 1);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id_setting` int(1) NOT NULL,
  `nama_sekolah` varchar(100) NOT NULL,
  `jenjang` int(11) NOT NULL,
  `nsm` varchar(30) NOT NULL,
  `npsn` varchar(30) DEFAULT NULL,
  `status` text NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kota` varchar(30) DEFAULT NULL,
  `provinsi` varchar(30) DEFAULT NULL,
  `logo` varchar(50) DEFAULT NULL,
  `favicon` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `no_telp` varchar(50) DEFAULT NULL,
  `klikchat` text,
  `livechat` text,
  `nolivechat` varchar(50) DEFAULT NULL,
  `infobayar` text,
  `syarat` text,
  `kab` text NOT NULL,
  `kec` text NOT NULL,
  `web` text NOT NULL,
  `kepala` text NOT NULL,
  `nip` text NOT NULL,
  `ppdb` text,
  `kop` varchar(50) NOT NULL,
  `logo_ppdb` varchar(100) NOT NULL,
  `tgl_pengumuman` date NOT NULL,
  `tgl_tutup` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id_setting`, `nama_sekolah`, `jenjang`, `nsm`, `npsn`, `status`, `alamat`, `kota`, `provinsi`, `logo`, `favicon`, `email`, `no_telp`, `klikchat`, `livechat`, `nolivechat`, `infobayar`, `syarat`, `kab`, `kec`, `web`, `kepala`, `nip`, `ppdb`, `kop`, `logo_ppdb`, `tgl_pengumuman`, `tgl_tutup`) VALUES
(1, 'SMP SANDIKTA BEKASI ', 2, '121133120001', '20363813', 'Negeri', ' Jl. Raya Hankam No.208 | Kec. Pondok Melati', 'Wonogiri', 'Jawa Bekasi', 'assets/img/logo/sekolah.jpeg', NULL, 'SMP SANDIKTA BEKASI @gmail.com', '087854743264', 'Assalamu Alaikum\r\n\r\nMohon informasi PPDB', 'Assalamu Alaikum\r\n\r\n\r\nMohon informasi PPDB', '085728025641', '<p>1. SERAGAM</p><ul><li>BAHAN PRAMUKA&nbsp; &nbsp; : 500000</li><li>BAHAN OSIS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: 300000</li></ul>', '<p><br></p><ol><li>Surat Keterangan Lulus</li><li>Akta Kelahiran</li><li>Kartu Keluarga</li></ol>', 'kabupaten bekasi', 'Pondok Melati', 'www.mr-ell.com', 'Kamidi, M. Pd', '123456789123456', '1', 'assets/img/kop/kop81.png', 'assets/img/logo/logo_ppdb913.png', '2022-03-01', '2021-05-20');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(128) NOT NULL,
  `level` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` text NOT NULL,
  `status` int(1) NOT NULL,
  `foto` int(11) NOT NULL,
  `mapel` text NOT NULL,
  `nuptk` text NOT NULL,
  `jenkel` varchar(20) NOT NULL,
  `tempat_lahir` text NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tmt` year(4) NOT NULL,
  `no_sk` text NOT NULL,
  `jenis` text NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `nik` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `level`, `username`, `password`, `status`, `foto`, `mapel`, `nuptk`, `jenkel`, `tempat_lahir`, `tgl_lahir`, `tmt`, `no_sk`, `jenis`, `no_hp`, `nik`) VALUES
(5, 'ADMIN', 'admin', 'admin', '$2y$10$6mJtnsXix8CBmUWs3DF43ewwEp4X1CeXl25h87G2oiAOBeiin5mC.', 1, 0, '', '', '', '', '0000-00-00', 0000, '', '', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bayar`
--
ALTER TABLE `bayar`
  ADD PRIMARY KEY (`id_bayar`);

--
-- Indexes for table `biaya`
--
ALTER TABLE `biaya`
  ADD PRIMARY KEY (`id_biaya`);

--
-- Indexes for table `daftar`
--
ALTER TABLE `daftar`
  ADD PRIMARY KEY (`id_daftar`);

--
-- Indexes for table `histori`
--
ALTER TABLE `histori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indexes for table `jenjang`
--
ALTER TABLE `jenjang`
  ADD PRIMARY KEY (`id_jenjang`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id_pengumuman`);

--
-- Indexes for table `sekolah`
--
ALTER TABLE `sekolah`
  ADD PRIMARY KEY (`npsn`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `id_user` (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daftar`
--
ALTER TABLE `daftar`
  MODIFY `id_daftar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=308;
--
-- AUTO_INCREMENT for table `histori`
--
ALTER TABLE `histori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id_pengumuman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
