-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 17, 2012 at 11:49 PM
-- Server version: 5.5.24
-- PHP Version: 5.3.10-1ubuntu3.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `newframework`
--
CREATE DATABASE `newframework` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `newframework`;

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE IF NOT EXISTS `author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `joke`
--

CREATE TABLE IF NOT EXISTS `joke` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `joketext` text,
  `jokedate` date NOT NULL,
  `authorid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `joke`
--

INSERT INTO `joke` (`id`, `joketext`, `jokedate`, `authorid`) VALUES
(5, 'Gusdur rajanya pembuat jokes-jokes lucu.', '2012-06-07', NULL),
(6, 'testing', '2012-06-13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jokecategory`
--

CREATE TABLE IF NOT EXISTS `jokecategory` (
  `jokeid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  PRIMARY KEY (`jokeid`,`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

