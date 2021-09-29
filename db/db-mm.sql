-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2021 at 10:02 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db-mm`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `penulis` varchar(100) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul`, `penulis`, `tanggal`, `isi`) VALUES
(1, 'artikel 1', 'ijul', '29-09-2021', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Exercitationem soluta cupiditate fuga explicabo unde dignissimos quasi fugiat eligendi similique magni corporis labore, consequuntur rem alias ipsam itaque cum odio sint excepturi. Ut debitis id natus sunt ratione vero ipsam totam iste laboriosam hic saepe eaque, dolore, excepturi eligendi minus, earum perferendis voluptatum rem. Doloremque minima aperiam at placeat fugiat reiciendis, sit molestias obcaecati animi autem rerum voluptatibus minus, consectetur accusantium qui provident. Totam culpa sequi delectus quia neque, voluptates necessitatibus et sapiente repudiandae debitis dolorem in odit laborum asperiores incidunt dolor eligendi! Voluptatum asperiores doloremque officia architecto porro, minus et!'),
(2, 'artikel 2', 'ijul', '29-09-2021', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Exercitationem soluta cupiditate fuga explicabo unde dignissimos quasi fugiat eligendi similique magni corporis labore, consequuntur rem alias ipsam itaque cum odio sint excepturi. Ut debitis id natus sunt ratione vero ipsam totam iste laboriosam hic saepe eaque, dolore, excepturi eligendi minus, earum perferendis voluptatum rem. Doloremque minima aperiam at placeat fugiat reiciendis, sit molestias obcaecati animi autem rerum voluptatibus minus, consectetur accusantium qui provident. Totam culpa sequi delectus quia neque, voluptates necessitatibus et sapiente repudiandae debitis dolorem in odit laborum asperiores incidunt dolor eligendi! Voluptatum asperiores doloremque officia architecto porro, minus et!');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(20) NOT NULL,
  `id_art` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `isi_komentar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_art`, `nama`, `tanggal`, `isi_komentar`) VALUES
(5, 1, 'Agustino', '29-09-2021', 'aaaa'),
(6, 1, 'cobe ', '29-09-2021', 'aaa'),
(7, 2, 'ijul', '29-09-2021', 'aaa'),
(8, 2, 'ijul', '29-09-2021', 'aaaaaaaa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
