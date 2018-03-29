-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 17, 2018 at 01:23 PM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `buyonclick`
--

-- --------------------------------------------------------

--
-- Table structure for table `amana`
--

CREATE TABLE IF NOT EXISTS `amana` (
  `id` int(250) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(30) NOT NULL,
  `product_id` varchar(30) NOT NULL,
  `brand` varchar(20) NOT NULL,
  `stock` varchar(250) NOT NULL,
  `category` varchar(10) NOT NULL,
  `price` varchar(250) NOT NULL,
  `img` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `amana`
--

INSERT INTO `amana` (`id`, `product_name`, `product_id`, `brand`, `stock`, `category`, `price`, `img`) VALUES
(1, 'shoes', 'thgste546gtecwtrgdtbeyathevyt1', 'nike', '3', 'SHOES', '1200', 'img/products/thgste546gtecwtrgdtbeyathevyt1.jpg'),
(2, 'shoes', 'thgste546gtecwtrgdtbeyhtsvgte3', 'adidas', '4', 'SHOES', '1400', 'img/products/thgste546gtecwtrgdtbeyhtsvgte3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(250) NOT NULL AUTO_INCREMENT,
  `cart_id` varchar(30) NOT NULL,
  `product_id` varchar(30) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `product_name` varchar(30) NOT NULL,
  `product_image` varchar(250) NOT NULL,
  `quantity` varchar(250) NOT NULL,
  `price` varchar(30) NOT NULL,
  `total_amount` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=134 ;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `cart_id`, `product_id`, `user_id`, `product_name`, `product_image`, `quantity`, `price`, `total_amount`) VALUES
(122, 'SUb3GTLPERGdJNUHc1DJzSPOAMV4j7', 'qaFZI8hJZCdyhPqckoWqalf1ulApmD', 'Bp5ZPYcVNOB0vD3', 'Soft toys', 'img/products/qaFZI8hJZCdyhPqckoWqalf1ulApmD.jpg', '2', '300', '600'),
(124, 'ny6pOm8XoGLhWNVYIfdGccc20xsANX', 'KxFKYY1nPv0IEptrCxUQq3smWkYK6M', 'Bp5ZPYcVNOB0vD3', 'Puzzles', 'img/products/KxFKYY1nPv0IEptrCxUQq3smWkYK6M.jpg', '1', '50', '50'),
(125, 'dAovmp0c25j1UvDmJFAiK50U1q76ca', '9rjEx5e8kmtN1u8BznzmCeBrLptGML', '7xuZbarxWErE25v', 'Adapter', 'img/products/9rjEx5e8kmtN1u8BznzmCeBrLptGML.jpg', '1', '5012', '5012'),
(126, 'IqK6V6wWjy1DzW9djSSUaDZby1CG7P', 'AS5hTMHQrRUlqgbbR6VmngVJIDn5JY', '7xuZbarxWErE25v', 'Solar', 'img/products/AS5hTMHQrRUlqgbbR6VmngVJIDn5JY.jpg', '1', '12000', '12000'),
(127, 'keCJhOKJ6fdybX6YTlyajZGT18QjJM', 'iWcCBJIQS2clQeQYPpmpMYDoqoOT5A', '7xuZbarxWErE25v', 'Tablet', 'img/products/iWcCBJIQS2clQeQYPpmpMYDoqoOT5A.jpg', '1', '52000', '52000'),
(128, 'M40oOhcy1iNeRZcYX5jwgDvXwx6nQQ', 'z0wTPnuVoymt3bmwzgafzoiKSC6Lp7', '7xuZbarxWErE25v', 'mobile', 'img/products/z0wTPnuVoymt3bmwzgafzoiKSC6Lp7.jpg', '1', '45000', '45000'),
(129, '9CUa0Irdhtw5In5Ul30Fzgi4ePBkcs', 'cWxkJphSMapHoqGOOaNsQ2GTAFPKKw', '7xuZbarxWErE25v', 'mobile', 'img/products/cWxkJphSMapHoqGOOaNsQ2GTAFPKKw.jpg', '1', '65000', '65000'),
(130, 'lJ0HLBPsswtzeXjNR89tFBBCYGIzRa', 'oNxvPrsAiMZY17rvzsRISW90tB7Ger', '7xuZbarxWErE25v', 'Tv', 'img/products/oNxvPrsAiMZY17rvzsRISW90tB7Ger.jpg', '1', '36000', '36000'),
(131, 'Xls6dyMim8b9TshtJXcmrjISjumPzJ', 'oNxvPrsAiMZY17rvzsRISW90tB7Ger', '7xuZbarxWErE25v', 'Tv', 'img/products/oNxvPrsAiMZY17rvzsRISW90tB7Ger.jpg', '1', '36000', '36000'),
(132, 'yw51CizpAWxM5rfnUYk6lLq3EKy1A7', '9rjEx5e8kmtN1u8BznzmCeBrLptGML', '7xuZbarxWErE25v', 'Adapter', 'img/products/9rjEx5e8kmtN1u8BznzmCeBrLptGML.jpg', '1', '5012', '5012'),
(133, 'L8EQ9g8JGJFdvLEK8zJsG4e68TRGUr', 'AS5hTMHQrRUlqgbbR6VmngVJIDn5JY', '7xuZbarxWErE25v', 'Solar', 'img/products/AS5hTMHQrRUlqgbbR6VmngVJIDn5JY.jpg', '1', '12000', '12000');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cat_name`) VALUES
(1, 'HOUSEHOLD'),
(2, 'ELECTRONICS'),
(3, 'COMPUTER'),
(4, 'BOOKS'),
(5, 'TOYS'),
(6, 'SHOES'),
(7, 'DRESS'),
(8, 'ACCESSORIES'),
(9, 'GROCERIES'),
(10, 'GADGETS');

-- --------------------------------------------------------

--
-- Table structure for table `clone`
--

CREATE TABLE IF NOT EXISTS `clone` (
  `id` int(250) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(30) NOT NULL,
  `product_id` varchar(30) NOT NULL,
  `brand` varchar(20) NOT NULL,
  `stock` varchar(250) NOT NULL,
  `category` varchar(10) NOT NULL,
  `price` varchar(250) NOT NULL,
  `img` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `clu`
--

CREATE TABLE IF NOT EXISTS `clu` (
  `id` int(250) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(30) NOT NULL,
  `product_id` varchar(30) NOT NULL,
  `brand` varchar(20) NOT NULL,
  `stock` varchar(250) NOT NULL,
  `category` varchar(10) NOT NULL,
  `price` varchar(250) NOT NULL,
  `img` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(250) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(500) NOT NULL,
  `userid` varchar(30) NOT NULL,
  `payment` varchar(250) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid` (`userid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `username`, `password`, `phone`, `email`, `address`, `userid`, `payment`) VALUES
(7, 'Abu', 'thahir', '9061827202', 'abu', 'Kelamthodi', '7xuZbarxWErE25v', '0'),
(8, 'Abdullah', 'thahir', '9061827202', 'abdullahp@gmail.com', 'Arakkal', 'd2joPhXDeFmpxQM', '0'),
(10, 'mubasheer', 'muthu', '0123456789', '007@gmail.com', '123456789', 'fPGqjjiGRxXu4PG', '0'),
(11, 'Mubeena', 'thahir', '9061827201', 'mubeenapp@gmail.com', 'tirur', 'jWoBw1XnJ6BZiZP', '0'),
(12, 'codemaker', 'thahir', '9562085538', 'codemakerhash@gmail.com', 'coder', 'xrcx9QkbjjaCT5q', '0'),
(13, 'mubeena ', '123456mbn', '9895842464', 'mubeenapp321@gmail.com', 'dghfhjghj', 'Bp5ZPYcVNOB0vD3', '0');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(250) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(30) NOT NULL,
  `product_id` varchar(30) NOT NULL,
  `brand` varchar(20) NOT NULL,
  `stock` varchar(250) NOT NULL,
  `category` varchar(30) NOT NULL,
  `price` varchar(30) NOT NULL,
  `img` varchar(250) NOT NULL,
  `shope_id` varchar(20) NOT NULL,
  `shop_rank` int(35) NOT NULL,
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `product_id` (`product_id`),
  UNIQUE KEY `img` (`img`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=291 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_id`, `brand`, `stock`, `category`, `price`, `img`, `shope_id`, `shop_rank`) VALUES
(1, 'woodland', 'thgste546gtecwtrgdtbeyathevwww', 'woodland', '86', 'SHOES', '3200', 'img/products/thgste546gtecwtrgdtbeyathevwww.jpg', 'idshop1', 2),
(2, 'puma', 'thgste546gtecwtrgdtbeyathevy2e', 'puma', '89', 'SHOES', '2200', 'img/products/thgste546gtecwtrgdtbeyathevy2e.jpg', 'idshop1', 2),
(3, 'nike', 'thgste546gtecwtrgdtbeyathevyt1', 'nike', '68', 'SHOES', '1200', 'img/products/thgste546gtecwtrgdtbeyathevyt1.jpg', 'idshop2', 1),
(4, 'adidas', 'thgste546gtecwtrgdtbeyhtsvgte3', 'adidas', '82', 'SHOES', '1400', 'img/products/thgste546gtecwtrgdtbeyhtsvgte3.jpg', 'idshop2', 1),
(5, 'knife', 'thgstth46gtecwtrgdtbeyhtsvgte3', 'no-brand', '76', 'HOUSEHOLD', '50', 'img/products/thgstth46gtecwtrgdtbeyhtsvgte3.jpg', 'idshop1', 2),
(6, 'furnitures', 'thgste006gtecwtrgdtbeyathevmye', 'no-brand', '120', 'HOUSEHOLD', '20000', 'img/products/thgste006gtecwtrgdtbeyathevmye.jpg', 'idshop1', 2),
(7, 'coocker', 'thgste546gtecwtrgdtbeyathevyee', 'prestige', '39', 'HOUSEHOLD', '3000', 'img/products/thgste546gtecwtrgdtbeyathevyee.jpg', 'idshop1', 2),
(8, 'Bedsheet', 'thgste006gtecwtrgdtbeyathevyee', 'no-brand', '100', 'HOUSEHOLD', '700', 'img/products/thgste006gtecwtrgdtbeyathevyee.jpg', 'idshop1', 2),
(9, 'mixer', 'bbgste006gtecwtrgdtbeyathevmye', 'prestige', '50', 'HOUSEHOLD', '2000', 'img/products/bbgste006gtecwtrgdtbeyathevmye.jpg', 'idshop1', 2),
(10, 'mixer', 'cbgste006gtecwtrgdtbeyathevmye', 'philips', '54', 'HOUSEHOLD', '2000', 'img/products/cbgste006gtecwtrgdtbeyathevmye.jpg', 'idshop1', 2),
(11, 'curtain', 'bbgste116gtecwtrgdtbeyathevmye', 'no-brand', '21', 'HOUSEHOLD', '1800', 'img/products/bbgste116gtecwtrgdtbeyathevmye.jpg', 'idshop1', 2),
(12, 'fryer', 'frgste116gtecwtrgdtbeyathevmye', 'Ivation', '20', 'HOUSEHOLD', '25000', 'img/products/frgste116gtecwtrgdtbeyathevmye.jpg', 'idshop2', 1),
(13, 'glass', 'frgste030gtecwtrgdtbeyathevmye', 'no-brand', '500', 'HOUSEHOLD', '75', 'img/products/frgste030gtecwtrgdtbeyathevmye.jpg', 'idshop2', 1),
(14, 'Gas stoves', 'fkgste030gtecwtrgdtbeyathevmye', 'no-brand', '20', 'HOUSEHOLD', '3000', 'img/products/fkgste030gtecwtrgdtbeyathevmye.jpg', 'idshop2', 1),
(15, 'spoon', 'fkccte030gtecwtrgdtbeyathevmye', 'no-brand', '520', 'HOUSEHOLD', '150', 'img/products/fkccte030gtecwtrgdtbeyathevmye.jpg', 'idshop2', 1),
(16, 'pan', 'fkccte030gtecwtrgdtbeyathevwye', 'prestige', '40', 'HOUSEHOLD', '3000', 'img/products/fkccte030gtecwtrgdtbeyathevwye.jpg', 'idshop2', 1),
(17, 'knife', 'fkccte030gtecwtrgdtbeyathevwy0', 'no-brand', '90', 'HOUSEHOLD', '60', 'img/products/fkccte030gtecwtrgdtbeyathevwy0.jpg', 'idshop2', 1),
(18, 'coocker', 'fkccte030gtecwtrgdtbeyathevwy2', 'hiwkins', '20', 'HOUSEHOLD', '2000', 'img/products/fkccte030gtecwtrgdtbeyathevwy2.jpg', 'idshop3', 4),
(19, 'mixer', 'fkccte030gtecwtrgdtbeyathevwy3', 'havells', '30', 'HOUSEHOLD', '2500', 'img/products/fkccte030gtecwtrgdtbeyathevwy3.jpg', 'idshop3', 4),
(20, 'curtain', 'fkccte030gtecwtrgdtbeyathevwy4', 'no-brand', '60', 'HOUSEHOLD', '1800', 'img/products/fkccte030gtecwtrgdtbeyathevwy4.jpg', 'idshop3', 4),
(21, 'spoon', 'fkccte030gtecwtrgdtbeyathevwy5', 'no-brand', '800', 'HOUSEHOLD', '180', 'img/products/fkccte030gtecwtrgdtbeyathevwy5.jpg', 'idshop3', 4),
(22, 'Bedsheet', 'fkccte030gtecwtrgdtbeyathevwy6', 'no-brand', '100', 'HOUSEHOLD', '350', 'img/products/fkccte030gtecwtrgdtbeyathevwy6.jpg', 'idshop3', 4),
(23, 'pan', 'fkccte030gtecwtrgdtbeyathevwy7', 'prestige', '50', 'HOUSEHOLD', '2200', 'img/products/fkccte030gtecwtrgdtbeyathevwy7.jpg', 'idshop3', 4),
(24, 'fryer', 'fkccte030gtecwtrgdtbeyathevwy8', 'Ivation', '30', 'HOUSEHOLD', '2500', 'img/products/fkccte030gtecwtrgdtbeyathevwy8.jpg', 'idshop4', 3),
(25, 'coocker', 'fkccte030gtecwtrgdtbeyathevwy9', 'united', '20', 'HOUSEHOLD', '3000', 'img/products/fkccte030gtecwtrgdtbeyathevwy9.jpg', 'idshop4', 3),
(26, 'mixer', 'fkccte030gtecwtrgdtbeyathevw10', 'bajaj', '51', 'HOUSEHOLD', '5600', 'img/products/fkccte030gtecwtrgdtbeyathevw10.jpg', 'idshop4', 3),
(27, 'spoon', 'fkccte030gtecwtrgdtbeyathevw11', 'no-brand', '401', 'HOUSEHOLD', '860', 'img/products/fkccte030gtecwtrgdtbeyathevw11.jpg', 'idshop4', 3),
(28, 'Gas stoves', 'fkccte030gtecwtrgdtbeyathevw12', 'prestige', '50', 'HOUSEHOLD', '60000', 'img/products/fkccte030gtecwtrgdtbeyathevw12.jpg', 'idshop4', 3),
(29, 'pan', 'fkccte030gtecwtrgdtbeyathevw13', 'no-brand', '60', 'HOUSEHOLD', '5000', 'img/products/fkccte030gtecwtrgdtbeyathevw13.jpg', 'idshop4', 3),
(30, 'fryer', 'fkccte030gtecwtrgdtbeyathevw14', 'prestige', '50', 'HOUSEHOLD', '5000', 'img/products/fkccte030gtecwtrgdtbeyathevw14.jpg', 'idshop5', 5),
(31, 'glass', 'fkccte030gtecwtrgdtbeyathevw15', 'no-brand', '540', 'HOUSEHOLD', '900', 'img/products/fkccte030gtecwtrgdtbeyathevw15.jpg', 'idshop5', 5),
(32, 'Gas stoves', 'fkccte030gtecwtrgdtbeyathevw16', 'prestige', '50', 'HOUSEHOLD', '5800', 'img/products/fkccte030gtecwtrgdtbeyathevw16.jpg', 'idshop5', 5),
(33, 'spoon', 'fkccte030gtecwtrgdtbeyathevw17', 'no-brand', '80', 'HOUSEHOLD', '758', 'img/products/fkccte030gtecwtrgdtbeyathevw17.jpg', 'idshop5', 5),
(34, 'pan', 'fkccte030gtecwtrgdtbeyathevw18', 'ucook', '54', 'HOUSEHOLD', '7000', 'img/products/fkccte030gtecwtrgdtbeyathevw18.jpg', 'idshop5', 5),
(35, 'coocker', 'fkccte030gtecwtrgdtbeyathevw19', 'jaipan', '40', 'HOUSEHOLD', '6080', 'img/products/fkccte030gtecwtrgdtbeyathevw19.jpg', 'idshop5', 5),
(36, 'mixer', 'fkccte030gtecwtrgdtbeyathevw21', 'havells', '50', 'HOUSEHOLD', '6400', 'img/products/fkccte030gtecwtrgdtbeyathevw21.jpg', 'idshop6', 6),
(37, 'knife', 'fkccte030gtecwtrgdtbeyathevw22', 'no-brand', '850', 'HOUSEHOLD', '1000', 'img/products/fkccte030gtecwtrgdtbeyathevw22.jpg', 'idshop6', 6),
(38, 'furnitures', 'fkccte030gtecwtrgdtbeyathevw23', 'no-brand', '64', 'HOUSEHOLD', '90000', 'img/products/fkccte030gtecwtrgdtbeyathevw23.jpg', 'idshop6', 6),
(39, 'curtain', 'fkccte030gtecwtrgdtbeyathevw24', 'no-brand', '85', 'HOUSEHOLD', '8000', 'img/products/fkccte030gtecwtrgdtbeyathevw24.jpg', 'idshop6', 6),
(40, 'coocker', 'fkccte030gtecwtrgdtbeyathevw25', 'bajaj', '87', 'HOUSEHOLD', '5800', 'img/products/fkccte030gtecwtrgdtbeyathevw25.jpg', 'idshop6', 6),
(41, 'Bedsheet', 'fkccte030gtecwtrgdtbeyathevw26', 'no-brand', '540', 'HOUSEHOLD', '650', 'img/products/fkccte030gtecwtrgdtbeyathevw26.jpg', 'idshop6', 6),
(42, 'coocker', '0tNVrAYbFAXRrEgmLtwaAo7uzRZREW', 'ucook', '54', 'HOUSEHOLD', '2489', 'img/products/0tNVrAYbFAXRrEgmLtwaAo7uzRZREW.jpg', 'idshop7', 7),
(43, 'mixer', 'UnfsRgjYklw7Wj0VMVqEUi236ZQkNT', 'philips', '47', 'HOUSEHOLD', '4500', 'img/products/UnfsRgjYklw7Wj0VMVqEUi236ZQkNT.jpg', 'idshop7', 7),
(44, 'fryer', 'ZUVDJImvKpPhmiaqk5yGW32wqghCma', 'ucook', '', 'HOUSEHOLD', '5800', 'img/products/ZUVDJImvKpPhmiaqk5yGW32wqghCma.jpg', 'idshop7', 7),
(45, 'glass', 'UYHD41CFC5RTw2laZ79Nuz5UqUzoaI', 'no-brand', '540', 'HOUSEHOLD', '850', 'img/products/UYHD41CFC5RTw2laZ79Nuz5UqUzoaI.jpg', 'idshop7', 7),
(46, 'gas stoves', '0r0U5QxXWGkuj74gK3PWgDQDSG4qGq', 'no-brand', '58', 'HOUSEHOLD', '6800', 'img/products/0r0U5QxXWGkuj74gK3PWgDQDSG4qGq.jpg', 'idshop7', 7),
(47, 'spoon', 'MSAQmLSxWtbY3WmahyJ2cHZ3pduJcy', 'no-brand', '587', 'HOUSEHOLD', '980', 'img/products/MSAQmLSxWtbY3WmahyJ2cHZ3pduJcy.jpg', 'idshop7', 7),
(48, 'mixer', '4VgJAPeQZNmQbAHIbNvPz7gQvjy48A', 'philips', '84', 'HOUSEHOLD', '8500', 'img/products/4VgJAPeQZNmQbAHIbNvPz7gQvjy48A.jpg', 'idshop8', 8),
(49, 'knife', 'd0s4XYUgR7Zuyzq4eyCk4TsBzQVqRT', 'no-brand', '98', 'HOUSEHOLD', '980', 'img/products/d0s4XYUgR7Zuyzq4eyCk4TsBzQVqRT.jpg', 'idshop8', 8),
(50, 'furniture', '5mWLnClrjA3zU8QZDbBxyx2g8aMIxs', 'no-brand', '98', 'HOUSEHOLD', '8900', 'img/products/5mWLnClrjA3zU8QZDbBxyx2g8aMIxs.jpg', 'idshop8', 8),
(51, 'curtain', 'kEq8zRJy2o80fzEwVpZrAAQH4py3gc', 'no-brand', '98', 'HOUSEHOLD', '960', 'img/products/kEq8zRJy2o80fzEwVpZrAAQH4py3gc.jpg', 'idshop8', 8),
(52, 'coocker', 'AHgQa87t6sOCzLWAGIw6nroquvplQc', 'united', '98', 'HOUSEHOLD', '3200', 'img/products/AHgQa87t6sOCzLWAGIw6nroquvplQc.jpg', 'idshop8', 8),
(53, 'bedsheet', 'Ul5QYOykjjK8A6rLxMQ5sN9vkAMBc8', 'no-brand', '89', 'HOUSEHOLD', '982', 'img/products/Ul5QYOykjjK8A6rLxMQ5sN9vkAMBc8.jpg', 'idshop8', 8),
(56, 'frayer', 'IGSJBXA8UwPf18n5p79e3pRU3KB7ah', 'Ivation', '25', 'HOUSEHOLD', '8500', 'img/products/IGSJBXA8UwPf18n5p79e3pRU3KB7ah.jpg', 'idshop9', 9),
(57, 'glass', 'bZrMPNxIkubwtfsPpJo8MAPLEeY9Yb', 'no-brand', '85', 'HOUSEHOLD', '8900', 'img/products/bZrMPNxIkubwtfsPpJo8MAPLEeY9Yb.jpg', 'idshop9', 9),
(58, 'bedsheet', 'fdvwW6lbWlYjc9TUR5HnVhvb71vF5D', 'no-brand', '87', 'HOUSEHOLD', '985', 'img/products/fdvwW6lbWlYjc9TUR5HnVhvb71vF5D.jpg', 'idshop9', 9),
(59, 'glass', 'C5U59R337Vb6qJFQOToqetkG5Uw0kn', 'no-brand', '850', 'HOUSEHOLD', '758', 'img/products/C5U59R337Vb6qJFQOToqetkG5Uw0kn.jpg', 'idshop9', 9),
(61, 'gas stoves', 'erUvh4EoyKQmnq7j1N2xUqYjQtOfOF', 'no-brand', '20', 'HOUSEHOLD', '5800', 'img/products/erUvh4EoyKQmnq7j1N2xUqYjQtOfOF.jpg', 'idshop9', 9),
(63, 'pan', 'yTXqCzocHjJxyLGVQ53Zj7pa1sVDA5', 'prestige', '45', 'HOUSEHOLD', '870', 'img/products/yTXqCzocHjJxyLGVQ53Zj7pa1sVDA5.jpg', 'idshop9', 9),
(65, 'mixer', 'H9a9VZWsHhWTNp9feyZDHLdwxSLw1J', 'philips', '65', 'HOUSEHOLD', '5860', 'img/products/H9a9VZWsHhWTNp9feyZDHLdwxSLw1J.jpg', 'idshop10', 10),
(66, 'knife', 'glRMROSdZPzX8L72FZ7nm2ESeMTJsY', 'no-brand', '78', 'HOUSEHOLD', '989', 'img/products/glRMROSdZPzX8L72FZ7nm2ESeMTJsY.jpg', 'idshop10', 10),
(67, 'furniture', 'UWsO1CG5GN1RUrBAhpuGQIaaof4Ugp', 'no-brand', '68', 'HOUSEHOLD', '8954', 'img/products/UWsO1CG5GN1RUrBAhpuGQIaaof4Ugp.jpg', 'idshop10', 10),
(68, 'curtain', '0BRqKritZlS7l7H0EDqE50eVHilgmB', 'no-brand', '87', 'HOUSEHOLD', '897', 'img/products/0BRqKritZlS7l7H0EDqE50eVHilgmB.jpg', 'idshop10', 10),
(69, 'curtain', 'WvLVolxPjlZBTGrc2cmu1wgX5cU63v', 'no-brand', '89', 'HOUSEHOLD', '984', 'img/products/WvLVolxPjlZBTGrc2cmu1wgX5cU63v.jpg', 'idshop10', 10),
(70, 'coocker', 'nIkeuc2np1cYYlJ6np5vMsyrkMddvF', 'hiwkins', '24', 'HOUSEHOLD', '5000', 'img/products/nIkeuc2np1cYYlJ6np5vMsyrkMddvF.jpg', 'idshop10', 10),
(71, 'bedsheet', 'iblL0noGs4uuWoVxYdXsUNa4Yyk3tB', 'no-brand', '30', 'HOUSEHOLD', '798', 'img/products/iblL0noGs4uuWoVxYdXsUNa4Yyk3tB.jpg', 'idshop10', 10),
(72, 'Trimmer', 's36nznsdM0YCml3uF4hICc8AvY4keS', 'philips', '57', 'ELECTRONICS', '1500', 'img/products/s36nznsdM0YCml3uF4hICc8AvY4keS.jpg', 'idshop1', 2),
(73, 'mobile', 'xnGyfWD4grEuME9fLtoMWsAh2zY7Rm', 'smasung', '91', 'ELECTRONICS', '8000', 'img/products/xnGyfWD4grEuME9fLtoMWsAh2zY7Rm.jpg', 'idshop1', 2),
(74, 'mobile', 'ryQOggasl3roOYy0aipznRggbptGAM', 'apple', '20', 'ELECTRONICS', '65000', 'img/products/ryQOggasl3roOYy0aipznRggbptGAM.jpg', 'idshop1', 2),
(75, 'camera', 'X3YYIbCr6KoZA0JGa8n0g0IFR7iiJo', 'kodak', '44', 'ELECTRONICS', '100000', 'img/products/X3YYIbCr6KoZA0JGa8n0g0IFR7iiJo.jpg', 'idshop1', 2),
(76, 'Tv', 'eVm2yLeNvRmRyv7ntmPEdPnBRm748l', 'samsung', '11', 'ELECTRONICS', '40000', 'img/products/eVm2yLeNvRmRyv7ntmPEdPnBRm748l.jpg', 'idshop1', 2),
(77, 'Tablet', 'JZ0vVpQseaOeMIUdVWpirrOHoTTi0W', 'apple', '14', 'ELECTRONICS', '55000', 'img/products/JZ0vVpQseaOeMIUdVWpirrOHoTTi0W.jpg', 'idshop1', 2),
(78, 'Desktop ', 'OngbpOWDCsuZk2urpYNfC05ZCXmJ2v', 'HP', '34', 'COMPUTER', '20000', 'img/products/OngbpOWDCsuZk2urpYNfC05ZCXmJ2v.jpg', 'idshop1', 2),
(79, 'Lap', 'ZHW55vsxJexHRU3UoIZGrBSzcnygHN', 'ASUS', '65', 'COMPUTER', '21300', 'img/products/ZHW55vsxJexHRU3UoIZGrBSzcnygHN.jpg', 'idshop1', 2),
(80, 'Speaker ', 'bpKSXZOA452IAPnJ59dtV9VvqX4p4W', 'Index', '45', 'COMPUTER', '790', 'img/products/bpKSXZOA452IAPnJ59dtV9VvqX4p4W.jpg', 'idshop1', 2),
(82, 'Power bank', 'hkH1HpWE94TymQLAUJvhlzlsHEn5AL', 'Mi', '15', 'GADGETS', '800', 'img/products/hkH1HpWE94TymQLAUJvhlzlsHEn5AL.jpg', 'idshop1', 2),
(83, 'USB hard-disk', 'OKWPfSe6ltg9H2RBgMyG4Z7THvNAOO', 'Mi', '20', 'GADGETS', '2000', 'img/products/OKWPfSe6ltg9H2RBgMyG4Z7THvNAOO.jpg', 'idshop1', 2),
(84, 'Charger', 'smdkMXL5rKqjSMrzN6ddKidZdVizbE', 'Samsung', '25', 'GADGETS', '150', 'img/products/smdkMXL5rKqjSMrzN6ddKidZdVizbE.jpg', 'idshop1', 2),
(85, 'Headset', 'cTox7TJ9g8bt7aORgchlH3Ngu82Ily', 'Mi', '', 'GADGETS', '500', 'img/products/cTox7TJ9g8bt7aORgchlH3Ngu82Ily.jpg', 'idshop1', 2),
(86, 'Web Cam', 'Lglv8jvXUz2WiCLFmQOAkJJffadkzi', 'CMIKZ', '2', 'COMPUTER', '703', 'img/products/Lglv8jvXUz2WiCLFmQOAkJJffadkzi.jpg', 'idshop1', 2),
(87, 'Vr headset', 'HJTRSPRPhz6etTEC9Ta9wSVKosCaYD', 'Vrbox', '10', 'GADGETS', '650', 'img/products/HJTRSPRPhz6etTEC9Ta9wSVKosCaYD.jpg', 'idshop1', 2),
(88, 'Keyboard ', 'Y2kPQB513q5uPTtoTEGjd3aujlTM1u', 'Logitech ', '4', 'COMPUTER', '807', 'img/products/Y2kPQB513q5uPTtoTEGjd3aujlTM1u.jpg', 'idshop1', 2),
(89, 'Keyboard ', '9Gu5MABe7ktF1kz4fYNeEePxO1UmiC', 'ASUS ', '1', 'COMPUTER', '800', 'img/products/9Gu5MABe7ktF1kz4fYNeEePxO1UmiC.jpg', 'idshop1', 2),
(90, 'Power bank', 'glyCQHVmFQVHMdkyTHoHhIr1YHbb1L', 'Intex', '15', 'GADGETS', '1000', 'img/products/glyCQHVmFQVHMdkyTHoHhIr1YHbb1L.jpg', 'idshop2', 1),
(91, 'USB hard-disk', 'xCyusNmGTH9aRQdIstv09AZhuHMhhA', 'Transcend', '10', 'GADGETS', '2500', 'img/products/xCyusNmGTH9aRQdIstv09AZhuHMhhA.jpg', 'idshop2', 1),
(92, 'Charger', 'aE0oYNmJTOtj7m6zWTG97qrkqFfIer', 'Nokia', '25', 'GADGETS', '100', 'img/products/aE0oYNmJTOtj7m6zWTG97qrkqFfIer.jpg', 'idshop2', 1),
(93, 'Desktop ', 'nyrL5yFPIVXTp53eWkqdF8htoMCquY', 'Dell', '33', 'COMPUTER', '26000', 'img/products/nyrL5yFPIVXTp53eWkqdF8htoMCquY.jpg', 'idshop2', 1),
(94, 'Adapter', '9rjEx5e8kmtN1u8BznzmCeBrLptGML', 'wemo', '7', 'ELECTRONICS', '5012', 'img/products/9rjEx5e8kmtN1u8BznzmCeBrLptGML.jpg', 'idshop2', 1),
(95, 'Headset', 'UFmNxeCp3UYa9s4N4dHfmd7hXwKzHI', 'Skullcandy', '20', 'GADGETS', '800', 'img/products/UFmNxeCp3UYa9s4N4dHfmd7hXwKzHI.jpg', 'idshop2', 1),
(96, 'Laptop ', 'JPucLanTs07v2l85jsiqawMStPrxaj', 'Mac', '12', 'COMPUTER', '78000', 'img/products/JPucLanTs07v2l85jsiqawMStPrxaj.jpg', 'idshop2', 1),
(97, 'Vr headset', '4QSl2haYVNrqNLshcSg08T0eTDbfmd', 'Vrbox', '10', 'GADGETS', '500', 'img/products/4QSl2haYVNrqNLshcSg08T0eTDbfmd.jpg', 'idshop2', 1),
(98, 'Power bank', '6PdEjFsGlmovxfmKXOetOo4OFyvrQN', 'Incharge', '30', 'GADGETS', '700', 'img/products/6PdEjFsGlmovxfmKXOetOo4OFyvrQN.jpg', 'idshop3', 4),
(99, 'Solar', 'AS5hTMHQrRUlqgbbR6VmngVJIDn5JY', 'No Brand', '4', 'ELECTRONICS', '12000', 'img/products/AS5hTMHQrRUlqgbbR6VmngVJIDn5JY.jpg', 'idshop2', 1),
(100, 'Laptop ', 'mp5nO3aaM3Ygn6DuFzolIvMaPcQ5U5', 'Hp', '30', 'COMPUTER', '30000', 'img/products/mp5nO3aaM3Ygn6DuFzolIvMaPcQ5U5.jpg', 'idshop2', 1),
(101, 'USB hard-disk', 'ZSwqECZjrHfpBEuFSrZjFFrX9QJLhe', 'Western', '10', 'GADGETS', '2000', 'img/products/ZSwqECZjrHfpBEuFSrZjFFrX9QJLhe.jpg', 'idshop3', 4),
(102, 'Tablet', 'iWcCBJIQS2clQeQYPpmpMYDoqoOT5A', 'applet', '2', 'ELECTRONICS', '52000', 'img/products/iWcCBJIQS2clQeQYPpmpMYDoqoOT5A.jpg', 'idshop2', 1),
(103, 'Charger', 'cBozpWO1lSWj25L6TQkA6GNdYLKJkr', 'Apple', '15', 'GADGETS', '1000', 'img/products/cBozpWO1lSWj25L6TQkA6GNdYLKJkr.jpg', 'idshop3', 4),
(105, 'Trimmer', 'kT9P6UZuOsvVXxh5DByV1IsOBVD2sN', 'Toshiko', '6000', 'HOUSEHOLD', '2000', 'img/products/kT9P6UZuOsvVXxh5DByV1IsOBVD2sN.jpg', 'idshop2', 1),
(106, 'Headset', 'Jg7gGLSG5knkJZZeERGEbmjDktt4eK', 'Beats', '20', 'GADGETS', '2000', 'img/products/Jg7gGLSG5knkJZZeERGEbmjDktt4eK.jpg', 'idshop3', 4),
(107, 'Webcam ', 'Lr4EN6WX5RLwhyiKQuD6uL0vZT8b8v', 'Enter', '1', 'COMPUTER', '700', 'img/products/Lr4EN6WX5RLwhyiKQuD6uL0vZT8b8v.jpg', 'idshop2', 1),
(108, 'Vr headset', '2WDfAXU3Dgp2MWh8HfXWIMkNA0l6rb', 'Vrbox', '15', 'GADGETS', '500', 'img/products/2WDfAXU3Dgp2MWh8HfXWIMkNA0l6rb.jpg', 'idshop3', 4),
(109, 'mobile', 'z0wTPnuVoymt3bmwzgafzoiKSC6Lp7', 'samsung', '10', 'ELECTRONICS', '45000', 'img/products/z0wTPnuVoymt3bmwzgafzoiKSC6Lp7.jpg', 'idshop2', 1),
(110, 'Power bank', 'whuBEiFPtsTrIgxmLdV9zEEmPtyFzt', 'Intex', '20', 'GADGETS', '1000', 'img/products/whuBEiFPtsTrIgxmLdV9zEEmPtyFzt.jpg', 'idshop4', 3),
(111, 'Mouse ', 'mNHvCOqCie4N91lr7Y2GU4pmS0iw3K', 'T', '32', 'COMPUTER', '700', 'img/products/mNHvCOqCie4N91lr7Y2GU4pmS0iw3K.jpg', 'idshop2', 1),
(112, 'USB hard-disk', 'rx2Q7rMVt8NprPvdWo4gYaXMoVx8FS', 'Mi', '20', 'GADGETS', '2000', 'img/products/rx2Q7rMVt8NprPvdWo4gYaXMoVx8FS.jpg', 'idshop4', 3),
(113, 'Keyboard ', 'RjQWBJIjAabuvCLHNCNJZaZVTHyhNi', 'Iball', ' 3', 'COMPUTER', '765', 'img/products/RjQWBJIjAabuvCLHNCNJZaZVTHyhNi.jpg', 'idshop2', 1),
(114, 'Charger', 'EoxR08BIZtKbPBqFzf5VFSUigkH4dM', 'Mi', '20', 'GADGETS', '150', 'img/products/EoxR08BIZtKbPBqFzf5VFSUigkH4dM.jpg', 'idshop4', 3),
(115, 'Headset', 'iY0peHb7ogrLAbLzqpr73CunfOQJS5', 'Skullcandy', '15', 'GADGETS', '1000', 'img/products/iY0peHb7ogrLAbLzqpr73CunfOQJS5.jpg', 'idshop4', 3),
(116, 'Vr headset', 'pUWtyJAuHFmscE1uoRY1YtNYYMR7Y0', 'Vrbox', '10', 'GADGETS', '500', 'img/products/pUWtyJAuHFmscE1uoRY1YtNYYMR7Y0.jpg', 'idshop4', 3),
(117, 'Power bank', 'Uu7xKIvEL9VbbI8sQPHOMqA6db6yiy', 'Intex', '25', 'GADGETS', '1000', 'img/products/Uu7xKIvEL9VbbI8sQPHOMqA6db6yiy.jpg', 'idshop5', 5),
(118, 'USB hard-disk', 'CnUyRtirYZ7ksjYtOnkNojgchfZ8mX', 'Asus', '15', 'GADGETS', '2500', 'img/products/CnUyRtirYZ7ksjYtOnkNojgchfZ8mX.jpg', 'idshop5', 5),
(119, 'Desktop ', 'FSadKbmlTlPExEgXkPdpLShFby0TDd', 'Mac', '3', 'COMPUTER', '100000', 'img/products/FSadKbmlTlPExEgXkPdpLShFby0TDd.jpg', 'idshop3', 4),
(120, 'Charger', 'fEC6BeQkxquJU0lGH9iuSiFSdzAMQo', 'Samsung', '20', 'GADGETS', '200', 'img/products/fEC6BeQkxquJU0lGH9iuSiFSdzAMQo.jpg', 'idshop5', 5),
(121, 'Headset', 'fY7MRX9mSxVe0YpnuZEFee3xYVa4Hz', 'Philips', '20', 'GADGETS', '700', 'img/products/fY7MRX9mSxVe0YpnuZEFee3xYVa4Hz.jpg', 'idshop5', 5),
(122, 'Laptop ', 'jpx1UaPkN8zRVITga1ecI8g7v97NFb', 'Samsung', '2', 'COMPUTER', '30000', 'img/products/jpx1UaPkN8zRVITga1ecI8g7v97NFb.jpg', 'idshop3', 4),
(123, 'Headset', 'tb3uBicMpA2RmD37duxEBBh5YxTPgM', 'Samsung', '10', 'GADGETS', '400', 'img/products/tb3uBicMpA2RmD37duxEBBh5YxTPgM.jpg', 'idshop5', 5),
(124, 'Vr headset', '8Zl3xcwQEuQMPi6NMUb7HAqXMIdLQz', 'Vrbox', '10', 'GADGETS', '500', 'img/products/8Zl3xcwQEuQMPi6NMUb7HAqXMIdLQz.jpg', 'idshop5', 5),
(125, 'Speaker ', 'z6qCXx3KswSgWk5ry1QChONfAba8jP', 'Logitech ', '10', 'COMPUTER', '700', 'img/products/z6qCXx3KswSgWk5ry1QChONfAba8jP.jpg', 'idshop3', 4),
(126, 'Tv', 'oNxvPrsAiMZY17rvzsRISW90tB7Ger', 'Sony', '1', 'ELECTRONICS', '36000', 'img/products/oNxvPrsAiMZY17rvzsRISW90tB7Ger.jpg', 'idshop2', 1),
(127, 'Power bank', 'Gj6QwQ2SbWe1BLFRJZGXpsPH81f8US', 'Mi', '15', 'GADGETS', '150', 'img/products/Gj6QwQ2SbWe1BLFRJZGXpsPH81f8US.jpg', 'idshop6', 6),
(128, 'Webcam ', '462GcEV2Ysttcoty4bHmFAElsSU2EK', 'Iball', '23', 'COMPUTER', '790', 'img/products/462GcEV2Ysttcoty4bHmFAElsSU2EK.jpg', 'idshop3', 4),
(129, 'mobile', 'cWxkJphSMapHoqGOOaNsQ2GTAFPKKw', 'LG', '8', 'ELECTRONICS', '65000', 'img/products/cWxkJphSMapHoqGOOaNsQ2GTAFPKKw.jpg', 'idshop2', 1),
(130, 'USB hard-disk', 'yZA50vgQQ3YpVU8PaiRpvzyLH3VPRA', 'Western', '20', 'GADGETS', '2000', 'img/products/yZA50vgQQ3YpVU8PaiRpvzyLH3VPRA.jpg', 'idshop6', 6),
(131, 'Trimmer', 'Kc3RKNAfslonwz5F2WvKLhalooxvWP', 'Toshiko', '25', 'ELECTRONICS', '3000', 'img/products/Kc3RKNAfslonwz5F2WvKLhalooxvWP.jpg', 'idshop3', 4),
(132, 'Charger', 'VDet84UBEdnDcpKDUj6M2YIbZbM7S1', 'Mi', '25', 'GADGETS', '150', 'img/products/VDet84UBEdnDcpKDUj6M2YIbZbM7S1.jpg', 'idshop6', 6),
(133, 'Mouse ', 'mBbssIiuBuqPv1BbTkbAhA27ha9xi4', 'Dell', '32', 'COMPUTER', '670', 'img/products/mBbssIiuBuqPv1BbTkbAhA27ha9xi4.jpg', 'idshop3', 4),
(134, 'Headset', 'qJRtq48l67OAA0Y4y2fgpVQ4gjWamB', 'Samsung', '25', 'GADGETS', '500', 'img/products/qJRtq48l67OAA0Y4y2fgpVQ4gjWamB.jpg', 'idshop6', 6),
(135, 'Vr headset', 'jWtRhchz53JvL8WrXKCKcsNTmnyc7i', 'Vrbox', '20', 'GADGETS', '500', 'img/products/jWtRhchz53JvL8WrXKCKcsNTmnyc7i.jpg', 'idshop6', 6),
(136, 'mobile', '0pzBvA6MqXQpnLkvBuOtUj3s5Kw0zn', 'JIO', '85', 'ELECTRONICS', '41000', 'img/products/0pzBvA6MqXQpnLkvBuOtUj3s5Kw0zn.jpg', 'idshop3', 4),
(137, 'camera', 'JZy436hzXW4NIT6OHTJS0qtrof9B00', 'canaon', '6', 'ELECTRONICS', '64000', 'img/products/JZy436hzXW4NIT6OHTJS0qtrof9B00.jpg', 'idshop3', 4),
(138, 'Keyboard ', '0TWrvUYyFr5xH2SNuqPk379QmK2xSm', 'ASUS ', '2', 'COMPUTER', '50000', 'img/products/0TWrvUYyFr5xH2SNuqPk379QmK2xSm.jpg', 'idshop2', 1),
(139, 'Power bank', 'yOEMhNQcovpL9BaTf5dmRgkzrkLesD', 'Intex', '20', 'GADGETS', '800', 'img/products/yOEMhNQcovpL9BaTf5dmRgkzrkLesD.jpg', 'idshop7', 7),
(140, 'Tablet', 'qEFC77kqBVV2Kq4mCXGNxYoA6GKfd3', 'apple', '10', 'ELECTRONICS', '4500', 'img/products/qEFC77kqBVV2Kq4mCXGNxYoA6GKfd3.jpg', 'idshop3', 4),
(141, 'USB hard-disk', 'AANabiKi4bfUBCGV8ipWMjgPMlzil9', 'Asus', '15', 'GADGETS', '2000', 'img/products/AANabiKi4bfUBCGV8ipWMjgPMlzil9.jpg', 'idshop7', 7),
(142, 'Charger', '4H27zMU92murK11QG3NcNytYURmrmj', 'Nokia', '20', 'GADGETS', '100', 'img/products/4H27zMU92murK11QG3NcNytYURmrmj.jpg', 'idshop7', 7),
(143, 'Tv', 'UKXYeygrkG1nyo0Bvd53SHE9MCGGsX', 'Sony', '30', 'ELECTRONICS', '12000', 'img/products/UKXYeygrkG1nyo0Bvd53SHE9MCGGsX.jpg', 'idshop3', 4),
(144, 'Headset', 'nTfjkKejjTKprsrjfWK4gNcqEyaG52', 'Mi', '15', 'GADGETS', '400', 'img/products/nTfjkKejjTKprsrjfWK4gNcqEyaG52.jpg', 'idshop7', 7),
(145, 'Solar', 'VMkNgKRo6YwUy6VwbtzqKYmA2CUYNg', 'No Brand', '6', 'ELECTRONICS', '100000', 'img/products/VMkNgKRo6YwUy6VwbtzqKYmA2CUYNg.jpg', 'idshop3', 4),
(146, 'Vr headset', 'K5KfHpyme1O8sxp0TaePjNtX9irIY1', 'Vrbox', '15', 'GADGETS', '500', 'img/products/K5KfHpyme1O8sxp0TaePjNtX9irIY1.jpg', 'idshop7', 7),
(147, 'Desktop ', 'IrfcjxpA6uEQ0qYWSWGuHTXuMkSlw0', 'Samsung ', '5', 'COMPUTER', '40000', 'img/products/IrfcjxpA6uEQ0qYWSWGuHTXuMkSlw0.jpg', 'idshop4', 3),
(148, 'Power bank', 'GWJt6UMQdR2sMD5tyeMYbyiro4NYn9', 'Mi', '10', 'GADGETS', '1000', 'img/products/GWJt6UMQdR2sMD5tyeMYbyiro4NYn9.jpg', 'idshop8', 8),
(149, 'Adapter', 'bK0JO3Q6DN2IBLCIAjBjcBKF38VdKW', 'v globe', '20', 'ELECTRONICS', '1400', 'img/products/bK0JO3Q6DN2IBLCIAjBjcBKF38VdKW.jpg', 'idshop4', 3),
(150, 'Laptop ', 'snHplWYCniipFRNGtjTymLg0V3DCJ5', 'Logitech ', '5', 'COMPUTER', '45000', 'img/products/snHplWYCniipFRNGtjTymLg0V3DCJ5.jpg', 'idshop4', 3),
(151, 'USB hard-disk', '2sWiMh20AmUlLlNdE39p8qckQRS1yY', 'Curve', '20', 'GADGETS', '3000', 'img/products/2sWiMh20AmUlLlNdE39p8qckQRS1yY.jpg', 'idshop8', 8),
(152, 'Solar', 'f0rTNJGEV59lRjW1dc6qyYHTx8djnF', 'No Brand', '10', 'ELECTRONICS', '15200', 'img/products/f0rTNJGEV59lRjW1dc6qyYHTx8djnF.jpg', 'idshop4', 3),
(153, 'Charger', 'DfrTrLqRmxm1nmrmikiYPZRMtD7mZD', 'Samsung', '30', 'GADGETS', '150', 'img/products/DfrTrLqRmxm1nmrmikiYPZRMtD7mZD.jpg', 'idshop8', 8),
(154, 'Tablet', 'hq0jxz5sI8PdzAfArWDf8rOBpItLaP', 'apple', '23', 'ELECTRONICS', '68250', 'img/products/hq0jxz5sI8PdzAfArWDf8rOBpItLaP.jpg', 'idshop4', 3),
(155, 'Headset', 'dVGeFuhwAVjDDVofDYzeiLQ2rUbm7V', 'Mi', '15', 'GADGETS', '500', 'img/products/dVGeFuhwAVjDDVofDYzeiLQ2rUbm7V.jpg', 'idshop8', 8),
(156, 'Speaker ', 'zcshCOdAqBTJ0zANf369CsVTtQW6tF', 'Creative ', '6', 'COMPUTER', '1200', 'img/products/zcshCOdAqBTJ0zANf369CsVTtQW6tF.jpg', 'idshop4', 3),
(157, 'Vr headset', '3Bq0TchWdRi7d4s0h74rwcRJwIBpJ9', 'Vrbox', '20', 'GADGETS', '1000', 'img/products/3Bq0TchWdRi7d4s0h74rwcRJwIBpJ9.jpg', 'idshop8', 8),
(158, 'Tv', 'zJ3UwjEnIKmeFUlArw40XOYjp1Wj0J', 'samsung', '5', 'ELECTRONICS', '37450', 'img/products/zJ3UwjEnIKmeFUlArw40XOYjp1Wj0J.jpg', 'idshop4', 3),
(159, 'Power bank', 'WCGowu7d93ijo9ClbPxig5gXYO6c7t', 'Intex', '15', 'GADGETS', '800', 'img/products/WCGowu7d93ijo9ClbPxig5gXYO6c7t.jpg', 'idshop9', 9),
(160, 'USB hard-disk', 'mCTOwlzWcVtyWRVoddIvbxv3kZHslG', 'Mi', '15', 'GADGETS', '2000', 'img/products/mCTOwlzWcVtyWRVoddIvbxv3kZHslG.jpg', 'idshop9', 9),
(161, 'camera', '4rg5KOEQhnY6AxHQ79MLoUccwCVZo5', 'canaon', '15', 'ELECTRONICS', '2487', 'img/products/4rg5KOEQhnY6AxHQ79MLoUccwCVZo5.jpg', 'idshop4', 3),
(162, 'Webcam ', 'b2REkusy4T9XDawdXMh4VUxQN0HJ7a', 'Frontech', '24', 'COMPUTER', '780', 'img/products/b2REkusy4T9XDawdXMh4VUxQN0HJ7a.jpg', 'idshop4', 3),
(163, 'Charger', 'nNKNNE05AdWSl9XOaeWeFtrxcXgNnZ', 'Apple', '10', 'GADGETS', '1000', 'img/products/nNKNNE05AdWSl9XOaeWeFtrxcXgNnZ.jpg', 'idshop9', 9),
(164, 'Headset', 'zAtCuZW9nFUJTzEf95Md5J143q5ZJ6', 'Skullcandy', '10', 'GADGETS', '2000', 'img/products/zAtCuZW9nFUJTzEf95Md5J143q5ZJ6.jpg', 'idshop9', 9),
(165, 'mobile', 'S35zsB3APdD7w2h8nsXUKe01bYPhbW', 'LG', '13', 'ELECTRONICS', '26540', 'img/products/S35zsB3APdD7w2h8nsXUKe01bYPhbW.jpg', 'idshop4', 3),
(166, 'Mouse ', 'kEIZgP6AgIwbKhCPDeMk2kjqUp7FFl', 'Imice', '4', 'COMPUTER', '1300', 'img/products/kEIZgP6AgIwbKhCPDeMk2kjqUp7FFl.jpg', 'idshop4', 3),
(167, 'Trimmer', '745RycMk3Zc5sZIythNffYOxqcCdb0', 'philips', '10', 'ELECTRONICS', '3520', 'img/products/745RycMk3Zc5sZIythNffYOxqcCdb0.jpg', 'idshop5', 5),
(168, 'Vr headset', 'Psx6xhUc7cz5iaD00K9MwxHJKdlGdJ', 'Vrbox', '25', 'GADGETS', '500', 'img/products/Psx6xhUc7cz5iaD00K9MwxHJKdlGdJ.jpg', 'idshop9', 9),
(169, 'mobile', 'bI6WYOmwaByZJ0x81qiffC3Jzc11VZ', 'JIO', '5', 'ELECTRONICS', '26510', 'img/products/bI6WYOmwaByZJ0x81qiffC3Jzc11VZ.jpg', 'idshop5', 5),
(170, 'Power bank', 'ilRYzwtR24MmHqi6FV5fan11qsWCP3', 'Incharge', '10', 'GADGETS', '1000', 'img/products/ilRYzwtR24MmHqi6FV5fan11qsWCP3.jpg', 'idshop10', 10),
(171, 'USB hard-disk', 'XKNHyAlyFWMCP8MMWX0ScGlDeyBumZ', 'Samsung', '20', 'GADGETS', '2500', 'img/products/XKNHyAlyFWMCP8MMWX0ScGlDeyBumZ.jpg', 'idshop10', 10),
(172, 'camera', 'JjGdVacSjAxdjqNXGW3sa9bcdfDjfn', 'canaon', '20', 'ELECTRONICS', '45120', 'img/products/JjGdVacSjAxdjqNXGW3sa9bcdfDjfn.jpg', 'idshop5', 5),
(173, 'Keyboard ', 'nj4taCFWXJWaPo9yXCPKS5JGD9Tfn4', 'ASUS ', '3', 'COMPUTER', '400', 'img/products/nj4taCFWXJWaPo9yXCPKS5JGD9Tfn4.jpg', 'idshop4', 3),
(174, 'Charger', 'L3ci9KA4WHgvNzFqAFbJsHh9q2nMIB', 'Mi', '30', 'GADGETS', '150', 'img/products/L3ci9KA4WHgvNzFqAFbJsHh9q2nMIB.jpg', 'idshop10', 10),
(175, 'Tv', '27I94GXqd81L8LMFTO6c3mO65oj7pf', 'samsung', '24', 'ELECTRONICS', '28540', 'img/products/27I94GXqd81L8LMFTO6c3mO65oj7pf.jpg', 'idshop5', 5),
(176, 'Headset', 'L30QDssG3iTGpqIHy69w0UK0WWZLdb', 'Beats', '15', 'GADGETS', '800', 'img/products/L30QDssG3iTGpqIHy69w0UK0WWZLdb.jpg', 'idshop10', 10),
(177, 'Vr headset', '5HjZvPk4Mx0g5X70mle5RqDmtXlbpG', 'Vrbox', '20', 'GADGETS', '500', 'img/products/5HjZvPk4Mx0g5X70mle5RqDmtXlbpG.jpg', 'idshop10', 10),
(178, 'Desktop ', '7smPCqwzQKISvREixx6DJ9Zyg4WAbm', 'Hp', '2', 'COMPUTER', '34000', 'img/products/7smPCqwzQKISvREixx6DJ9Zyg4WAbm.jpg', 'idshop5', 5),
(179, 'Tablet', 'pidhXxLq5PjfNWpkan6ss1m0Sa0zT7', 'samsung', '16', 'ELECTRONICS', '32540', 'img/products/pidhXxLq5PjfNWpkan6ss1m0Sa0zT7.jpg', 'idshop5', 5),
(180, 'Desktop ', 'vuFINPsnTo5aUSKzjkfu4IcmRCofp6', 'Mac', '23', 'COMPUTER', '78000', 'img/products/vuFINPsnTo5aUSKzjkfu4IcmRCofp6.jpg', 'idshop6', 6),
(181, 'Solar', 'fLnkeyWUvUDr4sQd1OQQyIVhpyriOP', 'No Brand', '32', 'ELECTRONICS', '48200', 'img/products/fLnkeyWUvUDr4sQd1OQQyIVhpyriOP.jpg', 'idshop5', 5),
(183, 'Adapter', 'HZeIPSaizeAsU0TDHrJRYKMJLIFKtT', 'v globe', '10', 'ELECTRONICS', '4150', 'img/products/HZeIPSaizeAsU0TDHrJRYKMJLIFKtT.jpg', 'idshop6', 6),
(184, 'Solar', 'y8op7YWBPYFBln1DtHzyWKWYMnrI0g', 'No Brand', '3', 'ELECTRONICS', '24560', 'img/products/y8op7YWBPYFBln1DtHzyWKWYMnrI0g.jpg', 'idshop6', 6),
(185, 'Desktop ', 'PjPb8rCF1tpJmVB0d8xjLhtLQKPMl1', 'Samsung ', '3', 'COMPUTER', '30000', 'img/products/PjPb8rCF1tpJmVB0d8xjLhtLQKPMl1.jpg', 'idshop7', 7),
(186, 'Tablet', 'tjJh1iRmRxjEa8MXUIVUB7BXLPwmjS', 'samsung', '20', 'ELECTRONICS', '35410', 'img/products/tjJh1iRmRxjEa8MXUIVUB7BXLPwmjS.jpg', 'idshop6', 6),
(187, 'Tv', 'n4AKoOjlJOfnfkQ6yRUoHt7DKwbcP0', 'samsung', '5', 'ELECTRONICS', '35810', 'img/products/n4AKoOjlJOfnfkQ6yRUoHt7DKwbcP0.jpg', 'idshop6', 6),
(188, 'camera', 'JZZrZfh5QxNmJyDlnhzaBBuU2pk950', 'canaon', '11', 'ELECTRONICS', '45810', 'img/products/JZZrZfh5QxNmJyDlnhzaBBuU2pk950.jpg', 'idshop6', 6),
(189, 'mobile', 'VqgCwteNRJnRKbadMrlkLW3eJZVMxW', 'samsung', '10', 'ELECTRONICS', '32450', 'img/products/VqgCwteNRJnRKbadMrlkLW3eJZVMxW.jpg', 'idshop6', 6),
(190, 'Desktop ', 'miEPaGJM6Q6YnmSdBV51xIujyhfxEG', 'Compaq ', '3', 'COMPUTER', '27000', 'img/products/miEPaGJM6Q6YnmSdBV51xIujyhfxEG.jpg', 'idshop8', 8),
(191, 'Trimmer', 'SvnbuT1PYNmY4sWctixHno70KBY6No', 'Toshiko', '3', 'ELECTRONICS', '2400', 'img/products/SvnbuT1PYNmY4sWctixHno70KBY6No.jpg', 'idshop7', 7),
(192, 'Desktop ', '3tmk5TNkGF33wOfG117mmTjq73p3PX', 'ASUS ', '3', 'COMPUTER', '30000', 'img/products/3tmk5TNkGF33wOfG117mmTjq73p3PX.jpg', 'idshop9', 9),
(193, 'mobile', 'RUAwDnl5LftQqnIaX2vdwAVIWNlk2K', 'LG', '5', 'ELECTRONICS', '54100', 'img/products/RUAwDnl5LftQqnIaX2vdwAVIWNlk2K.jpg', 'idshop7', 7),
(194, 'Desktop ', 'rUF2qipMnb1R1rfKCdM8qiIl1E8nYb', 'Mac', '4', 'COMPUTER', '100000', 'img/products/rUF2qipMnb1R1rfKCdM8qiIl1E8nYb.jpg', 'idshop10', 10),
(195, 'camera', '9bkYmtpZ9qszaOvLOITm2FEwquhggC', 'apple', '210', 'ELECTRONICS', '54120', 'img/products/9bkYmtpZ9qszaOvLOITm2FEwquhggC.jpg', 'idshop7', 7),
(196, 'Tv', 'ngSMrGPL4V8wGOgf3IuzW9SdTzlD3K', 'samsung', '4', 'ELECTRONICS', '41502', 'img/products/ngSMrGPL4V8wGOgf3IuzW9SdTzlD3K.jpg', 'idshop7', 7),
(197, 'Tablet', '9EsR6giY5MDEUlPISBLBDlIrqmTiwE', 'apple', '3', 'ELECTRONICS', '4510', 'img/products/9EsR6giY5MDEUlPISBLBDlIrqmTiwE.jpg', 'idshop7', 7),
(198, 'Solar', 'ZTqmdwg1QWHU0eIfUJh26EVq43tu7i', 'No Brand', '12', 'ELECTRONICS', '4510', 'img/products/ZTqmdwg1QWHU0eIfUJh26EVq43tu7i.jpg', 'idshop7', 7),
(199, 'Adapter', 'hpNCoa6N9fdCPoqk9f33B6JfC9JUp0', 'v globe', '12', 'ELECTRONICS', '1450', 'img/products/hpNCoa6N9fdCPoqk9f33B6JfC9JUp0.jpg', 'idshop8', 8),
(200, 'Laptop ', '1c4CXtqgO944xkonqWekkVNsyyYKLN', 'Mac', '1', 'COMPUTER', '110000', 'img/products/1c4CXtqgO944xkonqWekkVNsyyYKLN.jpg', 'idshop5', 5),
(201, 'Adapter', 'WbSbTI341CiC5dCYRkqBbomX87FNS9', 'wemo', '10', 'ELECTRONICS', '1548', 'img/products/WbSbTI341CiC5dCYRkqBbomX87FNS9.jpg', 'idshop8', 8),
(202, 'Solar', 'wr1pds52eaXnGEbXUfFoPBxHPrga4k', 'No Brand', '15', 'ELECTRONICS', '1548', 'img/products/wr1pds52eaXnGEbXUfFoPBxHPrga4k.jpg', 'idshop8', 8),
(203, 'Laptop ', 'QGjjxqzQpFD3kxo9ghK1SonAPNXJ6u', 'Mac', '2', 'COMPUTER', '150000', 'img/products/QGjjxqzQpFD3kxo9ghK1SonAPNXJ6u.jpg', 'idshop6', 6),
(204, 'Tablet', 'r6cStqoJrfG99GnSWiCdkISg8WkCrr', 'samsung', '65', 'ELECTRONICS', '25480', 'img/products/r6cStqoJrfG99GnSWiCdkISg8WkCrr.jpg', 'idshop8', 8),
(205, 'Laptop ', 'wHqkkOvqCFGQhveIPoYSsAZbQBkAwK', 'Mac', '2', 'COMPUTER', '900000', 'img/products/wHqkkOvqCFGQhveIPoYSsAZbQBkAwK.jpg', 'idshop7', 7),
(206, 'Tv', 'KMZPoXiPd7ZhbwBzT2v7mQ3aiCJhnu', 'apple', '10', 'ELECTRONICS', '14580', 'img/products/KMZPoXiPd7ZhbwBzT2v7mQ3aiCJhnu.jpg', 'idshop8', 8),
(207, 'Laptop ', 'AxotHuAeIlytCDoctNuH5y0gjNmDnp', 'Hp', '4', 'COMPUTER', '38000', 'img/products/AxotHuAeIlytCDoctNuH5y0gjNmDnp.jpg', 'idshop8', 8),
(208, 'camera', 'lNb54coWzfuSTE0FCVoxP0FrYqguNz', 'Sony', '30', 'ELECTRONICS', '25480', 'img/products/lNb54coWzfuSTE0FCVoxP0FrYqguNz.jpg', 'idshop8', 8),
(209, 'Remote control toys', 'NFUbQp4Re2FB1J3YVwgseERlFCXEIK', 'No brand', '30', 'TOYS', '300', 'img/products/NFUbQp4Re2FB1J3YVwgseERlFCXEIK.jpg', 'idshop1', 2),
(210, 'Puzzles', 'oWaHgI8QzxvcAPKYZ0gK288pJYdHHj', 'No brand', '20', 'TOYS', '50', 'img/products/oWaHgI8QzxvcAPKYZ0gK288pJYdHHj.jpg', 'idshop1', 2),
(211, 'Laptop ', 'VSy7L2xaLZps8z9vs5N4j8NbpV8Jyz', 'Dell', '23', 'COMPUTER', '23900', 'img/products/VSy7L2xaLZps8z9vs5N4j8NbpV8Jyz.jpg', 'idshop9', 9),
(212, 'Soft toys', 'A3s1nMQTcsySjQoyzdWx6o75zXHUxd', 'No brand', '30', 'TOYS', '150', 'img/products/A3s1nMQTcsySjQoyzdWx6o75zXHUxd.jpg', 'idshop1', 2),
(213, 'Trimmer', 'tlOR49xopHlzC8azXb8v5KdSoGLMrV', 'philips', '5', 'ELECTRONICS', '25410', 'img/products/tlOR49xopHlzC8azXb8v5KdSoGLMrV.jpg', 'idshop9', 9),
(214, 'Laptop ', 'm9myfrLDnlTRdMwes99RGZSmqQMHkA', 'Samsung ', '4', 'COMPUTER', '40000', 'img/products/m9myfrLDnlTRdMwes99RGZSmqQMHkA.jpg', 'idshop9', 9),
(215, 'Doll', 'HOkzZeh2ijEBVJOxIGS8h3xD1FLHtD', 'No brand', '30', 'TOYS', '300', 'img/products/HOkzZeh2ijEBVJOxIGS8h3xD1FLHtD.jpg', 'idshop1', 2),
(216, 'Trimmer', '3vpXGgmL7BONdPwgNsN4V1JMnppl37', 'Toshiko', '6', 'ELECTRONICS', '5241', 'img/products/3vpXGgmL7BONdPwgNsN4V1JMnppl37.jpg', 'idshop9', 9),
(217, 'Sports', 'b5gmNw5VnEtSR3IB2ICisFrB5aAiRh', 'No brand', '20', 'TOYS', '500', 'img/products/b5gmNw5VnEtSR3IB2ICisFrB5aAiRh.jpg', 'idshop1', 2),
(218, 'mobile', 'F8g7aET0x6t6YMWnlwAh3HGbNg9vaH', 'samsung', '5', 'ELECTRONICS', '25410', 'img/products/F8g7aET0x6t6YMWnlwAh3HGbNg9vaH.jpg', 'idshop9', 9),
(219, 'Laptop ', '57h5XG2gwfnwwy388WaD4xu8INKs47', 'Mac', '4', 'COMPUTER', '69000', 'img/products/57h5XG2gwfnwwy388WaD4xu8INKs47.jpg', 'idshop10', 10),
(220, 'camera', 'RXWgrEK2TtnrWZ5lcz8Ggeehuy4Qcs', 'canaon', '5', 'ELECTRONICS', '24518', 'img/products/RXWgrEK2TtnrWZ5lcz8Ggeehuy4Qcs.jpg', 'idshop9', 9),
(221, 'Speaker ', 'vVhkNmtlLT36sGeCfcOoHT8UMxByj2', 'Index', '4', 'COMPUTER', '670', 'img/products/vVhkNmtlLT36sGeCfcOoHT8UMxByj2.jpg', 'idshop5', 5),
(222, 'Tv', 'JPP0X0FQ0dWujVhgiCMTUPBA1pQaV1', 'samsung', '54', 'ELECTRONICS', '5487', 'img/products/JPP0X0FQ0dWujVhgiCMTUPBA1pQaV1.jpg', 'idshop9', 9),
(223, 'Tv', 'X9fefdVhtswQY3p2bxZmb3UGcCtX4y', 'Sony', '12', 'ELECTRONICS', '36540', 'img/products/X9fefdVhtswQY3p2bxZmb3UGcCtX4y.jpg', 'idshop9', 9),
(224, 'Speaker ', 'hHKDfZ51DsmwkAiQPLZZCGYv2plP7F', 'Logitech ', '3', 'COMPUTER', '509', 'img/products/hHKDfZ51DsmwkAiQPLZZCGYv2plP7F.jpg', 'idshop6', 6),
(226, 'Remote control toys', 'VBLX0Zp61DgZ0WDcUxszWhbuY1Vfb0', 'No brand', '14', 'TOYS', '500', 'img/products/VBLX0Zp61DgZ0WDcUxszWhbuY1Vfb0.jpg', 'idshop2', 1),
(227, 'Tv', 'QaraJro1tHk8igS7NANGJ4JgILVtso', 'samsung', '2', 'ELECTRONICS', '28450', 'img/products/QaraJro1tHk8igS7NANGJ4JgILVtso.jpg', 'idshop10', 10),
(228, 'Puzzles', 'C3nTqbqv7NaAF1DoCG6fZzUqaZBKit', 'No brand', '24', 'TOYS', '100', 'img/products/C3nTqbqv7NaAF1DoCG6fZzUqaZBKit.jpg', 'idshop2', 1),
(229, 'Tablet', '51IkgXyce1FLSEOiG0PFn1JhHVTbTY', 'samsung', '56', 'ELECTRONICS', '58947', 'img/products/51IkgXyce1FLSEOiG0PFn1JhHVTbTY.jpg', 'idshop10', 10),
(230, 'Soft toys', 'g3qckRR5TKzhcvhiQtRZa7eooIXtz9', 'No brand', '14', 'TOYS', '200', 'img/products/g3qckRR5TKzhcvhiQtRZa7eooIXtz9.jpg', 'idshop2', 1),
(231, 'Tablet', 'G8kFTur27yVDJVDz9fGAFcIZQK51oJ', 'apple', '6', 'ELECTRONICS', '48517', 'img/products/G8kFTur27yVDJVDz9fGAFcIZQK51oJ.jpg', 'idshop10', 10),
(232, 'Speaker ', 'A7Bm4BluHn8Xm9UZmPxOou5AY4BTkN', 'Creative ', '2', 'COMPUTER', '600', 'img/products/A7Bm4BluHn8Xm9UZmPxOou5AY4BTkN.jpg', 'idshop8', 8),
(233, 'Doll', 'btsJAeL8ox7O0fn9LQezUyIHK7DSRb', 'No brand', '49', 'TOYS', '150', 'img/products/btsJAeL8ox7O0fn9LQezUyIHK7DSRb.jpg', 'idshop2', 1),
(234, 'Solar', '57Dv4kLr6T3UGgKdxyFkCAlmnJMM4Q', 'No Brand', '4', 'ELECTRONICS', '1547', 'img/products/57Dv4kLr6T3UGgKdxyFkCAlmnJMM4Q.jpg', 'idshop10', 10),
(235, 'Adapter', 'UVVviZ7DuO0CMmMHm8wUWVo2vn67gr', 'wemo', '58', 'ELECTRONICS', '5891', 'img/products/UVVviZ7DuO0CMmMHm8wUWVo2vn67gr.jpg', 'idshop10', 10),
(236, 'Speaker ', 'qoma2C97DMzZiTABKpnKo0qnvtMQiT', 'Zebronic', '10', 'COMPUTER', '780', 'img/products/qoma2C97DMzZiTABKpnKo0qnvtMQiT.jpg', 'idshop9', 9),
(237, 'Sports', '2UwqNWBdsI0CjGEX5gDbwCKq3VpEFI', 'No brand', '24', 'TOYS', '800', 'img/products/2UwqNWBdsI0CjGEX5gDbwCKq3VpEFI.jpg', 'idshop2', 1),
(238, 'Remote control toys', 'RERHFOHkEIxBdQxu7P7TJ1JkBKKsUF', 'No brand', '25', 'TOYS', '250', 'img/products/RERHFOHkEIxBdQxu7P7TJ1JkBKKsUF.jpg', 'idshop3', 4),
(239, 'Speaker ', 'JY0rigoRtDS8oLNd3teT8BVSSCOMNH', 'Index', '5', 'COMPUTER', '500', 'img/products/JY0rigoRtDS8oLNd3teT8BVSSCOMNH.jpg', 'idshop7', 7),
(240, 'Puzzles', '7iyyti0RkuyFCRVvYJ5LpPQ95zU13m', 'No brand', '30', 'TOYS', '300', 'img/products/7iyyti0RkuyFCRVvYJ5LpPQ95zU13m.jpg', 'idshop3', 4),
(241, 'Speaker ', 'U9XxF1SqtYkxT0NDdkbTEOt0aRKWDO', 'Logitech ', '12', 'COMPUTER', '700', 'img/products/U9XxF1SqtYkxT0NDdkbTEOt0aRKWDO.jpg', 'idshop10', 10),
(242, 'Soft toys', 'x5SRKMlbOtJJ7sFK2PZJpEV7ELSJNg', 'No brand', '10', 'TOYS', '50', 'img/products/x5SRKMlbOtJJ7sFK2PZJpEV7ELSJNg.jpg', 'idshop3', 4),
(243, 'Doll', 's2FVMg9yoy6vm6LKfxAu6v3PcNWQGO', 'No brand', '25', 'TOYS', '500', 'img/products/s2FVMg9yoy6vm6LKfxAu6v3PcNWQGO.jpg', 'idshop3', 4),
(244, 'Sports', 'vIhSTjv2r8P088UIJF77pw7QTCjGsC', 'No brand', '30', 'HOUSEHOLD', '500', 'img/products/vIhSTjv2r8P088UIJF77pw7QTCjGsC.jpg', 'idshop3', 4),
(245, 'Remote control toys', '7ICE8qBKE3tFGMlkJrBnD70ny3jYIZ', 'No brand', '30', 'TOYS', '500', 'img/products/7ICE8qBKE3tFGMlkJrBnD70ny3jYIZ.jpg', 'idshop4', 3),
(246, 'Webcam ', 'tMjktY9ajOTQp6HWBOMIIvKrQlcAO7', 'Enter', '5', 'COMPUTER', '780', 'img/products/tMjktY9ajOTQp6HWBOMIIvKrQlcAO7.jpg', 'idshop10', 10),
(247, 'Puzzles', 'KxFKYY1nPv0IEptrCxUQq3smWkYK6M', 'No brand', '47', 'TOYS', '50', 'img/products/KxFKYY1nPv0IEptrCxUQq3smWkYK6M.jpg', 'idshop4', 3),
(248, 'Soft toys', 'qaFZI8hJZCdyhPqckoWqalf1ulApmD', 'No brand', '29', 'TOYS', '300', 'img/products/qaFZI8hJZCdyhPqckoWqalf1ulApmD.jpg', 'idshop4', 3),
(249, 'Doll', 'VPdm2yeUD8EcpRIG9za1zk8NJxvG05', 'No brand', '20', 'TOYS', '100', 'img/products/VPdm2yeUD8EcpRIG9za1zk8NJxvG05.jpg', 'idshop4', 3),
(250, 'Sports', 'tlllc67yhV21F9ukTw9TgzycHcXzVL', 'No brand', '30', 'TOYS', '500', 'img/products/tlllc67yhV21F9ukTw9TgzycHcXzVL.jpg', 'idshop4', 3),
(251, 'Webcam ', 'VamQGEQNikCjXoFJ62RDXOylQ4IXcZ', 'Enter ', '3', 'COMPUTER', '460', 'img/products/VamQGEQNikCjXoFJ62RDXOylQ4IXcZ.jpg', 'idshop9', 9),
(252, 'Webcam ', 'AYlSRebmhDv6EDfzmZeu6E0duUPOAh', 'Quantum ', '3', 'COMPUTER', '790', 'img/products/AYlSRebmhDv6EDfzmZeu6E0duUPOAh.jpg', 'idshop8', 8),
(253, 'Webcam ', 'GQHiuQJ6Ana42RQobzPNXsVXQt09rI', 'Iball', '5', 'COMPUTER', '600', 'img/products/GQHiuQJ6Ana42RQobzPNXsVXQt09rI.jpg', 'idshop1', 2),
(254, 'Webcam ', 'Qp6cLjiTSzPUBu45PXCZRSyp4fB2Px', 'Enter ', '4', 'COMPUTER', '700', 'img/products/Qp6cLjiTSzPUBu45PXCZRSyp4fB2Px.jpg', 'idshop8', 8),
(255, 'Webcam ', 'o7aLXQqODJ8g26EIPLKHoIwX3m2Mke', 'Iball', '4', 'COMPUTER', '670', 'img/products/o7aLXQqODJ8g26EIPLKHoIwX3m2Mke.jpg', 'idshop7', 7),
(256, 'Webcam ', 'OFWVSIeaB7Kq2lV6qL42KVVjk0zW2p', 'Enter', '2', 'COMPUTER', '700', 'img/products/OFWVSIeaB7Kq2lV6qL42KVVjk0zW2p.jpg', 'idshop6', 6),
(257, 'Webcam ', '29RH4EXedmMjS8qETGbtbiYe7b241J', 'Enter ', '4', 'COMPUTER', '345', 'img/products/29RH4EXedmMjS8qETGbtbiYe7b241J.jpg', 'idshop5', 5),
(258, 'High top', 'MJlWujNV7rEfHGmmob79TwRptVMvI6', 'Adidas', '20', 'SHOES', '2000', 'img/products/MJlWujNV7rEfHGmmob79TwRptVMvI6.jpg', 'idshop1', 2),
(259, 'Mouse ', 'ragN271eujRZpvDF40EjuKXvXsqMh0', 'Dell', '6', 'COMPUTER', '800', 'img/products/ragN271eujRZpvDF40EjuKXvXsqMh0.jpg', 'idshop5', 5),
(260, 'Mouse ', '97yQq3H9aiwkmybcWnMMaJe5G5zHe0', 'Logitech ', '5', 'COMPUTER', '456', 'img/products/97yQq3H9aiwkmybcWnMMaJe5G5zHe0.jpg', 'idshop6', 6),
(261, 'High top', 'QWV4iXCwRgEwt4obLxLWzkgI70fDHg', 'Nike', '9', 'SHOES', '2500', 'img/products/QWV4iXCwRgEwt4obLxLWzkgI70fDHg.jpg', 'idshop2', 1),
(262, 'High top', 'LMNrLwz3fzFs8Wiy9DW547rk8VFJl2', 'Puma', '13', 'SHOES', '1500', 'img/products/LMNrLwz3fzFs8Wiy9DW547rk8VFJl2.jpg', 'idshop3', 4),
(263, 'High top', 'rRj7Ci5EFV9GDN57fIEaz5d2ramqUt', 'Adidas', '30', 'SHOES', '1000', 'img/products/rRj7Ci5EFV9GDN57fIEaz5d2ramqUt.jpg', 'idshop4', 3),
(264, 'Mouse ', 'MxYK5DMY4fWoMQoAtCUEvztZAEQkAt', 'Microsoft ', '6', 'COMPUTER', '800', 'img/products/MxYK5DMY4fWoMQoAtCUEvztZAEQkAt.jpg', 'idshop7', 7),
(265, 'Mouse ', 'tR5qMX817J9Rabd6hDRmGChBWCBwyE', 'T', '6', 'COMPUTER', '670', 'img/products/tR5qMX817J9Rabd6hDRmGChBWCBwyE.jpg', 'idshop8', 8),
(266, 'Mouse ', 'T4SKLXpJbC6YWY6mC03Ote7stfEwkG', 'Dell', '4', 'COMPUTER', '700', 'img/products/T4SKLXpJbC6YWY6mC03Ote7stfEwkG.jpg', 'idshop9', 9),
(267, 'High top', 'JuP5qkodfvEULlA7HZjP9dl1DPXpkF', 'Nike', '15', 'SHOES', '2500', 'img/products/JuP5qkodfvEULlA7HZjP9dl1DPXpkF.jpg', 'idshop5', 5),
(268, 'High top', 'qn7Zex2VHdedxALJMI6zuhjJnZOWH3', 'Puma', '50', 'SHOES', '1000', 'img/products/qn7Zex2VHdedxALJMI6zuhjJnZOWH3.jpg', 'idshop6', 6),
(269, 'Mouse ', 'JxdEBwBe3tuIZXMn9yVVuufKcnKs1s', 'Logitech ', '8', 'COMPUTER', '678', 'img/products/JxdEBwBe3tuIZXMn9yVVuufKcnKs1s.jpg', 'idshop10', 10),
(270, 'women dresses', 'm6OayAH7DWHjpPgHnqlkvpsWJASpjd', 'nike', '258', 'DRESS', '2584', 'img/products/m6OayAH7DWHjpPgHnqlkvpsWJASpjd.jpg', 'idshop1', 2),
(271, 'High top', 'cmlwtXPzCvuLb8zhfP0TZAYdCqnZQi', 'Adidas', '15', 'SHOES', '2000', 'img/products/cmlwtXPzCvuLb8zhfP0TZAYdCqnZQi.jpg', 'idshop7', 7),
(272, 'women dresses', 'fhTzCmyLxRzrIZxqW9eIRWeBo4XAFL', 'No Brand', '658', 'DRESS', '5840', 'img/products/fhTzCmyLxRzrIZxqW9eIRWeBo4XAFL.jpg', 'idshop3', 4),
(273, 'Keyboard ', 'V2v0siXAj5ksXuEaAVOsiu5z62cIyL', 'ASUS ', '9', 'COMPUTER', '800', 'img/products/V2v0siXAj5ksXuEaAVOsiu5z62cIyL.jpg', 'idshop5', 5),
(274, 'High top', 'fdK7Yv4nfg0leWkljXlmMPATh48VAs', 'Puma', '10', 'SHOES', '2000', 'img/products/fdK7Yv4nfg0leWkljXlmMPATh48VAs.jpg', 'idshop8', 8),
(275, 'High top', 'w49maAGyNW4sQQOrXwqhlAuHC8wzxR', 'Nike', '15', 'HOUSEHOLD', '1000', 'img/products/w49maAGyNW4sQQOrXwqhlAuHC8wzxR.jpg', 'idshop10', 10),
(276, 'kids dressess', '4JblwdtysXRjXhPAWUAAd5kbBiE14V', 'poppies', '5842', 'DRESS', '3210', 'img/products/4JblwdtysXRjXhPAWUAAd5kbBiE14V.jpg', 'idshop6', 6),
(277, 'Keyboard ', 't3EOz8MpIoUca6lKoAzouyZsLBT9BJ', 'Logitech ', '7', 'COMPUTER', '900', 'img/products/t3EOz8MpIoUca6lKoAzouyZsLBT9BJ.jpg', 'idshop6', 6),
(278, 'man dresses', '8n1786KU4P91dWRCwlfr0L0tKB7AVI', 'nike', '854', 'DRESS', '5840', 'img/products/8n1786KU4P91dWRCwlfr0L0tKB7AVI.jpg', 'idshop4', 3),
(279, 'Keyboard ', 'HV3BuGY3svV2WD1u3XDiGvfU7DZ4eE', 'Logitech ', '1', 'COMPUTER', '790', 'img/products/HV3BuGY3svV2WD1u3XDiGvfU7DZ4eE.jpg', 'idshop7', 7),
(280, 'man dresses', 'e4Woq6Y7FL3JeTz2lxyLOUmjBYr8xZ', 'adidas', '4587', 'DRESS', '5840', 'img/products/e4Woq6Y7FL3JeTz2lxyLOUmjBYr8xZ.jpg', 'idshop5', 5),
(281, 'Keyboard ', '4465becW8hLijZebCLwRcxCd0nO7YJ', 'Iball ', '7', 'COMPUTER', '789', 'img/products/4465becW8hLijZebCLwRcxCd0nO7YJ.jpg', 'idshop8', 8),
(282, 'women dresses', 'QWzUx4Bv83135YG7tK562LCiGJVFOa', 'No Brand', '351', 'DRESS', '45810', 'img/products/QWzUx4Bv83135YG7tK562LCiGJVFOa.jpg', 'idshop8', 8),
(283, 'Keyboard ', 'ZM4Wav28CHUFr8z0bUyJGnE3Gg18oz', 'Iball ', '8', 'COMPUTER', '700', 'img/products/ZM4Wav28CHUFr8z0bUyJGnE3Gg18oz.jpg', 'idshop8', 8),
(284, 'kids dressess', '29FdubrYJTVBdSS2tPW3pa9KmL20N7', 'poppies', '5487', 'DRESS', '25470', 'img/products/29FdubrYJTVBdSS2tPW3pa9KmL20N7.jpg', 'idshop9', 9),
(285, 'Casual', 'W7r46FC9BjmQwUqiDd1KMv16fp63lN', 'Adidas', '20', 'SHOES', '2000', 'img/products/W7r46FC9BjmQwUqiDd1KMv16fp63lN.jpg', 'idshop1', 2),
(286, 'Keyboard ', 'rGkfQTQx0tuHNUx3CVtXgZnIW6iPvC', 'ASUS ', '7', 'COMPUTER', '700', 'img/products/rGkfQTQx0tuHNUx3CVtXgZnIW6iPvC.jpg', 'idshop9', 9),
(287, 'Casual', 'Q2OW8ZalWjDHBWHQ8kBFbOcO1cbPk9', 'Puma', '19', 'SHOES', '1500', 'img/products/Q2OW8ZalWjDHBWHQ8kBFbOcO1cbPk9.jpg', 'idshop2', 1),
(288, 'Keyboard ', 'kF6UzEYaa6ebakaRrDBwKEimWY6SDU', 'Logitech ', '6', 'COMPUTER', '900', 'img/products/kF6UzEYaa6ebakaRrDBwKEimWY6SDU.jpg', 'idshop10', 10),
(289, 'Casual', 'WPhB3MNuKxnF8Bx1D0QA4fLe07027N', 'Adidas', '9', 'SHOES', '2000', 'img/products/WPhB3MNuKxnF8Bx1D0QA4fLe07027N.jpg', 'idshop3', 4),
(290, 'Casual', 'JKZWoBs0Pvtjdth0QryMm2hCNuZyW1', 'Nike', '20', 'SHOES', '1500', 'img/products/JKZWoBs0Pvtjdth0QryMm2hCNuZyW1.jpg', 'idshop4', 3);

-- --------------------------------------------------------

--
-- Table structure for table `rabiya`
--

CREATE TABLE IF NOT EXISTS `rabiya` (
  `id` int(250) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(30) NOT NULL,
  `product_id` varchar(30) NOT NULL,
  `brand` varchar(20) NOT NULL,
  `stock` varchar(250) NOT NULL,
  `category` varchar(10) NOT NULL,
  `price` varchar(250) NOT NULL,
  `img` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `rabiya`
--

INSERT INTO `rabiya` (`id`, `product_name`, `product_id`, `brand`, `stock`, `category`, `price`, `img`) VALUES
(1, 'shoes', 'thgste546gtecwtrgdtbeyathevwww', 'woodland', '10', 'SHOES', '3200', 'img/products/thgste546gtecwtrgdtbeyathevwww.jpg'),
(2, 'shoes', 'thgste546gtecwtrgdtbeyathevy2e', 'puma', '3', 'SHOES', '2200', 'img/products/thgste546gtecwtrgdtbeyathevy2e.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE IF NOT EXISTS `shops` (
  `id` int(250) NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(25) NOT NULL,
  `shop_id` varchar(250) NOT NULL,
  `password` varchar(30) NOT NULL,
  `shop_rank` int(250) NOT NULL,
  `shop_address` varchar(100) NOT NULL,
  `shop_phone` varchar(10) NOT NULL,
  `shop_mail` varchar(25) NOT NULL,
  `purchases` int(250) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `shop_name`, `shop_id`, `password`, `shop_rank`, `shop_address`, `shop_phone`, `shop_mail`, `purchases`) VALUES
(1, 'amana', 'idshop1', 'thahir', 2, 'amana address', '7452845875', 'amanashop@gmail.com', 14),
(2, 'rabiya', 'idshop2', '', 1, 'rabiya address', '9854612325', 'rabiyashop@gmail.com', 15),
(3, 'clone', 'idshop3', '', 4, 'thjfdghjdfk', '8569485758', 'asgdhf@gmail.com', 3),
(4, 'clu', 'idshop4', '', 3, 'ighfdfdg', '9856769853', 'asdadhj@gmail.com', 4),
(5, 'Bellaza', 'idshop5', '', 5, 'abcnhuhiu', '8281838485', 'bellaza@gmail.com', 0),
(6, 'calico', 'idshop6', '', 6, 'dfghfjhkj', '7879747576', 'calico@gmail.com', 0),
(7, 'liberty', 'idshop7', '', 7, 'fdafchsgj', '9895969293', 'liberty@gmail.com', 0),
(8, 'trellis', 'idshop8', '', 8, 'hgsfgfaga', '8502010304', 'trellis@gmail.com', 0),
(9, 'boteh', 'idshop9', '', 9, 'dafgsghgj', '8485040103', 'boteh@gmail.com', 0),
(10, 'bird eye', 'idshop10', '', 10, 'fghjhskj', '8009060402', 'birdseye@gmail.com', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
