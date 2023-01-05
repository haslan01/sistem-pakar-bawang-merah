-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Nov 2022 pada 03.07
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_spcf`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `pertanyaan` varchar(50) NOT NULL,
  `jawaban` varchar(50) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `pertanyaan`, `jawaban`, `nama_lengkap`) VALUES
(3, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Apa Makanan Favorit Anda?', 'bb9f601ba081ab8d336a14a697048cb0', 'Administrator');

-- --------------------------------------------------------

--
-- Struktur dari tabel `basis_pengetahuan`
--

CREATE TABLE `basis_pengetahuan` (
  `kode_pengetahuan` int(11) NOT NULL,
  `kode_penyakit` int(11) NOT NULL,
  `kode_gejala` int(11) NOT NULL,
  `mb` double(11,1) NOT NULL,
  `md` double(11,1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `basis_pengetahuan`
--

INSERT INTO `basis_pengetahuan` (`kode_pengetahuan`, `kode_penyakit`, `kode_gejala`, `mb`, `md`) VALUES
(1, 1, 1, 0.9, 0.0),
(2, 1, 2, 0.8, 0.0),
(4, 1, 9, 0.8, 0.0),
(5, 1, 11, 0.7, 0.2),
(7, 1, 6, 0.4, 0.0),
(8, 2, 4, 0.9, 0.0),
(9, 2, 10, 0.8, 0.0),
(10, 2, 5, 0.6, 0.0),
(13, 3, 7, 0.8, 0.0),
(15, 3, 8, 0.9, 0.0),
(17, 4, 4, 0.7, 0.0),
(18, 4, 14, 0.7, 0.0),
(20, 4, 13, 0.8, 0.0),
(21, 5, 15, 0.9, 0.0),
(29, 6, 3, 0.9, 0.0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `kode_gejala` int(11) NOT NULL,
  `nama_gejala` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`kode_gejala`, `nama_gejala`) VALUES
(1, ' Terbentuk Lekukan ke dalam, berlubang dan patah.'),
(2, ' Serangan awal ditandai dengan terlihatnya bercak berwarna putih pada daun.'),
(3, ' Tanaman akan mati dengan cepat dan mendadak'),
(4, ' Daun bawang merah menguning.'),
(5, 'Tanaman mudah tercabut karena pertumbuhan akar terganggu dan membusuk.'),
(7, 'Tanaman kurus kekuningan dan membusuk bagian pangkal.'),
(8, 'Pertumbuhan tanaman terhambat.'),
(9, ' Daun berwarna hijau pucat.'),
(10, 'Daun tampak belang-belang'),
(11, ' Bercak berbentuk bulat berwarna kuning pucat.'),
(12, 'Ujung daun mengering bahkan mudah patah'),
(13, 'Timbul bercak berukuran kecil, berwarna putih denga pusat berwarna ungu'),
(14, ' Pada bagian ujung bagian daun menjadi busuk basah'),
(15, 'Warnanya berubah menjadi kuning kecoklatan lalu putih');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil`
--

CREATE TABLE `hasil` (
  `id_hasil` int(11) NOT NULL,
  `tanggal` varchar(50) NOT NULL DEFAULT '0',
  `penyakit` text NOT NULL,
  `gejala` text NOT NULL,
  `hasil_id` int(11) NOT NULL,
  `hasil_nilai` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hasil`
--

INSERT INTO `hasil` (`id_hasil`, `tanggal`, `penyakit`, `gejala`, `hasil_id`, `hasil_nilai`) VALUES
(41, '2022-11-01 08:58:06', 'a:3:{i:5;s:6:\"0.9000\";i:3;s:6:\"0.7696\";i:6;s:6:\"0.5400\";}', 'a:15:{i:1;s:1:\"8\";i:2;s:1:\"2\";i:3;s:1:\"3\";i:4;s:1:\"6\";i:5;s:1:\"2\";i:6;s:1:\"9\";i:7;s:1:\"2\";i:8;s:1:\"4\";i:9;s:1:\"5\";i:10;s:1:\"6\";i:11;s:1:\"2\";i:12;s:1:\"9\";i:13;s:1:\"9\";i:14;s:1:\"5\";i:15;s:1:\"1\";}', 5, '0.9000'),
(40, '2022-10-26 10:13:55', 'a:1:{i:1;s:6:\"0.8344\";}', 'a:3:{i:1;s:1:\"3\";i:2;s:1:\"2\";i:12;s:1:\"3\";}', 1, '0.8344'),
(39, '2022-10-11 15:44:27', 'a:1:{i:1;s:6:\"0.4000\";}', 'a:3:{i:11;s:1:\"2\";i:12;s:1:\"1\";i:14;s:1:\"6\";}', 1, '0.4000'),
(34, '2022-10-09 15:52:28', 'a:2:{i:4;s:6:\"0.8440\";i:7;s:6:\"0.4800\";}', 'a:4:{i:21;s:1:\"1\";i:22;s:1:\"3\";i:23;s:1:\"2\";i:24;s:1:\"6\";}', 4, '0.8440'),
(35, '2022-10-09 16:12:21', 'a:2:{i:4;s:6:\"0.8440\";i:7;s:6:\"0.4800\";}', 'a:4:{i:21;s:1:\"1\";i:22;s:1:\"3\";i:23;s:1:\"2\";i:24;s:1:\"6\";}', 4, '0.8440'),
(36, '2022-10-09 16:13:15', 'a:2:{i:4;s:6:\"0.8440\";i:7;s:6:\"0.4800\";}', 'a:4:{i:21;s:1:\"1\";i:22;s:1:\"3\";i:23;s:1:\"2\";i:24;s:1:\"6\";}', 4, '0.8440'),
(37, '2022-10-10 15:24:19', 'a:2:{i:3;s:6:\"0.7200\";i:2;s:6:\"0.6400\";}', 'a:2:{i:8;s:1:\"2\";i:10;s:1:\"2\";}', 3, '0.7200'),
(38, '2022-10-10 17:10:39', 'a:1:{i:1;s:6:\"0.8344\";}', 'a:3:{i:1;s:1:\"3\";i:2;s:1:\"2\";i:3;s:1:\"6\";}', 1, '0.8344');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kondisi`
--

CREATE TABLE `kondisi` (
  `id` int(11) NOT NULL,
  `kondisi` varchar(64) NOT NULL,
  `ket` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kondisi`
--

INSERT INTO `kondisi` (`id`, `kondisi`, `ket`) VALUES
(1, 'Pasti ya', ''),
(2, 'Hampir pasti ya', ''),
(3, 'Kemungkinan besar ya', ''),
(4, 'Mungkin ya', ''),
(5, 'Tidak tahu', ''),
(6, 'Mungkin tidak', ''),
(7, 'Kemungkinan besar tidak', ''),
(8, 'Hampir pasti tidak', ''),
(9, 'Pasti tidak', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

CREATE TABLE `penyakit` (
  `kode_penyakit` int(11) NOT NULL,
  `nama_penyakit` varchar(50) NOT NULL,
  `det_penyakit` text NOT NULL,
  `srn_penyakit` text NOT NULL,
  `gambar` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`kode_penyakit`, `nama_penyakit`, `det_penyakit`, `srn_penyakit`, `gambar`) VALUES
(1, ' Antraknosa (Antraknose)', 'Gejalanya mirip dengan gejala busuk daun atau bercak ungu namun antraknosa cepat menyebabkan tanaman mati lanas (meranggas) apabila tidak segera ditangani. Untuk mencegah antraknosa maka anda harus menjaga agar area tanam bersih dari gulma dan tidak terlalu lembab dan rutin menyemprotkan fungisida kontak berbahan aktif propineb', 'Penyemprotan fungisida sistemik berbahan aktif dimetomorf atau difekonazole lalu diikuti dengan penyemprotan fungisida kontak berbahan aktif propineb selama 3 hari berturut-turut. Setelah itu maka penyemprotan fungisida kontak bisa dilakuakn 3-4 hari sekali lalu penyemprotan fungisida sistemik setiap 10 hari sekali. ', ''),
(2, 'Penyakit Moler atau Layu Fusarium (Twisting Diseas', 'Penyakit tanaman yang disebabkan oleh patogen tular tanah dan serangan patogennya melalui akar menimbulkan tantangan dalam pengelolaan penyakit yang efektif karena inokulum (sumber penyakit) awal sudah ada di dalam tanah sebelum awal pertumbuhan tanaman inang atau dapat juga diintroduksi oleh tanaman inang.', '1. Eradikasi tanaman sakit\r\n2. Penggunaan kultivar tahan\r\n3. Penggunaan jamur antagonis (misalnya Trichoderma sp.) yang mampu mengimbas ketahanan tanaman\r\n4. Perbaikan drainase, memperdalam selokan', ''),
(3, ' Penyakit Embun Bulu atau Tepung Palsu (Downy Mild', 'Pada kondisi yang lembab, berkabut atau curah hujan tinggi, cendawan akan membentuk masa spora yang sangat banyak, yang terlihat sebagai bulu-bulu halus berwarna ungu (violet) yang menutupi daun bagian luar dan batang (umbi). Gejala kelihatan lebih jelas jika daun basah terkena embun.', '1. Waktu tanam yang tepat; penanaman pada musim kemarau dapat menekan serangan penyakit embun bulu.\r\n2. Pengolahan tanah yang baik\r\n3. Penggunaan varietas tahan, seperti varietas kuning, bima dan sumenep, varietas bauji.\r\n4. Pemilihan bibit; penggunaan bibit umbi yang berasal dari tanaman sehat, kompak(tidak keropos) tidak luka/kulit tidak terkelupas', ''),
(4, ' Penyakit Bercak Daun Serkospora (Cercospora )', 'Konidium jamur disebarkan oleh angin dan infeksi terjadi melalui mulut kulit. Gejala baru tampak 30 hari atau lebih setelah infeksi. Ini menyebabkan lambatnya gejala di lapangan, meskipun infeksi dapat terjadi pada daun muda maupun daun tua. ', 'Selama ini pengendalian penyakit bercak daun cercospora hanya dapat dilakukan dengan penyemprotan fungisida. Pengendalian dengan 3 kali penyemprotan yaitu pada fase anakan maksimum, awal pembungaan dan awal pengisian dengan fungisida benomil', ''),
(5, ' Penyakit Trotol Atau Percak Ungu (Plternari Porri', 'Jamur bertahan pada sisa – sisa tanaman. Produksi spora terjadi di bercak yang berwarna kecoklatan atau keunguan. Spora akan tersebar dengan bantuan angin dan percikan air hujan (patogen tular udara). Curah hujan dan kelembapan tinggi membantu mempercepat proses infeksi', '1. Menanam benih bersertifikat\r\n2. Melakukan monitoring di pembibitan dan mengeradikasi bibit yang menunjukkan gejala penyakit sebelum dipindah ke lahan\r\n3. Membersihkan sisa tanaman yang mungkin terbawa saat panen\r\n4. Melakukan rotasi tanaman\r\n5. Menanam varietas tahan\r\n7. Menggunakan obat fungisida', ''),
(6, 'Mati Pucuk (Phytohthora Porri)', 'Gejala tanaman yang terkena penyakit mati pucuk, yaitu pada bagian ujung daun menjadi busuk basah, kemudian mengering dan warnanya berubah menjadi kuning kecoklatan lalu putih.', '1. Lakukan penanaman bawang merah pada saat tidak banyak hujan, dan gunakan benih yang sehat bebas dari hama dan penyakit.\r\n\r\n2. Lakukan rotasi tanam yang bukan merupakan tanaman sejenis. Potong pucuk daun yang terserang kemudian musnahkan dengan cara dibakar. Kendalikan dengan Antracol', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `post`
--

CREATE TABLE `post` (
  `kode_post` int(11) NOT NULL,
  `nama_post` varchar(50) NOT NULL,
  `det_post` text NOT NULL,
  `srn_post` text NOT NULL,
  `gambar` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `post`
--

INSERT INTO `post` (`kode_post`, `nama_post`, `det_post`, `srn_post`, `gambar`) VALUES
(45, 'Cercospora Leaf Spot', 'Gejalanya mirip dengan gejala busuk daun atau bercak ungu namun antraknosa cepat menyebabkan tanaman mati lanas (meranggas) apabila tidak segera ditangani. Untuk mencegah antraknosa maka anda harus menjaga agar area tanam bersih dari gulma dan tidak terlalu lembab dan rutin menyemprotkan fungisida kontak berbahan aktif propineb', '<p>Penyemprotan fungisida sistemik berbahan aktif dimetomorf atau difekonazole lalu diikuti dengan penyemprotan fungisida kontak berbahan aktif propineb selama 3 hari berturut-turut. Setelah itu maka penyemprotan fungisida kontak bisa dilakuakn 3-4 hari sekali lalu penyemprotan fungisida sistemik setiap 10 hari sekali.  </p>', 'Cercospora Leaf Spot.jpg'),
(44, 'Downy Milde', 'Penyakit tanaman yang disebabkan oleh patogen tular tanah dan serangan patogennya melalui akar menimbulkan tantangan dalam pengelolaan penyakit yang efektif karena inokulum (sumber penyakit) awal sudah ada di dalam tanah sebelum awal pertumbuhan tanaman inang atau dapat juga diintroduksi oleh tanaman inang.', '<p>1. Eradikasi tanaman sakit\r\n2. Penggunaan kultivar tahan\r\n3. Penggunaan jamur antagonis (misalnya Trichoderma sp.) yang mampu mengimbas ketahanan tanaman\r\n4. Perbaikan drainase, memperdalam selokan </p>', 'Downy Mildew Crop.jpg'),
(43, 'Twisting Disease', 'Pada kondisi yang lembab, berkabut atau curah hujan tinggi, cendawan akan membentuk masa spora yang sangat banyak, yang terlihat sebagai bulu-bulu halus berwarna ungu (violet) yang menutupi daun bagian luar dan batang (umbi). Gejala kelihatan lebih jelas jika daun basah terkena embun.', '<p>1. Waktu tanam yang tepat; penanaman pada musim kemarau dapat menekan serangan penyakit embun bulu.\r\n2. Pengolahan tanah yang baik\r\n3. Penggunaan varietas tahan, seperti varietas kuning, bima dan sumenep, varietas bauji.\r\n4. Pemilihan bibit; penggunaan bibit umbi yang berasal dari tanaman sehat, kompak(tidak keropos) tidak luka/kulit tidak terkelupas </p>', 'Twisting Disease.jpg'),
(42, 'Antraknose', 'Konidium jamur disebarkan oleh angin dan infeksi terjadi melalui mulut kulit. Gejala baru tampak 30 hari atau lebih setelah infeksi. Ini menyebabkan lambatnya gejala di lapangan, meskipun infeksi dapat terjadi pada daun muda maupun daun tua. ', '<p>Selama ini pengendalian penyakit bercak daun cercospora hanya dapat dilakukan dengan penyemprotan fungisida. Pengendalian dengan 3 kali penyemprotan yaitu pada fase anakan maksimum, awal pembungaan dan awal pengisian dengan fungisida benomil </p>', 'Antraknose.jpg'),
(46, 'Plternari Porri', 'Jamur bertahan pada sisa – sisa tanaman. Produksi spora terjadi di bercak yang berwarna kecoklatan atau keunguan. Spora akan tersebar dengan bantuan angin dan percikan air hujan (patogen tular udara). Curah hujan dan kelembapan tinggi membantu mempercepat proses infeksi', '<p>1. Menanam benih bersertifikat\r\n2. Melakukan monitoring di pembibitan dan mengeradikasi bibit yang menunjukkan gejala penyakit sebelum dipindah ke lahan\r\n3. Membersihkan sisa tanaman yang mungkin terbawa saat panen\r\n4. Melakukan rotasi tanaman\r\n5. Menanam varietas tahan\r\n7. Menggunakan obat fungisida </p>', 'Plternari Porri.jpg'),
(47, ' Phytohthora Porri', 'Gejala tanaman yang terkena penyakit mati pucuk, yaitu pada bagian ujung daun menjadi busuk basah, kemudian mengering dan warnanya berubah menjadi kuning kecoklatan lalu putih.', '<p> 1. Lakukan penanaman bawang merah pada saat tidak banyak hujan, dan gunakan benih yang sehat bebas dari hama dan penyakit.\r\n\r\n2. Lakukan rotasi tanam yang bukan merupakan tanaman sejenis. Potong pucuk daun yang terserang kemudian musnahkan dengan cara dibakar. Kendalikan dengan Antracol</p>', 'PHYTOHTHORA pORRI Crop.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbpasien`
--

CREATE TABLE `tbpasien` (
  `idpasien` int(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `kelamin` varchar(10) NOT NULL,
  `umur` varchar(3) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `noip` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `pekerjaan` varchar(20) NOT NULL,
  `namaorangtua` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbpasien`
--

INSERT INTO `tbpasien` (`idpasien`, `nama`, `kelamin`, `umur`, `alamat`, `noip`, `tanggal`, `pekerjaan`, `namaorangtua`) VALUES
(47, 'ridwan', 'Laki-laki', '3', 'Jogja', '::1', '2020-04-20', '', 'Jamila'),
(46, 'Ridwan', 'Laki-laki', '3', 'Jogja', '::1', '2020-04-14', '', 'Jamila'),
(45, 'Ridwan', 'Laki-laki', '3', 'Jogja', '::1', '2020-04-13', '', 'Jamila'),
(44, 'ridwan', 'Laki-laki', '3', 'Jogja', '::1', '2020-04-13', '', 'Jamila');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `idadmin` int(3) NOT NULL,
  `username` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`idadmin`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_gejala`
--

CREATE TABLE `tb_gejala` (
  `id` int(11) NOT NULL,
  `kdgejala` varchar(3) DEFAULT NULL,
  `gejala` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tb_gejala`
--

INSERT INTO `tb_gejala` (`id`, `kdgejala`, `gejala`) VALUES
(14, 'G14', 'Warnanya berubah menjadi kuning kecoklatan lalu putih'),
(13, 'G13', 'Pada bagian ujung bagian daun menjadi busuk basah?'),
(12, 'G12', 'Timbul bercak berukuran kecil, berwarna putih denga pusat berwarna ungu?'),
(11, 'G11', 'Ujung daun mengering bahkan mudah patah?'),
(10, 'G10', 'Bercak berbentuk bulat berwarna kuning pucat.?'),
(9, 'G9', 'Daun tampak belang-belang.?'),
(8, 'G8', 'Daun berwarna hijau pucat.?'),
(7, 'G7', 'Pertumbuhan tanaman terhambat.?'),
(5, 'G5', 'Tanaman mudah tercabut karena pertumbuhan akar terganggu dan membusuk.?'),
(6, 'G6', 'Tanaman kurus kekuningan dan membusuk bagian pangkal.?'),
(4, 'G4', 'Daun bawang merah menguning.?'),
(2, 'G2', 'Bercak berwarna putih dan kuning pada daun'),
(3, 'G3', 'Tanaman akan mati dengan cepat dan mendadak ?'),
(1, 'G1', 'Terbentuknya Lekukan ke dalam, berlubang dan patah?');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_hasil`
--

CREATE TABLE `tb_hasil` (
  `idhasil` int(5) NOT NULL,
  `idpasien` int(5) NOT NULL,
  `kdpenyakit` varchar(4) NOT NULL,
  `persentase` double NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_hasil`
--

INSERT INTO `tb_hasil` (`idhasil`, `idpasien`, `kdpenyakit`, `persentase`, `tanggal`) VALUES
(137, 46, 'P1', 65, '2020-04-14 00:10:38'),
(138, 47, 'P1', 65, '2020-04-20 18:06:03'),
(139, 47, 'P3', 8.26, '2022-10-10 16:35:06'),
(140, 47, 'P2', 72.48, '2022-10-10 16:35:06'),
(141, 47, 'P3', 8.26, '2022-10-10 16:36:59'),
(142, 47, 'P2', 72.48, '2022-10-10 16:36:59'),
(143, 47, 'P3', 8.26, '2022-10-10 16:37:21'),
(144, 47, 'P2', 72.48, '2022-10-10 16:37:21'),
(145, 47, 'P3', 8.26, '2022-10-10 16:38:52'),
(146, 47, 'P2', 72.48, '2022-10-10 16:38:52'),
(147, 47, 'P3', 8.26, '2022-10-10 16:40:50'),
(148, 47, 'P2', 72.48, '2022-10-10 16:40:50'),
(149, 47, 'P3', 8.26, '2022-10-10 16:42:23'),
(150, 47, 'P2', 72.48, '2022-10-10 16:42:23'),
(151, 47, 'P3', 8.26, '2022-10-10 16:42:55'),
(152, 47, 'P2', 72.48, '2022-10-10 16:42:55'),
(153, 47, 'P3', 8.26, '2022-10-10 16:44:31'),
(154, 47, 'P2', 72.48, '2022-10-10 16:44:31'),
(155, 47, 'P3', 8.26, '2022-10-10 16:46:43'),
(156, 47, 'P2', 72.48, '2022-10-10 16:46:43'),
(157, 47, 'P3', 8.26, '2022-10-10 16:47:16'),
(158, 47, 'P2', 72.48, '2022-10-10 16:47:16'),
(159, 47, 'P3', 8.26, '2022-10-10 16:47:37'),
(160, 47, 'P2', 72.48, '2022-10-10 16:47:37'),
(161, 47, 'P3', 8.26, '2022-10-10 16:50:58'),
(162, 47, 'P2', 72.48, '2022-10-10 16:50:58'),
(163, 47, 'P3', 8.26, '2022-10-10 16:52:38'),
(164, 47, 'P2', 72.48, '2022-10-10 16:52:38'),
(165, 47, 'P3', 8.26, '2022-10-10 16:53:04'),
(166, 47, 'P2', 72.48, '2022-10-10 16:53:04'),
(167, 47, 'P3', 8.26, '2022-10-10 16:54:00'),
(168, 47, 'P2', 72.48, '2022-10-10 16:54:00'),
(169, 47, 'P3', 8.26, '2022-10-10 16:54:33'),
(170, 47, 'P2', 72.48, '2022-10-10 16:54:33'),
(171, 47, 'P3', 8.26, '2022-10-10 16:55:21'),
(172, 47, 'P2', 72.48, '2022-10-10 16:55:21'),
(173, 47, 'P3', 8.26, '2022-10-10 16:57:32'),
(174, 47, 'P2', 72.48, '2022-10-10 16:57:33'),
(175, 47, 'P3', 8.26, '2022-10-10 16:59:02'),
(176, 47, 'P2', 72.48, '2022-10-10 16:59:02'),
(177, 47, 'P3', 8.26, '2022-10-10 16:59:41'),
(178, 47, 'P2', 72.48, '2022-10-10 16:59:41'),
(179, 47, 'P1', 80, '2022-10-10 18:44:40'),
(180, 47, 'P1', 30, '2022-10-11 10:15:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_penyakit`
--

CREATE TABLE `tb_penyakit` (
  `id` int(11) NOT NULL,
  `kdpenyakit` varchar(3) DEFAULT NULL,
  `nama_penyakit` varchar(100) DEFAULT NULL,
  `definisi` text DEFAULT NULL,
  `solusi` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tb_penyakit`
--

INSERT INTO `tb_penyakit` (`id`, `kdpenyakit`, `nama_penyakit`, `definisi`, `solusi`) VALUES
(3, 'P3', 'Downy Mildew', '- Pertumbuhan tanaman terhambat.\r\n- Daun berwarna hijau pucat.\r\n', ''),
(1, 'P1', 'Antraknose', '- Terbentuk Lekukan ke dalam, berlubang dan patah.\r\n\r\n- Serangan awal ditandai dengan terlihatnya bercak berwarna putih pada daun.\r\n\r\n- Tanaman akan mati dengan cepat dan mendadak', ''),
(2, 'P2', 'Twisting Disease', '- Daun bawang merah menguning.\r\n-Tanaman mudah tercabut karena pertumbuhan akar terganggu dan membusuk.\r\n- Tanaman kurus kekuningan dan membusuk bagian pangkal.\r\n', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_rules`
--

CREATE TABLE `tb_rules` (
  `id_problem` int(11) DEFAULT NULL,
  `id_evidence` int(11) DEFAULT NULL,
  `cf` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tb_rules`
--

INSERT INTO `tb_rules` (`id_problem`, `id_evidence`, `cf`) VALUES
(1, 12, 0.5),
(1, 11, 0.6),
(1, 10, 0.7),
(1, 9, 0.6),
(1, 8, 0.5),
(1, 7, 0.6),
(1, 5, 0.5),
(1, 6, 0.5),
(1, 4, 0.3),
(1, 2, 0.8),
(1, 3, 0.3),
(1, 1, 0.5),
(2, 17, 0.4),
(2, 16, 0.3),
(2, 15, 0.3),
(2, 14, 0.8),
(2, 13, 0.6),
(2, 12, 0.5),
(2, 11, 0.6),
(2, 10, 0.7),
(2, 2, 0.8),
(2, 1, 0.5),
(3, 20, 0.3),
(3, 12, 0.5),
(3, 11, 0.6),
(3, 10, 0.7),
(3, 2, 0),
(3, 1, 0),
(2, 18, 0.7),
(2, 19, 0.3),
(3, 21, 0.3),
(3, 22, 0.3),
(3, 23, 0.3);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `basis_pengetahuan`
--
ALTER TABLE `basis_pengetahuan`
  ADD PRIMARY KEY (`kode_pengetahuan`);

--
-- Indeks untuk tabel `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`kode_gejala`);

--
-- Indeks untuk tabel `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id_hasil`);

--
-- Indeks untuk tabel `kondisi`
--
ALTER TABLE `kondisi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`kode_penyakit`);

--
-- Indeks untuk tabel `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`kode_post`);

--
-- Indeks untuk tabel `tbpasien`
--
ALTER TABLE `tbpasien`
  ADD PRIMARY KEY (`idpasien`);

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`idadmin`);

--
-- Indeks untuk tabel `tb_gejala`
--
ALTER TABLE `tb_gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_hasil`
--
ALTER TABLE `tb_hasil`
  ADD PRIMARY KEY (`idhasil`);

--
-- Indeks untuk tabel `tb_penyakit`
--
ALTER TABLE `tb_penyakit`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `basis_pengetahuan`
--
ALTER TABLE `basis_pengetahuan`
  MODIFY `kode_pengetahuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `gejala`
--
ALTER TABLE `gejala`
  MODIFY `kode_gejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `kondisi`
--
ALTER TABLE `kondisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `kode_penyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `post`
--
ALTER TABLE `post`
  MODIFY `kode_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `tbpasien`
--
ALTER TABLE `tbpasien`
  MODIFY `idpasien` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT untuk tabel `tb_gejala`
--
ALTER TABLE `tb_gejala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `tb_hasil`
--
ALTER TABLE `tb_hasil`
  MODIFY `idhasil` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT untuk tabel `tb_penyakit`
--
ALTER TABLE `tb_penyakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
