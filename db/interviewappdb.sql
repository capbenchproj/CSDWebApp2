-- phpMyAdmin SQL Dump
-- version 4.0.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 02, 2013 at 06:55 PM
-- Server version: 5.5.32-cll
-- PHP Version: 5.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `legitnet_interviewapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE IF NOT EXISTS `answers` (
  `id` int(11) NOT NULL,
  `answer` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `questionId` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `answer`) VALUES
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `answer1`, `answer2`, `answer3`) VALUES
(1, '<p>What will be the output of the program?</p><img src="/assets/images/question1.jpg" border="0" height="300" width="600">', 'X = 0', 'X = 1', 'An exception is thrown at runtime.'),
(2, '<p>What will be the output of the program?</p><img src="/assets/images/Question2.jpg" border="0" height="300" width="600">', '72 7 34 foo34 7foo', '9 7 7 foo 7 7foo', '72 34 34 foo34 34foo'),
(3, '<p>What will be the output of the program?</p><img src="/assets/images/Question2.jpg" border="0" height="300" width="600">', 'count = 0', 'count = 2', 'count = 3'),
(4, '<p>Which two statements are equivalent?</p><img src="/assets/images/Question4.jpg" border="0" height="300" width="600">', '1 and 2', '2 and 3', '3 and 4'),
(5, '<p>What is an applet?</p>', 'An apple.', 'Applets are simple computer programs that perform specific tasks and don''t require hefty computer resources.', 'A JAVA specific programme'),
(6, '<p>What''s the extension for a compiled Java file?</p>', '.class', '.java', '.html'),
(7, '<p>What kind of programming language is Java?</p>', 'Array Programming Language.', 'Object-Oriented Programming Language.', 'Logical Programming Language'),
(8, '<p>Please select the correct statement.</p>\r\n<img src="/assets/images/Question8.jpg" border="0" height="300" width="600">', 'If (a) is true and (b) is true then the output is "A && B', 'If (a) is true and (b) is false then the output is "notB', 'If (a) is false and (b) is true then the output is "ELSE'),
(9, '<p>Which is true about a method-local inner class?</p>', 'It must be marked final', 'It can be marked public.', 'It can be marked abstract.'),
(10, '<p>Which of the following line of code is suitable to start a thread ?</p>\r\n<img src="/assets/images/Question10.jpg" border="0" height="300" width="600"></a>', 'X run = new X(); Thread t = new Thread(run); t.start();', 'Thread t = new Thread(); x.run();', 'Thread t = new Thread(X);');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `AnswersKey` FOREIGN KEY (`id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
