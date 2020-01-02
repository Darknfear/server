-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2020 at 05:47 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_students`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id_sv` int(11) NOT NULL,
  `ho_ten` varchar(50) NOT NULL,
  `maso_sv` varchar(8) NOT NULL,
  `lop` varchar(10) NOT NULL,
  `trang_thai_diem_danh` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id_sv`, `ho_ten`, `maso_sv`, `lop`, `trang_thai_diem_danh`, `created_at`, `update_at`) VALUES
(1, 'Nguyễn Văn Hiếu', 'CT010315', 'CT1C', 0, '2020-01-02 15:29:03', '2020-01-02 15:29:03'),
(2, 'Nguyễn Công Thành', 'CT010347', 'CT1C', 0, '2020-01-02 15:29:03', '2020-01-02 15:29:03'),
(3, 'Đỗ Anh Quân', 'CT010316', 'CT1C', 0, '2020-01-02 15:29:03', '2020-01-02 15:29:03'),
(4, 'Phạm Khánh An', 'CT010317', 'CT1C', 0, '2020-01-02 15:29:03', '2020-01-02 15:29:03'),
(5, 'Phạm Quang Hùng', 'CT010318', 'CT1C', 0, '2020-01-02 15:29:03', '2020-01-02 15:29:03'),
(6, 'Nguyễn Lưu Thành', 'CT010348', 'CT1C', 0, '2020-01-02 15:29:03', '2020-01-02 15:29:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id_sv`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id_sv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
