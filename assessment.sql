-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2021 at 12:17 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assessment`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbm_form_data`
--

CREATE TABLE `tbm_form_data` (
  `id` int(11) NOT NULL,
  `runner_id` int(45) NOT NULL,
  `age` int(11) NOT NULL,
  `sex` varchar(45) NOT NULL,
  `color` varchar(45) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbm_form_data`
--

INSERT INTO `tbm_form_data` (`id`, `runner_id`, `age`, `sex`, `color`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'G', 'B', '2021-08-24 04:33:56', '2021-08-24 04:33:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbm_form_last_runs`
--

CREATE TABLE `tbm_form_last_runs` (
  `id` int(11) NOT NULL,
  `runner_id` int(45) NOT NULL,
  `meeting_id` int(11) NOT NULL,
  `achieved_score` int(11) NOT NULL,
  `tot_score` int(11) NOT NULL,
  `length` double DEFAULT 0,
  `code` int(45) NOT NULL,
  `conditions` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `value` double NOT NULL DEFAULT 0,
  `remark` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbm_form_last_runs`
--

INSERT INTO `tbm_form_last_runs` (`id`, `runner_id`, `meeting_id`, `achieved_score`, `tot_score`, `length`, `code`, `conditions`, `price`, `value`, `remark`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 2, 11, 1.3, 2050, 'Benchmark 64', 3.3, 35000, 'Heavy 10', '2021-08-04 06:07:49', '2021-08-25 06:22:02'),
(2, 1, 1, 3, 10, 2.6, 1600, 'Benchmark 64', 10, 50000, 'Soft 7', '2021-07-14 06:11:08', '2021-08-25 06:22:06'),
(3, 1, 3, 4, 12, 1.35, 2414, 'Flat, handicap = true', 3.5, 0, 'Good', '2020-10-02 06:13:13', '2021-08-25 06:22:09'),
(4, 1, 3, 1, 14, 0, 2148, 'Flat, handicap= true', 8, 0, 'Good', '2020-09-25 06:15:27', '2021-08-25 06:22:12'),
(5, 1, 4, 8, 16, 8.75, 2011, 'Flat', 4, 0, 'Soft', '2020-09-10 06:18:58', '2021-08-25 06:22:14');

-- --------------------------------------------------------

--
-- Table structure for table `tbm_meetings`
--

CREATE TABLE `tbm_meetings` (
  `id` int(11) NOT NULL,
  `external_id` varchar(45) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbm_meetings`
--

INSERT INTO `tbm_meetings` (`id`, `external_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'MEETING_001', 'Sandown', '2021-08-24 04:13:26', '2021-08-24 04:13:26'),
(2, 'MEETING_002', 'Moe', '2021-08-25 05:39:08', '2021-08-25 05:39:08'),
(3, 'MEETING_003', 'Dundalk', '2021-08-25 05:39:08', '2021-08-25 05:39:08'),
(4, 'MEETING_004', 'Navan', '2021-08-25 05:40:05', '2021-08-25 05:40:05');

-- --------------------------------------------------------

--
-- Table structure for table `tbm_races`
--

CREATE TABLE `tbm_races` (
  `id` int(11) NOT NULL,
  `external_id` varchar(45) NOT NULL,
  `name` varchar(255) NOT NULL,
  `meeting_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbm_races`
--

INSERT INTO `tbm_races` (`id`, `external_id`, `name`, `meeting_id`, `created_at`, `updated_at`) VALUES
(1, 'RACE_0001', 'RACE 1', 1, '2021-08-24 04:14:37', '2021-08-24 04:14:37'),
(2, 'RACE_0002', 'RACE 2', 1, '2021-08-24 04:15:15', '2021-08-24 04:15:15'),
(3, 'RACE_0003', 'RACE 3', 1, '2021-08-24 04:15:46', '2021-08-24 04:15:46'),
(4, 'RACE_0004', 'RACE 4', 1, '2021-08-24 04:15:46', '2021-08-24 04:15:46'),
(5, 'RACE_0005', 'RACE 5', 1, '2021-08-24 04:16:32', '2021-08-24 04:16:32'),
(6, 'RACE_0006', 'RACE 6', 1, '2021-08-24 04:16:32', '2021-08-24 04:16:32'),
(7, 'RACE_0007', 'RACE 7', 1, '2021-08-24 04:17:11', '2021-08-24 04:17:11'),
(8, 'RACE_0008', 'RACE 8', 1, '2021-08-24 04:17:34', '2021-08-24 04:17:34');

-- --------------------------------------------------------

--
-- Table structure for table `tbm_runners`
--

CREATE TABLE `tbm_runners` (
  `id` int(11) NOT NULL,
  `external_id` varchar(45) NOT NULL,
  `name` varchar(255) NOT NULL,
  `race_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbm_runners`
--

INSERT INTO `tbm_runners` (`id`, `external_id`, `name`, `race_id`, `created_at`, `updated_at`) VALUES
(1, 'RUNNER_0001', 'Eaglemont', 3, '2021-08-24 04:21:07', '2021-08-24 04:21:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbm_form_data`
--
ALTER TABLE `tbm_form_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbm_form_last_runs`
--
ALTER TABLE `tbm_form_last_runs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbm_meetings`
--
ALTER TABLE `tbm_meetings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbm_races`
--
ALTER TABLE `tbm_races`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbm_runners`
--
ALTER TABLE `tbm_runners`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbm_form_data`
--
ALTER TABLE `tbm_form_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbm_form_last_runs`
--
ALTER TABLE `tbm_form_last_runs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbm_meetings`
--
ALTER TABLE `tbm_meetings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbm_races`
--
ALTER TABLE `tbm_races`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbm_runners`
--
ALTER TABLE `tbm_runners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
