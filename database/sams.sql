-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 14, 2024 at 01:31 PM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sams`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance_list`
--

DROP TABLE IF EXISTS `attendance_list`;
CREATE TABLE IF NOT EXISTS `attendance_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `class_subject_id` int NOT NULL,
  `doc` date NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance_list`
--

INSERT INTO `attendance_list` (`id`, `class_subject_id`, `doc`, `date_created`) VALUES
(1, 1, '2024-11-14', '2024-11-14 18:57:35'),
(2, 2, '2024-11-14', '2024-11-14 18:57:40'),
(3, 3, '2024-11-14', '2024-11-14 18:57:45'),
(4, 4, '2024-11-14', '2024-11-14 18:57:49'),
(5, 5, '2024-11-14', '2024-11-14 18:57:54');

-- --------------------------------------------------------

--
-- Table structure for table `attendance_record`
--

DROP TABLE IF EXISTS `attendance_record`;
CREATE TABLE IF NOT EXISTS `attendance_record` (
  `id` int NOT NULL AUTO_INCREMENT,
  `attendance_id` int NOT NULL,
  `student_id` int NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '0=absent,1=present',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance_record`
--

INSERT INTO `attendance_record` (`id`, `attendance_id`, `student_id`, `type`, `date_created`) VALUES
(1, 1, 1, 1, '2024-11-14 18:57:35'),
(2, 1, 6, 0, '2024-11-14 18:57:35'),
(3, 2, 2, 1, '2024-11-14 18:57:40'),
(4, 2, 7, 1, '2024-11-14 18:57:40'),
(5, 3, 3, 1, '2024-11-14 18:57:45'),
(6, 3, 8, 1, '2024-11-14 18:57:45'),
(7, 4, 4, 1, '2024-11-14 18:57:49'),
(8, 4, 9, 1, '2024-11-14 18:57:49'),
(9, 5, 5, 1, '2024-11-14 18:57:54'),
(10, 5, 10, 0, '2024-11-14 18:57:54');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
CREATE TABLE IF NOT EXISTS `class` (
  `id` int NOT NULL AUTO_INCREMENT,
  `course_id` int NOT NULL,
  `level` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `section` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=Active, 0=Inactive',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `course_id`, `level`, `section`, `status`, `date_created`) VALUES
(1, 1, '1', 'A', 1, '2024-11-08 10:48:45'),
(2, 2, '1', 'B', 1, '2024-11-08 10:52:58'),
(3, 3, '2', 'A', 1, '2024-11-13 22:19:49'),
(4, 4, '2', 'B', 1, '2024-11-13 22:20:01'),
(5, 5, '3', 'A', 1, '2024-11-13 22:20:06');

-- --------------------------------------------------------

--
-- Table structure for table `class_subject`
--

DROP TABLE IF EXISTS `class_subject`;
CREATE TABLE IF NOT EXISTS `class_subject` (
  `id` int NOT NULL AUTO_INCREMENT,
  `class_id` int NOT NULL,
  `subject_id` int NOT NULL,
  `faculty_id` int NOT NULL,
  `student_ids` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class_subject`
--

INSERT INTO `class_subject` (`id`, `class_id`, `subject_id`, `faculty_id`, `student_ids`, `date_created`) VALUES
(1, 1, 1, 1, '', '2024-11-12 22:01:06'),
(2, 2, 1, 2, '', '2024-11-12 22:01:16'),
(3, 3, 2, 3, '', '2024-11-14 17:40:47'),
(4, 4, 2, 4, '', '2024-11-14 17:42:10'),
(5, 5, 3, 5, '', '2024-11-14 17:42:17');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
CREATE TABLE IF NOT EXISTS `courses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `course` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course`, `description`, `date_created`) VALUES
(1, 'Database Management Systems\n', 'A DBMS is software that facilitates the creation, management, and manipulation of databases. It allows users to store, retrieve, and update data efficiently while ensuring data integrity and security.\n\n', '2024-11-11 10:00:41'),
(2, 'Software Engineering\n', 'Software Engineering involves applying engineering principles to the design, development, and maintenance of software systems. It aims to produce reliable, efficient, and scalable software through structured methodologies.\n\n', '2024-11-11 10:02:09'),
(3, 'Linear Algebra\n', 'Linear Algebra is the branch of mathematics that deals with vectors, matrices, and linear transformations. It is fundamental to fields like computer graphics, machine learning, and scientific computing.\n\n', '2024-11-11 10:02:16'),
(4, 'Calculus ', 'Calculus is the mathematical study of change, focusing on derivatives, integrals, limits, and their applications to real-world problems.\n\n\n\n\n\n\n', '2024-11-11 10:02:24'),
(5, 'Quantum Mechanics ', 'Quantum Physics is the study of the behavior of matter and energy at atomic and subatomic levels. It explores phenomena like wave-particle duality, superposition, and entanglement, which challenge classical physics.', '2024-11-14 18:01:23');

DELIMITER $$

-- Trigger to delete related class_subject, students, and class records when a course is deleted
CREATE TRIGGER after_delete_courses
AFTER DELETE ON `courses`
FOR EACH ROW
BEGIN
  
    DELETE FROM `class_subject`
    WHERE `class_id` IN (SELECT `id` FROM `class` WHERE `course_id` = OLD.id);

    
    DELETE FROM `students`
    WHERE `class_id` IN (SELECT `id` FROM `class` WHERE `course_id` = OLD.id);

  
    DELETE FROM `class`
    WHERE `course_id` = OLD.id;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
CREATE TABLE IF NOT EXISTS `faculty` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `contact` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `id_no`, `name`, `email`, `contact`, `address`, `date_created`) VALUES
(1, '12', 'DBMS Teacher', 'dbmst@mail.com', '9456783456', 'Whitefield', '2024-11-07 11:32:18'),
(2, '34', 'SE Teacher', 'set@mail.com', '9876543210', 'Banashankari', '2024-11-09 21:39:46'),
(3, '56', 'Linear Algebra Teacher', 'lat@mail.com', '7867564532', 'Bangalore', '2024-11-14 17:30:42'),
(4, '78', 'Calculus Teacher', 'ct@mail.com', '7856896857', 'Bangalore', '2024-11-14 17:31:12'),
(5, '910', 'Quantum Mechanics Teacher', 'qmt@mail.com', '8967564534', 'Bangalore', '2024-11-14 17:31:42');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `class_id` int NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `id_no`, `class_id`, `name`, `date_created`) VALUES
(1, 'DBMS1A01', 1, 'Ajay', '2024-11-07 11:53:24'),
(2, 'SE1B01', 2, 'Dhanush', '2024-11-07 15:20:57'),
(3, 'LA2A01', 3, 'Arun', '2024-11-14 17:35:56'),
(4, 'CC2B01', 4, 'Bharath', '2024-11-14 17:36:17'),
(5, 'QM3A01', 5, 'Rahul', '2024-11-14 17:36:29'),
(6, 'DBMS1A02', 1, 'Arjun', '2024-11-14 18:54:57'),
(7, 'SE1B02', 2, 'Rohan', '2024-11-14 18:55:30'),
(8, 'LA2A02', 3, 'Rakesh', '2024-11-14 18:55:48'),
(9, 'CC2B02', 4, 'Chandan', '2024-11-14 18:56:14'),
(10, 'QM3A02', 5, 'Sohan', '2024-11-14 18:56:35');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
CREATE TABLE IF NOT EXISTS `subjects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `subject` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subject`, `description`, `date_created`) VALUES
(1, 'Computer Science', 'Computer Science focuses on the study of algorithms, data structures, software engineering, and the underlying principles of computing systems. It combines theoretical foundations with practical applications.', '2024-11-08 10:29:53'),
(2, 'Mathematics', 'Mathematics provides the theoretical foundation for many fields, including computer science, engineering, economics, and physics. It involves the study of numbers, structures, patterns, and changes.', '2024-12-08 10:30:48'),
(3, 'Physics', 'Physics is the study of matter, energy, and the fundamental forces of nature. It provides a deeper understanding of the universe, from subatomic particles to galaxies.', '2024-11-08 10:30:57');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

DROP TABLE IF EXISTS `system_settings`;
CREATE TABLE IF NOT EXISTS `system_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `contact` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cover_img` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `about_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'Student Attendance Management System', 'admin@mail.com', '9876453212', '1603344720_1602738120_pngtree-purple-hd-business-banner-image_5493.jpg', '&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-weight: 400; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;');

-- --------------------------------------------------------
DELIMITER $$

CREATE FUNCTION calculate_attendance_percentage(p_student_id INT, p_class_subject_id INT)
RETURNS DECIMAL(5,2)
DETERMINISTIC
BEGIN
    DECLARE total_classes INT;
    DECLARE attended_classes INT;
    DECLARE attendance_percentage DECIMAL(5,2);

    -- Get the total number of classes held for the given class and subject (total attendance list entries)
    SELECT COUNT(*) INTO total_classes
    FROM attendance_list
    WHERE class_subject_id = p_class_subject_id;

    -- Get the number of classes the student attended (based on attendance_record)
    SELECT COUNT(*) INTO attended_classes
    FROM attendance_record ar
    JOIN attendance_list al ON ar.attendance_id = al.id
    WHERE ar.student_id = p_student_id
    AND al.class_subject_id = p_class_subject_id
    AND ar.type = 1;  -- type = 1 means present

    -- If no classes are found, the percentage is 0
    IF total_classes = 0 THEN
        SET attendance_percentage = 0;
    ELSE
        -- Calculate the attendance percentage
        SET attendance_percentage = (attended_classes / total_classes) * 100;
    END IF;

    RETURN attendance_percentage;
END$$

DELIMITER ;

--
-- Nested query
--

SELECT `name`
FROM `students`
WHERE `id` IN (
    SELECT `student_id`
    FROM `attendance_record`
    WHERE `type` = 1
    GROUP BY `student_id`
    HAVING COUNT(*) / (SELECT COUNT(*) FROM `attendance_list` WHERE `class_subject_id` = 1) > 0.75
);

--
-- Join query
--

SELECT s.name, c.section, cs.course AS course_name
FROM `students` s
INNER JOIN `class` c ON s.class_id = c.id
INNER JOIN `courses` cs ON c.course_id = cs.id;

--
-- Aggregate query
--

SELECT c.section, COUNT(s.id) AS student_count
FROM `students` s
JOIN `class` c ON s.class_id = c.id
GROUP BY c.section;


--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '2',
  `faculty_id` int NOT NULL COMMENT 'for faculty user only',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--


INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`, `faculty_id`) VALUES
(1, 'Administrator', 'admin', '0192023a7bbd73250516f069df18b500', 1, 0),
(2, 'DBMS Teacher', 'dbmst@mail.com', 'c20ad4d76fe97759aa27a0c99bff6710', 3, 1),
(3, 'SE Teacher', 'set@mail.com', 'e369853df766fa44e1ed0ff613f563bd', 3, 2),
(4, 'Linear Algebra Teacher', 'lat@mail.com', '9f61408e3afb633e50cdf1b20de6f466', 3, 3),
(5, 'Calculus Teacher', 'ct@mail.com', '35f4a8d465e6e1edc05f3d8ab658c551', 3, 4),
(6, 'Quantum Mechanics Teacher', 'qmt@mail.com', 'e205ee2a5de471a70c1fd1b46033a75f', 3, 5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
