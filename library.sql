-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2022 at 12:03 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Anuj Kumar', 'admin@gmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2022-04-06 12:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(1, 'Anuj kumar', '2022-01-22 07:23:03', '2022-01-22 07:23:03'),
(2, 'Chetan Bhagatt', '2022-01-22 07:23:03', '2022-01-22 07:23:03'),
(3, 'Anita Desai', '2022-01-22 07:23:03', '2022-01-22 16:23:41'),
(4, 'HC Verma', '2022-01-22 07:23:03', '2022-01-22 16:23:45'),
(5, 'R.D. Sharma ', '2022-01-22 07:23:03', '2022-01-22 16:23:47'),
(9, 'fwdfrwer', '2022-01-22 07:23:03', '2022-01-22 16:23:55'),
(10, 'Dr. Andy Williams', '2022-01-22 07:15:32', NULL),
(11, 'Kyle Hill', '2022-01-22 07:16:34', NULL),
(12, 'Robert T. Kiyosak', '2022-01-22 07:18:38', NULL),
(13, 'Kelly Barnhill', '2022-01-22 07:21:54', NULL),
(14, 'Herbert Schildt', '2022-01-22 07:23:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` varchar(25) DEFAULT NULL,
  `BookPrice` decimal(10,2) DEFAULT NULL,
  `bookImage` varchar(250) NOT NULL,
  `isIssued` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `bookImage`, `isIssued`, `RegDate`, `UpdationDate`) VALUES
(1, 'PHP And MySql programming', 5, 1, '222333', '20.00', 'f741d3b750dd130125181c65e8c1de75.png', 0, '2022-01-22 07:23:03', '2022-04-06 13:10:23'),
(3, 'physics', 6, 4, '1111', '15.00', 'dd8267b57e0e4feee5911cb1e1a03a79.jpg', 0, '2022-01-22 07:23:03', '2022-04-06 13:09:10'),
(5, 'Murach\'s MySQL', 5, 1, '9350237695', '455.00', '5939d64655b4d2ae443830d73abc35b6.jpg', 0, '2022-01-21 16:42:11', '2022-04-06 13:09:14'),
(6, 'WordPress for Beginners 2022: A Visual Step-by-Step Guide to Mastering WordPress', 5, 10, 'B019MO3WCM', '100.00', '144ab706ba1cb9f6c23fd6ae9c0502b3.jpg', NULL, '2022-01-22 07:16:07', '2022-01-22 07:20:49'),
(7, 'WordPress Mastery Guide:', 5, 11, 'B09NKWH7NP', '53.00', '90083a56014186e88ffca10286172e64.jpg', NULL, '2022-01-22 07:18:03', '2022-01-22 07:20:58'),
(8, 'Rich Dad Poor Dad: What the Rich Teach Their Kids About Money That the Poor and Middle Class Do Not', 8, 12, 'B07C7M8SX9', '120.00', '52411b2bd2a6b2e0df3eb10943a5b640.jpg', NULL, '2022-01-22 07:20:39', NULL),
(9, 'The Girl Who Drank the Moon', 8, 13, '1848126476', '200.00', 'f05cd198ac9335245e1fdffa793207a7.jpg', NULL, '2022-01-22 07:22:33', NULL),
(10, 'C++: The Complete Reference, 4th Edition', 5, 14, '007053246X', '142.00', '36af5de9012bf8c804e499dc3c3b33a5.jpg', 0, '2022-01-22 07:23:36', '2022-01-22 08:18:22'),
(11, 'ASP.NET Core 5 for Beginners', 9, 11, 'GBSJ36344563', '422.00', 'b1b6788016bbfab12cfd2722604badc9.jpg', 0, '2022-01-22 08:14:21', '2022-01-22 08:15:23'),
(12, 'asd', 6, 3, '2545', '25.00', 'c5ee82bb754cb258e596e7bef3e50cdc.png', NULL, '2022-04-08 18:10:30', NULL),
(13, 'asd', 6, 11, '232', '23.00', 'c63625c76fa90ec4e37bbda7611c0b5f.gif', NULL, '2022-04-16 18:07:11', NULL),
(14, 'asd', 7, 4, '23', '23.00', '56d78ff630b2e97e3e026d5a21ce556a.png', NULL, '2022-04-16 19:38:21', NULL),
(15, '23dfs', 5, 4, '2322', '23.00', '86c6dbae0404edf375b5d11cb0d7283f.gif', NULL, '2022-04-16 19:40:57', NULL),
(16, 'asdad', 9, 9, '3453', '23.00', '4db6792743db513bf9827df7a85e9003.jpg', NULL, '2022-04-16 20:07:22', NULL),
(17, 'asdasd', 7, 3, '2123123', '23.00', 'c9a901bb4bcdb77eaba5c091a76f6e94.png', NULL, '2022-04-16 21:08:47', NULL),
(18, 'asdasd', 5, 4, 'sdasd', '23.00', 'aa3437af3767c10dd9e56269c776b83c.png', NULL, '2022-05-14 10:32:50', NULL),
(19, 'asdad', 6, 11, 'asd3', '23.00', '0410d6200d9f19a6675a82e040e93f5f.png', NULL, '2022-05-14 10:33:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(4, 'Romantic', 1, '2022-01-22 07:23:03', '2022-01-22 07:23:03'),
(5, 'Technology', 1, '2022-01-22 07:23:03', '2022-01-22 07:23:03'),
(6, 'Science', 1, '2022-01-22 07:23:03', '2022-01-22 16:24:37'),
(7, 'Management', 1, '2022-01-22 07:23:03', '2022-01-22 16:24:35'),
(8, 'General', 1, '2022-01-22 07:23:03', '2022-01-22 16:24:40'),
(9, 'Programming', 1, '2022-01-22 07:23:03', '2022-01-22 16:24:42');

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT current_timestamp(),
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `RetrunStatus` int(1) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(7, 5, 'SID011', '2022-01-22 05:45:57', '2022-04-06 13:09:14', 1, 0),
(8, 1, 'SID002', '2022-01-22 05:59:17', '2022-01-22 06:18:08', 1, 0),
(9, 10, 'SID009', '2022-01-22 07:38:09', '2022-01-22 07:38:54', 1, 0),
(10, 11, 'SID009', '2022-01-22 08:15:02', '2022-01-22 08:15:23', 1, 0),
(11, 1, 'SID012', '2022-01-22 08:17:15', '2022-04-06 08:10:52', 1, 2),
(12, 10, 'SID012', '2022-01-22 08:18:08', '2022-01-22 08:18:22', 1, 5),
(14, 1, 'SID024', '2022-04-06 13:06:14', '2022-04-06 13:07:25', 1, 0),
(15, 3, 'SID024', '2022-04-06 13:08:01', '2022-04-06 13:09:10', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `profileImage` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`, `profileImage`) VALUES
(1, 'SID002', 'Anuj kumar', 'anujk@gmail.com', '9865472555', 'f925916e2754e5e03f75dd58a5733251', 1, '2022-01-02 07:23:03', '2022-01-22 16:25:45', NULL),
(4, 'SID005', 'sdfsd', 'csfsd@dfsfks.com', '8569710025', '92228410fc8b872914e023160cf4ae8f', 0, '2022-01-02 07:23:03', '2022-04-06 08:10:24', NULL),
(8, 'SID009', 'test', 'test@gmail.com', '2359874527', 'f925916e2754e5e03f75dd58a5733251', 1, '2022-01-02 07:23:03', '2022-01-22 16:25:58', NULL),
(9, 'SID010', 'Amit', 'amit@gmail.com', '8585856224', 'f925916e2754e5e03f75dd58a5733251', 1, '2022-01-02 07:23:03', '2022-01-22 16:26:02', NULL),
(10, 'SID011', 'Sarita Pandey', 'sarita@gmail.com', '4672423754', 'f925916e2754e5e03f75dd58a5733251', 1, '2022-01-02 07:23:03', '2022-01-22 16:26:04', NULL),
(11, 'SID012', 'John Doe', 'john@test.com', '1234569870', 'f925916e2754e5e03f75dd58a5733251', 1, '2022-01-22 08:16:18', NULL, NULL),
(12, 'SID013', 'saliya wijebandara', 'saliya4usl@gmail.com', '+371201698', '468b99677ddd44f1726d0cfe5bba7fe6', 1, '2022-04-06 07:25:05', NULL, NULL),
(13, 'SID019', 'ranil', 'ranil@gmail.com', '456', 'e10adc3949ba59abbe56e057f20f883e', 1, '2022-04-06 11:32:27', '2022-04-06 11:50:18', NULL),
(14, 'SID020', 'kum', 'kujs@gmail.com', '456', '250cf8b51c773f3f8dc8b4be867a9a02', 1, '2022-04-06 11:51:04', '2022-04-06 12:30:46', NULL),
(15, 'SID021', 'asd', 'asd@gam.com', '656', 'db85e2590b6109813dafa101ceb2faeb', 1, '2022-04-06 12:31:11', '2022-04-06 12:58:48', NULL),
(16, 'SID022', 'sda', 'asda@gmai.com', '6956', '202cb962ac59075b964b07152d234b70', 1, '2022-04-06 12:33:04', '2022-04-06 12:34:19', NULL),
(17, 'SID023', 'asd', 'asd@gmail.com', '456', '7815696ecbf1c96e6894b779456d330e', 1, '2022-04-06 12:44:46', '2022-04-06 12:53:53', NULL),
(18, 'SID024', 'zxc', 'zxc@gmail.com', '123', '5fa72358f0b4fb4f2c5d7de8c9a41846', 1, '2022-04-06 12:55:05', '2022-04-08 17:51:52', 'user2.png'),
(19, 'SID030', 'a', 'a@gmail.com', '123', '0cc175b9c0f1b6a831c399e269772661', 1, '2022-04-16 18:02:13', '2022-04-16 18:05:56', '009685965f06cdc5bc3442ea083e03d6.gif'),
(20, 'SID068', 'asdasd', 'asda@gmail.com', '5', '7815696ecbf1c96e6894b779456d330e', 1, '2022-05-14 09:54:31', '2022-05-14 18:34:30', '16e41c70ff93114cb2bdfa61d4acbb30'),
(21, 'SID069', 'sdfsdf', 'asdasda@gmail.com', '54', 'a8f5f167f44f4964e6c998dee827110c', 1, '2022-05-14 09:56:01', '2022-05-15 18:57:59', 'c55d13aff3b937fc213141c509baf717'),
(22, 'SID088', 'asdasd', 'asdasd2a@gmail.com', '231', '7815696ecbf1c96e6894b779456d330e', 1, '2022-05-15 07:57:03', '2022-05-15 18:58:02', '0568d4d9c2198ff1c0047861ac622c02.jpg'),
(23, 'SID090', 'saman kumara', 'saman@gmail.com', '12345678', '7eb681a31a3c08ee6a429a81fc97e677', 1, '2022-05-15 18:38:40', '2022-05-15 18:39:46', '6650e807070f03668b2c30003f67858a.jpg'),
(24, 'SID091', 'nimal kumara', 'nimal@gmail.com', '112233', 'e088f2a18812b8b90e235430874a0762', 1, '2022-05-15 18:43:17', '2022-05-15 18:43:35', '924c5b38dcb5eea3f4e356db2e5ea8c4.jpg'),
(25, 'SID092', 'bbn', 'bbn@gmail.com', '11', 'e7a0b109839f08c60f78616d6be47e74', -1, '2022-05-15 18:44:58', NULL, 'ee5e6358798c4d2d61cdac8968fb3cb9.png'),
(26, 'SID094', 'janis', 'janis@gmail.com', 'holands', 'fcb7c217c638fe897711da11cec7a38f', -1, '2022-05-20 21:47:41', NULL, 'bf5cf1f4d06c71d7defd49f32426aa00.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
