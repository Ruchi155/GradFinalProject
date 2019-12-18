-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2017 at 10:37 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `onlinejobs`
--

-- --------------------------------------------------------

--
-- Table structure for table `com`
--

CREATE TABLE IF NOT EXISTS `com` (
  `C_ID` int(11) NOT NULL AUTO_INCREMENT,
  `C_name` varchar(40) NOT NULL,
  `C_address` varchar(50) DEFAULT NULL,
  `C_post` varchar(20) DEFAULT NULL,
  `C_criteria` varchar(20) DEFAULT NULL,
  `Username` varchar(20) NOT NULL,
  `C_email` varchar(30) DEFAULT NULL,
  `C_contact` varchar(20) DEFAULT NULL,
  `C_cutoff` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`C_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `com`
--

INSERT INTO `com` (`C_ID`, `C_name`, `C_address`, `C_post`, `C_criteria`, `Username`, `C_email`, `C_contact`, `C_cutoff`) VALUES
(1, 'Elecon', 'VVNAgar', 'Programmer', 'Employee', 'Ruchi', 'ruchipatel155@gmail.com', '797698', '80'),
(4, 'GSFC', 'Vadodara', 'Manager', 'B.E', 'Vraj', 'Vraj11@gmail.com', '895759787', '90');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE IF NOT EXISTS `details` (
  `Emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `dob` varchar(30) DEFAULT NULL,
  `college` varchar(50) DEFAULT NULL,
  `branch` varchar(20) DEFAULT NULL,
  `markDegree` varchar(20) DEFAULT NULL,
  `degree` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `pin` varchar(20) DEFAULT NULL,
  `sel_cat` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Emp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`Emp_id`, `username`, `name`, `gender`, `dob`, `college`, `branch`, `markDegree`, `degree`, `email`, `telephone`, `address`, `state`, `pin`, `sel_cat`) VALUES
(1, 'Geet', 'geet', 'female', '3/12/2000', 'ITC', 'IT', '90', 'BE', 'geet312@gmail.com', '98764', 'vvnagar', 'gujrat', '87906', 'general'),
(2, 'AAA', 'jjkjk', 'fvws', '5/6/1222', 'hfgbfgs', 'fgbs', '78', 'br', 'ageagv', '4645', 'eag', 'dfzbz', '431', 'gadf'),
(3, 'krina', 'krina', 'female', '20/1/2001', 'dzv', 'ffd', '90', 'hkj', 'gjj', '789', 'ghjh', 'hjkh', '9879', 'gjh'),
(5, 'Nisha', 'Nisha', 'Female', '10/6/71', 'SVIT', 'IT', '90', 'BE', 'Nisha19@gmail.com', '98798', 'Anand', 'gujarat', '388001', 'Experienced'),
(6, 'Hetal', 'Hetal', 'female', '30/3/1992', 'parul institute of engineering', 'C.E', '80', 'B.E', 'Hetal15@gmail.com', '289877', 'Vadodara', 'Gujrat', '388365', 'open'),
(7, 'Priten', 'Priten', 'Male', '30/4/1996', 'Sigma', 'I.T', '90', 'B.E', 'Priten304@gmail.com', '876989', 'Anand', 'gujrat', '388365', 'Experienced'),
(9, 'abc', 'khgd', 'f', '12/5/2015', 'gfyty', 'fd', '56', 'b.e.', 'gsut', '73264878', 'jhgd', 'gj', '63', 'o');

-- --------------------------------------------------------

--
-- Table structure for table `exam_details`
--

CREATE TABLE IF NOT EXISTS `exam_details` (
  `Examno` int(10) NOT NULL,
  `Jobid` varchar(10) NOT NULL,
  `Post` varchar(20) DEFAULT NULL,
  `Examid` varchar(30) NOT NULL DEFAULT '',
  `Examname` varchar(50) DEFAULT NULL,
  `Cutoff` double DEFAULT NULL,
  PRIMARY KEY (`Jobid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_details`
--

INSERT INTO `exam_details` (`Examno`, `Jobid`, `Post`, `Examid`, `Examname`, `Cutoff`) VALUES
(1, 'JS1', 'Manager', 'EX1', 'OCAJP', 70),
(2, 'JS2', 'Employee', 'EX2', 'Oracle', 80),
(4, 'JS4', 'Assistant', 'EX4', 'OCA', 90),
(5, 'JS5', 'Manager', 'EX5', 'PHP', 90);

-- --------------------------------------------------------

--
-- Table structure for table `experienced`
--

CREATE TABLE IF NOT EXISTS `experienced` (
  `Username` varchar(10) NOT NULL,
  `expyears` varchar(20) DEFAULT NULL,
  `company` varchar(30) DEFAULT NULL,
  `designation` varchar(30) DEFAULT NULL,
  `salary` varchar(30) DEFAULT NULL,
  `comAddress` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `experienced`
--

INSERT INTO `experienced` (`Username`, `expyears`, `company`, `designation`, `salary`, `comAddress`) VALUES
('Nisha', 'null', 'null', 'null', 'null', 'null'),
('Priten', 'null', 'null', 'null', 'null', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `jobdetails`
--

CREATE TABLE IF NOT EXISTS `jobdetails` (
  `jobno` int(11) NOT NULL,
  `Jobid` varchar(10) NOT NULL DEFAULT '',
  `Post` varchar(20) DEFAULT NULL,
  `Branch` varchar(20) DEFAULT NULL,
  `NoofVacancies` varchar(20) DEFAULT NULL,
  `Salary` double DEFAULT NULL,
  `Lastdate` date DEFAULT NULL,
  PRIMARY KEY (`Jobid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobdetails`
--

INSERT INTO `jobdetails` (`jobno`, `Jobid`, `Post`, `Branch`, `NoofVacancies`, `Salary`, `Lastdate`) VALUES
(2, 'JS1', 'Manager', 'IT', '3', 30000, '2013-03-05'),
(3, 'JS2', 'Employee', 'IT', '2', 20000, '2000-02-02'),
(4, 'JS4', 'Assistant', 'CE', '2', 20000, '2000-02-01'),
(5, 'JS5', 'Manager', 'CE', '3', 30000, '2013-03-02');

-- --------------------------------------------------------

--
-- Table structure for table `jobseeker`
--

CREATE TABLE IF NOT EXISTS `jobseeker` (
  `jobseekerid` varchar(10) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `DOB` varchar(50) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Phoneno` varchar(50) DEFAULT NULL,
  `Email_id` varchar(50) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `State` varchar(50) DEFAULT NULL,
  `CollegeName` varchar(50) DEFAULT NULL,
  `Branch` varchar(50) DEFAULT NULL,
  `Percentage` varchar(50) DEFAULT NULL,
  `Degree` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jobseekers_experience`
--

CREATE TABLE IF NOT EXISTS `jobseekers_experience` (
  `Username` varchar(10) NOT NULL,
  `ExpYear` varchar(50) DEFAULT NULL,
  `Company` varchar(50) DEFAULT NULL,
  `Designation` varchar(50) DEFAULT NULL,
  `Salary` varchar(50) DEFAULT NULL,
  `ComAddress` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `Username` varchar(10) NOT NULL,
  `Password` varchar(10) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Username`, `Password`, `status`) VALUES
('abc', 'abcd4567', 's'),
('bob', 'bob', 's'),
('Hetal', 'Hetal', 's'),
('Nisha', 'Nisha106', 's'),
('Ruchi', 'Ruchi123', 'c');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `Jobid` varchar(10) NOT NULL,
  `Examid` varchar(11) DEFAULT NULL,
  `QuestionNo` int(11) DEFAULT NULL,
  `Question` varchar(500) DEFAULT NULL,
  `Option1` varchar(100) DEFAULT NULL,
  `Option2` varchar(100) DEFAULT NULL,
  `Option3` varchar(100) DEFAULT NULL,
  `Option4` varchar(100) DEFAULT NULL,
  `Answer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Jobid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`Jobid`, `Examid`, `QuestionNo`, `Question`, `Option1`, `Option2`, `Option3`, `Option4`, `Answer`) VALUES
('JS1', 'EX1', 1, 'What', 'A', 'B', 'C', 'D', 'B'),
('JS2', 'EX2', 2, 'What', 'A', 'B', 'C', 'D', 'C'),
('JS4', 'EX4', 1, 'Why', 'A', 'B', 'C', 'D', 'C'),
('JS5', 'EX5', 1, 'where', 'A', 'B', 'C', 'D', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE IF NOT EXISTS `result` (
  `studentID` varchar(50) NOT NULL DEFAULT '',
  `Examid` varchar(5) DEFAULT NULL,
  `Jobid` varchar(3) DEFAULT NULL,
  `Marks` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`studentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp_data`
--

CREATE TABLE IF NOT EXISTS `temp_data` (
  `Emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `QuestionNo` int(11) DEFAULT NULL,
  `Question` varchar(100) DEFAULT NULL,
  `Option1` varchar(50) DEFAULT NULL,
  `Option2` varchar(50) DEFAULT NULL,
  `Option3` varchar(50) DEFAULT NULL,
  `Option4` varchar(50) DEFAULT NULL,
  `Answer` varchar(50) NOT NULL,
  PRIMARY KEY (`Emp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `temp_data`
--

INSERT INTO `temp_data` (`Emp_id`, `QuestionNo`, `Question`, `Option1`, `Option2`, `Option3`, `Option4`, `Answer`) VALUES
(7, 8, 'Why', 'A', 'B', 'C', 'D', 'C'),
(8, 1, 'What', 'A', 'B', 'C', 'D', 'C'),
(9, 9, 'What', 'A', 'B', 'C', 'D', 'B'),
(10, 1, 'where', 'A', 'B', 'C', 'D', 'A'),
(11, 4, 'What', 'A', 'B', 'C', 'D', 'B'),
(12, 8, 'What', 'A', 'B', 'C', 'D', 'B'),
(13, 2, 'What', 'A', 'B', 'C', 'D', 'B'),
(14, 5, 'where', 'A', 'B', 'C', 'D', 'A'),
(15, 4, 'What', 'A', 'B', 'C', 'D', 'B');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
