-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2021 at 07:26 PM
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
-- Database: `events`
--

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `reservationID` int(10) NOT NULL,
  `serviceID` int(10) NOT NULL,
  `userID` int(10) NOT NULL,
  `reservationDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`reservationID`, `serviceID`, `userID`, `reservationDate`) VALUES
(52, 76, 34, '2021-09-23'),
(53, 73, 34, '2021-09-24'),
(54, 76, 34, '2021-09-29');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `serviceID` int(10) NOT NULL,
  `serviceName` varchar(100) NOT NULL,
  `serviceDescription` varchar(5000) NOT NULL,
  `userID` int(11) NOT NULL,
  `serviceTel` varchar(15) NOT NULL,
  `serviceImage` varchar(200) NOT NULL,
  `totalReservations` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`serviceID`, `serviceName`, `serviceDescription`, `userID`, `serviceTel`, `serviceImage`, `totalReservations`) VALUES
(65, 'Sala Evenimente Imperial', 'Sala de evenimente cu capacitate de 500 de locuri, situată în centrul orașului Timișoara. Prețuri accesibile, locație de lux.', 1, '0742573907', 'https://res.cloudinary.com/dqsedbbbw/image/upload/v1630657314/service/Salon-Imperial-nunta-boavista_pbvr2e.jpg', 6),
(67, 'Servicii Fotografie Evenimente', 'Servicii de fotografie de cea mai înaltă calitate. Oferim următoarele servicii: diverse tipuri de albume, photo boot. Avem fotografi talentați și prețuri care sunt direct proporționale cu calitate fotografiilor.', 1, '0742573907', 'https://res.cloudinary.com/dqsedbbbw/image/upload/v1630657705/service/servicii_foto_pzk0ft.jpg', 1),
(68, 'Clothing Ltd. Rochii pentru nuntă', 'Compania Clothing Limited vă oferă rochii de nuntă la comandă, realizate întocmai după dorințele clientelor, la prețuri accesibilie.', 1, '0742573907', 'https://res.cloudinary.com/dqsedbbbw/image/upload/v1630658173/service/Clothing_SRL_-_Rochii_de_nunta_kos4zr.jpg', 1),
(69, 'Trust Jewelry - Verighete la comandă', 'Trust Jewelry confecționează verighete și inele de logodnă de cea mai înaltă calitate. ', 1, '0742573907', 'https://res.cloudinary.com/dqsedbbbw/image/upload/v1630658465/service/Servicii_Bijuterii_phkedh.jpg', 0),
(70, 'Flowers Ltd. Aranjamente florale', 'Compania noastră oferă aranjamente florale deosebite pentru nunți. Aranjamentele florale sunt realizate după dorințele clienților.', 1, '0742573907', 'https://res.cloudinary.com/dqsedbbbw/image/upload/v1630658725/service/flori-foto_ew0eg0.jpg', 0),
(71, 'Catering Ltd. ', 'Compania noastră oferă cele mai bune servicii de catering pentru evenimente. Meniurile sunt variate, astfel clienții noștri au multe posibilități de alegere.', 1, '0742573907', 'https://res.cloudinary.com/dqsedbbbw/image/upload/v1630659011/service/food-service_iircoc.jpg', 1),
(72, 'servicetestImage B', 'sdsdsdsdsdsdsddsdsdsdssdsdsdsdsdsdsddsdsdsdssdsdsdsdsdsdsddsdsdsdssdsdsdsdsdsdsddsdsdsdssdsdsdsdsdsdsddsdsdsdssdsdsdsdsdsdsddsdsdsds', 1, '0742573907', 'https://res.cloudinary.com/dqsedbbbw/image/upload/v1630686252/service/poza_serviciu_kqmer0.jpg', 0),
(73, 'ServiceTest2', 'ServiceTest2ServiceTest2ServiceTest2ServiceTest2ServiceTest2ServiceTest2ServiceTest2', 1, '0742573907', 'https://res.cloudinary.com/dqsedbbbw/image/upload/v1630780503/service/servicii_foto_h4sw8w.jpg', 2),
(74, 'ServiceTest222', 'ServiceTest222ServiceTest222ServiceTest222ServiceTest222ServiceTest222', 1, '0742573907', 'https://res.cloudinary.com/dqsedbbbw/image/upload/v1630781578/service/poza_serviciu_z67xqf.jpg', 0),
(75, 'ServiceTest222', 'ServiceTest222ServiceTest222ServiceTest222ServiceTest222 ServiceTest222ServiceTest222', 1, '0742573907', 'https://res.cloudinary.com/dqsedbbbw/image/upload/v1630782148/service/poza_serviciu_vlnxiv.jpg', 1),
(76, 'Sala ev denis', 'Sala ev denisSala ev denisSala ev denisSala ev denisSala ev denisSala ev denisSala ev denisSala ev denisSala ev denisSala ev denis', 33, '0742573907', 'https://res.cloudinary.com/dqsedbbbw/image/upload/v1631179356/service/Salon-Imperial-nunta-boavista_wdqlyp.jpg', 3),
(77, 'ServiceTest2', 'ServiceTest2ServiceTest2ServiceTest2 ServiceTest2 ServiceTest2 ServiceTest2 ServiceTest2 ServiceTest2', 33, '0742573907', 'https://res.cloudinary.com/dqsedbbbw/image/upload/v1631181118/service/flori-foto_salzpe.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `sessionID` varchar(32) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`sessionID`, `time`, `userID`) VALUES
('_0ow9g218n', '2021-09-07 06:55:17', 1),
('_2ucf5ufv5', '2021-09-07 06:59:43', 31),
('_4h0vybqbn', '2021-09-09 11:04:25', 33),
('_5eex1katz', '2021-09-09 10:36:32', 34),
('_7lmdut4w7', '2021-09-09 11:00:27', 33),
('_bueh7125e', '2021-09-06 10:46:36', 1),
('_gdlazhflk', '2021-09-09 10:37:24', 34),
('_jx9duxq8g', '2021-09-09 10:58:29', 33),
('_krhc11lw0', '2021-09-04 18:52:09', 1),
('_lrwroi0al', '2021-09-09 10:51:45', 34),
('_lzf4p1kh8', '2021-09-09 13:58:36', 34),
('_mbpsiovxe', '2021-09-09 10:53:52', 34),
('_o0x1qlwqc', '2021-09-04 18:46:41', 31),
('_oz959scbs', '2021-09-07 13:29:40', 33),
('_stcrfagar', '2021-09-04 19:01:39', 1),
('_sztqui5xe', '2021-09-09 10:59:50', 34),
('_uktbwfk6j', '2021-09-09 07:49:39', 33),
('_vheao911g', '2021-09-04 18:34:25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(40) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `isCompany` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `username`, `password`, `email`, `tel`, `isCompany`) VALUES
(1, 'utilizator1', 'parola', 'utilizator1@gmail.co', '0742572908', 1),
(20, 'TestUserNotCompany', 'parola', 'test5@test.com', '0748562287', 0),
(21, 'usernametestCompany', 'PxCvbF45LK21%', 'testcompany@gmail.com', '0262283211', 1),
(22, 'companytest', 'ksda@#Mn56M', 'teads@asdsa.com', '0748512145', 1),
(23, 'testcors', 'ASPDlaskdmsaMN78*', 'test@cors.com', '0742573907', 1),
(25, 'userHashTest', '$2a$10$LBhKox1FMHqBO', 'bdus@gmail.com', '0254888625', 0),
(31, 'BogdanLobontiu', 'Parola123123*', 'bogdan.lobontiu99@e-uvt.ro', '0742573907', 1),
(32, 'UtilizatorTestHash', '$2b$10$o6Lg2XPTKQBaJ', 'test6@gm.com', '0748512145', 1),
(33, 'UtilizatorCompanie', '$2b$10$jEVc3phhu0TZjIpKyFIsieiSq5ueRiDHI3HnZwLGXli.cpl3Qdf7q', 'test@gsaad.com', '0748512145', 1),
(34, 'UtilizatorClient', '$2b$10$jB9smJs0KbOzGEFw2tmfWuaKU2nIhdRerS8paSni/Grvrbn9laUp2', 'utilizatorclient@yahoo.com', '0742124579', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`reservationID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `serviceCategory` (`serviceID`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`serviceID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`sessionID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `reservationID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `serviceID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`),
  ADD CONSTRAINT `reservation_ibfk_3` FOREIGN KEY (`serviceID`) REFERENCES `service` (`serviceID`);

--
-- Constraints for table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);

--
-- Constraints for table `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `session_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
