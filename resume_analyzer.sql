-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Nov 12, 2025 at 07:53 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resume_analyzer`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `analysis_results`
--

CREATE TABLE `analysis_results` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `predicted_domain` varchar(100) DEFAULT NULL,
  `predicted_role` varchar(100) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `missing_skills` text DEFAULT NULL,
  `analysis_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_roles`
--

CREATE TABLE `job_roles` (
  `role_id` int(11) NOT NULL,
  `domain` varchar(100) DEFAULT NULL,
  `role_name` varchar(100) DEFAULT NULL,
  `skill_keywords` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_roles`
--

INSERT INTO `job_roles` (`role_id`, `domain`, `role_name`, `skill_keywords`) VALUES
(1, 'IT', 'Java Developer', 'java,spring,hibernate,servlets,jsp,mysql,jdbc,spring boot,maven,git'),
(2, 'IT', 'Data Analyst', 'python,sql,excel,tableau,statistics,analytics,machine learning,data visualization'),
(3, 'IT', 'Web Developer', 'html,css,javascript,react,nodejs,php,angular,vue,bootstrap,responsive design'),
(4, 'IT', 'DevOps Engineer', 'docker,kubernetes,aws,jenkins,linux,ci/cd,terraform,ansible,cloud'),
(5, 'IT', 'Software Engineer', 'java,python,c++,algorithms,data structures,git,oop,software development'),
(6, 'IT', 'Frontend Developer', 'html,css,javascript,react,angular,vue,typescript,webpack,npm'),
(7, 'IT', 'Backend Developer', 'java,spring,python,django,nodejs,express,mysql,mongodb,apis'),
(8, 'IT', 'Full Stack Developer', 'java,spring,html,css,javascript,react,mysql,mongodb,rest apis'),
(9, 'IT', 'Java Developer', 'java,spring,hibernate,servlets,jsp,mysql,jdbc,spring boot,maven,git'),
(10, 'IT', 'Data Analyst', 'python,sql,excel,tableau,statistics,analytics,machine learning,data visualization'),
(11, 'IT', 'Web Developer', 'html,css,javascript,react,nodejs,php,angular,vue,bootstrap,responsive design'),
(12, 'IT', 'DevOps Engineer', 'docker,kubernetes,aws,jenkins,linux,ci/cd,terraform,ansible,cloud'),
(13, 'IT', 'Software Engineer', 'java,python,c++,algorithms,data structures,git,oop,software development');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `resume_text` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `analysis_results`
--
ALTER TABLE `analysis_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `job_roles`
--
ALTER TABLE `job_roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `analysis_results`
--
ALTER TABLE `analysis_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_roles`
--
ALTER TABLE `job_roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `analysis_results`
--
ALTER TABLE `analysis_results`
  ADD CONSTRAINT `analysis_results_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
