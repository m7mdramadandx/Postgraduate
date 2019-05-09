-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2019 at 11:51 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `faculty`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_code` varchar(45) NOT NULL,
  `course_name` varchar(90) NOT NULL,
  `num_hours` int(11) NOT NULL,
  `department` varchar(45) NOT NULL,
  `stud_year` varchar(45) NOT NULL,
  `degree_type` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_code`, `course_name`, `num_hours`, `department`, `stud_year`, `degree_type`) VALUES
('CS001', 'Android', 3, 'CS', 'حاليا', 'ماجستير'),
('CS0010', 'Java I', 3, 'CS', 'حاليا', 'دبلوم'),
('CS0011', 'Java II', 3, 'CS', 'حاليا', 'دكتوراه'),
('CS002', 'Machine Learning', 3, 'CS', 'حاليا', 'ماجستير'),
('CS003', 'C++', 3, 'CS', 'لاحقا', 'دبلوم'),
('CS004', 'C#', 3, 'CS', 'حاليا', 'دكتوراه'),
('CS005', 'Assembly Language', 3, 'CS', 'لاحقا', 'ماجستير'),
('CS006', 'Data Structure', 3, 'CS', 'لاحقا', 'ماجستير'),
('CS007', 'File Structure', 3, 'CS', 'لاحقا', 'دبلوم'),
('CS008', 'Software Engineering I', 3, 'CS', 'حاليا', 'دبلوم'),
('CS009', 'Software Engineering II', 3, 'CS', 'حاليا', 'ماجستير'),
('IS001', 'Introduction to information system', 3, 'IS', 'حاليا', 'ماجستير'),
('IS002', 'Database I', 3, 'IS', 'حاليا', 'ماجستير'),
('IS003', 'Database II', 3, 'IS', 'حاليا', 'دبلوم'),
('IS004', 'Data Mining', 3, 'IS', 'حاليا', 'دكتوراه'),
('IS005', 'System Analysis I', 3, 'IS', 'null', 'دكتوراه'),
('IS006', 'System Analysis II', 3, 'IS', 'null', 'دبلوم'),
('IT001', 'Network II', 3, 'IT', 'حاليا', 'ماجستير'),
('IT002', 'Network I', 3, 'IT', 'لاحقا', 'ماجستير'),
('IT003', 'Image Processing', 3, 'IT', 'حاليا', 'دكتوراه'),
('IT004', 'Python', 3, 'IT', 'حاليا', 'دكتوراه'),
('IT005', 'kkk', 3, 'IT', 'لاحقا', 'دبلوم'),
('IT006', 'Network I', 3, 'IT', 'حاليا', 'دبلوم');

-- --------------------------------------------------------

--
-- Table structure for table `diploma`
--

CREATE TABLE `diploma` (
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `dob` date NOT NULL,
  `village` varchar(45) NOT NULL,
  `section` varchar(45) NOT NULL,
  `government` varchar(45) NOT NULL,
  `nationality` varchar(45) NOT NULL,
  `religion` varchar(45) NOT NULL,
  `national_id` bigint(14) NOT NULL,
  `recruitment_position` varchar(45) NOT NULL,
  `job` varchar(45) NOT NULL,
  `organization` varchar(45) NOT NULL,
  `address` varchar(60) NOT NULL,
  `telephone` bigint(11) NOT NULL,
  `bachelor` varchar(45) NOT NULL,
  `round` varchar(45) NOT NULL,
  `general_appreciation` varchar(45) NOT NULL,
  `department` varchar(45) NOT NULL,
  `specialization_appreciation` varchar(45) NOT NULL,
  `faculty` varchar(45) NOT NULL,
  `university` varchar(45) NOT NULL,
  `graduation_year` int(11) NOT NULL,
  `graduate_diploma` varchar(45) NOT NULL,
  `gd_round` varchar(45) NOT NULL,
  `gd_specialization` varchar(45) NOT NULL,
  `gd_appreciation` varchar(45) NOT NULL,
  `gd_faculty` varchar(45) NOT NULL,
  `gd_university` varchar(45) NOT NULL,
  `registered_scientific_section` varchar(45) NOT NULL,
  `status` varchar(45) DEFAULT 'لم يتم التحديد بعد',
  `interview_date` datetime DEFAULT NULL,
  `interview_rate` varchar(45) DEFAULT 'لم يتم التحديد بعد',
  `enroll_round` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `diploma`
--

INSERT INTO `diploma` (`first_name`, `last_name`, `dob`, `village`, `section`, `government`, `nationality`, `religion`, `national_id`, `recruitment_position`, `job`, `organization`, `address`, `telephone`, `bachelor`, `round`, `general_appreciation`, `department`, `specialization_appreciation`, `faculty`, `university`, `graduation_year`, `graduate_diploma`, `gd_round`, `gd_specialization`, `gd_appreciation`, `gd_faculty`, `gd_university`, `registered_scientific_section`, `status`, `interview_date`, `interview_rate`, `enroll_round`) VALUES
('صالح', 'جمعة', '1980-04-09', '**', '**', 'الاسكندرية', 'مصري', 'مسلم', 90854763259408, 'مؤجل', 'مهندس شبكات', '**', '**', 14865479630, 'بكالريوس حاسبات ومعلومات', 'اكتوبر', 'جيد جدا', 'IT', '', 'حاسبات ومعلومات', 'المنوفية', 20000000, '**', '**', '**', '**', '**', '**', '**', 'مطابق للشروط', '2019-01-01 00:01:00', '2', ''),
('اسامة', 'حسني', '1985-09-30', '**', '**', 'القاهرة', 'مصري', 'مسلم', 90854763259448, 'انهي الخدمة', 'مهندس شبكات', '', '**', 14864479630, 'بكالريوس حاسبات ومعلومات', 'فبراير', 'ممتاز', 'IT', 'ممتاز', 'حاسبات ومعلومات', 'حلوان', 2008, '**', '**', '**', '**', '**', '**', '**', 'غير مطابق للشروط', '2019-01-01 00:30:00', '4', '');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `username` varchar(45) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `dob` date NOT NULL,
  `national_id` bigint(14) NOT NULL,
  `telephone` bigint(11) NOT NULL,
  `email` varchar(90) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`username`, `first_name`, `last_name`, `dob`, `national_id`, `telephone`, `email`, `password`) VALUES
('Dr001', 'محمد', 'حسني', '2015-11-30', 14563269875621, 1146316599, 'ششش', 'Dr001'),
('Dr002', 'محمد', 'عبدالوهاب', '0000-00-00', 14563269875629, 1146316597, 'aaaa', 'Dr002');

-- --------------------------------------------------------

--
-- Table structure for table `doctoratee`
--

CREATE TABLE `doctoratee` (
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `dob` date DEFAULT NULL,
  `village` varchar(45) DEFAULT NULL,
  `section` varchar(45) DEFAULT NULL,
  `government` varchar(45) NOT NULL,
  `nationality` varchar(45) NOT NULL,
  `religion` varchar(45) NOT NULL,
  `national_id` bigint(14) NOT NULL,
  `recruitment_position` varchar(45) NOT NULL,
  `job` varchar(45) NOT NULL,
  `organization` varchar(45) NOT NULL,
  `address` varchar(60) NOT NULL,
  `telephone` bigint(11) NOT NULL,
  `bachelor` varchar(45) NOT NULL,
  `round` varchar(45) NOT NULL,
  `general_appreciation` varchar(45) NOT NULL,
  `department` varchar(45) NOT NULL,
  `specialization_appreciation` varchar(45) NOT NULL,
  `faculty` varchar(45) NOT NULL,
  `university` varchar(45) NOT NULL,
  `graduation_year` int(11) NOT NULL,
  `graduate_diploma` varchar(45) NOT NULL,
  `gd_round` varchar(45) NOT NULL,
  `gd_specialization` varchar(45) NOT NULL,
  `gd_appreciation` varchar(45) NOT NULL,
  `gd_faculty` varchar(45) NOT NULL,
  `gd_university` varchar(45) NOT NULL,
  `master_degree` varchar(45) NOT NULL,
  `md_date` date DEFAULT NULL,
  `md_specialization` varchar(45) NOT NULL,
  `md_appreciation` varchar(45) NOT NULL,
  `md_faculty` varchar(45) NOT NULL,
  `md_university` varchar(45) NOT NULL,
  `registered_scientific_section` varchar(45) NOT NULL,
  `status` varchar(45) DEFAULT 'لم يتم التحديد بعد',
  `interview_date` datetime DEFAULT NULL,
  `interview_rate` varchar(45) DEFAULT 'لم يتم التحديد بعد',
  `enroll_round_m` varchar(45) NOT NULL,
  `enroll_round_y` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `doctoratee`
--

INSERT INTO `doctoratee` (`first_name`, `last_name`, `dob`, `village`, `section`, `government`, `nationality`, `religion`, `national_id`, `recruitment_position`, `job`, `organization`, `address`, `telephone`, `bachelor`, `round`, `general_appreciation`, `department`, `specialization_appreciation`, `faculty`, `university`, `graduation_year`, `graduate_diploma`, `gd_round`, `gd_specialization`, `gd_appreciation`, `gd_faculty`, `gd_university`, `master_degree`, `md_date`, `md_specialization`, `md_appreciation`, `md_faculty`, `md_university`, `registered_scientific_section`, `status`, `interview_date`, `interview_rate`, `enroll_round_m`, `enroll_round_y`) VALUES
('باسم', 'علي', '1980-09-04', '**', '**', 'القاهرة', 'مصري', 'مسلم', 55523122314775, 'معفي', 'مهندس برمجيات', '**', '**', 10369998877, 'بكالريوس حاسبات ومعلومات', 'فبراير', '2011', 'IS', 'جيد جدا', 'حاسبات ومعلومات', 'عين شمس', 2005, '**', '**', '**', '**', '**', '**', '**', '2013-09-30', '**', '**', '**', '**', '**', 'غير مطابق للشروط', '2021-02-03 00:10:00', '', '', ''),
('محمد', 'هاني', '1980-09-04', '**', '**', 'القاهرة', 'مصري', 'مسلم', 55523712314787, 'معفي', 'مهندس برمجيات', '**', '**', 11369998876, 'بكالريوس حاسبات ومعلومات', 'اكتوبر', '2011', 'IS', 'جيد جدا', 'حاسبات ومعلومات', 'عين شمس', 2005, '**', '**', '**', '**', '**', '**', '**', '2013-09-30', '**', '**', '**', '**', '**', 'غير مطابق للشروط', '2019-10-05 00:00:00', '9', '', ''),
('علي', 'معلول', '1980-09-04', '**', '**', 'القاهرة', 'مصري', 'مسلم', 55975822331477, 'انهي الخدمة', 'مهندس برمجيات', '**', '**', 10369979637, 'بكالريوس حاسبات ومعلومات', 'فبراير', '2010', 'IS', 'جيد جدا', 'حاسبات ومعلومات', 'عين شمس', 2008, '**', '**', '**', '**', '**', '**', '**', '2013-09-30', '**', '**', '**', '**', '**', 'غير مطابق للشروط', '2019-10-06 00:00:00', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `enroll_duration`
--

CREATE TABLE `enroll_duration` (
  `first_round` varchar(2) NOT NULL,
  `second_round` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enroll_duration`
--

INSERT INTO `enroll_duration` (`first_round`, `second_round`) VALUES
('02', '10');

-- --------------------------------------------------------

--
-- Table structure for table `master`
--

CREATE TABLE `master` (
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `dob` date NOT NULL,
  `village` varchar(45) NOT NULL,
  `section` varchar(45) NOT NULL,
  `government` varchar(45) NOT NULL,
  `nationality` varchar(45) NOT NULL,
  `religion` varchar(45) NOT NULL,
  `national_id` bigint(14) NOT NULL,
  `recruitment_position` varchar(45) NOT NULL,
  `job` varchar(45) NOT NULL,
  `organization` varchar(45) NOT NULL,
  `address` varchar(60) NOT NULL,
  `telephone` bigint(11) NOT NULL,
  `bachelor` varchar(45) NOT NULL,
  `round` varchar(45) NOT NULL,
  `general_appreciation` varchar(45) NOT NULL,
  `department` varchar(45) NOT NULL,
  `specialization_appreciation` varchar(45) NOT NULL,
  `faculty` varchar(45) NOT NULL,
  `university` varchar(45) NOT NULL,
  `graduation_year` int(11) NOT NULL,
  `graduate_diploma` varchar(45) NOT NULL,
  `gd_round` varchar(45) NOT NULL,
  `gd_specialization` varchar(45) NOT NULL,
  `gd_appreciation` varchar(45) NOT NULL,
  `gd_faculty` varchar(45) NOT NULL,
  `gd_university` varchar(45) NOT NULL,
  `registered_scientific_section` varchar(45) NOT NULL,
  `status` varchar(45) DEFAULT 'لم يتم التحديد بعد',
  `interview_date` datetime DEFAULT NULL,
  `interview_rate` varchar(45) DEFAULT 'لم يتم التحديد بعد',
  `enroll_round` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `master`
--

INSERT INTO `master` (`first_name`, `last_name`, `dob`, `village`, `section`, `government`, `nationality`, `religion`, `national_id`, `recruitment_position`, `job`, `organization`, `address`, `telephone`, `bachelor`, `round`, `general_appreciation`, `department`, `specialization_appreciation`, `faculty`, `university`, `graduation_year`, `graduate_diploma`, `gd_round`, `gd_specialization`, `gd_appreciation`, `gd_faculty`, `gd_university`, `registered_scientific_section`, `status`, `interview_date`, `interview_rate`, `enroll_round`) VALUES
('سيد', 'معوض', '1970-10-06', '**', '**', 'الغربية', 'مصري', 'مسلم', 9085476329944, 'مؤجل', 'مهندس برمجيات', '**', '**', 1245694464, 'بكالريوس حاسبات ومعلومات', 'اكتوبر', 'جيد جدا', 'CS', '**', 'حاسبات ومعلومات', 'عين شمس', 1995, '**', '**', '**', '**', '**', '--', '**', 'مطابق للشروط', '2019-02-02 00:00:00', '', ''),
('حسام', 'حسن', '1970-10-06', '**', '**', 'القاهرة', 'مصري', 'مسلم', 9085876324744, 'مؤجل', 'مهندس برمجيات', '**', '**', 1147194464, 'بكالريوس حاسبات ومعلومات', 'اكتوبر', 'جيد جدا', 'CS', '**', 'حاسبات ومعلومات', 'عين شمس', 1995, '**', '**', '**', '**', '**', '--', '**', 'غير مطابق للشروط', '2019-12-31 23:59:00', '', ''),
('احمد', 'بلال', '1970-10-06', '**', '**', 'الغربية', 'مصري', 'مسلم', 9085876329944, 'مؤجل', 'مهندس برمجيات', '**', '**', 1247194464, 'بكالريوس حاسبات ومعلومات', 'اكتوبر', 'جيد جدا', 'CS', '**', 'حاسبات ومعلومات', 'عين شمس', 1995, '**', '**', '**', '**', '**', '--', '**', 'مطابق للشروط', '2019-12-31 23:59:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `username` varchar(45) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `dob` date NOT NULL,
  `national_id` bigint(20) NOT NULL,
  `telephone` bigint(20) NOT NULL,
  `email` varchar(90) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`username`, `first_name`, `last_name`, `dob`, `national_id`, `telephone`, `email`, `password`) VALUES
('Staff001', 'محمد', 'عبدالوهاب', '0000-00-00', 1365987456981, 1146316516, 'aaaa', 'Staff001'),
('Staff002', 'صالح', 'سليم', '0000-00-00', 1365987456987, 1146316514, 'ww@ww', 'Staff002');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` varchar(11) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `degree_type` varchar(45) NOT NULL,
  `department` varchar(45) NOT NULL,
  `dob` date NOT NULL,
  `national_id` bigint(14) NOT NULL,
  `telephone` bigint(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL DEFAULT 'لم يتم التحديد بعد'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `first_name`, `last_name`, `degree_type`, `department`, `dob`, `national_id`, `telephone`, `email`, `password`, `status`) VALUES
('drs1', 'باسم', 'علي', 'دكتوراه', 'IS', '1980-09-04', 55523122314775, 10369998877, 'drs1@drs1', 'drs1', 'غير مطابق للشروط'),
('drs2', 'محمد', 'هاني', 'دكتوراه', 'IS', '1980-09-04', 55523712314787, 11369998876, 'drs2@drs2', 'drs2', 'غير مطابق للشروط'),
('drs3', 'محمد', 'هاني', 'دكتوراه', 'IS', '1980-09-04', 55975822331477, 10369979637, 'drs3@drs3', 'drs3', 'غير مطابق للشروط'),
('ds1', 'صالح', 'جمعة', 'دبلومة', 'IT', '1980-09-04', 90854763259408, 14865479630, 'ds1@ds1', 'ds1', 'لم يتم التحديد بعد'),
('ds2', 'اسامة', 'حسني', 'دبلومة', 'IT', '1980-09-04', 90854763259448, 14864479630, 'ds2@ds2', 'ds2', 'لم يتم التحديد بعد'),
('ms1', 'سيد', 'معوض', 'ماجستير', 'CS', '1970-10-06', 9085476329944, 1036999637, 'ms1@ms1', 'ms1', 'مطابق للشروط'),
('ms2', 'حسام', 'حسن', 'ماجستير', 'CS', '1970-10-06', 9085876324744, 1147194464, 'ms2@ms2', 'ms2', 'غير مطابق للشروط'),
('ms3', 'احمد', 'بلال', 'ماجستير', 'CS', '1970-10-06', 9085876329944, 59876359756, 'ms3@ms3', 'ms3', 'مطابق للشروط');

-- --------------------------------------------------------

--
-- Table structure for table `student_course`
--

CREATE TABLE `student_course` (
  `student_id` varchar(45) DEFAULT NULL,
  `course_code` varchar(45) DEFAULT NULL,
  `state` varchar(45) NOT NULL DEFAULT 'لم يتم التحديد بعد',
  `num_tries` int(11) NOT NULL DEFAULT '1',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_course`
--

INSERT INTO `student_course` (`student_id`, `course_code`, `state`, `num_tries`, `start_date`, `end_date`) VALUES
('drs1', 'IS002', 'لم يتم التحديد بعد', 1, '2019-05-07', '2019-08-07'),
('drs1', 'IS002', 'لم يتم التحديد بعد', 1, '2019-05-07', '2019-08-07'),
('drs1', 'IS004', 'لم يتم التحديد بعد', 1, '2019-05-07', '2019-08-07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_code`);

--
-- Indexes for table `diploma`
--
ALTER TABLE `diploma`
  ADD PRIMARY KEY (`national_id`),
  ADD UNIQUE KEY `telephone` (`telephone`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `student_id` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `national_id` (`national_id`,`telephone`);
ALTER TABLE `doctor` ADD FULLTEXT KEY `student_id_2` (`username`);

--
-- Indexes for table `doctoratee`
--
ALTER TABLE `doctoratee`
  ADD PRIMARY KEY (`national_id`),
  ADD UNIQUE KEY `telephone` (`telephone`);

--
-- Indexes for table `master`
--
ALTER TABLE `master`
  ADD PRIMARY KEY (`national_id`),
  ADD UNIQUE KEY `telephone` (`telephone`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `student_id` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `national_id` (`national_id`),
  ADD UNIQUE KEY `telephone` (`telephone`);
ALTER TABLE `staff` ADD FULLTEXT KEY `student_id_2` (`username`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `national_id` (`national_id`),
  ADD UNIQUE KEY `telephone` (`telephone`);

--
-- Indexes for table `student_course`
--
ALTER TABLE `student_course`
  ADD KEY `student_id` (`student_id`),
  ADD KEY `course_code` (`course_code`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student_course`
--
ALTER TABLE `student_course`
  ADD CONSTRAINT `student_course_ibfk_1` FOREIGN KEY (`course_code`) REFERENCES `course` (`course_code`) ON DELETE SET NULL,
  ADD CONSTRAINT `student_course_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE SET NULL;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
