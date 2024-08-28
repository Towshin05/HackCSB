-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2024 at 03:40 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codehub2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` bigint(20) NOT NULL,
  `admin_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `password`, `email_address`) VALUES
(1, 'codingHubAdmins', 'AdminOfCodingWebsite', 'codinghub@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` bigint(20) NOT NULL,
  `cat_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(1, 'DP'),
(2, 'Greedy'),
(3, 'Implementation'),
(4, 'Two Pointers'),
(5, 'Strings'),
(6, 'Math'),
(7, 'constructive algorithms'),
(8, 'brute force'),
(9, 'geometry'),
(10, 'data structures'),
(11, 'matrices'),
(12, 'binary search'),
(13, 'Array'),
(14, 'Hash Table'),
(15, 'Sorting');

-- --------------------------------------------------------

--
-- Table structure for table `fall_in`
--

CREATE TABLE `fall_in` (
  `prob_id` bigint(20) NOT NULL,
  `cat_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fall_in`
--

INSERT INTO `fall_in` (`prob_id`, `cat_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(3, 3),
(3, 6),
(4, 3),
(4, 6),
(4, 7),
(5, 7),
(6, 2),
(6, 6),
(6, 8),
(6, 9),
(7, 1),
(7, 10),
(7, 11),
(8, 2),
(8, 6),
(8, 8),
(8, 10),
(8, 12),
(9, 5),
(9, 10),
(10, 5),
(10, 8),
(10, 10),
(11, 5),
(11, 10),
(12, 4),
(12, 13),
(12, 14),
(12, 15);

-- --------------------------------------------------------

--
-- Table structure for table `handle`
--

CREATE TABLE `handle` (
  `user_name` varchar(50) NOT NULL,
  `web_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `problem`
--

CREATE TABLE `problem` (
  `prob_id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `web_id` int(11) NOT NULL,
  `tutorial_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `problem`
--

INSERT INTO `problem` (`prob_id`, `title`, `link`, `level`, `web_id`, `tutorial_link`) VALUES
(1, 'Test of Love', 'https://codeforces.com/problemset/problem/1992/D', 2, 1, 'https://codeforces.com/blog/entry/131461'),
(2, 'Merge Strings Alternately', 'https://leetcode.com/problems/merge-strings-alternately/description/?envType=study-plan-v2&envId=leetcode-75', 1, 1, 'https://medium.com/@robertsevan/leetcode-problem-1768-merge-strings-alternately-leetcode-75-51e4e99534d8'),
(3, 'Closest Point', 'https://codeforces.com/problemset/problem/2004/A', 1, 1, 'https://codeforces.com/blog/entry/132790'),
(4, 'Distanced Coloring', 'https://codeforces.com/problemset/problem/2002/A', 1, 1, 'https://codeforces.com/blog/entry/132569'),
(5, 'Generate Permutation', 'https://codeforces.com/problemset/problem/2001/B', 1, 1, 'https://codeforces.com/blog/entry/132965'),
(6, 'Black Circles', 'https://codeforces.com/problemset/problem/2002/C', 2, 1, NULL),
(7, 'Substring Compression', 'https://codeforces.com/problemset/problem/2004/G', 3, 1, 'https://codeforces.com/blog/entry/132790'),
(8, 'Make a Palindrome', 'https://codeforces.com/problemset/problem/2004/F', 3, 1, NULL),
(9, 'Chef and Prefixes', 'https://www.codechef.com/problems/PREFIXES', 3, 3, 'https://www.codechef.com/problems/PREFIXES?tab=solution'),
(10, 'Little Elephant and Strings', 'https://www.codechef.com/problems/LUCKYSTR', 2, 3, NULL),
(11, 'Wordle', 'https://www.codechef.com/problems/WORDLE', 1, 3, NULL),
(12, 'Max Number of K-Sum Pairs', 'https://leetcode.com/problems/max-number-of-k-sum-pairs/description/?envType=study-plan-v2&envId=leetcode-75', 2, 2, 'https://leetcode.com/problems/max-number-of-k-sum-pairs/solutions/?envType=study-plan-v2&envId=leetcode-75');

-- --------------------------------------------------------

--
-- Table structure for table `solved`
--

CREATE TABLE `solved` (
  `user_name` varchar(50) NOT NULL,
  `prob_id` bigint(20) NOT NULL,
  `solution_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `solved`
--

INSERT INTO `solved` (`user_name`, `prob_id`, `solution_link`) VALUES
('Raisa', 1, 'https://codeforces.com/contest/1992/submission/269999778'),
('Raisa', 2, 'https://leetcode.com/problems/merge-strings-alternately/submissions/1216449465/?envType=study-plan-v2&envId=leetcode-75'),
('Raisa', 3, 'https://codeforces.com/contest/2004/submission/278477179'),
('Raisa', 11, 'https://www.codechef.com/viewsolution/1084065107');

-- --------------------------------------------------------

--
-- Table structure for table `solver`
--

CREATE TABLE `solver` (
  `user_name` varchar(50) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `institution` varchar(255) DEFAULT NULL,
  `introduction` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `solver`
--

INSERT INTO `solver` (`user_name`, `name`, `password`, `email_address`, `address`, `institution`, `introduction`) VALUES
('Mubarmaj', NULL, 'rootroot', 'u2004092@student.cuet.ac.bd', NULL, NULL, NULL),
('Raisa', NULL, 'rootroot', 'u2004092@student.cuet.ac.bd', NULL, NULL, NULL),
('RaisaM', NULL, 'rootroot', 'u2004092@student.cuet.ac.bd', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `website`
--

CREATE TABLE `website` (
  `web_id` int(11) NOT NULL,
  `web_name` varchar(255) DEFAULT NULL,
  `web_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `website`
--

INSERT INTO `website` (`web_id`, `web_name`, `web_link`) VALUES
(1, 'Codeforces', 'https://codeforces.com/'),
(2, 'LeetCode', 'https://leetcode.com/'),
(3, 'CodeChef', 'https://www.codechef.com/'),
(4, 'AtCoder', 'https://atcoder.jp/home');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `fall_in`
--
ALTER TABLE `fall_in`
  ADD PRIMARY KEY (`prob_id`,`cat_id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `prob_id` (`prob_id`);

--
-- Indexes for table `handle`
--
ALTER TABLE `handle`
  ADD PRIMARY KEY (`user_name`,`web_id`),
  ADD KEY `web_id` (`web_id`),
  ADD KEY `user_name` (`user_name`);

--
-- Indexes for table `problem`
--
ALTER TABLE `problem`
  ADD PRIMARY KEY (`prob_id`),
  ADD KEY `web_id` (`web_id`);

--
-- Indexes for table `solved`
--
ALTER TABLE `solved`
  ADD PRIMARY KEY (`user_name`,`prob_id`),
  ADD KEY `prob_id` (`prob_id`),
  ADD KEY `user_name` (`user_name`);

--
-- Indexes for table `solver`
--
ALTER TABLE `solver`
  ADD PRIMARY KEY (`user_name`);

--
-- Indexes for table `website`
--
ALTER TABLE `website`
  ADD PRIMARY KEY (`web_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fall_in`
--
ALTER TABLE `fall_in`
  ADD CONSTRAINT `fall_in_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `category` (`cat_id`),
  ADD CONSTRAINT `fall_in_ibfk_2` FOREIGN KEY (`prob_id`) REFERENCES `problem` (`prob_id`);

--
-- Constraints for table `handle`
--
ALTER TABLE `handle`
  ADD CONSTRAINT `handle_ibfk_2` FOREIGN KEY (`web_id`) REFERENCES `website` (`web_id`),
  ADD CONSTRAINT `handle_ibfk_3` FOREIGN KEY (`user_name`) REFERENCES `solver` (`user_name`);

--
-- Constraints for table `problem`
--
ALTER TABLE `problem`
  ADD CONSTRAINT `problem_ibfk_1` FOREIGN KEY (`web_id`) REFERENCES `website` (`web_id`);

--
-- Constraints for table `solved`
--
ALTER TABLE `solved`
  ADD CONSTRAINT `solved_ibfk_1` FOREIGN KEY (`prob_id`) REFERENCES `problem` (`prob_id`),
  ADD CONSTRAINT `solved_ibfk_2` FOREIGN KEY (`user_name`) REFERENCES `solver` (`user_name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
