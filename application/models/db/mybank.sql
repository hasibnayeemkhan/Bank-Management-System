-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2022 at 04:15 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mybank`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branchId` int(11) NOT NULL,
  `branchNo` varchar(111) NOT NULL,
  `branchName` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branchId`, `branchNo`, `branchName`) VALUES
(1, '4701', 'Mohakhali Branch'),
(2, '4702', 'Mirpur Branch'),
(3, '4703', 'Banani Branch'),
(4, '4704', 'Utility Collection');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedbackId` int(11) NOT NULL,
  `message` text NOT NULL,
  `userId` double NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedbackId`, `message`, `userId`, `date`) VALUES
(1, 'Transection method is very user friendly', 1, '2022-08-15 04:30:48'),
(3, 'All branches are cooperative', 2, '2022-08-17 04:30:48'),
(4, 'everything is operating correctly ', 1, '2022-08-16 06:45:20'),
(5, 'need verification', 1, '2022-08-16 19:45:20');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(111) NOT NULL,
  `password` varchar(111) NOT NULL,
  `type` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `password`, `type`, `date`) VALUES
(1, 'cashier@mail.com', 'cashier', 'cashier', '2022-07-15 04:36:27'),
(2, 'manager@mail.com', 'manager', 'manager', '2022-07-15 04:36:27'),
(3, 'asfia@mail.com', 'asfia', 'manager', '2022-07-16 07:13:12'),
(4, 'cse@mail.com', 'cse470', 'cashier', '2022-07-16 07:13:18'),
(6, 'cashier2@mail.com', 'cashier2', 'cashier', '2022-07-16 07:14:47');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `userId` varchar(111) NOT NULL,
  `notice` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `userId`, `notice`, `date`) VALUES
(1, '1', 'Dear Customer! <br> Our privacy policy is changed for account information get a new prospectus from your nearest branch.<br>\r\nThanks', '2022-07-17 13:11:46'),
(6, '2', 'Dear Account Holder,<br>\r\nOur privacy policy has been changed please visit the nearest branch for a new prospectus.<br>Thanks', '2022-07-16 06:29:23'),
(7, '2', 'All bank booths accept our ATM cards.', '2022-08-15 18:26:58');

-- --------------------------------------------------------

--
-- Table structure for table `otheraccounts`
--

CREATE TABLE `otheraccounts` (
  `id` int(11) NOT NULL,
  `accountNo` varchar(111) NOT NULL,
  `bankName` varchar(111) NOT NULL,
  `holderName` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `otheraccounts`
--

INSERT INTO `otheraccounts` (`id`, `accountNo`, `bankName`, `holderName`, `balance`, `date`) VALUES
(1, '47011', 'CBL', 'MD ABDUR RAHMAN ', '40800', '2022-07-15 11:55:07'),
(2, '47012', 'MBL', 'MAHMUD KHAN', '75000', '2022-07-15 11:55:07'),
(3, '47013', 'SBL', 'SHAKIB CHOWDHURY', '85000', '2022-07-15 11:55:07');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transactionId` int(11) NOT NULL,
  `action` varchar(111) NOT NULL,
  `credit` varchar(111) NOT NULL,
  `debit` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `beneId` varchar(111) NOT NULL,
  `other` varchar(111) NOT NULL,
  `userId` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transactionId`, `action`, `credit`, `debit`, `balance`, `beneId`, `other`, `userId`, `date`) VALUES
(4, 'transfer', '', '200', '', '', '47001', 1, '2022-07-16 12:33:40'),
(5, 'transfer', '', '200', '', '', '47002', 1, '2022-07-17 12:56:48'),
(6, 'transfer', '', '333', '', '', '47003', 1, '2022-07-17 12:57:20'),
(7, 'transfer', '', '222', '', '', '47004', 1, '2022-07-17 12:58:19'),
(8, 'transfer', '', '333', '', '', '47002', 2, '2022-08-17 13:00:23'),
(16, 'withdraw', '', '100', '', '', '47001', 1, '2022-08-17 08:31:59'),
(17, 'deposit', '1200', '', '', '', '47004', 4, '2022-08-17 08:32:17'),
(18, 'transfer', '', '4500', '', '', '47003', 3, '2022-08-17 06:44:48'),
(22, 'deposit', '1200', '', '', '', '47005', 4, '2022-08-17 06:56:29'),
(24, 'deposit', '1320', '', '', '', '47001', 1, '2022-08-17 06:59:20'),
(26, 'deposit', '6000', '', '', '', '47003', 2, '2022-08-17 07:04:39'),
(28, 'transfer', '', '1444', '', '', '47001', 1, '2022-08-15 18:25:43');

-- --------------------------------------------------------

--
-- Table structure for table `useraccounts`
--

CREATE TABLE `useraccounts` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `name` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `cnic` varchar(111) NOT NULL,
  `number` varchar(111) NOT NULL,
  `city` varchar(111) NOT NULL,
  `address` varchar(111) NOT NULL,
  `source` varchar(111) NOT NULL,
  `accountNo` varchar(111) NOT NULL,
  `branch` varchar(111) NOT NULL,
  `accountType` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `useraccounts`
--

INSERT INTO `useraccounts` (`id`, `email`, `password`, `name`, `balance`, `cnic`, `number`, `city`, `address`, `source`, `accountNo`, `branch`, `accountType`, `date`) VALUES
(1, 'asfia@mail.com', 'asfia', 'ASFIA RAHMAN', '83523', '1234567', '017777722', 'DHAKA', 'Bangladesh', 'Salary', '47001', '1', 'Current', '2022-07-17 05:50:06'),
(2, 'cse470@mail.com', 'cse470', 'CSE FACULTY', '91827', '1234568', '018222222', 'DHAKA', 'BANGLADESH', 'Salary', '47002', '2', 'Saving', '2022-07-16 04:50:06'),
(6, 'chillox@mail.com', 'chillox', 'Chillox ', '934234', '1234571', '017777727', 'DHAKA', 'BANGLADESH', 'Business', '47003', '3', 'Saving', '2022-07-16 07:52:40'),
(7, 'desco@mail.com', 'desco', 'DESCO Bill Collection', '92816', '1234575', '017777712', 'DHAKA', 'BANGLADESH', 'Bill', '47004', '4', 'Bill Collection', '2022-07-16 07:54:18'),
(8, 'titas@mail.com', 'titas', 'TITAS GAS Bill Collection', '97654', '1234576', '017777713', 'DHAKA', 'BANGLADESH', 'Bill', '47005', '4', 'Bill Collection', '2022-08-16 14:26:58'),
(9, 'arif@mail.com', '12345', 'Arif', '50000', '1234589', '0177771211', 'Mirpur', 'Dhaka', 'Business', '1660745131', '2', 'saving', '2022-08-17 14:07:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branchId`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedbackId`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otheraccounts`
--
ALTER TABLE `otheraccounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transactionId`);

--
-- Indexes for table `useraccounts`
--
ALTER TABLE `useraccounts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branchId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedbackId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `otheraccounts`
--
ALTER TABLE `otheraccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transactionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `useraccounts`
--
ALTER TABLE `useraccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
