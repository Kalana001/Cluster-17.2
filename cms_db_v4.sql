-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 05, 2023 at 05:53 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

DROP TABLE IF EXISTS `branches`;
CREATE TABLE IF NOT EXISTS `branches` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `branch_code` varchar(50) NOT NULL,
  `street` text NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `zip_code` varchar(50) NOT NULL,
  `country` text NOT NULL,
  `contact` varchar(100) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `branch_code`, `street`, `city`, `state`, `zip_code`, `country`, `contact`, `date_created`) VALUES
(1, 'CMB-001', '100 Bank of Ceylon Mawatha', 'Colombo', 'Western', '00100', 'Sri Lanka', '+94 11 244 6789', '2023-10-04 00:00:00'),
(2, 'JAF-002', '120 Main Street', 'Jaffna', 'Northern', '40000', 'Sri Lanka', '+94 75 222 3333', '2023-10-05 00:00:00'),
(3, 'KDY-003', '150 Kandy Road', 'Kandy', 'Central', '20000', 'Sri Lanka', '+94 71 444 5555', '2023-10-06 00:00:00'),
(4, 'GLL-004', '200 Galle Road', 'Galle', 'Southern', '80000', 'Sri Lanka', '+94 71 666 7777', '2023-10-07 00:00:00'),
(5, 'RAT-005', '250 Ratnapura Road', 'Ratnapura', 'Sabaragamuwa', '70000', 'Sri Lanka', '+94 76 888 9999', '2023-10-08 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `parcels`
--

DROP TABLE IF EXISTS `parcels`;
CREATE TABLE IF NOT EXISTS `parcels` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `reference_number` varchar(100) NOT NULL,
  `sender_name` text NOT NULL,
  `sender_address` text NOT NULL,
  `sender_contact` text NOT NULL,
  `recipient_name` text NOT NULL,
  `recipient_address` text NOT NULL,
  `recipient_contact` text NOT NULL,
  `type` int(1) NOT NULL COMMENT '1 = Deliver, 2=Pickup',
  `from_branch_id` varchar(30) NOT NULL,
  `to_branch_id` varchar(30) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `height` varchar(100) NOT NULL,
  `width` varchar(100) NOT NULL,
  `length` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parcels`
--

INSERT INTO `parcels` (`id`, `reference_number`, `sender_name`, `sender_address`, `sender_contact`, `recipient_name`, `recipient_address`, `recipient_contact`, `type`, `from_branch_id`, `to_branch_id`, `weight`, `height`, `width`, `length`, `price`, `status`, `date_created`) VALUES
(8, '6561ef63c0c1c', 'abs', 'Cross street', '0763971242', 'as', '323223', '0763971242', 1, '10500', '10500', '23', '23', '32', '32', 10, 6, '2023-11-25 18:28:11'),
(9, '65657625cd5b3', 'abs', 'Cross street', '0763971242', 'as', '323223', '0763971242', 1, '10500', '10500', '23', '23', '32', '32', 10, 1, '2023-11-28 10:39:57'),
(10, '65657631cc8dd', 'abs', 'Cross street', '0763971242', 'as', '323223', '0763971242', 1, '10500', '10500', '23', '23', '32', '32', 10, 1, '2023-11-28 10:40:09'),
(11, '6565768476799', 'abs', 'Cross street', '0763971242', 'as', '323223', '0763971242', 1, '10500', '10500', '23', '23', '32', '32', 10, 8, '2023-11-28 10:41:32'),
(12, '65657684833af', 'abs', 'Cross street', '0763971242', 'as', '323223', '0763971242', 1, '10500', '10500', '23', '23', '32', '32', 10, 1, '2023-11-28 10:41:32'),
(33, '656ae86d4c700', 'abs2323e', 'Cross street', '0763971242', '323erw', '323223', '0763971242', 1, '10500', '10500', '23', '23', '32', '32', 10, 6, '2023-12-02 13:48:53'),
(34, '656aeb9fdd217', 'abs2323e', 'Cross street', '0763971242', '323erw', '323223', '0763971242', 1, '10500', '10500', '23', '23', '32', '32', 10, 1, '2023-12-02 14:02:31'),
(35, '656aebaf8acc9', 'abs2323e', 'Cross street', '0763971242', '323erw', '323223', '0763971242', 1, '10500', '10500', '23', '23', '32', '32', 10, 1, '2023-12-02 14:02:47'),
(36, '656aebd5ea27d', 'abs2323e', 'Cross street', '0763971242', '323erw', '323223', '0763971242', 1, '10500', '10500', '23', '23', '32', '32', 10, 1, '2023-12-02 14:03:25'),
(37, '656aec18f0a89', 'abs2323e', 'Cross street', '0763971242', '323erw', '323223', '0763971242', 1, '10500', '10500', '23', '23', '32', '32', 10, 1, '2023-12-02 14:04:32'),
(38, '656aec28e4c9a', 'abs2323e', 'Cross street', '0763971242', '323erw', '323223', '0763971242', 1, '10500', '10500', '23', '23', '32', '32', 10, 1, '2023-12-02 14:04:48'),
(39, '656aec3a70982', 'abs2323e', 'Cross street', '0763971242', '323erw', '323223', '0763971242', 1, '10500', '10500', '23', '23', '32', '32', 10, 1, '2023-12-02 14:05:06'),
(40, '656aec92cf56c', 'abs2323e', 'Cross street', '0763971242', '323erw', '323223', '0763971242', 1, '10500', '10500', '23', '23', '32', '32', 10, 1, '2023-12-02 14:06:34'),
(41, '656aecac0db92', 'abs2323e', 'Cross street', '0763971242', '323erw', '323223', '0763971242', 1, '10500', '10500', '23', '23', '32', '32', 10, 1, '2023-12-02 14:07:00'),
(42, '656c1ccf89120', 'fgdf213123123', '4534', '435435434234', 'fdgfdg12212', '34534', '43534', 1, '10500', '10500', '12', '21', '12', '12', 10, 2, '2023-12-03 11:44:39'),
(43, '656cb58c25283', 'YTUI', 'Colombo', '+94763971242', 'tset reci', '32234234', '+94763971242', 1, '10500', '10500', '23', 'T', '5', '23', 10, 1, '2023-12-03 22:36:20'),
(44, '656f6106cf688', 'sdfsd', 'Colombo', '+94763971242', 'sdf', 'dfgd', '+94763971242', 1, '10500', '10500', '21', '45', '45', '34', 10, 1, '2023-12-05 23:12:30');

-- --------------------------------------------------------

--
-- Table structure for table `parcel_tracks`
--

DROP TABLE IF EXISTS `parcel_tracks`;
CREATE TABLE IF NOT EXISTS `parcel_tracks` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `parcel_id` int(30) NOT NULL,
  `status` int(2) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parcel_tracks`
--

INSERT INTO `parcel_tracks` (`id`, `parcel_id`, `status`, `date_created`) VALUES
(1, 2, 1, '2020-11-27 09:53:27'),
(2, 3, 1, '2020-11-27 09:55:17'),
(3, 1, 1, '2020-11-27 10:28:01'),
(4, 1, 2, '2020-11-27 10:28:10'),
(5, 1, 3, '2020-11-27 10:28:16'),
(6, 1, 4, '2020-11-27 11:05:03'),
(7, 1, 5, '2020-11-27 11:05:17'),
(8, 1, 7, '2020-11-27 11:05:26'),
(9, 3, 2, '2020-11-27 11:05:41'),
(10, 6, 1, '2020-11-27 14:06:57'),
(11, 7, 4, '2023-11-20 17:23:24'),
(12, 8, 2, '2023-11-25 18:29:23'),
(13, 8, 3, '2023-11-25 18:31:16'),
(14, 31, 1, '2023-12-02 13:29:02'),
(15, 31, 2, '2023-12-02 13:29:16'),
(16, 31, 0, '2023-12-02 13:29:34'),
(17, 31, 2, '2023-12-02 13:29:45'),
(18, 31, 1, '2023-12-02 13:29:51'),
(19, 31, 2, '2023-12-02 13:30:13'),
(20, 31, 5, '2023-12-02 13:30:19'),
(21, 32, 7, '2023-12-02 13:30:48'),
(22, 31, 3, '2023-12-02 13:31:50'),
(23, 31, 8, '2023-12-02 13:31:59'),
(24, 33, 2, '2023-12-02 13:49:37'),
(25, 33, 6, '2023-12-02 14:00:00'),
(26, 11, 8, '2023-12-02 14:00:59'),
(27, 42, 2, '2023-12-03 11:45:22'),
(28, 8, 6, '2023-12-03 22:37:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '2' COMMENT '1 = admin, 2 = staff',
  `branch_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `type`, `branch_id`, `date_created`) VALUES
(1, 'Administrator', '', 'admin@admin.com', '0192023a7bbd73250516f069df18b500', 1, 0, '2020-11-26 10:57:04'),
(4, 'Yoshan', 'Charuka', 'yoshan@xsoftsqwqolution.com', '827ccb0eea8a706c4c34a16891f84e7b', 1, 0, '2023-11-19 18:42:30'),
(5, 'Yoshan2', 'Charuka122', 'Yoshan@admin.com', '827ccb0eea8a706c4c34a16891f84e7b', 2, 3, '2023-12-02 14:01:34'),
(6, 'Yoshan', 'Charuka6', 'admiqwqn@admin.com', '827ccb0eea8a706c4c34a16891f84e7b', 2, 2, '2023-12-02 14:07:29');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
