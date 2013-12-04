-- phpMyAdmin SQL Dump
-- version 4.0.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 04, 2013 at 02:28 PM
-- Server version: 5.5.32-cll
-- PHP Version: 5.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `interviewapp`
--
CREATE DATABASE IF NOT EXISTS `interviewapp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `interviewapp`;

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE IF NOT EXISTS `answers` (
  `question_id` int(11) NOT NULL,
  `answer` varchar(255) NOT NULL,
  PRIMARY KEY (`question_id`),
  UNIQUE KEY `questionId` (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`question_id`, `answer`) VALUES
(1, 'An exception is thrown at runtime.'),
(2, '72 7 34 foo34 7foo'),
(3, 'count = 3'),
(4, '3 and 4'),
(5, 'Applets are simple computer programs that perform specific tasks and don''t require hefty computer resources.'),
(6, '.class'),
(7, 'Object-Oriented Programming Language.'),
(8, 'If (a) is false and (b) is true then the output is "ELSE'),
(9, 'It can be marked abstract.'),
(10, 'a) X run = new X(); Thread t = new Thread(run); t.start();');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  `answer1` varchar(255) NOT NULL,
  `answer2` varchar(255) NOT NULL,
  `answer3` varchar(255) NOT NULL,
  `answer4` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `answer1`, `answer2`, `answer3`, `answer4`) VALUES
(1, '<p>What will be the output of the program?</p><img src="/assets/images/question1.jpg" border="0" height="300" width="600">', 'X = 0', 'X = 1', 'An exception is thrown at runtime.', 'incorrect answer'),
(2, '<p>What will be the output of the program?</p><img src="/assets/images/Question2.jpg" border="0" height="300" width="600">', '72 7 34 foo34 7foo', '9 7 7 foo 7 7foo', '72 34 34 foo34 34foo', 'incorrect answer'),
(3, '<p>What will be the output of the program?</p><img src="/assets/images/Question2.jpg" border="0" height="300" width="600">', 'count = 0', 'count = 2', 'count = 3', 'incorrect answer'),
(4, '<p>Which two statements are equivalent?</p><img src="/assets/images/Question4.jpg" border="0" height="300" width="600">', '1 and 2', '2 and 3', '3 and 4', 'incorrect answer'),
(5, '<p>What is an applet?</p>', 'An apple.', 'Applets are simple computer programs that perform specific tasks and don''t require hefty computer resources.', 'A JAVA specific programme', 'incorrect answer'),
(6, '<p>What''s the extension for a compiled Java file?</p>', '.class', '.java', '.html', 'incorrect answer'),
(7, '<p>What kind of programming language is Java?</p>', 'Array Programming Language.', 'Object-Oriented Programming Language.', 'Logical Programming Language', 'incorrect answer'),
(8, '<p>Please select the correct statement.</p>\r\n<img src="/assets/images/Question8.jpg" border="0" height="300" width="600">', 'If (a) is true and (b) is true then the output is "A && B', 'If (a) is true and (b) is false then the output is "notB', 'If (a) is false and (b) is true then the output is "ELSE', 'incorrect answer'),
(9, '<p>Which is true about a method-local inner class?</p>', 'It must be marked final', 'It can be marked public.', 'It can be marked abstract.', 'incorrect answer'),
(10, '<p>Which of the following line of code is suitable to start a thread ?</p>\r\n<img src="/assets/images/Question10.jpg" border="0" height="300" width="600"></a>', 'X run = new X(); Thread t = new Thread(run); t.start();', 'Thread t = new Thread(); x.run();', 'Thread t = new Thread(X);', 'incorrect answer');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email_address` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email_address`, `password`) VALUES
(1, 'test@test.com', 'test');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
