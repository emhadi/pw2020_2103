-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2020 at 12:52 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elearning_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_guru`
--

CREATE TABLE `data_guru` (
  `id` int(15) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nip` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_guru`
--

INSERT INTO `data_guru` (`id`, `nama`, `nip`) VALUES
(1, 'siti mardiyah', 1962110619),
(2, 'nina ernawati', 1964010119),
(3, 'linda jayanti', 1963890320);

-- --------------------------------------------------------

--
-- Table structure for table `data_siswa`
--

CREATE TABLE `data_siswa` (
  `id` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nomor_induk` varchar(10) NOT NULL,
  `nilai` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_siswa`
--

INSERT INTO `data_siswa` (`id`, `nama`, `nomor_induk`, `nilai`) VALUES
(1, 'akbar ardhavian ', '8332', '70'),
(2, 'akifan aqila', '8333', '80'),
(3, 'aprillia heardearini', '8334', '40'),
(4, 'arya azhara', '8335', '60'),
(5, 'deby lia', '8336', '60'),
(6, 'dian febriyanti', '8337', '90'),
(7, 'dinabila rofiana', '8338', '100'),
(8, 'dinda novi', '8339', '60'),
(9, 'ellisya putri', '8340', '80'),
(10, 'fandrea dwi', '8341', '40'),
(11, 'farhansyah alam', '8342', '50'),
(12, 'gemi sabrina', '8343', '0'),
(13, 'geizka nauval', '8344', '0'),
(14, 'iva aulia', '8345', '0'),
(15, 'kadek deva', '8346', '0'),
(16, 'kiara thana', '8347', '0'),
(17, 'mahmud wajar', '8348', '0'),
(18, 'maria fallicia', '8349', '0'),
(19, 'miftah izdaini', '8350', '0'),
(20, 'mohammad lukman', '8351', '0'),
(21, 'adinda indar', '8027', '0'),
(22, 'adisty wahyu', '8028', '0'),
(23, 'adjie agung', '8029', '0'),
(24, 'afifatun muslikhah', '8030', '0'),
(25, 'alma benanda', '8031', '0'),
(26, 'alvi syams', '8032', '0'),
(27, 'amanda rahma', '8033', '0'),
(28, 'arsyi syarief', '8034', '0'),
(29, 'bimo kholifah', '8035', '0'),
(30, 'cindra tri', '8036', '0'),
(31, 'daffa antarsyah', '8037', '0'),
(32, 'eka sari', '8038', '0'),
(33, 'fanissa nilam', '8039', '0'),
(34, 'farhan bintang', '8040', '0'),
(35, 'frida ayunissa', '8041', '0'),
(36, 'haida mardiyanti', '8042', '0'),
(37, 'hisyam', '8043', '100'),
(38, 'jatra ario8044', '8044', '80'),
(39, 'maylano ahnaf', '8045', '0'),
(40, 'mita daniyah', '8046', '0'),
(41, 'Fikri', '1234', '100');

-- --------------------------------------------------------

--
-- Table structure for table `detail_soal`
--

CREATE TABLE `detail_soal` (
  `id` int(15) NOT NULL,
  `id_unggah_soal` int(30) NOT NULL,
  `topik` varchar(50) NOT NULL,
  `sub_topik` varchar(50) NOT NULL,
  `jenis_soal` varchar(50) NOT NULL,
  `soal1` varchar(5) NOT NULL,
  `soal2` varchar(5) NOT NULL,
  `soal3` varchar(5) NOT NULL,
  `soal4` varchar(5) NOT NULL,
  `soal5` varchar(5) NOT NULL,
  `soal6` varchar(5) NOT NULL,
  `soal7` varchar(5) NOT NULL,
  `soal8` varchar(5) NOT NULL,
  `soal9` varchar(5) NOT NULL,
  `soal10` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jawaban_siswa`
--

CREATE TABLE `jawaban_siswa` (
  `id` int(15) NOT NULL,
  `tanggal` date NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `topik` varchar(100) NOT NULL,
  `sub_topik` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `soal1` varchar(100) NOT NULL,
  `soal2` varchar(100) NOT NULL,
  `jawaban1` varchar(100) NOT NULL,
  `jawaban2` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jawaban_soal_pg`
--

CREATE TABLE `jawaban_soal_pg` (
  `id` int(15) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jawaban1` varchar(5) NOT NULL,
  `jawaban2` varchar(5) NOT NULL,
  `jawaban3` varchar(5) NOT NULL,
  `jawaban4` varchar(5) NOT NULL,
  `jawaban5` varchar(5) NOT NULL,
  `jawaban6` varchar(5) NOT NULL,
  `jawaban7` varchar(5) NOT NULL,
  `jawaban8` varchar(5) NOT NULL,
  `jawaban9` varchar(5) NOT NULL,
  `jawaban10` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jawaban_soal_pg`
--

INSERT INTO `jawaban_soal_pg` (`id`, `nama`, `jawaban1`, `jawaban2`, `jawaban3`, `jawaban4`, `jawaban5`, `jawaban6`, `jawaban7`, `jawaban8`, `jawaban9`, `jawaban10`) VALUES
(1, 'akbar ardhavian', '', 'SR', 'HS', '', 'TS', 'SR', '\r\n7', 'KD', 'jawab', 'KD'),
(2, 'akifan aqila', '', 'KD', 'HS', '', 'SR', 'KD', '\r\n7', 'KD', 'jawab', 'HS'),
(3, 'aprillia heardearini', '', 'KD', 'SR', '', 'SR', 'KD', '\r\n7', 'KD', 'jawab', 'SR'),
(4, 'deby lia', 'TS', 'KD', 'SR', 'HS', 'HS', 'SR', '\r\n7', 'KD', 'jawab', 'HS'),
(5, 'deby lia', 'TS', 'KD', 'SR', 'KD', 'KD', 'KD', 'TS', 'KD', 'jawab', 'HS'),
(6, 'deby lia', 'TS', 'KD', 'SR', 'HS', 'SR', 'KD', 'TS', 'KD', 'SR', 'HS'),
(7, 'dian febriyanti', 'KD', 'HS', 'TS', 'KD', 'SR', 'TS', 'KD', 'SR', 'HS', 'TS'),
(8, 'dinda novi', 'TS', 'KD', 'SR', 'HS', 'SR', 'KD', 'TS', 'KD', 'SR', 'HS'),
(9, 'dinda novi', 'TS', 'KD', 'SR', 'HS', 'SR', 'KD', 'TS', 'KD', 'SR', 'HS'),
(10, 'dinda novi', 'TS', 'KD', 'SR', 'HS', 'SR', 'KD', 'TS', 'KD', 'SR', 'HS'),
(11, 'savhdj', 'TS', 'KD', 'SR', 'HS', 'SR', 'KD', 'TS', 'KD', 'SR', 'HS'),
(12, 'savhdj', 'TS', 'KD', 'SR', 'HS', 'SR', 'KD', 'TS', 'KD', 'SR', 'HS'),
(13, 'indah', 'TS', 'TS', 'KD', 'SR', 'HS', 'SR', 'KD', 'TS', 'KD', 'KD'),
(14, 'poni', 'TS', 'KD', 'SR', 'HS', 'SR', 'KD', 'TS', 'KD', 'SR', 'HS'),
(15, 'poni', 'TS', 'KD', 'SR', 'HS', 'SR', 'KD', 'TS', 'KD', 'SR', 'HS');

-- --------------------------------------------------------

--
-- Table structure for table `unggah_materi`
--

CREATE TABLE `unggah_materi` (
  `id` int(15) NOT NULL,
  `kelas` int(5) NOT NULL,
  `tanggal` date NOT NULL,
  `topik` varchar(100) NOT NULL,
  `sub_topik` varchar(800) NOT NULL,
  `file` varchar(800) NOT NULL,
  `type` varchar(30) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unggah_materi`
--

INSERT INTO `unggah_materi` (`id`, `kelas`, `tanggal`, `topik`, `sub_topik`, `file`, `type`, `size`) VALUES
(1, 10, '2017-07-31', 'pengenalan jati diri', 'dvcdsvdv', '20170316165548_58cac3946fa22.pdf', 'application/pdf', 878),
(2, 11, '2017-07-31', 'narkoba', 'ssdvfds', 'flowchart.jpg', 'image/jpeg', 349),
(3, 10, '0000-00-00', 'pengenalan jati diri', 'hvhvhj', 'laporan keuangan hima multimedia revisi.pdf', 'application/pdf', 802),
(4, 10, '2017-07-31', 'narkoba', 'gchgvch', 'laporan keuangan hima multimedia revisi.pdf', 'application/pdf', 802),
(5, 10, '2017-07-31', 'Narkoba', 'DVDV', 'kanbart tumiss.docx', 'application/vnd.openxmlformats', 25),
(6, 10, '2017-07-31', '', 'lagu korea', 'actonia_personal.ttf', 'application/octet-stream', 145),
(7, 10, '2017-07-31', '', 'ujuu', '20170316165548_58cac3946fa22.pdf', 'application/pdf', 878),
(8, 10, '2017-07-31', 'Manajemen Diri Berorientasi Masa Depan', 'sdfghjkl;', '20170316165548_58cac3946fa22.pdf', 'application/pdf', 878),
(9, 11, '2017-08-02', 'Menumbuhkan Jiwa Kepemimpinan Sejak Dini', 'sdfghj', '20170316165548_58cac3946fa22.pdf', 'application/pdf', 878),
(10, 10, '2017-08-12', 'Manajemen Diri Berorientasi Masa Depan', 'rfd', 'bab i.pdf', 'application/pdf', 45),
(11, 10, '2017-08-13', 'Manajemen Diri Berorientasi Masa Depan', 'menenangkan diri', 'bab i.pdf', 'application/pdf', 45),
(12, 10, '2017-08-16', 'Manajemen Diri Berorientasi Masa Depan', 'manajemen diri', 'bab i.docx', 'application/vnd.openxmlformats', 23);

-- --------------------------------------------------------

--
-- Table structure for table `unggah_soal`
--

CREATE TABLE `unggah_soal` (
  `id` int(15) NOT NULL,
  `kelas` int(5) NOT NULL,
  `tanggal` date NOT NULL,
  `topik` varchar(100) NOT NULL,
  `sub_topik` varchar(100) NOT NULL,
  `soal1` varchar(800) NOT NULL,
  `soal2` varchar(800) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unggah_soal`
--

INSERT INTO `unggah_soal` (`id`, `kelas`, `tanggal`, `topik`, `sub_topik`, `soal1`, `soal2`) VALUES
(1, 11, '2017-07-22', 'narkoba', 'fcfcg', 'xggx', ''),
(2, 10, '2017-07-25', 'pengenalan jati diri', 'fsdf', 'test nih ya', ''),
(3, 11, '2017-07-27', 'narkoba', 'sdfghj', 'sdfg', ''),
(4, 10, '2017-08-02', 'Manajemen Diri Berorientasi Masa Depan', 'fgvh', 'xvcbn', ''),
(5, 10, '2017-08-02', 'Manajemen Diri Berorientasi Masa Depan', 'rtgyhujio', 'xdfcvghbjnkm', ''),
(6, 10, '2017-08-02', 'Manajemen Diri Berorientasi Masa Depan', 'rtgyhujio', 'xdfcvghbjnkm', ''),
(10, 10, '2017-08-10', 'Manajemen Diri Berorientasi Masa Depan', 'dsfvsdg', 'gsddssg', 'dsggdgs'),
(11, 10, '2017-08-13', 'Manajemen Diri Berorientasi Masa Depan', 'manajemen diri', 'jika mereka...', 'kalau kejadian ini...'),
(12, 10, '2017-08-16', 'Manajemen Diri Berorientasi Masa Depan', 'manajemen diri', 'apakah kamu sidah bisa memanajemnkan diri mu sendiri?', 'apakah perilakumu disekolah menyimpang dari perilaku mu dirumah?');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_guru`
--
ALTER TABLE `data_guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_siswa`
--
ALTER TABLE `data_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_soal`
--
ALTER TABLE `detail_soal`
  ADD PRIMARY KEY (`id`,`id_unggah_soal`);

--
-- Indexes for table `jawaban_siswa`
--
ALTER TABLE `jawaban_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jawaban_soal_pg`
--
ALTER TABLE `jawaban_soal_pg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unggah_materi`
--
ALTER TABLE `unggah_materi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unggah_soal`
--
ALTER TABLE `unggah_soal`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_guru`
--
ALTER TABLE `data_guru`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `data_siswa`
--
ALTER TABLE `data_siswa`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `detail_soal`
--
ALTER TABLE `detail_soal`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jawaban_siswa`
--
ALTER TABLE `jawaban_siswa`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jawaban_soal_pg`
--
ALTER TABLE `jawaban_soal_pg`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `unggah_materi`
--
ALTER TABLE `unggah_materi`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `unggah_soal`
--
ALTER TABLE `unggah_soal`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
