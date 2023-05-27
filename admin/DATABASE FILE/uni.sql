

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";




CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'rohith', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'admin', 'e10adc3949ba59abbe56e057f20f883e');


CREATE TABLE `attn` (
  `id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL,
  `atten` varchar(50) NOT NULL,
  `at_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


INSERT INTO `attn` (`id`, `st_id`, `atten`, `at_date`) VALUES
(206, 12103072, 'absent', '2021-04-11'),
(207, 13103072, '', '0000-00-00'),
(208, 13203072, '', '0000-00-00'),
(209, 14103053, '', '0000-00-00'),
(210, 14203072, '', '0000-00-00'),
(211, 12103072, 'absent', '2021-06-05'),
(212, 13103072, 'absent', '2021-06-05'),
(213, 13203072, 'absent', '2021-06-05'),
(214, 14103053, 'present', '2021-06-05'),
(215, 14203072, 'absent', '2021-06-05'),
(216, 1454540, '', '0000-00-00'),
(217, 17699619, '', '0000-00-00'),
(218, 12103072, 'present', '2021-06-06'),
(219, 13103072, 'present', '2021-06-06'),
(220, 13203072, 'present', '2021-06-06'),
(221, 14103053, 'absent', '2021-06-06'),
(222, 14203072, 'absent', '2021-06-06'),
(223, 1454540, 'present', '2021-06-06'),
(224, 17699619, 'present', '2021-06-06');


CREATE TABLE `at_student` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `st_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;



INSERT INTO `at_student` (`id`, `name`, `st_id`) VALUES
(29, 'Rohith', 12103072),
(30, 'Manoj', 13103072),
(31, 'Pavan', 13203072),
(32, 'Vikas', 14103053),
(33, 'Sumanth', 14203072),
(35, 'Monik', 17699619);


CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `education` varchar(100) DEFAULT NULL,
  `contact` int(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


INSERT INTO `faculty` (`id`, `username`, `password`, `name`, `email`, `birthday`, `gender`, `education`, `contact`, `address`) VALUES
(1, 'chandan', 'e10adc3949ba59abbe56e057f20f883e', 'Chandan', 'chandan@gmail.com', '1986-04-01', 'Male', 'BIT, MIT', 900248750, 'Bangalore'),
(13, 'lochan', 'e10adc3949ba59abbe56e057f20f883e', 'Lochan Gowda', 'lochan@gmail.com', '1985-12-12', 'Male', 'MIT, PhD', 124785450, 'Dharwad');



CREATE TABLE `result` (
  `id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL,
  `marks` int(5) NOT NULL,
  `sub` varchar(50) NOT NULL,
  `semester` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


INSERT INTO `result` (`id`, `st_id`, `marks`, `sub`, `semester`) VALUES
(28, 12103072, 95, 'DBMS', '1st'),
(29, 12103072, 92, 'DBMS Lab', '1st'),
(30, 12103072, 90, 'Mathematics', '1st'),
(31, 12103072, 80, 'Programming', '1st'),
(32, 12103072, 90, 'Programming Lab', '1st'),
(35, 12103072, 95, 'Physics', '2nd'),
(36, 12103072, 96, 'Mathematics', '2nd'),
(37, 12103072, 85, 'Chemistry', '2nd'),
(38, 12103072, 78, 'Psychology', '2nd'),
(39, 15103058, 96, 'DBMS', '1st'),
(40, 15103058, 98, 'DBMS Lab', '1st'),
(41, 15103058, 65, 'Mathematics', '1st'),
(42, 15103058, 90, 'Programming', '1st'),
(43, 15103058, 92, 'Programming Lab', '1st'),
(44, 15103058, 95, 'English', '2nd'),
(45, 15103058, 50, 'Physics', '2nd'),
(46, 15103058, 68, 'Chemistry', '2nd'),
(47, 15103058, 92, 'Psychology', '2nd'),
(48, 15103157, 89, 'DBMS', '1st'),
(49, 15103157, 90, 'DBMS Lab', '1st'),
(50, 15103157, 80, 'Mathematics', '1st'),
(51, 15103157, 95, 'English', '1st'),
(52, 16303053, 85, 'DBMS', '1st'),
(53, 15103053, 75, 'DBMS Lab', '1st'),
(54, 15103053, 40, 'Mathematics', '1st'),
(55, 15103053, 85, 'Programming', '1st'),
(56, 15103053, 90, 'Programming Lab', '1st'),
(57, 15103053, 87, 'English', '1st'),
(58, 15103053, 60, 'Physics', '1st'),
(59, 15103053, 65, 'Chemistry', '1st'),
(60, 15103053, 69, 'Psychology', '1st'),
(61, 17699619, 71, 'DBMS', '1st'),
(62, 17699619, 82, 'DBMS Lab', '1st'),
(63, 17699619, 65, 'Mathematics', '1st'),
(64, 17699619, 85, 'Programming', '1st'),
(65, 17699619, 86, 'Programming Lab', '1st'),
(66, 17699619, 87, 'English', '1st'),
(67, 17699619, 70, 'Physics', '1st'),
(68, 17699619, 75, 'Chemistry', '1st'),
(69, 17699619, 70, 'Psychology', '1st');



CREATE TABLE `st_info` (
  `st_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(50) NOT NULL,
  `bday` date NOT NULL,
  `program` varchar(10) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


INSERT INTO `st_info` (`st_id`, `name`, `password`, `email`, `bday`, `program`, `contact`, `gender`, `address`, `img`) VALUES
(12103072, 'Rohith', 'e10adc3949ba59abbe56e057f20f883e', 'rohith@gmail.com', '1995-10-10', 'CSE', '7548884541', 'male', 'Bangalore', 'F34FEDE2-0BE0-400A-82CC-2FCC984A21C4.png'),
(13103072, 'Manoj', 'e10adc3949ba59abbe56e057f20f883e', 'manoj@gmail.com', '1995-10-10', 'CSE', '2457778450', 'male', 'Mangalore', '7E230FB0-C157-4544-B270-97F3C8FDB1AA.png'),
(13203072, 'Pavan', 'e10adc3949ba59abbe56e057f20f883e', 'pavan@gmail.com', '1995-10-10', 'CSE', '4570002480', 'male', 'Mysore', '20DE853C-35DC-4D91-BB0F-BBAEB2388294.png'),
(14103053, 'Vikas', 'e10adc3949ba59abbe56e057f20f883e', 'vikas@gmail.com', '1996-08-09', 'ISE', '97410000002', 'male', 'Chitradurga', 'FB637BF3-101A-4B7F-B365-5645CDF14AE4.png'),
(14203072, 'Sumanth', 'e10adc3949ba59abbe56e057f20f883e', 'sumanth@gmail.com', '1995-10-10', 'ISE', '3457854445', 'male', 'Davangere', 'A048670B-178D-4D31-B802-B5B7DBF00E78.png'),
(15103023, 'Suchith', 'e10adc3949ba59abbe56e057f20f883e', 'suchith@gmail.com', '1996-08-09', 'ISE', '7541112450', 'male', 'Yadgir', 'FFE697B5-F021-41FA-8267-53496890A002.png'),
(15103033, 'Kiran', 'e10adc3949ba59abbe56e057f20f883e', 'kiran@gmail.com', '1996-08-09', 'ECE', '2145785550', 'male', 'Chikkballapur', 'C6F031D6-2249-4CDC-B513-DC16D9F2325E.png'),
(15103052, 'Swamy', 'e10adc3949ba59abbe56e057f20f883e', 'swamy@gmail.com', '1995-10-10', 'ECE', '8542145780', 'male', 'Shivamogga', 'C9E6BD3E-8306-4385-BFE1-517DF1ACC505.png'),
(15103053, 'Tejas', 'e10adc3949ba59abbe56e057f20f883e', 'tejas@gmail.com', '1996-08-09', 'ECE', '1547854555', 'Male', 'Bidar', '70C5DB91-B97E-44D0-9B5D-298105F3FBE4.png'),
(15103057, 'Sudeep', 'e10adc3949ba59abbe56e057f20f883e', 'sudeep@gmail.com', '1996-04-12', 'ISE', '7547854650', 'male', 'Hubli', '0AD69827-DDEF-485F-8721-E18F29C9A1DE.png'),
(15103058, 'Sanketh', 'e10adc3949ba59abbe56e057f20f883e', 'sanketh@gmail.com', '1996-10-28', 'ISE', '3124578450', 'male', 'Hampi', '94E5BBB2-A0FF-4F19-BA12-C07F0C4C617A.png'),
(15103092, 'Rajath', 'e10adc3949ba59abbe56e057f20f883e', 'rajath@gmail.com', '1995-10-10', 'CSE', '3457856969', 'male', 'Bidar', '2112827E-7215-4CB3-BC87-590B2B848955.png'),
(16303053, 'Preetham', 'e10adc3949ba59abbe56e057f20f883e', 'preetham@gmail.com', '1996-08-09', 'CSE', '7531598520', 'male', 'Chamarajnagar', 'F6417D01-7D58-406A-B781-867ED93BACC0.png'),
(17699619, 'Monik', 'e10adc3949ba59abbe56e057f20f883e', 'monik@gmail.com', '1995-04-01', 'CSE', '7410000058', 'male', 'Tumkur', 'E2EB3AB3-379F-49E2-A558-E7CE535778A0.png');


ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `attn`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `at_student`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);


ALTER TABLE `result`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `st_info`
  ADD PRIMARY KEY (`st_id`);


ALTER TABLE `attn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

ALTER TABLE `at_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;


ALTER TABLE `result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
COMMIT;