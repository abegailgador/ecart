-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2022 at 10:22 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(42, 22, 29, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Elementary School Uniform', 'elementary-school-uniform'),
(2, 'Junior Highschool Uniform', 'junior-highschool-uniform'),
(3, 'Senior Highschool Uniform', 'senior-highschool-uniform'),
(4, 'College Uniform', 'college-uniform'),
(5, 'Merch', 'merch');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(1, 1, 3, 1),
(2, 1, 13, 1),
(3, 1, 19, 1),
(4, 1, 9, 1),
(5, 1, 6, 1),
(6, 1, 11, 1),
(7, 2, 27, 1),
(8, 3, 11, 2),
(9, 4, 4, 2),
(10, 5, 5, 1),
(11, 6, 27, 1),
(12, 7, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(1, 3, 'Senior High School Uniform |MALE|', '<h3>Polo and Pants Set</h3>\r\n\r\n<p>Polo</p>\r\n<p>XS  Bust93  Long63  Shoulder 41  Sleeve 10</p>\r\n<p>S   Bust95  Long64  Shoulder 42  Sleeve 10</p>\r\n<p>M   Bust98  Long65  Shoulder 43  Sleeve 10</p>\r\n<p>L   Bust101 Long66  Shoulder 44  Sleeve 10</p>\r\n<p>XL  Bust104 Long67  Shoulder 45  Sleeve 10</p>\r\n\r\n<p>Material: Cotton</p>\r\n\r\n<p>Pants</p>\r\n<p>XS  Waist58  Pants 43</p>\r\n<p>S   Waist62  Pants 43</p>\r\n<p>M   Waist66  Pants 43</p>\r\n<p>L   Waist70  Pants 43</p>\r\n<p>XL  Waist74  Pants 43</p>\r\n\r\n<p>Material: Polyester Fiber</p>\r\n\r\n<p>Note: If you do not know your uniform size, you may contact 09******* to set an appointment to our office. Or you can send your preferred uniform size(s) by contacting us via email ecart@uspf.edu.ph. Kindly send it within 2 days from purchased date using the format below:</p>\r\n\r\n<p>Name: </p>\r\n<p>Order ID:</p>\r\n<p>Request to Change:</p>\r\n', 'senior-high-m', 1099.99, 'senior-high-m.jpg', '2022-02-24', 2),
(2, 3, 'Senior High School Uniform |FEMALE|', '<h3>Blouse and Skirt Set</h3>\r\n\r\n<p>Blouse</p>\r\n<p>XS  Bust93  Long63  Shoulder 41  Sleeve 10</p>\r\n<p>S   Bust95  Long64  Shoulder 42  Sleeve 10</p>\r\n<p>M   Bust98  Long65  Shoulder 43  Sleeve 10</p>\r\n<p>L   Bust101 Long66  Shoulder 44  Sleeve 10</p>\r\n<p>XL  Bust104 Long67  Shoulder 45  Sleeve 10</p>\r\n\r\n<p>Material: Cotton</p>\r\n\r\n<p>Skirt</p>\r\n<p>XS  Waist58  Skirt 43</p>\r\n<p>S   Waist62  Skirt 43</p>\r\n<p>M   Waist66  Skirt 43</p>\r\n<p>L   Waist70  Skirt 43</p>\r\n<p>XL  Waist74  Skirt 43</p>\r\n\r\n<p>Material: Polyester Fiber</p>\r\n\r\n<p>Note: If you do not know your uniform size, you may contact 09******* to set an appointment to our office. Or you can send your preferred uniform size(s) by contacting us via email ecart@uspf.edu.ph. Kindly send it within 2 days from purchased date using the format below:</p>\r\n\r\n<p>Name: </p>\r\n<p>Order ID:</p>\r\n<p>Request to Change:</p>', 'senior-high-f', 999.99, 'senior-high-f.jpg', '2021-05-29', 2),
(3, 5, 'USPF V.UB COTTON TEE', '<h3>Uspf Unleash The Panther&nbsp;</h3>\r\n\r\n\r\n<p>Product Type: Tee</p>\r\n<p>Description: Premium combed cotton, round-neck</p>\r\n<p>Fabric Type: Cotton</p>\r\n<p>Print Type: Heat Press Vinyl</p>\r\n\r\n<p>*Please do note that measurements are in inches.</p>\r\n<p>*Not available in women\'s cut. All apparels are in unisex, regular fit.</p>\r\n<p>*Kindly be sure of your size. We are not responsible if the item you ordered is not the right fit for you.</p>', 'uspftshirtmerch', 829, 'uspftshirtmerch.jpg', '2021-07-10', 1),
(4, 1, 'Elementary School PE Uniform Set', '<p>Material: Stretchable Material/ Cotton</p>\r\n<p>Available Sizes: XS,S,M,L,XL,XXL</p>\r\n<p>Gender: UNISEX (KIDS SIZE)</p>\r\n<p>Collar: Round neck</p>\r\n<p>Sleeve Style: Short Sleeve</p>\r\n<p>Style: High Quality Rubberized Print</p> \r\n<p>FABRIC:  Cotton Terry Brush </p>\r\n<p>FREE SIZE: Fit for S-XL</p>\r\n\r\n<p>Inclusions:</p>\r\n<p>Pants</p>\r\n<p>Side Pocket</p>\r\n<p>Unisex</p>\r\n<p>Comfort Fit</p>\r\n<p>Stretchable</p>\r\n', 'elem-pe', 499, 'elem-pe.jpg', '2022-04-25', 2),
(5, 3, 'Senior Highschool PE Uniform Set', '<p>Material: Stretchable Material/ Cotton</p>\r\n<p>Available Sizes: XS,S,M,L,XL,XXL</p>\r\n<p>Gender: UNISEX (TEEN SIZE)</p>\r\n<p>Collar: Roundneck</p>\r\n<p>Sleeve Style: Short Sleeve</p>\r\n<p>Style: High Quality Rubberized Print</p> \r\n<p>Fabric: Soft premium cotton for added comfort</p>\r\n\r\n<p>Inclusions:</p>\r\n<p>Pants</p>\r\n<p>Side Pocket</p>\r\n<p>Unisex</p>\r\n<p>Comfort Fit</p>\r\n<p>Stretchable</p>\r\n<p>FABRIC:  Cotton Terry Brush</p>\r\n<p>FREE SIZE: Fit for S-Xl</p>', 'pe_senior', 499.99, 'pe_senior.png', '2021-05-29', 2),
(6, 1, 'Elementary Uniform |FEMALE|', '<p>Blouse and Skirt Set</p>\r\n\r\n<p>Blouse</p>\r\n<p>Available Sizes: XS,S,M,L,XL</p>\r\n<p>Sleeve Style: Short Sleeve</p>\r\n<p>Material: Polyster Fiber</p>\r\n<p>Fabric: Soft premium cotton for added comfort</p>\r\n\r\n<p>Skirt</p>\r\n<p>Available Sizes: XS,S,M,L,XL</p>\r\n<p>Material: Cotton</p>\r\n\r\n<p>Note: If you do not know your uniform size, you may contact 09******* to set an appointment to our office. Or you can send your preferred uniform size(s) by contacting us via email ecart@uspf.edu.ph. Kindly send it within 2 days from purchased date using the format below:</p>\r\n\r\n<p>Name: </p>\r\n<p>Order ID:</p>\r\n<p>Request to Change:</p>', 'elem-f', 799.99, 'elem-f.jpg', '2021-05-29', 3),
(8, 1, 'Elementary Uniform |MALE|', '<p>Polo and Pants Set</p>\r\n\r\n<p>Polo</p>\r\n<p>Available Sizes: XS,S,M,L,XL</p>\r\n<p>Sleeve Style: Short Sleeve</p>\r\n<p>Material: Polyster Fiber</p>\r\n<p>Fabric: Soft premium cotton for added comfort</p>\r\n\r\n<p>Pants</p>\r\n<p>Available Sizes: XS,S,M,L,XL</p>\r\n<p>Material: Cotton</p>\r\n\r\n<p>Note: If you do not know your uniform size, you may contact 09******* to set an appointment to our office. Or you can send your preferred uniform size(s) by contacting us via email ecart@uspf.edu.ph. Kindly send it within 2 days from purchased date using the format below:</p>\r\n\r\n<p>Name: </p>\r\n<p>Order ID:</p>\r\n<p>Request to Change:</p>', 'elem-m', 899.99, 'elem-m.jpg', '2021-05-29', 2),
(9, 2, 'Junior Highschool PE Uniform Set', '<p>Material: Stretchable Material/ Cotton</p>\r\n<p>Available Sizes: XS,S,M,L,XL,XXL</p>\r\n<p>Gender: UNISEX (TEEN SIZE)</p>\r\n<p>Collar: Roundneck</p>\r\n<p>Sleeve Style: Short Sleeve</p>\r\n<p>Style: High Quality Rubberized Print</p> \r\n<p>Fabric: Soft premium cotton for added comfort</p>\r\n\r\n<p>Inclusions:</p>\r\n<p>Pants</p>\r\n<p>Side Pocket</p>\r\n<p>Unisex</p>\r\n<p>Comfort Fit</p>\r\n<p>Stretchable</p>\r\n<p>FABRIC:  Cotton Terry Brush</p>\r\n<p>FREE SIZE: Fit for S-Xl</p>', 'pe_junior', 499.99, 'pe_junior.png', '2021-05-29', 3),
(10, 2, 'Junior High School Uniform |FEMALE|', '<h3>Blouse and Skirt Set</h3>\r\n\r\n<p>Blouse</p>\r\n<p>XS  Bust93  Long63  Shoulder 41  Sleeve 10</p>\r\n<p>S   Bust95  Long64  Shoulder 42  Sleeve 10</p>\r\n<p>M   Bust98  Long65  Shoulder 43  Sleeve 10</p>\r\n<p>L   Bust101 Long66  Shoulder 44  Sleeve 10</p>\r\n<p>XL  Bust104 Long67  Shoulder 45  Sleeve 10</p>\r\n\r\n<p>Material: Cotton</p>\r\n\r\n<p>Skirt</p>\r\n<p>XS  Waist58  Skirt 43</p>\r\n<p>S   Waist62  Skirt 43</p>\r\n<p>M   Waist66  Skirt 43</p>\r\n<p>L   Waist70  Skirt 43</p>\r\n<p>XL  Waist74  Skirt 43</p>\r\n\r\n<p>Material: Polyester Fiber</p>\r\n\r\n<p>Note: If you do not know your uniform size, you may contact 09******* to set an appointment to our office. Or you can send your preferred uniform size(s) by contacting us via email ecart@uspf.edu.ph. Kindly send it within 2 days from purchased date using the format below:</p>\r\n\r\n<p>Name: </p>\r\n<p>Order ID:</p>\r\n<p>Request to Change:</p>', 'uni-juniorf', 1299.99, 'uni-juniorf.jpg', '2021-05-29', 2),
(11, 4, 'College PE Uniform Set', '<p>Material: Stretchable Material/ Cotton</p>\r\n<p>Available Sizes: XS,S,M,L,XL,XXL</p>\r\n<p>Gender: UNISEX (ADULT SIZE)</p>\r\n<p>Collar: Roundneck</p>\r\n<p>Sleeve Style: Short Sleeve</p>\r\n<p>Style: High Quality Rubberized Print</p> \r\n<p>Fabric: Soft premium cotton for added comfort</p>\r\n\r\n<p>Inclusions:</p>\r\n<p>Pants</p>\r\n<p>Side Pocket</p>\r\n<p>Unisex</p>\r\n<p>Comfort Fit</p>\r\n<p>Stretchable</p>\r\n<p>FABRIC:  Cotton Terry Brush</p>\r\n<p>FREE SIZE: Fit for S-Xl</p>', 'pe_college', 699.99, 'pe_college.png', '2021-05-29', 6),
(12, 2, 'Junior High School Uniform |MALE|', '<h3>Polo and Pants Set</h3>\r\n\r\n<p>Polo</p>\r\n<p>XS  Bust93  Long63  Shoulder 41  Sleeve 10</p>\r\n<p>S   Bust95  Long64  Shoulder 42  Sleeve 10</p>\r\n<p>M   Bust98  Long65  Shoulder 43  Sleeve 10</p>\r\n<p>L   Bust101 Long66  Shoulder 44  Sleeve 10</p>\r\n<p>XL  Bust104 Long67  Shoulder 45  Sleeve 10</p>\r\n\r\n<p>Material: Cotton</p>\r\n\r\n<p>Pants</p>\r\n<p>XS  Waist58  Pants 43</p>\r\n<p>S   Waist62  Pants 43</p>\r\n<p>M   Waist66  Pants 43</p>\r\n<p>L   Waist70  Pants 43</p>\r\n<p>XL  Waist74  Pants 43</p>\r\n\r\n<p>Material: Polyester Fiber</p>\r\n\r\n<p>Note: If you do not know your uniform size, you may contact 09******* to set an appointment to our office. Or you can send your preferred uniform size(s) by contacting us via email ecart@uspf.edu.ph. Kindly send it within 2 days from purchased date using the format below:</p>\r\n\r\n<p>Name: </p>\r\n<p>Order ID:</p>\r\n<p>Request to Change:</p>', 'uni-juniorm', 1499.99, 'uni-juniorm.jpg', '2021-05-29', 3),
(13, 4, 'College Uniform |FEMALE|', '<h3>Blouse and Skirt Set (Type A)</h3>\r\n\r\n<p>Blouse</p>\r\n<p>XS  Bust93  Long63  Shoulder 41  Sleeve 10</p>\r\n<p>S   Bust95  Long64  Shoulder 42  Sleeve 10</p>\r\n<p>M   Bust98  Long65  Shoulder 43  Sleeve 10</p>\r\n<p>L   Bust101 Long66  Shoulder 44  Sleeve 10</p>\r\n<p>XL  Bust104 Long67  Shoulder 45  Sleeve 10</p>\r\n\r\n<p>Material: Cotton</p>\r\n\r\n<p>Skirt</p>\r\n<p>XS  Waist58  Skirt 43</p>\r\n<p>S   Waist62  Skirt 43</p>\r\n<p>M   Waist66  Skirt 43</p>\r\n<p>L   Waist70  Skirt 43</p>\r\n<p>XL  Waist74  Skirt 43</p>\r\n\r\n<p>Material: Polyster Fiber</p>\r\n\r\n<p>Note: If you do not know your uniform size, you may contact 09******* to set an appointment to our office. Or you can send your preferred uniform size(s) by contacting us via email ecart@uspf.edu.ph. Kindly send it within 2 days from purchased date using the format below:</p>\r\n\r\n<p>Name: </p>\r\n<p>Order ID:</p>\r\n<p>Request to Change:</p>', 'college-typea-f', 1299.99, 'college-typea-f.jpg', '2021-05-29', 8),
(19, 4, 'College Uniform |MALE|', '<h3>Polo and Pants Set (Type A)</h3>\r\n\r\n<p>Polo</p>\r\n<p>XS  Bust93  Long63  Shoulder 41  Sleeve 10</p>\r\n<p>S   Bust95  Long64  Shoulder 42  Sleeve 10</p>\r\n<p>M   Bust98  Long65  Shoulder 43  Sleeve 10</p>\r\n<p>L   Bust101 Long66  Shoulder 44  Sleeve 10</p>\r\n<p>XL  Bust104 Long67  Shoulder 45  Sleeve 10</p>\r\n\r\n<p>Material: Cotton</p>\r\n\r\n<p>Pants</p>\r\n<p>XS  Waist58  Skirt 43</p>\r\n<p>S   Waist62  Skirt 43</p>\r\n<p>M   Waist66  Skirt 43</p>\r\n<p>L   Waist70  Skirt 43</p>\r\n<p>XL  Waist74  Skirt 43</p>\r\n\r\n<p>Material: Polyster Fiber</p>\r\n\r\n<p>Note: If you do not know your uniform size, you may contact 09******* to set an appointment to our office. Or you can send your preferred uniform size(s) by contacting us via email ecart@uspf.edu.ph. Kindly send it within 2 days from purchased date using the format below:</p>\r\n\r\n<p>Name: </p>\r\n<p>Order ID:</p>\r\n<p>Request to Change:</p>', 'college-typea-m', 1499.99, 'college-typea-m.jpg', '2021-05-29', 4),
(27, 5, 'USPF V.UI MUG', '<h3>University Of Southern Philippines Foundation Proud USPF Graduate</h3>\r\n\r\n<p>Product Type: Mug</p>\r\n<p>Variant: Standard mug - premium ceramic standard mug</p>\r\n<p>Variant: Magic mug - changing color mug when heated</p>\r\n<p>Material Type: Ceramics</p>\r\n<p> Print Type: Sublimation</p>', 'mugmerch', 199, 'mugmerch.jpg', '2021-05-29', 7),
(29, 5, 'USPF V.UI VARSITY JACKET', '<h3>University Of Southern Philippines Foundation Proud USPF Graduate &nbsp</h3>\r\n\r\n<p>Product Type: Varsity Jacket</p>\r\n<p>Description: Premium yonex cotton with zipper</p>\r\n<p>Fabric Type: Yonex Cotton</p>\r\n<p>Print Type: Heat Press Vinyl</p>\r\n\r\n<p>*Please do note that measurements are in inches.</p>\r\n<p>*Not available in women\'s cut. All apparels are in unisex, regular fit.</p>\r\n*Kindly be sure of your size. We are not responsible if the item you ordered is not the right fit for you.</p>\r\n<p>*Hoodies / Jackets / Sweatshirts / and Varsity Jackets In American Sizes.</p>', 'varsitymerch', 889.99, 'varsitymerch.jpg', '2021-05-29', 3);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL,
  `payment_method` int(11) NOT NULL,
  `courier` varchar(100) DEFAULT NULL,
  `shipping_fee` double DEFAULT NULL,
  `delivery_address` varchar(200) DEFAULT NULL,
  `contact_number` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`, `payment_method`, `courier`, `shipping_fee`, `delivery_address`, `contact_number`) VALUES
(1, 18, 'PAY-CPH2WZ3SFNMOYE9TLDRU84B5', '2021-05-29', 1, '2', 85, 'Apas, Cebu City', '09991234567'),
(2, 18, 'PAY-5FNDLXVZUAPM1YTE789BH6JQ', '2021-05-29', 2, '', 0, 'Apas, Cebu City', '09991234567'),
(3, 21, 'PAY-EQNG8U3B94XSL265KDTPHAYC', '2021-05-29', 1, '2', 85, 'BRGY. SITIO FATIMA', '09751234568'),
(4, 22, 'PAY-67YLZ3CKPO1SHVB59REMJQ4I', '2021-05-29', 2, '', 0, 'apas', '09751234568'),
(5, 22, 'PAY-L3OMSANWPT7DIB9ZFGJ56EQR', '2021-05-29', 1, '1', 155, 'Moalboal', '09751234568'),
(6, 23, 'PAY-9AD2Q6GFN3WPHSTC47EVBKMR', '2021-05-29', 1, '3', 100, 'Room 2 ABC apartment, Apas, Cebu City', '0999999999'),
(7, 24, 'PAY-XJNO9BH4M7ISGVD3QPW6LE5C', '2022-04-25', 1, '1', 155, 'Room 2 ABC apartment, Apas, Cebu City', '0999999999');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'Code', 'Projects', '', '', 'thanos1.jpg', 1, '', '', '2018-05-01'),
(9, 'harry@den.com', '$2y$10$Oongyx.Rv0Y/vbHGOxywl.qf18bXFiZOcEaI4ZpRRLzFNGKAhObSC', 0, 'Harry', 'Den', 'Silay City, Negros Occidental', '09092735719', 'male2.png', 1, 'k8FBpynQfqsv', 'wzPGkX5IODlTYHg', '2018-05-09'),
(12, 'christine@gmail.com', '$2y$10$ozW4c8r313YiBsf7HD7m6egZwpvoE983IHfZsPRxrO1hWXfPRpxHO', 0, 'Christine', 'becker', 'demo', '7542214500', 'female3.jpg', 1, '', '', '2018-07-09'),
(18, 'trish@admin.com', '$2y$10$BJDZn06xZWCMUSK7fEetA.yobytjZEZV9wzW.X6HiRkTkhIfuuH.S', 0, 'Trish', 'Baa', 'Apas, Cebu City', '09991234567', 'marcyyy.png', 1, 'EX4lcpIoVL2a', '', '2021-05-27'),
(19, 'abby@admin.com', '$2y$10$ALFH5F3AAqBz1FMwSTdRvOhch/6aOqVREG6tSPZyEqP2IBSDhvbLy', 0, 'Abby', 'Gador', 'Lahug, Cebu City', '09751234568', 'bb.jpg', 1, 'Sysqt98nIRhJ', '', '2021-05-27'),
(20, 'user@gmail.com', '$2y$10$8jmi5MTKWD9sRJ0DRRTCB.MPo/9TeQi48tcul4c36Cfskw17a/0Ii', 0, 'Test', 'User', '', '', '', 1, 'wbql7YhjSBaT', '', '2021-05-27'),
(21, 'it224@gmail.com', '$2y$10$A8nhw6xRhPEQKmVRSieZ0euBaTqJKBLImi2M0mLenhp088unTpLym', 0, 'ABEGAIL', 'GADOR', 'BRGY. SITIO FATIMA', '09751234568', '', 1, 'ik5CsPKljgmO', '', '2021-05-29'),
(22, 'test@gmail.com', '$2y$10$RinwzC0HR0ak5DGoz94U4.DM74GfqytiNzobuv89rPPSzpyopt4Dm', 0, 'test admin', 'test', 'apas', '09751234568', '', 1, 'HLUcuAPXtIwC', '', '2021-05-29'),
(23, 'juan@gmail.com', '$2y$10$ELulX4/.39LIxJPQftXt5O0dyZl9iGWHAYFUtVewzwBW42fH8z4lO', 0, 'Juan', 'Cruz', '', '', '', 1, 'bIHKWA5OYd6J', '', '2021-05-29'),
(24, 'char@gmail.com', '$2y$10$HU.7Of9g/7/.Y6lHGKx8t.i2iGFja3uwd.oQDKE7oHquA66Kaq4oK', 0, 'Char', 'Char', '', '', '', 1, 'HXAKtQwjoRx5', '', '2022-04-25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
