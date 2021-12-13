-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 13, 2021 at 02:32 PM
-- Server version: 5.7.36
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sugunade_gift`
--

-- --------------------------------------------------------

--
-- Table structure for table `acrylicbedlamp`
--

CREATE TABLE `acrylicbedlamp` (
  `id` int(3) NOT NULL,
  `book_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_details` longtext COLLATE utf8mb4_unicode_ci,
  `actual_price` int(11) DEFAULT NULL,
  `offer_price` int(11) DEFAULT NULL,
  `sale` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `in_stock` text COLLATE utf8mb4_unicode_ci,
  `sku` int(11) DEFAULT NULL,
  `categories` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isbn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `additional_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories_id` int(11) DEFAULT NULL,
  `review` longtext COLLATE utf8mb4_unicode_ci,
  `product_attach` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1-Image, 2-Text, 3-No Attach',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `acrylicbedlamp`
--

INSERT INTO `acrylicbedlamp` (`id`, `book_title`, `book_path`, `thumb_img`, `product_img`, `product_details`, `actual_price`, `offer_price`, `sale`, `in_stock`, `sku`, `categories`, `tags`, `isbn`, `description`, `additional_info`, `categories_id`, `review`, `product_attach`, `created_at`, `updated_at`) VALUES
(281, 'Acrylic bed lamp Heart', 'Acrylic-bed-lamp-Heart-.png', 'Acrylic-bed-lamp-Heart-.png', NULL, 'Acrylic bed lamp Heart Night lamp for bedroom living room hotel etc. It\'s best product for gift. Fancy night lamp with 7 different colour led light lamp. It is wonderful for your bedroom baby room bathroom corridor and other rooms. Warm multicolor light will not affect your sleep. Cute Design shape will make your room unique Energy saving and environmental protection.', 400, 280, 'No', 'Yes', 282, 'Acrylic bed Lamp', 'Acrylic bed Lamp', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-16 07:31:46'),
(282, 'Acrylic bed Lamp oval', 'Acrylic-bed-Lamp-oval-.png', 'Acrylic-bed-Lamp-oval-.png', NULL, 'Acrylic bed Lamp oval Night lamp for bedroom living room hotel etc. It\'s best product for gift. Fancy night lamp with 7 different colour led light lamp. It is wonderful for your bedroom baby room bathroom corridor and other rooms. Warm multicolor light will not affect your sleep. Cute Design shape will make your room unique Energy saving and environmental protection.', 400, 280, 'No', 'Yes', 283, 'Acrylic bed Lamp', 'Acrylic bed Lamp', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-16 07:32:55'),
(283, 'Acrylic bed Lamp Flower', 'Acrylic-bed-Lamp-Flower-.png', 'Acrylic-bed-Lamp-Flower-.png', NULL, 'Acrylic bed Lamp Flower Night lamp for bedroom living room hotel etc. It\'s best product for gift. Fancy night lamp with 7 different colour led light lamp. It is wonderful for your bedroom baby room bathroom corridor and other rooms. Warm multicolor light will not affect your sleep. Cute Design shape will make your room unique Energy saving and environmental protection.', 400, 280, 'No', 'Yes', 284, 'Acrylic bed Lamp', 'Acrylic bed Lamp', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-16 07:34:34'),
(284, 'Acrylic bed Lamp Rectagle', 'Acrylic-bed-Lamp-Rectagle-.png', 'Acrylic-bed-Lamp-Rectagle-.png', NULL, 'Acrylic bed Lamp Rectagle Night lamp for bedroom living room hotel etc. It\'s best product for gift. Fancy night lamp with 7 different colour led light lamp. It is wonderful for your bedroom baby room bathroom corridor and other rooms. Warm multicolor light will not affect your sleep. Cute Design shape will make your room unique Energy saving and environmental protection.', 400, 280, 'No', 'Yes', 285, 'Acrylic bed Lamp', 'Acrylic bed Lamp', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-16 07:35:17'),
(285, 'Multi Colour Acrylic Table top-Heart', 'Multi-Colour-Acrylic-Table-top-Heart-.png', 'Multi-Colour-Acrylic-Table-top-Heart-.png', NULL, 'Multi Colour Acrylic Table top-Heart Night lamp for bedroom living room hotel etc. It\'s best product for gift. Fancy night lamp with 7 different colour led light lamp. It is wonderful for your bedroom baby room bathroom corridor and other rooms. Warm multicolor light will not affect your sleep. Cute Design shape will make your room unique Energy saving and environmental protection.', 1200, 840, 'No', 'Yes', 286, 'Acrylic bed Lamp', 'Acrylic bed Lamp', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-16 07:35:46'),
(286, 'Multi Colour Acrylic Table top-Rectagle', 'Multi-Colour-Acrylic-Table-top-Rectagle-.png', 'Multi-Colour-Acrylic-Table-top-Rectagle-.png', NULL, 'Multi Colour Acrylic Table top-Rectagle Night lamp for bedroom living room hotel etc. It\'s best product for gift. Fancy night lamp with 7 different colour led light lamp. It is wonderful for your bedroom baby room bathroom corridor and other rooms. Warm multicolor light will not affect your sleep. Cute Design shape will make your room unique Energy saving and environmental protection.', 1200, 840, 'No', 'Yes', 287, 'Acrylic bed Lamp', 'Acrylic bed Lamp', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-16 07:36:14'),
(287, 'Multi Colour Acrylic Table Heart With Text', 'Multi-Colour-Acrylic-Table-Heart-With-Text-.png', 'Multi-Colour-Acrylic-Table-Heart-With-Text-.png', NULL, 'Multi Colour Acrylic Table Heart With Text Night lamp for bedroom living room hotel etc. It\'s best product for gift. Fancy night lamp with 7 different colour led light lamp. It is wonderful for your bedroom baby room bathroom corridor and other rooms. Warm multicolor light will not affect your sleep. Cute Design shape will make your room unique Energy saving and environmental protection.', 1200, 840, 'No', 'Yes', 288, 'Acrylic bed Lamp', 'Acrylic bed Lamp', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 2, '0000-00-00 00:00:00', '2021-07-16 07:37:20'),
(288, 'LED Black Light Frame Fiber', 'LED-Black-Light-Frame-Fiber-.png', 'LED-Black-Light-Frame-Fiber-.png', NULL, 'LED Black Light Frame Fiber Night lamp for bedroom living room hotel etc. It\'s best product for gift. Fancy night lamp with 7 different colour led light lamp. It is wonderful for your bedroom baby room bathroom corridor and other rooms. Warm multicolor light will not affect your sleep. Cute Design shape will make your room unique Energy saving and environmental protection.', 1600, 1120, 'No', 'Yes', 289, 'Acrylic bed Lamp', 'Acrylic bed Lamp', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-16 07:38:11'),
(289, 'LED Black Light Frame', 'LED-Black-Light-Frame--.png', 'LED-Black-Light-Frame--.png', NULL, 'LED Black Light Frame  Night lamp for bedroom living room hotel etc. It\'s best product for gift. Fancy night lamp with 7 different colour led light lamp. It is wonderful for your bedroom baby room bathroom corridor and other rooms. Warm multicolor light will not affect your sleep. Cute Design shape will make your room unique Energy saving and environmental protection.', 3000, 2100, 'No', 'Yes', 290, 'Acrylic bed Lamp', 'Acrylic bed Lamp', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-16 07:38:53');

-- --------------------------------------------------------

--
-- Table structure for table `all_product`
--

CREATE TABLE `all_product` (
  `A` varchar(3) DEFAULT NULL,
  `B` varchar(52) DEFAULT NULL,
  `C` varchar(503) DEFAULT NULL,
  `D` varchar(4926) DEFAULT NULL,
  `E` varchar(10) DEFAULT NULL,
  `F` varchar(11) DEFAULT NULL,
  `G` varchar(33) DEFAULT NULL,
  `H` varchar(10) DEFAULT NULL,
  `I` varchar(13) DEFAULT NULL,
  `J` varchar(46) DEFAULT NULL,
  `K` varchar(77) DEFAULT NULL,
  `L` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `all_product`
--

INSERT INTO `all_product` (`A`, `B`, `C`, `D`, `E`, `F`, `G`, `H`, `I`, `J`, `K`, `L`) VALUES
('SKU', 'Name', 'Short description', 'Description', 'Width (cm)', 'Height (cm)', NULL, 'Sale price', 'Regular price', 'Categories', 'Images', NULL),
('1', 'White cup', '<b>White cup</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> White cup </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>White cup </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>White cup</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '20', '9', 'Width: 20 cm, Height: 9 cm', '168', '168', 'Mug', 'Mug/White-cup-1.png', NULL),
('2', 'Tea Cup', '<b>Tea Cup</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> Tea Cup </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>Tea Cup </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>Tea Cup</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '17', '6', 'Width: 17 cm, Height: 6 cm', '210', '210', 'Mug', 'Mug/Tea-Cup-2.png', NULL),
('3', 'Big Mug', '<b>Big Mug</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> Big Mug </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>Big Mug </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>Big Mug</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '20', '10', 'Width: 20 cm, Height: 10 cm', '350', '350', 'Mug', 'Mug/Big-Mug-3.png', NULL),
('4', 'White Heart Handel Cup', '<b>White Heart Handel Cup</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> White Heart Handel Cup </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>White Heart Handel Cup </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>White Heart Handel Cup</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '20', '9', 'Width: 20 cm, Height: 9 cm', '280', '280', 'Mug', 'Mug/White-Heart-Handel-Cup-4.png', NULL),
('5', 'Red Heart Handel Mug', '<b>Red Heart Handel Mug</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> Red Heart Handel Mug </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>Red Heart Handel Mug </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>Red Heart Handel Mug</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '20', '9', 'Width: 20 cm, Height: 9 cm', '350', '350', 'Mug', 'Mug/Red-Heart-Handel-Mug-5.png', NULL),
('6', 'White Heart Shape Handel', '<b>White Heart Shape Handel</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> White Heart Shape Handel </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>White Heart Shape Handel </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>White Heart Shape Handel</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '17', '6', 'Width: 17 cm, Height: 6 cm', '350', '350', 'Mug', 'Mug/White-Heart-Shape-Handel-6.png', NULL),
('7', 'Black Patch Mug', '<b>Black Patch Mug</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> Black Patch Mug </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>Black Patch Mug </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>Black Patch Mug</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '18', '8', 'Width: 18 cm, Height: 8 cm', '350', '350', 'Mug', 'Mug/Black-Patch-Mug-7.png', NULL),
('8', 'Gold Ceramic Mug', '<b>Gold Ceramic Mug</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> Gold Ceramic Mug </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>Gold Ceramic Mug </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>Gold Ceramic Mug</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '20', '9', 'Width: 20 cm, Height: 9 cm', '350', '350', 'Mug', 'Mug/Gold-Ceramic-Mug-8.png', NULL);
INSERT INTO `all_product` (`A`, `B`, `C`, `D`, `E`, `F`, `G`, `H`, `I`, `J`, `K`, `L`) VALUES
('9', 'Silver Ceramic Mug', '<b>Silver Ceramic Mug</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> Silver Ceramic Mug </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>Silver Ceramic Mug </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>Silver Ceramic Mug</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '20', '9', 'Width: 20 cm, Height: 9 cm', '350', '350', 'Mug', 'Mug/Silver-Ceramic-Mug-9.png', NULL),
('10', 'Steel Mug', '<b>Steel Mug</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> Steel Mug </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>Steel Mug </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>Steel Mug</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '17', '6', 'Width: 17 cm, Height: 6 cm', '420', '420', 'Mug', 'Mug/Steel-Mug-10.png', NULL),
('11', 'Forsted Mug', '<b>Forsted Mug</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> Forsted Mug </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>Forsted Mug </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>Forsted Mug</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '20', '9', 'Width: 20 cm, Height: 9 cm', '350', '350', 'Mug', 'Mug/Forsted-Mug-11.png', NULL),
('12', 'Inner Colour Ceramic-Brown', '<b>Inner Colour Ceramic-Brown</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> Inner Colour Ceramic-Brown </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>Inner Colour Ceramic-Brown </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>Inner Colour Ceramic-Brown</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '20', '9', 'Width: 20 cm, Height: 9 cm', '280', '280', 'Mug', 'Mug/Inner-Colour-Ceramic-Brown-12.png', NULL),
('13', 'Inner Colour Ceramic-Pink', '<b>Inner Colour Ceramic-Pink</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> Inner Colour Ceramic-Pink </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>Inner Colour Ceramic-Pink </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>Inner Colour Ceramic-Pink</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '20', '9', 'Width: 20 cm, Height: 9 cm', '280', '280', 'Mug', 'Mug/Inner-Colour-Ceramic-Pink-13.png', NULL),
('14', 'Inner Colour Ceramic-Orange', '<b>Inner Colour Ceramic-Orange</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> Inner Colour Ceramic-Orange </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>Inner Colour Ceramic-Orange </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>Inner Colour Ceramic-Orange</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '20', '9', 'Width: 20 cm, Height: 9 cm', '280', '280', 'Mug', 'Mug/Inner-Colour-Ceramic-Orange-14.png', NULL),
('15', 'Inner Colour Ceramic-Dark Green', '<b>Inner Colour Ceramic-Dark Green</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> Inner Colour Ceramic-Dark Green </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>Inner Colour Ceramic-Dark Green </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>Inner Colour Ceramic-Dark Green</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '20', '9', 'Width: 20 cm, Height: 9 cm', '280', '280', 'Mug', 'Mug/Inner-Colour-Ceramic-Dark-Green-15.png', NULL),
('16', 'Inner Colour Ceramic-Dark Blue', '<b>Inner Colour Ceramic-Dark Blue</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> Inner Colour Ceramic-Dark Blue </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>Inner Colour Ceramic-Dark Blue </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>Inner Colour Ceramic-Dark Blue</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '20', '9', 'Width: 20 cm, Height: 9 cm', '280', '280', 'Mug', 'Mug/Inner-Colour-Ceramic-Dark-Blue-16.png', NULL);
INSERT INTO `all_product` (`A`, `B`, `C`, `D`, `E`, `F`, `G`, `H`, `I`, `J`, `K`, `L`) VALUES
('17', 'Inner Colour Ceramic-Lite Blue', '<b>Inner Colour Ceramic-Lite Blue</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> Inner Colour Ceramic-Lite Blue </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>Inner Colour Ceramic-Lite Blue </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>Inner Colour Ceramic-Lite Blue</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '20', '9', 'Width: 20 cm, Height: 9 cm', '280', '280', 'Mug', 'Mug/Inner-Colour-Ceramic-Lite--Blue-17.png', NULL),
('18', 'Inner Colour Ceramic-Red', '<b>Inner Colour Ceramic-Red</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> Inner Colour Ceramic-Red </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>Inner Colour Ceramic-Red </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>Inner Colour Ceramic-Red</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '20', '9', 'Width: 20 cm, Height: 9 cm', '280', '280', 'Mug', 'Mug/Inner-Colour-Ceramic-Red-18.png', NULL),
('19', 'Inner Colour Ceramic-Lite Green', '<b>Inner Colour Ceramic-Lite Green</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> Inner Colour Ceramic-Lite Green </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>Inner Colour Ceramic-Lite Green </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>Inner Colour Ceramic-Lite Green</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '20', '9', 'Width: 20 cm, Height: 9 cm', '280', '280', 'Mug', 'Mug/Inner-Colour-Ceramic-Lite--Green-19.png', NULL),
('20', 'Inner Colour Ceramic-Black', '<b>Inner Colour Ceramic-Black</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> Inner Colour Ceramic-Black </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>Inner Colour Ceramic-Black </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>Inner Colour Ceramic-Black</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '20', '9', 'Width: 20 cm, Height: 9 cm', '280', '280', 'Mug', 'Mug/Inner-Colour-Ceramic-Black-20.png', NULL),
('21', 'Inner Colour Ceramic-Yellow', '<b>Inner Colour Ceramic-Yellow</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> Inner Colour Ceramic-Yellow </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>Inner Colour Ceramic-Yellow </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>Inner Colour Ceramic-Yellow</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '20', '9', 'Width: 20 cm, Height: 9 cm', '280', '280', 'Mug', 'Mug/Inner-Colour-Ceramic-Yellow-21.png', NULL),
('22', 'Lovers Mug', '<b>Lovers Mug</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> Lovers Mug </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>Lovers Mug </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>Lovers Mug</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '6.5', '8.5;6.5', 'Width: 6.5 cm, Height: 8.5;6.5 cm', '630', '630', 'Mug', 'Mug/Lovers-Mug-22.png', NULL),
('23', 'Magic Mug-Black', '<b>Magic Mug-Black</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> Magic Mug-Black </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>Magic Mug-Black </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>Magic Mug-Black</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '20', '9', 'Width: 20 cm, Height: 9 cm', '350', '350', 'Mug', 'Mug/Magic-Mug-Black-23.png', NULL),
('24', 'Magic Mug-Red', '<b>Magic Mug-Red</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> Magic Mug-Red </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>Magic Mug-Red </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>Magic Mug-Red</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '20', '9', 'Width: 20 cm, Height: 9 cm', '350', '350', 'Mug', 'Mug/Magic-Mug-Red-24.png', NULL);
INSERT INTO `all_product` (`A`, `B`, `C`, `D`, `E`, `F`, `G`, `H`, `I`, `J`, `K`, `L`) VALUES
('25', 'Magic Mug-Blue', '<b>Magic Mug-Blue</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> Magic Mug-Blue </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>Magic Mug-Blue </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>Magic Mug-Blue</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '20', '9', 'Width: 20 cm, Height: 9 cm', '350', '350', 'Mug', 'Mug/Magic-Mug-Blue-25.png', NULL),
('26', 'Heart Handel Magic Mug-Black', '<b>Heart Handel Magic Mug-Black</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> Heart Handel Magic Mug-Black </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>Heart Handel Magic Mug-Black </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>Heart Handel Magic Mug-Black</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '20', '9', 'Width: 20 cm, Height: 9 cm', '420', '420', 'Mug', 'Mug/Heart-Handel-Magic-Mug-Black-26.png', NULL),
('27', 'Heart Handel Magic Mug-Blue', '<b>Heart Handel Magic Mug-Blue</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> Heart Handel Magic Mug-Blue </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>Heart Handel Magic Mug-Blue </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>Heart Handel Magic Mug-Blue</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '20', '9', 'Width: 20 cm, Height: 9 cm', '420', '420', 'Mug', 'Mug/Heart-Handel-Magic-Mug-Blue-27.png', NULL),
('28', 'Heart Handel Magic Mug-Red', '<b>Heart Handel Magic Mug-Red</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> Heart Handel Magic Mug-Red </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>Heart Handel Magic Mug-Red </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>Heart Handel Magic Mug-Red</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '20', '9', 'Width: 20 cm, Height: 9 cm', '420', '420', 'Mug', 'Mug/Heart-Handel-Magic-Mug-Red-28.png', NULL),
('29', 'Heart Shape Magic Mug-Black', '<b>Heart Shape Magic Mug-Black</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> Heart Shape Magic Mug-Black </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>Heart Shape Magic Mug-Black </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>Heart Shape Magic Mug-Black</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '13.5', '7', 'Width: 13.5 cm, Height: 7 cm', '490', '490', 'Mug', 'Mug/Heart-Shape-Magic-Mug-Black-29.png', NULL),
('30', 'Heart Shape Magic Mug-Blue', '<b>Heart Shape Magic Mug-Blue</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> Heart Shape Magic Mug-Blue </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>Heart Shape Magic Mug-Blue </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>Heart Shape Magic Mug-Blue</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '13.5', '7', 'Width: 13.5 cm, Height: 7 cm', '490', '490', 'Mug', 'Mug/Heart-Shape-Magic-Mug-Blue-30.png', NULL),
('31', 'Heart Shape Magic Mug-Red', '<b>Heart Shape Magic Mug-Red</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> Heart Shape Magic Mug-Red </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>Heart Shape Magic Mug-Red </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>Heart Shape Magic Mug-Red</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '13.5', '7', 'Width: 13.5 cm, Height: 7 cm', '490', '490', 'Mug', 'Mug/Heart-Shape-Magic-Mug-Red-31.png', NULL),
('32', 'Tea Cup-White', '<b>Tea Cup-White</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> Tea Cup-White </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>Tea Cup-White </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>Tea Cup-White</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '17', '6', 'Width: 17 cm, Height: 6 cm', '210', '210', 'Mug', 'Mug/Tea-Cup-White-32.png', NULL);
INSERT INTO `all_product` (`A`, `B`, `C`, `D`, `E`, `F`, `G`, `H`, `I`, `J`, `K`, `L`) VALUES
('33', 'Tea Cup-Blue', '<b>Tea Cup-Blue</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> Tea Cup-Blue </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>Tea Cup-Blue </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>Tea Cup-Blue</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '17', '6', 'Width: 17 cm, Height: 6 cm', '280', '280', 'Mug', 'Mug/Tea-Cup-Blue-33.png', NULL),
('34', 'Tea Cup-Red', '<b>Tea Cup-Red</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> Tea Cup-Red </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>Tea Cup-Red </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>Tea Cup-Red</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '17', '6', 'Width: 17 cm, Height: 6 cm', '280', '280', 'Mug', 'Mug/Tea-Cup-Red-34.png', NULL),
('35', 'Tea Cup-Yellow', '<b>Tea Cup-Yellow</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> Tea Cup-Yellow </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>Tea Cup-Yellow </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>Tea Cup-Yellow</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '17', '6', 'Width: 17 cm, Height: 6 cm', '280', '280', 'Mug', 'Mug/Tea-Cup-Yellow-35.png', NULL),
('36', 'Tea Cup-Green', '<b>Tea Cup-Green</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> Tea Cup-Green </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>Tea Cup-Green </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>Tea Cup-Green</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '17', '6', 'Width: 17 cm, Height: 6 cm', '280', '280', 'Mug', 'Mug/Tea-Cup-Green-36.png', NULL),
('37', 'Polymer Mug-White', '<b>Polymer Mug-White</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> Polymer Mug-White </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>Polymer Mug-White </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>Polymer Mug-White</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '20', '9', 'Width: 20 cm, Height: 9 cm', '252', '252', 'Mug', 'Mug/Polymer-Mug-White-37.png', NULL),
('38', 'Polymer Mug-Sky Blue', '<b>Polymer Mug-Sky Blue</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> Polymer Mug-Sky Blue </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>Polymer Mug-Sky Blue </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>Polymer Mug-Sky Blue</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '20', '9', 'Width: 20 cm, Height: 9 cm', '322', '322', 'Mug', 'Mug/Polymer-Mug-Sky-Blue-38.png', NULL),
('39', 'Polymer Mug-Yellow', '<b>Polymer Mug-Yellow</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> Polymer Mug-Yellow </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>Polymer Mug-Yellow </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>Polymer Mug-Yellow</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '20', '9', 'Width: 20 cm, Height: 9 cm', '322', '322', 'Mug', 'Mug/Polymer-Mug-Yellow-39.png', NULL),
('40', 'Polymer Mug-Red', '<b>Polymer Mug-Red</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> Polymer Mug-Red </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>Polymer Mug-Red </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>Polymer Mug-Red</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '20', '9', 'Width: 20 cm, Height: 9 cm', '322', '322', 'Mug', 'Mug/Polymer-Mug-Red-40.png', NULL);
INSERT INTO `all_product` (`A`, `B`, `C`, `D`, `E`, `F`, `G`, `H`, `I`, `J`, `K`, `L`) VALUES
('41', 'Polymer Heart Mug-Blue', '<b>Polymer Heart Mug-Blue</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> Polymer Heart Mug-Blue </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>Polymer Heart Mug-Blue </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>Polymer Heart Mug-Blue</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '20', '9', 'Width: 20 cm, Height: 9 cm', '350', '350', 'Mug', 'Mug/Polymer-Heart--Mug-Blue-41.png', NULL),
('42', 'Polymer Heart Mug-Red', '<b>Polymer Heart Mug-Red</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> Polymer Heart Mug-Red </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>Polymer Heart Mug-Red </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>Polymer Heart Mug-Red</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '20', '9', 'Width: 20 cm, Height: 9 cm', '350', '350', 'Mug', 'Mug/Polymer-Heart--Mug-Red-42.png', NULL),
('43', 'Happy Birthday Mug', '<b>Happy Birthday Mug</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> Happy Birthday Mug </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>Happy Birthday Mug </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>Happy Birthday Mug</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '20', '9', 'Width: 20 cm, Height: 9 cm', '420', '420', 'Mug', 'Mug/Happy-Birthday-Mug-43.png', NULL),
('44', 'Love You Forever Mug', '<b>Love You Forever Mug</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> Love You Forever Mug </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>Love You Forever Mug </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>Love You Forever Mug</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '20', '9', 'Width: 20 cm, Height: 9 cm', '420', '420', 'Mug', 'Mug/Love-You-Forever-Mug-44.png', NULL),
('45', 'Happy Anniversary Mug', '<b>Happy Anniversary Mug</b> \\n \\n<span style=\'font-weight: 400;\'>This is one beautifully designed </span><span style=\'font-weight: 400;\'> Happy Anniversary Mug </span><span style=\'font-weight: 400;\'>you must pick. This </span><span style=\'font-weight: 400;\'>Happy Anniversary Mug </span><span style=\'font-weight: 400;\'>can be personalized by getting any image of your choice in it.</span> \\n \\n<span style=\'font-weight: 400;\'>* Please make sure to upload the image.</span>', '<span style=\'font-weight: 400;\'>Happy Anniversary Mug</span> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz., 350 ml Capacity) | Thermocol safe packaging</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless </span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>DISCLAIMER:</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered product might vary slightly from the image shown.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The date of delivery is provisional as it is shipped through third party courier partners.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>We try to get the gift delivered close to the provided date. However, your gift may be delivered prior or after the selected date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>To maintain the element of surprise on gift arrival, our courier partners do not call prior to delivering an order, so we request that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery may not be possible on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>For International deliveries, custom charges might be levied which are payable by the recipient.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery timeline: 3-7 working days from date of Order.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Please contact support@ subragiftstudios.com for any queries.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Price is exclusive of GST.</span></li> \\n <li style=\'font-weight: 400;\'><b>Delivery Coverage &amp; Charges </b><span style=\'font-weight: 400;\'>Rs.60</span></li> \\n <li style=\'font-weight: 400;\'><b>Amount will not be refunded if the order is cancelled after the work on the design has started</b></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>COD is not available on any personalized product</span></li> \\n <li style=\'font-weight: 400;\'><b>No return or exchange applicable</b></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'>Delivery Information</span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Since this product is shipped using the services of our courier partners, the date of delivery is an estimate.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Your gift may be delivered prior or after the chosen date of delivery.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>A courier product is delivered separately from other hand delivered products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>No deliveries are made on Sundays and National Holidays.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Our courier partners do not call prior to delivering an order, so we recommend that you provide an address at which someone will be present to receive the package.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>The delivery cannot be redirected to any other address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>All courier orders are carefully packed and shipped from our warehouse.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Soon after the order has been dispatched, you will receive a tracking number that will help you trace your gift.</span></li> \\n</ul> \\n<h2><span style=\'font-weight: 400;\'> </span><b>We will consider the order executed in the below cases:</b><span style=\'font-weight: 400;\'> </span></h2> \\n<ul> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivery not done due to the wrong address.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient not available.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Premises locked.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Wrong phone or Cell or Extension number/ not working/ no reply or not connecting/ reachable and delivery is not done.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Recipient refused the products.</span></li> \\n <li style=\'font-weight: 400;\'><span style=\'font-weight: 400;\'>Delivered the product at the Gate/ Reception/ Neighbour.</span></li> \\n</ul> \\n<h2></h2>', '20', '9', 'Width: 20 cm, Height: 9 cm', '420', '420', 'Mug', 'Mug/Happy-Anniversary-Mug-45.png', NULL),
('46', 'Stainless Steel Blue Coated 600 ML', 'Stainless Steel Blue Coated 600 ML', 'Stainless Steel Blue Coated 600 ML', NULL, NULL, NULL, '490', '490', 'Water Bottle', 'Water-Bottle/Stainless-Steel-Blue-Coated-600-ML-46.png', NULL),
('47', 'Stainless Steel Coated 750 ML', 'Stainless Steel Coated 750 ML', 'Stainless Steel Coated 750 ML', NULL, NULL, NULL, '420', '420', 'Water Bottle', 'Water-Bottle/Stainless-Steel-Coated-750-ML-47.png', NULL),
('48', 'Red Water Bottle 750 ML', 'Red Water Bottle 750 ML', 'Red Water Bottle 750 ML', NULL, NULL, NULL, '280', '280', 'Water Bottle', 'Water-Bottle/Red-Water-Bottle-750-ML-48.png', NULL),
('49', 'Blue Water Bottle 750 ML', 'Blue Water Bottle 750 ML', 'Blue Water Bottle 750 ML', NULL, NULL, NULL, '280', '280', 'Water Bottle', 'Water-Bottle/Blue-Water-Bottle-750-ML-49.png', NULL),
('50', 'Metal Water Bottle White 600 ML', 'Metal Water Bottle White 600 ML', 'Metal Water Bottle White 600 ML', '18', '10', NULL, '490', '490', 'Water Bottle', 'Water-Bottle/Metal-Water-Bottle--White--600-ML-50.png', NULL),
('51', 'Metal Water Bottle White 750 ML', 'Metal Water Bottle White 750 ML', 'Metal Water Bottle White 750 ML', '18', '14', NULL, '560', '560', 'Water Bottle', 'Water-Bottle/Metal-Water-Bottle--White-750-ML-51.png', NULL),
('52', 'Stainless Flask 350 ML', 'Stainless Flask 350 ML', 'Stainless Flask 350 ML', '18', '10', NULL, '1050', '1050', 'Water Bottle', 'Water-Bottle/Stainless-Flask-350-ML-52.png', NULL),
('53', 'Stain Square Pillow', 'Stain Square Pillow', 'Stain Square Pillow', '10', '10', NULL, '490', '490', 'Pillows', 'Pillows/Stain-Square-Pillow-53.png', NULL),
('54', 'Stain Heart Pillow', 'Stain Heart Pillow', 'Stain Heart Pillow', '8', '9', NULL, '490', '490', 'Pillows', 'Pillows/Stain-Heart--Pillow-54.png', NULL),
('55', 'Red Fur Pillow Square', 'Red Fur Pillow Square', 'Red Fur Pillow Square', '7.5', '7.5', NULL, '630', '630', 'Pillows', 'Pillows/Red-Fur-Pillow-Square-55.png', NULL),
('56', 'White Fur Pillow Square', 'White Fur Pillow Square', 'White Fur Pillow Square', '7.5', '7.5', NULL, '630', '630', 'Pillows', 'Pillows/White--Fur-Pillow-Square-56.png', NULL),
('57', 'Red Fur Pillow Heart', 'Red Fur Pillow Heart', 'Red Fur Pillow Heart', '7', '8', NULL, '560', '560', 'Pillows', 'Pillows/Red-Fur-Pillow-Heart-57.png', NULL),
('58', 'White Fur Pillow Heart', 'White Fur Pillow Heart', 'White Fur Pillow Heart', '7', '8', NULL, '560', '560', 'Pillows', 'Pillows/White--Fur-Pillow-Heart-58.png', NULL),
('59', 'Pink Fur Pillow Heart', 'Pink Fur Pillow Heart', 'Pink Fur Pillow Heart', '7', '8', NULL, '560', '560', 'Pillows', 'Pillows/Pink--Fur-Pillow-Heart-59.png', NULL),
('60', 'Blue Fur Pillow Heart', 'Blue Fur Pillow Heart', 'Blue Fur Pillow Heart', '7', '8', NULL, '560', '560', 'Pillows', 'Pillows/Blue--Fur-Pillow-Heart-60.png', NULL),
('61', 'Yellow Fur Pillow Heart', 'Yellow Fur Pillow Heart', 'Yellow Fur Pillow Heart', '7', '8', NULL, '560', '560', 'Pillows', 'Pillows/Yellow-Fur-Pillow-Heart-61.png', NULL),
('62', 'Velvet heart Pillow', 'Velvet heart Pillow', 'Velvet heart Pillow', '7', '8', NULL, '630', '630', 'Pillows', 'Pillows/Velvet-heart-Pillow-62.png', NULL),
('63', 'Rose Petal Rd Heart', 'Rose Petal Rd Heart', 'Rose Petal Rd Heart', '8', '9', NULL, '699.3', '699.3', 'Pillows', 'Pillows/Rose-Petal-Rd-Heart-63.png', NULL),
('64', 'Love Red Fur Pillow', 'Love Red Fur Pillow', 'Love Red Fur Pillow', '7', '7', NULL, '699.3', '699.3', 'Pillows', 'Pillows/Love-Red-Fur-Pillow-64.png', NULL),
('65', 'Love Violet Fur Pillow', 'Love Violet Fur Pillow', 'Love Violet Fur Pillow', '7', '7', NULL, '699.3', '699.3', 'Pillows', 'Pillows/Love-Violet-Fur-Pillow-65.png', NULL),
('66', 'Love Yellow Fur Pillow', 'Love Yellow Fur Pillow', 'Love Yellow Fur Pillow', '7', '7', NULL, '699.3', '699.3', 'Pillows', 'Pillows/Love-Yellow-Fur-Pillow-66.png', NULL),
('67', 'Love Blue Fur Pillow', 'Love Blue Fur Pillow', 'Love Blue Fur Pillow', '7', '7', NULL, '699.3', '699.3', 'Pillows', 'Pillows/Love-Blue-Fur-Pillow-67.png', NULL),
('68', 'Love Pink Fur Pillow', 'Love Pink Fur Pillow', 'Love Pink Fur Pillow', '7', '7', NULL, '699.3', '699.3', 'Pillows', 'Pillows/Love-Pink-Fur-Pillow-68.png', NULL),
('69', 'Yellow Velvet Pillow', 'Yellow Velvet Pillow', 'Yellow Velvet Pillow', '10.5', '7.5', NULL, '630', '630', 'Pillows', 'Pillows/Yellow-Velvet-Pillow-69.png', NULL),
('70', 'Megenta Velvet Pillow', 'Megenta Velvet Pillow', 'Megenta Velvet Pillow', '10.5', '7.5', NULL, '630', '630', 'Pillows', 'Pillows/Megenta-Velvet-Pillow-70.png', NULL),
('71', 'Black Velvet Pillow', 'Black Velvet Pillow', 'Black Velvet Pillow', '10.5', '7.5', NULL, '630', '630', 'Pillows', 'Pillows/Black-Velvet-Pillow-71.png', NULL),
('72', '3 Heart Velvet Pillow ', '3 Heart Velvet Pillow ', '3 Heart Velvet Pillow ', NULL, NULL, NULL, '840', '840', 'Pillows', 'Pillows/3-Heart-Velvet-Pillow--72.png', NULL),
('73', 'Heart LED Pillow-Yellow', 'Heart LED Pillow-Yellow', 'Heart LED Pillow-Yellow', '7.5', '7.5', NULL, '699.3', '699.3', 'Pillows', 'Pillows/Heart-LED-Pillow-Yellow-73.png', NULL),
('74', 'Heart LED Pillow-Red', 'Heart LED Pillow-Red', 'Heart LED Pillow-Red', '8', '7 In', NULL, '699.3', '699.3', 'Pillows', 'Pillows/Heart-LED-Pillow-Red-74.png', NULL),
('75', 'Square LED Pillow-Yellow', 'Square LED Pillow-Yellow', 'Square LED Pillow-Yellow', '7.5', '7.5', NULL, '840', '840', 'Pillows', 'Pillows/Square-LED-Pillow-Yellow-75.png', NULL),
('76', 'Square LED Pillow-Red', 'Square LED Pillow-Red', 'Square LED Pillow-Red', '8', '7 In', NULL, '840', '840', 'Pillows', 'Pillows/Square-LED-Pillow-Red-76.png', NULL),
('77', 'Magic Pillow -Square', 'Magic Pillow -Square', 'Magic Pillow -Square', '10', '10', NULL, '699.3', '699.3', 'Pillows', 'Pillows/Magic-Pillow--Square-77.png', NULL),
('78', 'Magic Pillow -Heart', 'Magic Pillow -Heart', 'Magic Pillow -Heart', '9', '8', NULL, '699.3', '699.3', 'Pillows', 'Pillows/Magic-Pillow--Heart-78.png', NULL),
('79', 'Double Heart Pillow', 'Double Heart Pillow', 'Double Heart Pillow', '7.5', '7.5', NULL, '1050', '1050', 'Pillows', 'Pillows/Double-Heart-Pillow-79.png', NULL),
('80', 'Miss Smily Pillow', 'Miss Smily Pillow', 'Miss Smily Pillow', 'Front15', '15 Back7.5', NULL, '630', '630', 'Pillows', 'Pillows/Miss-Smily-Pillow-80.png', NULL),
('81', 'Mr Smily Pillow', 'Mr Smily Pillow', 'Mr Smily Pillow', 'Front15', '15 Back7.5', NULL, '630', '630', 'Pillows', 'Pillows/Mr-Smily-Pillow-81.png', NULL),
('82', 'Kiss Smily Pillow', 'Kiss Smily Pillow', 'Kiss Smily Pillow', 'Front15', '15 Back7.5', NULL, '630', '630', 'Pillows', 'Pillows/Kiss--Smily-Pillow-82.png', NULL),
('83', '2 Heart Smily Pillow', '2 Heart Smily Pillow', '2 Heart Smily Pillow', 'Front15', '15 Back7.5', NULL, '630', '630', 'Pillows', 'Pillows/2-Heart-Smily-Pillow-83.png', NULL),
('84', 'RK Pink Heart Pillow', 'RK Pink Heart Pillow', 'RK Pink Heart Pillow', '7.5', '7.5', NULL, '630', '630', 'Pillows', 'Pillows/RK-Pink-Heart-Pillow-84.png', NULL),
('85', 'Thin Stain Heart Pillow', 'Thin Stain Heart Pillow', 'Thin Stain Heart Pillow', '7', '7', NULL, '350', '350', 'Pillows', 'Pillows/Thin-Stain-Heart-Pillow-85.png', NULL),
('86', 'Jute FabricPillow', 'Jute FabricPillow', 'Jute FabricPillow', '10', '10', NULL, '699.3', '699.3', 'Pillows', 'Pillows/Jute-FabricPillow-86.png', NULL),
('87', 'Cushion Key Chain', 'Cushion Key Chain', 'Cushion Key Chain', '8', '8', NULL, '210', '210', 'Pillows', 'Pillows/Cushion-Key-Chain-87.png', NULL),
('88', 'Square Double Heart Pillow', 'Square Double Heart Pillow', 'Square Double Heart Pillow', '15', '15', NULL, '630', '630', 'Pillows', 'Pillows/Square-Double-Heart-Pillow-88.png', NULL),
('89', 'Square Double Heart Pillow-Red', 'Square Double Heart Pillow-Red', 'Square Double Heart Pillow-Red', '15', '15', NULL, '630', '630', 'Pillows', 'Pillows/Square-Double-Heart-Pillow-Red-89.png', NULL),
('90', 'Square Double Heart Pillow-Blue', 'Square Double Heart Pillow-Blue', 'Square Double Heart Pillow-Blue', '15', '15', NULL, '630', '630', 'Pillows', 'Pillows/Square-Double-Heart-Pillow-Blue-90.png', NULL),
('91', 'Square Double Heart Pillow-Violet', 'Square Double Heart Pillow-Violet', 'Square Double Heart Pillow-Violet', '15', '15', NULL, '630', '630', 'Pillows', 'Pillows/Square-Double-Heart-Pillow-Violet-91.png', NULL),
('92', 'Square Double Heart Pillow-Yellow', 'Square Double Heart Pillow-Yellow', 'Square Double Heart Pillow-Yellow', '15', '15', NULL, '630', '630', 'Pillows', 'Pillows/Square-Double-Heart-Pillow-Yellow-92.png', NULL),
('93', 'Small Fur Pillow Red', 'Small Fur Pillow Red', 'Small Fur Pillow Red', '5', '4.5', NULL, '280', '280', 'Pillows', 'Pillows/Small-Fur-Pillow-Red-93.png', NULL),
('94', 'Small Fur Pillow Blue', 'Small Fur Pillow Blue', 'Small Fur Pillow Blue', '5', '4.5', NULL, '280', '280', 'Pillows', 'Pillows/Small-Fur-Pillow-Blue-94.png', NULL),
('95', 'Small Fur Pillow Pink', 'Small Fur Pillow Pink', 'Small Fur Pillow Pink', '5', '4.5', NULL, '280', '280', 'Pillows', 'Pillows/Small-Fur-Pillow-Pink-95.png', NULL),
('96', 'Small Fur Pillow Yellow', 'Small Fur Pillow Yellow', 'Small Fur Pillow Yellow', '5', '4.5', NULL, '280', '280', 'Pillows', 'Pillows/Small-Fur-Pillow-Yellow-96.png', NULL),
('97', 'Small Fur Pillow White', 'Small Fur Pillow White', 'Small Fur Pillow White', '5', '4.5', NULL, '280', '280', 'Pillows', 'Pillows/Small-Fur-Pillow-White-97.png', NULL),
('98', 'Couple Pillow', 'Couple Pillow', 'Couple Pillow', '8.5', '8', NULL, '840', '840', 'Pillows', 'Pillows/Couple-Pillow-98.png', NULL),
('99', 'Cycle Teddy Bear-White', 'Cycle Teddy Bear-White', 'Cycle Teddy Bear-White', '5', '4', NULL, '770', '770', 'Teddy Bear', 'Teddy-Bear/Cycle-Teddy-Bear-White-99.png', NULL),
('100', 'Cycle Teddy Bear-Purple', 'Cycle Teddy Bear-Purple', 'Cycle Teddy Bear-Purple', '5', '4', NULL, '770', '770', 'Teddy Bear', 'Teddy-Bear/Cycle-Teddy-Bear-Purple-100.png', NULL),
('101', 'Cycle Teddy Bear-Yellow', 'Cycle Teddy Bear-Yellow', 'Cycle Teddy Bear-Yellow', '5', '4', NULL, '770', '770', 'Teddy Bear', 'Teddy-Bear/Cycle-Teddy-Bear-Yellow-101.png', NULL),
('102', 'Cycle Teddy Bear-Pink', 'Cycle Teddy Bear-Pink', 'Cycle Teddy Bear-Pink', '5', '4', NULL, '770', '770', 'Teddy Bear', 'Teddy-Bear/Cycle-Teddy-Bear-Pink-102.png', NULL),
('103', 'Cycle Teddy Bear-Blue', 'Cycle Teddy Bear-Blue', 'Cycle Teddy Bear-Blue', '5', '4', NULL, '770', '770', 'Teddy Bear', 'Teddy-Bear/Cycle-Teddy-Bear-Blue-103.png', NULL),
('104', 'Cycle Teddy Bear-Red', 'Cycle Teddy Bear-Red', 'Cycle Teddy Bear-Red', '5', '4', NULL, '770', '770', 'Teddy Bear', 'Teddy-Bear/Cycle-Teddy-Bear-Red-104.png', NULL),
('105', 'Couple Teddy Bear', 'Couple Teddy Bear', 'Couple Teddy Bear', '5', '4', NULL, '840', '840', 'Teddy Bear', 'Teddy-Bear/Couple-Teddy-Bear-105.png', NULL),
('106', 'I Love You Pillow Teddy Bear', 'I Love You Pillow Teddy Bear', 'I Love You Pillow Teddy Bear', '6', '5', NULL, '980', '980', 'Teddy Bear', 'Teddy-Bear/I-Love-You-Pillow-Teddy-Bear-106.png', NULL),
('107', 'Velvet Teddy Bear', 'Velvet Teddy Bear', 'Velvet Teddy Bear', '5', '4', NULL, '560', '560', 'Teddy Bear', 'Teddy-Bear/Velvet-Teddy-Bear-107.png', NULL),
('108', 'Big Teddy Bear with heart pillow', 'Big Teddy Bear with heart pillow', 'Big Teddy Bear with heart pillow', '5', '4', NULL, '1750', '1750', 'Teddy Bear', 'Teddy-Bear/-Big-Teddy-Bear--with-heart-pillow-108.png', NULL),
('109', 'Fur Teddy Bear 16 Inches Pink', 'Fur Teddy Bear 16 Inches Pink', 'Fur Teddy Bear 16 Inches Pink', '5', '4', NULL, '980', '980', 'Teddy Bear', 'Teddy-Bear/Fur-Teddy-Bear-16-Inches-Pink-109.png', NULL),
('110', 'Fur Teddy Bear 16 Inches Red', 'Fur Teddy Bear 16 Inches Red', 'Fur Teddy Bear 16 Inches Red', '5', '4', NULL, '980', '980', 'Teddy Bear', 'Teddy-Bear/Fur-Teddy-Bear-16-Inches-Red-110.png', NULL),
('111', 'Fur Teddy Bear 14Inches Pink', 'Fur Teddy Bear 14Inches Pink', 'Fur Teddy Bear 14Inches Pink', '5', '4', NULL, '910', '910', 'Teddy Bear', 'Teddy-Bear/Fur-Teddy-Bear-14Inches-Pink-111.png', NULL),
('112', 'Fur Teddy Bear 14Inches Red', 'Fur Teddy Bear 14Inches Red', 'Fur Teddy Bear 14Inches Red', '5', '4', NULL, '910', '910', 'Teddy Bear', 'Teddy-Bear/Fur-Teddy-Bear-14Inches-Red-112.png', NULL),
('113', 'Farmaan Verticle', 'Farmaan Verticle', 'Farmaan Verticle', '8', '12', NULL, '420', '420', 'Farmaan', 'Farmaan/Farmaan-Verticle-113.png', NULL),
('114', 'Farmaan Horizantal', 'Farmaan Horizantal', 'Farmaan Horizantal', '8', '12', NULL, '420', '420', 'Farmaan', 'Farmaan/Farmaan-Horizantal-114.png', NULL),
('115', 'Farmaan Biggest', 'Farmaan Biggest', 'Farmaan Biggest', '20', '30', NULL, '1960', '1960', 'Farmaan', 'Farmaan/Farmaan-Biggest-115.png', NULL),
('116', 'Farmaan Verticle', 'Farmaan Verticle', 'Farmaan Verticle', '12', '18', NULL, '699.3', '699.3', 'Farmaan', 'Farmaan/Farmaan-Verticle-116.png', NULL),
('117', 'Farmaan Horizantal', 'Farmaan Horizantal', 'Farmaan Horizantal', '12', '18', NULL, '699.3', '699.3', 'Farmaan', 'Farmaan/Farmaan-Horizantal-117.png', NULL),
('118', 'Ladies Pouch', 'Ladies Pouch', 'Ladies Pouch', '4', '7.5', NULL, '210', '210', 'Farmaan', 'Farmaan/Ladies-Pouch-118.png', NULL),
('119', 'Turkey Towel', 'Turkey Towel', 'Turkey Towel', '43', '20', NULL, '1050', '1050', 'Farmaan', 'Farmaan/Turkey-Towel-119.png', NULL),
('120', 'Turkey Napkin', 'Turkey Napkin', 'Turkey Napkin', '20', '12.5', NULL, '560', '560', 'Farmaan', 'Farmaan/Turkey-Napkin-120.png', NULL),
('121', 'Your own Face mask', 'Your own Face mask', 'Your own Face mask', '20', '12', NULL, '98', '98', 'Face Mask', 'Face-Mask/Your-own-Face-mask-121.png', NULL),
('122', 'Little Krishna', 'Little Krishna', 'Little Krishna', '20', '12', NULL, '98', '98', 'Face Mask', 'Face-Mask/Little-Krishna-122.png', NULL),
('123', 'Mottu Patlu', 'Mottu Patlu', 'Mottu Patlu', '20', '12', NULL, '98', '98', 'Face Mask', 'Face-Mask/Mottu-Patlu-123.png', NULL),
('124', 'Frozen', 'Frozen', 'Frozen', '20', '12', NULL, '98', '98', 'Face Mask', 'Face-Mask/Frozen-124.png', NULL),
('125', 'Chuttki', 'Chuttki', 'Chuttki', '20', '12', NULL, '98', '98', 'Face Mask', 'Face-Mask/Chuttki-125.png', NULL),
('126', 'Masha', 'Masha', 'Masha', '20', '12', NULL, '98', '98', 'Face Mask', 'Face-Mask/Masha-126.png', NULL),
('127', 'Cat', 'Cat', 'Cat', '20', '12', NULL, '98', '98', 'Face Mask', 'Face-Mask/Cat-127.png', NULL),
('128', 'Tiger', 'Tiger', 'Tiger', '20', '12', NULL, '98', '98', 'Face Mask', 'Face-Mask/Tiger-128.png', NULL),
('129', 'Tiger Mouth Open', 'Tiger Mouth Open', 'Tiger Mouth Open', '20', '12', NULL, '98', '98', 'Face Mask', 'Face-Mask/Tiger-Mouth-Open-129.png', NULL),
('130', 'Teeth', 'Teeth', 'Teeth', '20', '12', NULL, '98', '98', 'Face Mask', 'Face-Mask/Teeth-130.png', NULL),
('131', 'Shizu Dog', 'Shizu Dog', 'Shizu Dog', '20', '12', NULL, '98', '98', 'Face Mask', 'Face-Mask/Shizu-Dog-131.png', NULL),
('132', 'Skull', 'Skull', 'Skull', '20', '12', NULL, '98', '98', 'Face Mask', 'Face-Mask/Skull-132.png', NULL),
('133', 'Batman', 'Batman', 'Batman', '20', '12', NULL, '98', '98', 'Face Mask', 'Face-Mask/Batman-133.png', NULL),
('134', 'Pubg', 'Pubg', 'Pubg', '20', '12', NULL, '98', '98', 'Face Mask', 'Face-Mask/Pubg-134.png', NULL),
('135', 'Spiderman', 'Spiderman', 'Spiderman', '20', '12', NULL, '98', '98', 'Face Mask', 'Face-Mask/Spiderman-135.png', NULL),
('136', 'Ironman', 'Ironman', 'Ironman', '20', '12', NULL, '98', '98', 'Face Mask', 'Face-Mask/Ironman-136.png', NULL),
('137', 'Ready made Girl Face', 'Ready made Girl Face', 'Ready made Girl Face', '20', '12', NULL, '98', '98', 'Face Mask', 'Face-Mask/Ready-made-Girl-Face-137.png', NULL),
('138', 'Barbie Girl', 'Barbie Girl', 'Barbie Girl', '20', '12', NULL, '98', '98', 'Face Mask', 'Face-Mask/Barbie-Girl-138.png', NULL),
('139', 'Flower', 'Flower', 'Flower', '20', '12', NULL, '98', '98', 'Face Mask', 'Face-Mask/Flower-139.png', NULL),
('140', 'Su01 Stones Heart Key Single Side', 'Su01 Stones Heart Key Single Side', 'Su01 Stones Heart Key Single Side', NULL, NULL, NULL, '350', '350', 'Metal Key Chain', 'Key-Chains/Su01-Stones-Heart-Key-Single-Side-140.png', NULL),
('141', 'Su02 Stones Rectangle Key Single Side', 'Su02 Stones Rectangle Key Single Side', 'Su02 Stones Rectangle Key Single Side', NULL, NULL, NULL, '350', '350', 'Metal Key Chain', 'Key-Chains/Su02-Stones-Rectangle-Key-Single-Side-141.png', NULL),
('142', 'Su 72 Semi rectangle Key Single Side', 'Su 72 Semi rectangle Key Single Side', 'Su 72 Semi rectangle Key Single Side', NULL, NULL, NULL, '308', '308', 'Metal Key Chain', 'Key-Chains/Su-72-Semi-rectangle-Key-Single-Side-142.png', NULL),
('143', 'Su 09Heart Metal Key Double Side', 'Su 09Heart Metal Key Double Side', 'Su 09Heart Metal Key Double Side', NULL, NULL, NULL, '308', '308', 'Metal Key Chain', 'Key-Chains/Su-09Heart-Metal-Key-Double-Side-143.png', NULL),
('144', 'Su 10 Square Metal Key Double Side', 'Su 10 Square Metal Key Double Side', 'Su 10 Square Metal Key Double Side', NULL, NULL, NULL, '308', '308', 'Metal Key Chain', 'Key-Chains/Su-10-Square-Metal-Key-Double-Side-144.png', NULL),
('145', 'Su 11 Round Metal Key Double Side', 'Su 11 Round Metal Key Double Side', 'Su 11 Round Metal Key Double Side', NULL, NULL, NULL, '308', '308', 'Metal Key Chain', 'Key-Chains/Su-11-Round-Metal-Key-Double-Side-145.png', NULL),
('146', 'Su 12 Ovel Metal Key Double Side', 'Su 12 Ovel Metal Key Double Side', 'Su 12 Ovel Metal Key Double Side', NULL, NULL, NULL, '308', '308', 'Metal Key Chain', 'Key-Chains/Su-12-Ovel-Metal-Key-Double-Side-146.png', NULL),
('147', 'Su 05 Rotating Heart Key Double Side', 'Su 05 Rotating Heart Key Double Side', 'Su 05 Rotating Heart Key Double Side', NULL, NULL, NULL, '350', '350', 'Metal Key Chain', 'Key-Chains/Su-05-Rotating-Heart-Key-Double-Side-147.png', NULL),
('148', 'Su 07 Rotating Round Key Double Side', 'Su 07 Rotating Round Key Double Side', 'Su 07 Rotating Round Key Double Side', NULL, NULL, NULL, '350', '350', 'Metal Key Chain', 'Key-Chains/Su-07-Rotating-Round-Key-Double-Side-148.png', NULL),
('149', 'Su 73Red Suqare Key Double Side', 'Su 73Red Suqare Key Double Side', 'Su 73Red Suqare Key Double Side', NULL, NULL, NULL, '350', '350', 'Metal Key Chain', 'Key-Chains/Su-73Red-Suqare-Key-Double-Side-149.png', NULL),
('150', 'Su 74 Blue Square Key Double Side', 'Su 74 Blue Square Key Double Side', 'Su 74 Blue Square Key Double Side', NULL, NULL, NULL, '350', '350', 'Metal Key Chain', 'Key-Chains/Su-74-Blue-Square-Key-Double-Side-150.png', NULL),
('151', 'Su 75 Red Round Key Double side', 'Su 75 Red Round Key Double side', 'Su 75 Red Round Key Double side', NULL, NULL, NULL, '350', '350', 'Metal Key Chain', 'Key-Chains/Su-75-Red-Round-Key-Double-side-151.png', NULL),
('152', 'Su 76 Blue Round Key Double Side', 'Su 76 Blue Round Key Double Side', 'Su 76 Blue Round Key Double Side', NULL, NULL, NULL, '350', '350', 'Metal Key Chain', 'Key-Chains/Su-76-Blue-Round-Key-Double-Side-152.png', NULL),
('153', 'Su 77 Red Heart Key Double Side ', 'Su 77 Red Heart Key Double Side ', 'Su 77 Red Heart Key Double Side ', NULL, NULL, NULL, '350', '350', 'Metal Key Chain', 'Key-Chains/Su-77-Red-Heart-Key-Double-Side--153.png', NULL),
('154', 'Su 78 Blue Heart Key Double Side', 'Su 78 Blue Heart Key Double Side', 'Su 78 Blue Heart Key Double Side', NULL, NULL, NULL, '350', '350', 'Metal Key Chain', 'Key-Chains/Su-78--Blue-Heart-Key-Double-Side-154.png', NULL),
('155', 'Su 79 Red Rope Square Key Double side', 'Su 79 Red Rope Square Key Double side', 'Su 79 Red Rope Square Key Double side', NULL, NULL, NULL, '378', '378', 'Metal Key Chain', 'Key-Chains/Su-79-Red-Rope-Square-Key-Double-side-155.png', NULL),
('156', 'Su 80 Blue Rope Square Key Double side', 'Su 80 Blue Rope Square Key Double side', 'Su 80 Blue Rope Square Key Double side', NULL, NULL, NULL, '378', '378', 'Metal Key Chain', 'Key-Chains/Su-80-Blue-Rope-Square-Key-Double-side-156.png', NULL),
('157', 'Su 81 Red Rope Round Key Double side', 'Su 81 Red Rope Round Key Double side', 'Su 81 Red Rope Round Key Double side', NULL, NULL, NULL, '378', '378', 'Metal Key Chain', 'Key-Chains/Su-81-Red--Rope-Round--Key-Double-side-157.png', NULL),
('158', 'Su 82 Blue Rope Round Key Double side', 'Su 82 Blue Rope Round Key Double side', 'Su 82 Blue Rope Round Key Double side', NULL, NULL, NULL, '378', '378', 'Metal Key Chain', 'Key-Chains/Su-82--Blue-Rope-Round--Key-Double-side-158.png', NULL),
('159', 'Su 83 Red Rope Heart Key Double side', 'Su 83 Red Rope Heart Key Double side', 'Su 83 Red Rope Heart Key Double side', NULL, NULL, NULL, '378', '378', 'Metal Key Chain', 'Key-Chains/Su-83--Red--Rope-Heart---Key-Double-side-159.png', NULL),
('160', 'Su 83 Red Rope Blue Key Double side', 'Su 83 Red Rope Blue Key Double side', 'Su 83 Red Rope Blue Key Double side', NULL, NULL, NULL, '378', '378', 'Metal Key Chain', 'Key-Chains/Su-83--Red--Rope-Blue---Key-Double-side-160.png', NULL),
('161', '59 Round Metal Key Double Side', '59 Round Metal Key Double Side', '59 Round Metal Key Double Side', NULL, NULL, NULL, '210', '210', 'Metal Key Chain', 'Key-Chains/59-Round-Metal-Key-Double-Side-161.png', NULL),
('162', '60 Square Metal Key Double Side', '60 Square Metal Key Double Side', '60 Square Metal Key Double Side', NULL, NULL, NULL, '210', '210', 'Metal Key Chain', 'Key-Chains/60-Square-Metal-Key-Double-Side-162.png', NULL),
('163', '61 New Rectangle Metal Key Double Side', '61 New Rectangle Metal Key Double Side', '61 New Rectangle Metal Key Double Side', NULL, NULL, NULL, '210', '210', 'Metal Key Chain', 'Key-Chains/61-New-Rectangle-Metal-Key-Double-Side-163.png', NULL);
INSERT INTO `all_product` (`A`, `B`, `C`, `D`, `E`, `F`, `G`, `H`, `I`, `J`, `K`, `L`) VALUES
('164', '03 Heart Metal Key Single Side ', '03 Heart Metal Key Single Side ', '03 Heart Metal Key Single Side ', NULL, NULL, NULL, '210', '210', 'Metal Key Chain', 'Key-Chains/03-Heart-Metal-Key-Single-Side--164.png', NULL),
('165', '13 Oval Metal Key Double Side', '13 Oval Metal Key Double Side', '13 Oval Metal Key Double Side', NULL, NULL, NULL, '210', '210', 'Metal Key Chain', 'Key-Chains/13-Oval-Metal-Key-Double-Side-165.png', NULL),
('166', '62 Rottating Barrel Metal Double Side', '62 Rottating Barrel Metal Double Side', '62 Rottating Barrel Metal Double Side', NULL, NULL, NULL, '210', '210', 'Metal Key Chain', 'Key-Chains/62-Rottating-Barrel-Metal-Double-Side-166.png', NULL),
('167', '63 Rotating Long Metal Double Side', '63 Rotating Long Metal Double Side', '63 Rotating Long Metal Double Side', NULL, NULL, NULL, '210', '210', 'Metal Key Chain', 'Key-Chains/63--Rotating-Long-Metal-Double-Side-167.png', NULL),
('168', '64 Rotating Round Metal Double Side', '64 Rotating Round Metal Double Side', '64 Rotating Round Metal Double Side', NULL, NULL, NULL, '210', '210', 'Metal Key Chain', 'Key-Chains/64-Rotating-Round-Metal-Double-Side-168.png', NULL),
('169', '65 Red Heart Metal Key Double Side', '65 Red Heart Metal Key Double Side', '65 Red Heart Metal Key Double Side', NULL, NULL, NULL, '210', '210', 'Metal Key Chain', 'Key-Chains/65-Red-Heart-Metal-Key-Double-Side-169.png', NULL),
('170', '66 Diamond Metal Key Single Side', '66 Diamond Metal Key Single Side', '66 Diamond Metal Key Single Side', NULL, NULL, NULL, '210', '210', 'Metal Key Chain', 'Key-Chains/66-Diamond-Metal-Key-Single-Side-170.png', NULL),
('171', '67 Opener Metal Key Single Side', '67 Opener Metal Key Single Side', '67 Opener Metal Key Single Side', NULL, NULL, NULL, '210', '210', 'Metal Key Chain', 'Key-Chains/67-Opener-Metal-Key-Single-Side-171.png', NULL),
('172', '68 Locket Metal Key Single Side ', '68 Locket Metal Key Single Side ', '68 Locket Metal Key Single Side ', NULL, NULL, NULL, '210', '210', 'Metal Key Chain', 'Key-Chains/68-Locket-Metal-Key--Single-Side--172.png', NULL),
('173', '08 Round Metal Double Side', '08 Round Metal Double Side', '08 Round Metal Double Side', NULL, NULL, NULL, '210', '210', 'Metal Key Chain', 'Key-Chains/08-Round-Metal-Double-Side-173.png', NULL),
('174', '04 Rectangle Metal Key Single Side', '04 Rectangle Metal Key Single Side', '04 Rectangle Metal Key Single Side', NULL, NULL, NULL, '210', '210', 'Metal Key Chain', 'Key-Chains/04-Rectangle-Metal-Key-Single-Side-174.png', NULL),
('175', '15 Round Metal Key Single Side', '15 Round Metal Key Single Side', '15 Round Metal Key Single Side', NULL, NULL, NULL, '210', '210', 'Metal Key Chain', 'Key-Chains/15-Round-Metal-Key-Single-Side-175.png', NULL),
('176', '16 Camera Key Single Side', '16 Camera Key Single Side', '16 Camera Key Single Side', NULL, NULL, NULL, '210', '210', 'Metal Key Chain', 'Key-Chains/16-Camera-Key-Single-Side-176.png', NULL),
('177', '17 Friend Metal Key Double Side', '17 Friend Metal Key Double Side', '17 Friend Metal Key Double Side', NULL, NULL, NULL, '210', '210', 'Metal Key Chain', 'Key-Chains/17-Friend-Metal--Key-Double-Side-177.png', NULL),
('178', '18 Birthday Metal Key Double Side', '18 Birthday Metal Key Double Side', '18 Birthday Metal Key Double Side', NULL, NULL, NULL, '210', '210', 'Metal Key Chain', 'Key-Chains/18-Birthday-Metal-Key-Double-Side-178.png', NULL),
('179', '20 I Love you Metal Key Double Side', '20 I Love you Metal Key Double Side', '20 I Love you Metal Key Double Side', NULL, NULL, NULL, '210', '210', 'Metal Key Chain', 'Key-Chains/20-I-Love-you-Metal-Key--Double-Side-179.png', NULL),
('180', '69 Foot ball Metal Key Sing Side', '69 Foot ball Metal Key Sing Side', '69 Foot ball Metal Key Sing Side', NULL, NULL, NULL, '210', '210', 'Metal Key Chain', 'Key-Chains/69-Foot-ball-Metal-Key--Sing-Side-180.png', NULL),
('181', '86 Arch Oval Silver Key', '86 Arch Oval Silver Key', '86 Arch Oval Silver Key', NULL, NULL, NULL, '280', '280', 'Besyt QualityKey Chains 4', 'Key-Chains/86-Arch-Oval-Silver-Key-181.png', NULL),
('182', '87 Oval Silver Key', '87 Oval Silver Key', '87 Oval Silver Key', NULL, NULL, NULL, '280', '280', 'Besyt QualityKey Chains 4', 'Key-Chains/87-Oval-Silver-Key-182.png', NULL),
('183', '89 Sun Flower Silver Key', '89 Sun Flower Silver Key', '89 Sun Flower Silver Key', NULL, NULL, NULL, '280', '280', 'Besyt QualityKey Chains 4', 'Key-Chains/89-Sun-Flower-Silver-Key-183.png', NULL),
('184', '90 Rectangle Silver Key', '90 Rectangle Silver Key', '90 Rectangle Silver Key', NULL, NULL, NULL, '280', '280', 'Besyt QualityKey Chains 4', 'Key-Chains/90-Rectangle-Silver-Key-184.png', NULL),
('185', '91 Square Stone Silver key', '91 Square Stone Silver key', '91 Square Stone Silver key', NULL, NULL, NULL, '350', '350', 'Besyt QualityKey Chains 4', 'Key-Chains/91-Square-Stone-Silver-key-185.png', NULL),
('186', '92 Heart Stone Silver Key', '92 Heart Stone Silver Key', '92 Heart Stone Silver Key', NULL, NULL, NULL, '350', '350', 'Besyt QualityKey Chains 4', 'Key-Chains/92-Heart-Stone-Silver-Key-186.png', NULL),
('187', '35 Gold Rectangle key chain Single side', '35 Gold Rectangle key chain Single side', '35 Gold Rectangle key chain Single side', NULL, NULL, NULL, '280', '280', 'Key Chains', 'Key-Chains/35-Gold-Rectangle-key-chain-Single-side-187.png', NULL),
('188', '36 GoldSidel Antique KeySingle ', '36 GoldSidel Antique KeySingle ', '36 GoldSidel Antique KeySingle ', NULL, NULL, NULL, '280', '280', 'Key Chains', 'Key-Chains/36-GoldSidel-Antique-KeySingle--188.png', NULL),
('189', '38 GoldSidel Antique KeySingle ', '38 GoldSidel Antique KeySingle ', '38 GoldSidel Antique KeySingle ', NULL, NULL, NULL, '280', '280', 'Key Chains', 'Key-Chains/38-GoldSidel-Antique-KeySingle--189.png', NULL),
('190', '93 Heart', '93 Heart', '93 Heart', NULL, NULL, NULL, '280', '280', 'Key Chains', 'Key-Chains/93-Heart-190.png', NULL),
('191', '94 Hexogan', '94 Hexogan', '94 Hexogan', NULL, NULL, NULL, '280', '280', 'Key Chains', 'Key-Chains/94-Hexogan-191.png', NULL),
('192', '95 Square', '95 Square', '95 Square', NULL, NULL, NULL, '280', '280', 'Key Chains', 'Key-Chains/95-Square-192.png', NULL),
('193', '33 Plastic Key Double Side', '33 Plastic Key Double Side', '33 Plastic Key Double Side', NULL, NULL, NULL, '70', '70', 'Key Chains', 'Key-Chains/33-Plastic-Key-Double-Side-193.png', NULL),
('194', '41 Small Rectangle Crystal Key Chain', '41 Small Rectangle Crystal Key Chain', '41 Small Rectangle Crystal Key Chain', NULL, NULL, NULL, '210', '210', 'Key Chais 3', 'Key-Chains/41-Small-Rectangle-Crystal-Key-Chain-194.png', NULL),
('195', '42 Heart Crystal Key Chain', '42 Heart Crystal Key Chain', '42 Heart Crystal Key Chain', NULL, NULL, NULL, '280', '280', 'Key Chais 3', 'Key-Chains/42-Heart-Crystal-Key-Chain-195.png', NULL),
('196', '43 Round Crystal Key Chain', '43 Round Crystal Key Chain', '43 Round Crystal Key Chain', NULL, NULL, NULL, '280', '280', 'Key Chais 3', 'Key-Chains/43-Round-Crystal-Key-Chain-196.png', NULL),
('197', '44 Big Rectangle Crystal Key Chain', '44 Big Rectangle Crystal Key Chain', '44 Big Rectangle Crystal Key Chain', NULL, NULL, NULL, '280', '280', 'Key Chais 3', 'Key-Chains/44-Big-Rectangle-Crystal-Key-Chain-197.png', NULL),
('198', '45 Rotating Oval Metal Key Double Side', '45 Rotating Oval Metal Key Double Side', '45 Rotating Oval Metal Key Double Side', NULL, NULL, NULL, '210', '210', 'Key Chais 3', 'Key-Chains/45-Rotating-Oval-Metal-Key-Double-Side-198.png', NULL),
('199', '46 Hexagon Metal Key Single Side', '46 Hexagon Metal Key Single Side', '46 Hexagon Metal Key Single Side', NULL, NULL, NULL, '210', '210', 'Key Chais 3', 'Key-Chains/46-Hexagon-Metal-Key-Single-Side-199.png', NULL),
('200', '47 Triangle Metal Key Single Side', '47 Triangle Metal Key Single Side', '47 Triangle Metal Key Single Side', NULL, NULL, NULL, '210', '210', 'Key Chais 3', 'Key-Chains/47-Triangle-Metal-Key-Single-Side-200.png', NULL),
('201', '48 Big Metal Key Single Side', '48 Big Metal Key Single Side', '48 Big Metal Key Single Side', NULL, NULL, NULL, '210', '210', 'Key Chais 3', 'Key-Chains/48-Big-Metal-Key-Single-Side-201.png', NULL),
('202', '49 Double Line Heart Metal Singlide', '49 Double Line Heart Metal Singlide', '49 Double Line Heart Metal Singlide', NULL, NULL, NULL, '210', '210', 'Key Chais 3', 'Key-Chains/49-Double-Line-Heart-Metal-Singlide-202.png', NULL),
('203', '50 Mango Round Metal Single Side', '50 Mango Round Metal Single Side', '50 Mango Round Metal Single Side', NULL, NULL, NULL, '210', '210', 'Key Chais 3', 'Key-Chains/50-Mango-Round-Metal-Single-Side-203.png', NULL),
('204', '51 Diamond Key Metal Double side', '51 Diamond Key Metal Double side', '51 Diamond Key Metal Double side', NULL, NULL, NULL, '210', '210', 'Key Chais 3', 'Key-Chains/51-Diamond-Key-Metal-Double-side-204.png', NULL),
('205', '52 Rectangle Metal Double Side', '52 Rectangle Metal Double Side', '52 Rectangle Metal Double Side', NULL, NULL, NULL, '210', '210', 'Key Chais 3', 'Key-Chains/52-Rectangle-Metal-Double-Side-205.png', NULL),
('206', '53 Hanging Heart Metal Double side', '53 Hanging Heart Metal Double side', '53 Hanging Heart Metal Double side', NULL, NULL, NULL, '210', '210', 'Key Chais 3', 'Key-Chains/53-Hanging-Heart-Metal-Double-side-206.png', NULL),
('207', '58 Rotating Heart Metal Double Side', '58 Rotating Heart Metal Double Side', '58 Rotating Heart Metal Double Side', NULL, NULL, NULL, '210', '210', 'Key Chais 3', 'Key-Chains/58-Rotating-Heart-Metal-Double-Side-207.png', NULL),
('208', '55 Rotating Rec Metal Double Side', '55 Rotating Rec Metal Double Side', '55 Rotating Rec Metal Double Side', NULL, NULL, NULL, '210', '210', 'Key Chais 3', 'Key-Chains/55-Rotating-Rec-Metal-Double-Side-208.png', NULL),
('209', '56 Rotating Square Metal Double Side', '56 Rotating Square Metal Double Side', '56 Rotating Square Metal Double Side', NULL, NULL, NULL, '210', '210', 'Key Chais 3', 'Key-Chains/56-Rotating-Square-Metal-Double-Side-209.png', NULL),
('210', '70 Blue Stone Square Metal Single Side', '70 Blue Stone Square Metal Single Side', '70 Blue Stone Square Metal Single Side', NULL, NULL, NULL, '280', '280', 'Key Chais 3', 'Key-Chains/70-Blue-Stone-Square-Metal-Single-Side-210.png', NULL),
('211', '71 LED Light Key Single Side', '71 LED Light Key Single Side', '71 LED Light Key Single Side', NULL, NULL, NULL, '210', '210', 'Key Chais 3', 'Key-Chains/71-LED-Light-Key-Single-Side-211.png', NULL),
('212', 'Round Badge44 mm', 'Round Badge44 mm', 'Round Badge44 mm', NULL, NULL, NULL, '84', '84', 'Key Chais 3', 'Key-Chains/Round-Badge44-mm-212.png', NULL),
('213', 'Round Badge56 mm', 'Round Badge56 mm', 'Round Badge56 mm', NULL, NULL, NULL, '98', '98', 'Key Chais 3', 'Key-Chains/Round-Badge56-mm-213.png', NULL),
('214', '21 Rectangle Wood Key Single Side', '21 Rectangle Wood Key Single Side', '21 Rectangle Wood Key Single Side', NULL, NULL, NULL, '112', '112', 'Wooden Key Chains', 'Wooden-Key-Chains/21-Rectangle-Wood-Key--Single-Side-214.png', NULL),
('215', '22 Heart Wood Key Single Side', '22 Heart Wood Key Single Side', '22 Heart Wood Key Single Side', NULL, NULL, NULL, '140', '140', 'Wooden Key Chains', 'Wooden-Key-Chains/22-Heart-Wood--Key-Single-Side-215.png', NULL),
('216', '23 Double Heart Wood Key Single Side', '23 Double Heart Wood Key Single Side', '23 Double Heart Wood Key Single Side', NULL, NULL, NULL, '210', '210', 'Wooden Key Chains', 'Wooden-Key-Chains/23-Double-Heart-Wood-Key-Single-Side-216.png', NULL),
('217', '24 Oval Wood Key Single Side', '24 Oval Wood Key Single Side', '24 Oval Wood Key Single Side', NULL, NULL, NULL, '140', '140', 'Wooden Key Chains', 'Wooden-Key-Chains/24-Oval-Wood-Key-Single-Side-217.png', NULL),
('218', '25 Big Rectangle Wood Key Single side', '25 Big Rectangle Wood Key Single side', '25 Big Rectangle Wood Key Single side', NULL, NULL, NULL, '140', '140', 'Wooden Key Chains', 'Wooden-Key-Chains/25-Big-Rectangle-Wood-Key-Single-side-218.png', NULL),
('219', '26 Heart Polymer Key Double Side ', '26 Heart Polymer Key Double Side ', '26 Heart Polymer Key Double Side ', NULL, NULL, NULL, '112', '112', 'Wooden Key Chains', 'Wooden-Key-Chains/26-Heart-Polymer-Key-Double-Side--219.png', NULL),
('220', '27 Double Heart Polymer Key Double side', '27 Double Heart Polymer Key Double side', '27 Double Heart Polymer Key Double side', NULL, NULL, NULL, '112', '112', 'Wooden Key Chains', 'Wooden-Key-Chains/27-Double-Heart-Polymer-Key-Double-side-220.png', NULL),
('221', '28 Rectanle Polymer Key Double side', '28 Rectanle Polymer Key Double side', '28 Rectanle Polymer Key Double side', NULL, NULL, NULL, '112', '112', 'Wooden Key Chains', 'Wooden-Key-Chains/28-Rectanle-Polymer-Key-Double-side-221.png', NULL),
('222', '31 Oval Polymer key double side', '31 Oval Polymer key double side', '31 Oval Polymer key double side', NULL, NULL, NULL, '112', '112', 'Wooden Key Chains', 'Wooden-Key-Chains/31-Oval-Polymer-key-double-side-222.png', NULL),
('223', '32 Square Polymer Key Double side', '32 Square Polymer Key Double side', '32 Square Polymer Key Double side', NULL, NULL, NULL, '112', '112', 'Wooden Key Chains', 'Wooden-Key-Chains/32-Square-Polymer-Key-Double-side-223.png', NULL),
('224', '85 Big Heart polymer Key ', '85 Big Heart polymer Key ', '85 Big Heart polymer Key ', NULL, NULL, NULL, '210', '210', 'Wooden Key Chains', 'Wooden-Key-Chains/85-Big-Heart-polymer-Key--224.png', NULL),
('225', 'Magic Mirror Round', 'Magic Mirror Round', 'Magic Mirror Round', '17.5', '17.5', NULL, '699.3', '699.3', 'Magic Mirror ', 'Magic-Mirror/Magic-Mirror-Round-225.png', NULL),
('226', 'Magic Mirror Round with Clock', 'Magic Mirror Round with Clock', 'Magic Mirror Round with Clock', '16.6', '16.6', NULL, '1120', '1120', 'Magic Mirror ', 'Magic-Mirror/Magic-Mirror-Round-with--Clock-226.png', NULL),
('227', 'Magic Mirror Double Heart', 'Magic Mirror Double Heart', 'Magic Mirror Double Heart', '11.2', '12;8', NULL, '1260', '1260', 'Magic Mirror ', 'Magic-Mirror/Magic-Mirror-Double-Heart-227.png', NULL),
('228', 'Magic Mirror Rectangle Verticle ', 'Magic Mirror Rectangle Verticle ', 'Magic Mirror Rectangle Verticle ', '12.8', '17.8', NULL, '699.3', '699.3', 'Magic Mirror ', 'Magic-Mirror/Magic-Mirror-Rectangle-Verticle--228.png', NULL),
('229', 'Magic Mirror Rectangle Horizantal', 'Magic Mirror Rectangle Horizantal', 'Magic Mirror Rectangle Horizantal', '17.8', '12.8', NULL, '699.3', '699.3', 'Magic Mirror ', 'Magic-Mirror/Magic-Mirror-Rectangle-Horizantal-229.png', NULL),
('230', 'Clasic Rock ', 'Clasic Rock ', 'Clasic Rock ', '8', '8', NULL, '840', '840', 'Rock Photo Print', 'Rock-Photo-Print/Clasic-Rock--230.png', NULL),
('231', 'Arch Rock', 'Arch Rock', 'Arch Rock', '8', '8', NULL, '840', '840', 'Rock Photo Print', 'Rock-Photo-Print/Arch-Rock-231.png', NULL),
('232', 'Arch Rock', 'Arch Rock', 'Arch Rock', '12', '12', NULL, '1260', '1260', 'Rock Photo Print', 'Rock-Photo-Print/Arch-Rock-232.png', NULL),
('233', 'Square Stone', 'Square Stone', 'Square Stone', '6', '6', NULL, '630', '630', 'Rock Photo Print', 'Rock-Photo-Print/Square-Stone-233.png', NULL),
('234', 'Square Stone', 'Square Stone', 'Square Stone', '8', '8', NULL, '840', '840', 'Rock Photo Print', 'Rock-Photo-Print/Square-Stone-234.png', NULL),
('235', 'Square Stone', 'Square Stone', 'Square Stone', '12', '12', NULL, '1260', '1260', 'Rock Photo Print', 'Rock-Photo-Print/Square-Stone-235.png', NULL),
('236', '6X8 in Stone', '6X8 in Stone', '6X8 in Stone', '6', '8', NULL, '699.3', '699.3', 'Rock Photo Print', 'Rock-Photo-Print/6X8--in-Stone-236.png', NULL),
('237', 'Rectangle Stone', 'Rectangle Stone', 'Rectangle Stone', '9', '5', NULL, '770', '770', 'Rock Photo Print', 'Rock-Photo-Print/Rectangle-Stone-237.png', NULL),
('238', 'Rectangle Stone', 'Rectangle Stone', 'Rectangle Stone', '12', '6', NULL, '1120', '1120', 'Rock Photo Print', 'Rock-Photo-Print/Rectangle-Stone-238.png', NULL),
('239', 'Heart Stone', 'Heart Stone', 'Heart Stone', '8', '8', NULL, '840', '840', 'Rock Photo Print', 'Rock-Photo-Print/Heart-Stone-239.png', NULL),
('240', 'Round Stone ', 'Round Stone ', 'Round Stone ', '7.5', '7.5', NULL, '840', '840', 'Rock Photo Print', 'Rock-Photo-Print/Round-Stone--240.png', NULL),
('241', 'Oval Stone ', 'Oval Stone ', 'Oval Stone ', '8', '6', NULL, '840', '840', 'Rock Photo Print', 'Rock-Photo-Print/Oval-Stone--241.png', NULL),
('242', 'Big Oval Rock', 'Big Oval Rock', 'Big Oval Rock', '14', '10', NULL, '1470', '1470', 'Rock Photo Print', 'Rock-Photo-Print/Big-Oval-Rock-242.png', NULL),
('243', 'Stone on Woods', 'Stone on Woods', 'Stone on Woods', '6', '4', NULL, '840', '840', 'Rock Photo Print', 'Rock-Photo-Print/Stone-on-Woods-243.png', NULL),
('244', '12X8 in Stone', '12X8 in Stone', '12X8 in Stone', '12', '8', NULL, '1120', '1120', 'Rock Photo Print', 'Rock-Photo-Print/12X8-in-Stone-244.png', NULL),
('245', 'Wood Frame', 'Wood Frame', 'Wood Frame', '10', '7', NULL, '1399.3', '1399.3', 'Rock Photo Print', 'Rock-Photo-Print/Wood--Frame-245.png', NULL),
('246', 'Wood Frame', 'Wood Frame', 'Wood Frame', '10', '11', NULL, '1750', '1750', 'Rock Photo Print', 'Rock-Photo-Print/Wood--Frame-246.png', NULL),
('247', 'Heart Print', 'Heart Print', 'Heart Print', '4.5', '4.5', NULL, '280', '280', 'Tile Print', 'Tile-Print/Heart-Print-247.png', NULL),
('248', 'Tile', 'Tile', 'Tile', '4.6', '4.6', NULL, '280', '280', 'Tile Print', 'Tile-Print/Tile-248.png', NULL),
('249', 'Tile', 'Tile', 'Tile', '6', '6', NULL, '350', '350', 'Tile Print', 'Tile-Print/Tile-249.png', NULL),
('250', 'Tile', 'Tile', 'Tile', '6', '8', NULL, '490', '490', 'Tile Print', 'Tile-Print/Tile-250.png', NULL),
('251', 'Tile', 'Tile', 'Tile', '10', '8', NULL, '630', '630', 'Tile Print', 'Tile-Print/Tile-251.png', NULL),
('252', 'Tile', 'Tile', 'Tile', '8', '8', NULL, '420', '420', 'Tile Print', 'Tile-Print/Tile-252.png', NULL),
('253', 'Tile', 'Tile', 'Tile', '12', '8', NULL, '699.3', '699.3', 'Tile Print', 'Tile-Print/Tile-253.png', NULL),
('254', 'Round Cut', 'Round Cut', 'Round Cut', '5', '7', NULL, '699.3', '699.3', 'Crystal frames', 'Crystal-frames/Round-Cut-254.png', NULL),
('255', 'Diamond cut', 'Diamond cut', 'Diamond cut', '5', '7', NULL, '699.3', '699.3', 'Crystal frames', 'Crystal-frames/Diamond-cut-255.png', NULL),
('256', 'Glass photot Print', 'Glass photot Print', 'Glass photot Print', '8', '8', NULL, '420', '420', 'Crystal frames', 'Crystal-frames/Glass-photot-Print-256.png', NULL),
('257', 'Round Cut', 'Round Cut', 'Round Cut', '9', '7', NULL, '980', '980', 'Crystal frames', 'Crystal-frames/Round-Cut-257.png', NULL),
('258', 'Diamond Cut', 'Diamond Cut', 'Diamond Cut', '9', '7', NULL, '980', '980', 'Crystal frames', 'Crystal-frames/Diamond-Cut-258.png', NULL),
('259', 'Round Clock Glass Photot Frame', 'Round Clock Glass Photot Frame', 'Round Clock Glass Photot Frame', '8', '8', NULL, '560', '560', 'Crystal frames', 'Crystal-frames/Round-Clock-Glass-Photot-Frame-259.png', NULL),
('260', 'Glass photot Print-31', 'Glass photot Print-31', 'Glass photot Print-31', '9', '7', NULL, '420', '420', 'Crystal frames', 'Crystal-frames/Glass-photot-Print-31-260.png', NULL),
('261', 'Matt Finished Glass Photot Print-16', 'Matt Finished Glass Photot Print-16', 'Matt Finished Glass Photot Print-16', '7', '9', NULL, '420', '420', 'Crystal frames', 'Crystal-frames/Matt-Finished-Glass-Photot-Print-16-261.png', NULL),
('262', 'Glass Photot frameh With Clock -28', 'Glass Photot frameh With Clock -28', 'Glass Photot frameh With Clock -28', '12', '6.5', NULL, '840', '840', 'Crystal frames', 'Crystal-frames/Glass-Photot-frameh-With-Clock--28-262.png', NULL),
('263', 'Glass Photo Frame-29 Frame', 'Glass Photo Frame-29 Frame', 'Glass Photo Frame-29 Frame', '12', '6.5', NULL, '699.3', '699.3', 'Crystal frames', 'Crystal-frames/Glass-Photo-Frame-29-Frame-263.png', NULL),
('264', 'BCR-23', 'BCR-23', 'BCR-23', '15.5', '17.5;14', NULL, '1260', '1260', 'Big Colour Crystal', 'Big-Colour-Crystal/BCR-23-.png', NULL),
('265', 'BCR-26', 'BCR-26', 'BCR-26', '13.5', '21;11', NULL, '1540', '1540', 'Big Colour Crystal', 'Big-Colour-Crystal/BCR-26-.png', NULL),
('266', 'BCR-18', 'BCR-18', 'BCR-18', '13', '19;12', NULL, '1540', '1540', 'Big Colour Crystal', 'Big-Colour-Crystal/BCR-18-.png', NULL),
('267', 'BCR-30', 'BCR-30', 'BCR-30', '12', '21;12', NULL, '1540', '1540', 'Big Colour Crystal', 'Big-Colour-Crystal/BCR-30-.png', NULL),
('268', 'BCR-16', 'BCR-16', 'BCR-16', '16', '20;14', NULL, '1540', '1540', 'Big Colour Crystal', 'Big-Colour-Crystal/BCR-16-.png', NULL),
('269', 'BCR-22', 'BCR-22', 'BCR-22', '13', '19.5;11', NULL, '1540', '1540', 'Big Colour Crystal', 'Big-Colour-Crystal/BCR-22-.png', NULL),
('270', 'BCR-13', 'BCR-13', 'BCR-13', '10', '19.5;8.5', NULL, '1330', '1330', 'Big Colour Crystal', 'Big-Colour-Crystal/BCR-13-.png', NULL),
('271', 'BCR-27', 'BCR-27', 'BCR-27', '15.5', '20.5;14', NULL, '1540', '1540', 'Big Colour Crystal', 'Big-Colour-Crystal/BCR-27-.png', NULL),
('272', 'Heart Colour Crystal', 'Heart Colour Crystal', 'Heart Colour Crystal', '10', '10', NULL, '1260', '1260', 'Clorour Crystal', 'Clorour-Crystal/Heart-Colour-Crystal-.png', NULL),
('273', 'Rectangle corner Cut Colour Crystal', 'Rectangle corner Cut Colour Crystal', 'Rectangle corner Cut Colour Crystal', '8', '6', NULL, '560', '560', 'Clorour Crystal', 'Clorour-Crystal/Rectangle-corner-Cut-Colour-Crystal-.png', NULL),
('274', 'Rectagle colour Crystal', 'Rectagle colour Crystal', 'Rectagle colour Crystal', '8', '6', NULL, '560', '560', 'Clorour Crystal', 'Clorour-Crystal/Rectagle-colour-Crystal-.png', NULL),
('275', 'Rectagle colour Crystal', 'Rectagle colour Crystal', 'Rectagle colour Crystal', '9', '13', NULL, '1260', '1260', 'Clorour Crystal', 'Clorour-Crystal/Rectagle-colour-Crystal-.png', NULL),
('276', 'Round Colour Crystal', 'Round Colour Crystal', 'Round Colour Crystal', '4', '4', NULL, '910', '910', 'Clorour Crystal', 'Clorour-Crystal/Round-Colour-Crystal-.png', NULL),
('277', 'Round Colour Crystal', 'Round Colour Crystal', 'Round Colour Crystal', '5', '5', NULL, '980', '980', 'Clorour Crystal', 'Clorour-Crystal/Round-Colour-Crystal-.png', NULL),
('278', 'Round Colour Crystal', 'Round Colour Crystal', 'Round Colour Crystal', '6', '6', NULL, '1399.3', '1399.3', 'Clorour Crystal', 'Clorour-Crystal/Round-Colour-Crystal-.png', NULL),
('279', 'Big Horizantel colour Crystal with base', 'Big Horizantel colour Crystal with base', 'Big Horizantel colour Crystal with base', '9', '13', NULL, '1540', '1540', 'Clorour Crystal', 'Clorour-Crystal/Big-Horizantel-colour-Crystal-with-base-.png', NULL),
('280', 'Big Verticle colour Crystal with base', 'Big Verticle colour Crystal with base', 'Big Verticle colour Crystal with base', '9', '13', NULL, '1540', '1540', 'Clorour Crystal', 'Clorour-Crystal/Big-Verticle-colour-Crystal-with-base-.png', NULL),
('281', 'Acrylic bed lamp Heart', 'Acrylic bed lamp Heart', 'Acrylic bed lamp Heart', '6', '7', NULL, '280', '280', 'Acrylic bed Lamp', 'Acrylic-bed-Lamp/Acrylic-bed-lamp-Heart-.png', NULL),
('282', 'Acrylic bed Lamp oval', 'Acrylic bed Lamp oval', 'Acrylic bed Lamp oval', '6', '7', NULL, '280', '280', 'Acrylic bed Lamp', 'Acrylic-bed-Lamp/Acrylic-bed-Lamp-oval-.png', NULL),
('283', 'Acrylic bed Lamp Flower', 'Acrylic bed Lamp Flower', 'Acrylic bed Lamp Flower', '6', '7', NULL, '280', '280', 'Acrylic bed Lamp', 'Acrylic-bed-Lamp/Acrylic-bed-Lamp-Flower-.png', NULL),
('284', 'Acrylic bed Lamp Rectagle', 'Acrylic bed Lamp Rectagle', 'Acrylic bed Lamp Rectagle', '6', '7', NULL, '280', '280', 'Acrylic bed Lamp', 'Acrylic-bed-Lamp/Acrylic-bed-Lamp-Rectagle-.png', NULL),
('285', 'Multi Colour Acrylic Table top-Heart', 'Multi Colour Acrylic Table top-Heart', 'Multi Colour Acrylic Table top-Heart', '4.5', '5', NULL, '840', '840', 'Acrylic bed Lamp', 'Acrylic-bed-Lamp/Multi-Colour-Acrylic-Table-top-Heart-.png', NULL),
('286', 'Multi Colour Acrylic Table top-Rectagle', 'Multi Colour Acrylic Table top-Rectagle', 'Multi Colour Acrylic Table top-Rectagle', '4.5', '6', NULL, '840', '840', 'Acrylic bed Lamp', 'Acrylic-bed-Lamp/Multi-Colour-Acrylic-Table-top-Rectagle-.png', NULL),
('287', 'Multi Colour Acrylic Table Heart With Text', 'Multi Colour Acrylic Table Heart With Text', 'Multi Colour Acrylic Table Heart With Text', '4.5', '6', NULL, '840', '840', 'Acrylic bed Lamp', 'Acrylic-bed-Lamp/Multi-Colour-Acrylic-Table-Heart-With-Text-.png', NULL),
('288', 'LED Black Light Frame Fiber', 'LED Black Light Frame Fiber', 'LED Black Light Frame Fiber', '10', '8;12', NULL, '1120', '1120', 'Acrylic bed Lamp', 'Acrylic-bed-Lamp/LED-Black-Light-Frame-Fiber-.png', NULL),
('289', 'LED Black Light Frame ', 'LED Black Light Frame ', 'LED Black Light Frame ', '11', '16', NULL, '2100', '2100', 'Acrylic bed Lamp', 'Acrylic-bed-Lamp/LED-Black-Light-Frame--.png', NULL),
('290', '12-Clock-8 Inch Gold', '12-Clock-8 Inch Gold', '12-Clock-8 Inch Gold', NULL, NULL, NULL, '490', '490', 'Clocks', 'Clocks/12-Clock-8-Inch-Gold-.png', NULL),
('291', '04-Clock-10 Inch Gold', '04-Clock-10 Inch Gold', '04-Clock-10 Inch Gold', NULL, NULL, NULL, '699.3', '699.3', 'Clocks', 'Clocks/04-Clock-10-Inch-Gold-.png', NULL),
('292', '14-Clock-8 Inch Heart', '14-Clock-8 Inch Heart', '14-Clock-8 Inch Heart', NULL, NULL, NULL, '490', '490', 'Clocks', 'Clocks/14-Clock-8-Inch-Heart-.png', NULL),
('293', '13 Clock-8 Inch Fancy', '13 Clock-8 Inch Fancy', '13 Clock-8 Inch Fancy', NULL, NULL, NULL, '490', '490', 'Clocks', 'Clocks/13-Clock-8-Inch-Fancy-.png', NULL),
('294', '14 Clock-9 Inch Wood Finish', '14 Clock-9 Inch Wood Finish', '14 Clock-9 Inch Wood Finish', NULL, NULL, NULL, '840', '840', 'Clocks', 'Clocks/14-Clock-9-Inch--Wood-Finish-.png', NULL),
('295', 'Fancy 12 Inch Clock-07', 'Fancy 12 Inch Clock-07', 'Fancy 12 Inch Clock-07', NULL, NULL, NULL, '980', '980', 'Clocks', 'Clocks/Fancy-12-Inch-Clock-07-.png', NULL),
('296', '12X8 Rectangle Clock-06', '12X8 Rectangle Clock-06', '12X8 Rectangle Clock-06', NULL, NULL, NULL, '980', '980', 'Clocks', 'Clocks/12X8-Rectangle-Clock-06-.png', NULL),
('297', '8X12Rectangle Clock-06', '8X12Rectangle Clock-06', '8X12Rectangle Clock-06', NULL, NULL, NULL, '980', '980', 'Clocks', 'Clocks/8X12Rectangle-Clock-06-.png', NULL),
('298', '01-Clock-14 Inch', '01-Clock-14 Inch', '01-Clock-14 Inch', NULL, NULL, NULL, '1400', '1400', 'Clocks', 'Clocks/01-Clock-14-Inch-.png', NULL),
('299', '02-Clock-12 Inch', '02-Clock-12 Inch', '02-Clock-12 Inch', NULL, NULL, NULL, '980', '980', 'Clocks', 'Clocks/02-Clock-12-Inch-.png', NULL),
('300', '8 Inches MDF Laminated Clock', '8 Inches MDF Laminated Clock', '8 Inches MDF Laminated Clock', NULL, NULL, NULL, '420', '420', 'Clocks', 'Clocks/8-Inches-MDF--Laminated-Clock-.png', NULL),
('301', '11 Inches MDF Laminated Clock', '11 Inches MDF Laminated Clock', '11 Inches MDF Laminated Clock', NULL, NULL, NULL, '560', '560', 'Clocks', 'Clocks/11-Inches-MDF-Laminated-Clock-.png', NULL),
('302', '14 Inches MDF Laminated Clock', '14 Inches MDF Laminated Clock', '14 Inches MDF Laminated Clock', NULL, NULL, NULL, '699.3', '699.3', 'Clocks', 'Clocks/14-Inches-MDF-Laminated-Clock-.png', NULL),
('303', '12X11 Inches Heart MDF Laminated Clock', '12X11 Inches Heart MDF Laminated Clock', '12X11 Inches Heart MDF Laminated Clock', NULL, NULL, NULL, '699.3', '699.3', 'Clocks', 'Clocks/12X11-Inches-Heart-MDF-Laminated-Clock-.png', NULL),
('304', '11X11 Heart Clock-09', '11X11 Heart Clock-09', '11X11 Heart Clock-09', NULL, NULL, NULL, '980', '980', 'Clocks', 'Clocks/11X11-Heart-Clock-09-.png', NULL),
('305', '18 Inches MDF Laminated Clock', '18 Inches MDF Laminated Clock', '18 Inches MDF Laminated Clock', NULL, NULL, NULL, '980', '980', 'Clocks', 'Clocks/18-Inches-MDF-Laminated--Clock-.png', NULL),
('306', '12X5 Inch Wood Engraving Clock', '12X5 Inch Wood Engraving Clock', '12X5 Inch Wood Engraving Clock', NULL, NULL, NULL, '980', '980', 'Wood Engraving', 'Wood-Engraving/12X5-Inch-Wood--Engraving-Clock-.png', NULL),
('307', '8 Inche Round Wood Graving Clock', '8 Inche Round Wood Graving Clock', '8 Inche Round Wood Graving Clock', NULL, NULL, NULL, '910', '910', 'Wood Engraving', 'Wood-Engraving/8-Inche-Round-Wood-Graving-Clock-.png', NULL),
('308', '10 Inch Round Wood Engraving Clock', '10 Inch Round Wood Engraving Clock', '10 Inch Round Wood Engraving Clock', NULL, NULL, NULL, '1120', '1120', 'Wood Engraving', 'Wood-Engraving/10-Inch-Round-Wood--Engraving-Clock-.png', NULL),
('309', 'Maxi 6X4 Inch Wooden Frame With Engraving', 'Maxi 6X4 Inch Wooden Frame With Engraving', 'Maxi 6X4 Inch Wooden Frame With Engraving', NULL, NULL, NULL, '490', '490', 'Wood Engraving', 'Wood-Engraving/Maxi-6X4--Inch--Wooden-Frame-With-Engraving-.png', NULL),
('310', 'Wood Engraving 5X7', 'Wood Engraving 5X7', 'Wood Engraving 5X7', '5', '7', NULL, '420', '420', 'Wood Engraving', 'Wood-Engraving/Wood-Engraving-5X7-.png', NULL),
('311', 'Wood Engraving ZIg Zag Wood ', 'Wood Engraving ZIg Zag Wood ', 'Wood Engraving ZIg Zag Wood ', '8.5', '5.5', NULL, '699.3', '699.3', 'Wood Engraving', 'Wood-Engraving/Wood-Engraving-ZIg-Zag-Wood--.png', NULL),
('312', 'Black Coated Pen Stand With Pen', 'Black Coated Pen Stand With Pen', 'Black Coated Pen Stand With Pen', NULL, NULL, NULL, '350', '350', 'Wood Engraving', 'Wood-Engraving/Black-Coated-Pen-Stand-With-Pen-.png', NULL),
('313', 'Date PEN Stand Withn Pen', 'Date PEN Stand Withn Pen', 'Date PEN Stand Withn Pen', NULL, NULL, NULL, '630', '630', 'Wood Engraving', 'Wood-Engraving/Date-PEN--Stand--Withn-Pen-.png', NULL),
('314', 'Visiting Card Pen Stand With Pen', 'Visiting Card Pen Stand With Pen', 'Visiting Card Pen Stand With Pen', NULL, NULL, NULL, '350', '350', 'Wood Engraving', 'Wood-Engraving/Visiting--Card-Pen-Stand-With-Pen-.png', NULL),
('315', 'Pen Drive Box without Pen drive', 'Pen Drive Box without Pen drive', 'Pen Drive Box without Pen drive', NULL, NULL, NULL, '280', '280', 'Wood Engraving', 'Wood-Engraving/Pen-Drive-Box-without-Pen-drive-.png', NULL),
('316', 'Engraving Name On Leather Wallet', 'Engraving Name On Leather Wallet', 'Engraving Name On Leather Wallet', NULL, NULL, NULL, '420', '420', 'Wood Engraving', 'Wood-Engraving/Engraving-Name-On-Leather-Wallet-.png', NULL),
('317', 'Triangle Pen Stand With Pen', 'Triangle Pen Stand With Pen', 'Triangle Pen Stand With Pen', NULL, NULL, NULL, '350', '350', 'Wood Engraving', 'Wood-Engraving/Triangle-Pen-Stand-With-Pen-.png', NULL),
('318', 'LED Light Pen With Multicolour Light-Black', 'LED Light Pen With Multicolour Light-Black', 'LED Light Pen With Multicolour Light-Black', NULL, NULL, NULL, '210', '210', 'Engraving on Pens', 'Engraving-on-Pens/LED-Light-Pen-With-Multicolour-Light-Black-.png', NULL),
('319', 'Wooden Pen', 'Wooden Pen', 'Wooden Pen', NULL, NULL, NULL, '140', '140', 'Engraving on Pens', 'Engraving-on-Pens/Wooden-Pen-.png', NULL),
('320', 'White LED Pen-Blue', 'White LED Pen-Blue', 'White LED Pen-Blue', NULL, NULL, NULL, '182', '182', 'Engraving on Pens', 'Engraving-on-Pens/White-LED-Pen-Blue-.png', NULL),
('321', 'White LED Pen-Red', 'White LED Pen-Red', 'White LED Pen-Red', NULL, NULL, NULL, '182', '182', 'Engraving on Pens', 'Engraving-on-Pens/White-LED-Pen-Red-.png', NULL),
('322', 'White LED Pen-Black', 'White LED Pen-Black', 'White LED Pen-Black', NULL, NULL, NULL, '182', '182', 'Engraving on Pens', 'Engraving-on-Pens/White-LED-Pen-Black-.png', NULL),
('323', 'Engraving on Metal Pen-Black', 'Engraving on Metal Pen-Black', 'Engraving on Metal Pen-Black', NULL, NULL, NULL, '350', '350', 'Engraving on Pens', 'Engraving-on-Pens/Engraving-on-Metal-Pen-Black-.png', NULL),
('324', 'Silver Finish-Ball Point Pen', 'Silver Finish-Ball Point Pen', 'Silver Finish-Ball Point Pen', NULL, NULL, NULL, '112', '112', 'Engraving on Pens', 'Engraving-on-Pens/Silver-Finish-Ball-Point-Pen-.png', NULL),
('325', 'Black Finish Ball Point Pen', 'Black Finish Ball Point Pen', 'Black Finish Ball Point Pen', NULL, NULL, NULL, '112', '112', 'Engraving on Pens', 'Engraving-on-Pens/Black-Finish-Ball-Point-Pen-.png', NULL),
('326', 'Twist Ball point Pen', 'Twist Ball point Pen', 'Twist Ball point Pen', NULL, NULL, NULL, '112', '112', 'Engraving on Pens', 'Engraving-on-Pens/Twist-Ball-point-Pen-.png', NULL),
('327', 'Metal CAP Wooden Pen', 'Metal CAP Wooden Pen', 'Metal CAP Wooden Pen', NULL, NULL, NULL, '210', '210', 'Engraving on Pens', 'Engraving-on-Pens/Metal-CAP-Wooden-Pen-.png', NULL),
('328', 'Caricature-1', 'Caricature-1', 'Caricature-1', '6x8', NULL, NULL, '420', '420', 'Caricature', 'Caricature/Caricature-1-.png', NULL),
('329', 'Caricature-2', 'Caricature-2', 'Caricature-2', '6x8', NULL, NULL, '420', '420', 'Caricature', 'Caricature/Caricature-2-.png', NULL),
('330', 'Caricature-3', 'Caricature-3', 'Caricature-3', '6x8', NULL, NULL, '420', '420', 'Caricature', 'Caricature/Caricature-3-.png', NULL),
('331', 'Caricature-4', 'Caricature-4', 'Caricature-4', '6x8', NULL, NULL, '420', '420', 'Caricature', 'Caricature/Caricature-4-.png', NULL),
('332', 'Caricature-5', 'Caricature-5', 'Caricature-5', '6x8', NULL, NULL, '420', '420', 'Caricature', 'Caricature/Caricature-5-.png', NULL),
('333', 'Caricature-6', 'Caricature-6', 'Caricature-6', '6x8', NULL, NULL, '420', '420', 'Caricature', 'Caricature/Caricature-6-.png', NULL),
('334', 'Caricature-7', 'Caricature-7', 'Caricature-7', '6x8', NULL, NULL, '420', '420', 'Caricature', 'Caricature/Caricature-7-.png', NULL),
('335', 'Caricature-8', 'Caricature-8', 'Caricature-8', '6x8', NULL, NULL, '420', '420', 'Caricature', 'Caricature/Caricature-8-.png', NULL),
('336', 'Caricature-9', 'Caricature-9', 'Caricature-9', '6x8', NULL, NULL, '420', '420', 'Caricature', 'Caricature/Caricature-9-.png', NULL),
('337', 'Caricature-10', 'Caricature-10', 'Caricature-10', '6x8', NULL, NULL, '420', '420', 'Caricature', 'Caricature/Caricature-10-.png', NULL),
('338', 'Caricature-11', 'Caricature-11', 'Caricature-11', '6x8', NULL, NULL, '420', '420', 'Caricature', 'Caricature/Caricature-11-.png', NULL),
('339', 'Caricature-12', 'Caricature-12', 'Caricature-12', '6x8', NULL, NULL, '420', '420', 'Caricature', 'Caricature/Caricature-12-.png', NULL),
('340', 'Caricature-13', 'Caricature-13', 'Caricature-13', '6x8', NULL, NULL, '420', '420', 'Caricature', 'Caricature/Caricature-13-.png', NULL),
('341', 'Caricature-14', 'Caricature-14', 'Caricature-14', '6x8', NULL, NULL, '420', '420', 'Caricature', 'Caricature/Caricature-14-.png', NULL),
('342', 'Caricature-15', 'Caricature-15', 'Caricature-15', '6x8', NULL, NULL, '420', '420', 'Caricature', 'Caricature/Caricature-15-.png', NULL),
('343', 'Caricature-16', 'Caricature-16', 'Caricature-16', '6x8', NULL, NULL, '420', '420', 'Caricature', 'Caricature/Caricature-16-.png', NULL),
('344', 'Caricature-17', 'Caricature-17', 'Caricature-17', '6x8', NULL, NULL, '420', '420', 'Caricature', 'Caricature/Caricature-17-.png', NULL),
('345', 'Caricature-18', 'Caricature-18', 'Caricature-18', '6x8', NULL, NULL, '420', '420', 'Caricature', 'Caricature/Caricature-18-.png', NULL),
('346', 'Caricature-19', 'Caricature-19', 'Caricature-19', '6x8', NULL, NULL, '420', '420', 'Caricature', 'Caricature/Caricature-19-.png', NULL),
('347', 'Caricature-20', 'Caricature-20', 'Caricature-20', '6x8', NULL, NULL, '420', '420', 'Caricature', 'Caricature/Caricature-20-.png', NULL),
('348', 'Caricature-21', 'Caricature-21', 'Caricature-21', '6x8', NULL, NULL, '420', '420', 'Caricature', 'Caricature/Caricature-21-.png', NULL),
('349', 'Caricature-22', 'Caricature-22', 'Caricature-22', '6x8', NULL, NULL, '420', '420', 'Caricature', 'Caricature/Caricature-22-.png', NULL),
('350', 'Caricature-23', 'Caricature-23', 'Caricature-23', '6x8', NULL, NULL, '420', '420', 'Caricature', 'Caricature/Caricature-23-.png', NULL),
('351', 'Caricature-24', 'Caricature-24', 'Caricature-24', '6x8', NULL, NULL, '420', '420', 'Caricature', 'Caricature/Caricature-24-.png', NULL),
('352', 'Caricature-25', 'Caricature-25', 'Caricature-25', '6x8', NULL, NULL, '420', '420', 'Caricature', 'Caricature/Caricature-25-.png', NULL),
('353', 'Caricature-26', 'Caricature-26', 'Caricature-26', '6x8', NULL, NULL, '420', '420', 'Caricature', 'Caricature/Caricature-26-.png', NULL),
('354', 'Caricature-27', 'Caricature-27', 'Caricature-27', '6x8', NULL, NULL, '420', '420', 'Caricature', 'Caricature/Caricature-27-.png', NULL),
('355', 'Caricature-28', 'Caricature-28', 'Caricature-28', '6x8', NULL, NULL, '420', '420', 'Caricature', 'Caricature/Caricature-28-.png', NULL),
('356', 'Caricature-29', 'Caricature-29', 'Caricature-29', '6x8', NULL, NULL, '420', '420', 'Caricature', 'Caricature/Caricature-29-.png', NULL),
('357', 'Caricature-30', 'Caricature-30', 'Caricature-30', '6x8', NULL, NULL, '420', '420', 'Caricature', 'Caricature/Caricature-30-.png', NULL),
('358', 'Caricature-31', 'Caricature-31', 'Caricature-31', '6x8', NULL, NULL, '420', '420', 'Caricature', 'Caricature/Caricature-31-.png', NULL),
('359', 'Caricature-32', 'Caricature-32', 'Caricature-32', '6x8', NULL, NULL, '420', '420', 'Caricature', 'Caricature/Caricature-32-.png', NULL),
('360', 'Caricature-33', 'Caricature-33', 'Caricature-33', '6x8', NULL, NULL, '420', '420', 'Caricature', 'Caricature/Caricature-33-.png', NULL),
('361', 'Caricature-34', 'Caricature-34', 'Caricature-34', '6x8', NULL, NULL, '420', '420', 'Caricature', 'Caricature/Caricature-34-.png', NULL),
('362', 'Caricature-35', 'Caricature-35', 'Caricature-35', '6x8', NULL, NULL, '420', '420', 'Caricature', 'Caricature/Caricature-35-.png', NULL),
('363', 'Caricature-36', 'Caricature-36', 'Caricature-36', '6x8', NULL, NULL, '420', '420', 'Caricature', 'Caricature/Caricature-36-.png', NULL),
('364', 'Caricature-37', 'Caricature-37', 'Caricature-37', '6x8', NULL, NULL, '420', '420', 'Caricature', 'Caricature/Caricature-37-.png', NULL),
('365', 'Caricature-38', 'Caricature-38', 'Caricature-38', '6x8', NULL, NULL, '420', '420', 'Caricature', 'Caricature/Caricature-38-.png', NULL),
('366', 'Caricature-39', 'Caricature-39', 'Caricature-39', '6x8', NULL, NULL, '420', '420', 'Caricature', 'Caricature/Caricature-39-.png', NULL),
('367', 'Caricature-40', 'Caricature-40', 'Caricature-40', '6x8', NULL, NULL, '420', '420', 'Caricature', 'Caricature/Caricature-40-.png', NULL),
('368', 'Liquid Photo frame heart Shape', 'Liquid Photo frame heart Shape', 'Liquid Photo frame heart Shape', '9.1', '8.1', NULL, '350', '350', 'Famous Products', 'Famous-Products/Liquid-Photo-frame-heart-Shape-.png', NULL),
('369', 'Liquid Photo frame Ball Shape', 'Liquid Photo frame Ball Shape', 'Liquid Photo frame Ball Shape', '6.3', '7', NULL, '350', '350', 'Famous Products', 'Famous-Products/Liquid-Photo-frame-Ball-Shape-.png', NULL),
('370', 'Liquid Photo frame Apple Shape', 'Liquid Photo frame Apple Shape', 'Liquid Photo frame Apple Shape', '6.3', '8.4', NULL, '350', '350', 'Famous Products', 'Famous-Products/Liquid-Photo-frame-Apple-Shape-.png', NULL),
('371', 'Liquid Photo frame Circle Shape', 'Liquid Photo frame Circle Shape', 'Liquid Photo frame Circle Shape', '9.1', '9.5', NULL, '350', '350', 'Famous Products', 'Famous-Products/Liquid-Photo-frame-Circle-Shape-.png', NULL),
('372', 'Liquid Photo frame Small Rectangle or Verticle Shape', 'Liquid Photo frame Small Rectangle or Verticle Shape', 'Liquid Photo frame Small Rectangle or Verticle Shape', '10.5', '8.5', NULL, '350', '350', 'Famous Products', 'Famous-Products/Liquid-Photo-frame-Small-Rectangle-or-Verticle--Shape-.png', NULL),
('373', 'Liquid Photo frame Flower Shape', 'Liquid Photo frame Flower Shape', 'Liquid Photo frame Flower Shape', '9', '9', NULL, '350', '350', 'Famous Products', 'Famous-Products/Liquid-Photo-frame-Flower-Shape-.png', NULL),
('374', 'Liquid Photo frame Butterfly Shape', 'Liquid Photo frame Butterfly Shape', 'Liquid Photo frame Butterfly Shape', '8.2', '7.2', NULL, '350', '350', 'Famous Products', 'Famous-Products/Liquid-Photo-frame-Butterfly-Shape-.png', NULL),
('375', 'Liquid Photo frame Cuple Heart Shape', 'Liquid Photo frame Cuple Heart Shape', 'Liquid Photo frame Cuple Heart Shape', '9', '8;3.8', NULL, '420', '420', 'Famous Products', 'Famous-Products/Liquid-Photo-frame-Cuple-Heart--Shape-.png', NULL),
('376', 'Liquid Photo frame Big Recta ngle or Verticle Shape', 'Liquid Photo frame Big Recta ngle or Verticle Shape', 'Liquid Photo frame Big Recta ngle or Verticle Shape', '15', '10', NULL, '490', '490', 'Famous Products', 'Famous-Products/Liquid-Photo-frame-Big-Recta-ngle-or-Verticle--Shape-.png', NULL),
('377', 'Magnetic Magic Cube No Battery 6 Images', 'Magnetic Magic Cube No Battery 6 Images', 'Magnetic Magic Cube No Battery 6 Images', '5.9', '5.9', NULL, '560', '560', 'Famous Products', 'Famous-Products/Magnetic-Magic-Cube-No-Battery-6-Images-.png', NULL),
('378', 'Rotating Battery With Battery', 'Rotating Battery With Battery', 'Rotating Battery With Battery', '12', '10;4.5', NULL, '699.3', '699.3', 'Famous Products', 'Famous-Products/Rotating-Battery-With-Battery-.png', NULL),
('379', 'Rotating Cube -6 Images With battery', 'Rotating Cube -6 Images With battery', 'Rotating Cube -6 Images With battery', '9.8', '9.8', NULL, '699.3', '699.3', 'Famous Products', 'Famous-Products/Rotating-Cube--6-Images-With-battery-.png', NULL),
('380', 'First Year Birthday Frame', 'First Year Birthday Frame', 'First Year Birthday Frame', '4', '4', NULL, '630', '630', 'Famous Products', 'Famous-Products/First--Year-Birthday-Frame-.png', NULL),
('381', 'Rubiks Cube', 'Rubiks Cube', 'Rubiks Cube', '15', '15 Mm', NULL, '490', '490', 'Famous Products', 'Famous-Products/Rubiks-Cube-.png', NULL),
('382', 'Moon Lamp Engraving', 'Moon Lamp Engraving', 'Moon Lamp Engraving', '2.5', '2.5', NULL, '1120', '1120', 'Famous Products', 'Famous-Products/Moon-Lamp-Engraving-.png', NULL),
('383', 'Digital Cube Clock with 4 Side Print', 'Digital Cube Clock with 4 Side Print', 'Digital Cube Clock with 4 Side Print', '2.5', '2.5', NULL, '630', '630', 'Famous Products', 'Famous-Products/Digital-Cube-Clock-with-4-Side-Print-.png', NULL),
('384', 'Phone Popup Holder', 'Phone Popup Holder', 'Phone Popup Holder', '4', '4', NULL, '112', '112', 'Famous Products', 'Famous-Products/Phone-Popup-Holder-.png', NULL),
('385', 'Photo Locket-Megentha', 'Photo Locket-Megentha', 'Photo Locket-Megentha', '12', '12', NULL, '280', '280', 'Famous Products', 'Famous-Products/Photo-Locket-Megentha-.png', NULL),
('386', 'Photo Locket-Blue', 'Photo Locket-Blue', 'Photo Locket-Blue', '12', '12', NULL, '280', '280', 'Famous Products', 'Famous-Products/Photo-Locket-Blue-.png', NULL),
('387', 'Puzzle heart', 'Puzzle heart', 'Puzzle heart', '9.5', '7.5', NULL, '280', '280', 'Mixed Products', 'Mixed-Products/Puzzle-heart-.png', NULL),
('388', 'Puzzle Rectangle', 'Puzzle Rectangle', 'Puzzle Rectangle', '12', '8', NULL, '280', '280', 'Mixed Products', 'Mixed-Products/Puzzle-Rectangle-.png', NULL),
('389', 'School Bag', 'School Bag', 'School Bag', '12', '16', NULL, '980', '980', 'Mixed Products', 'Mixed-Products/School-Bag-.png', NULL),
('390', 'White Cap', 'White Cap', 'White Cap', '5', '2.5', NULL, '210', '210', 'Mixed Products', 'Mixed-Products/White-Cap-.png', NULL),
('391', 'Red Cap', 'Red Cap', 'Red Cap', '5', '2.5', NULL, '210', '210', 'Mixed Products', 'Mixed-Products/Red-Cap-.png', NULL),
('392', 'Mouse Pad', 'Mouse Pad', 'Mouse Pad', '7.5', '9', NULL, '210', '210', 'Mixed Products', 'Mixed-Products/Mouse-Pad-.png', NULL),
('393', 'Back Light Bed Lamp Horizontal', 'Back Light Bed Lamp Horizontal', 'Back Light Bed Lamp Horizontal', '6.5', '5', NULL, '280', '280', 'Mixed Products', 'Mixed-Products/Back-Light-Bed-Lamp-Horizontal-.png', NULL),
('394', 'Back Light Bed Lamp Vertical', 'Back Light Bed Lamp Vertical', 'Back Light Bed Lamp Vertical', '6.5', '5', NULL, '280', '280', 'Mixed Products', 'Mixed-Products/Back-Light-Bed-Lamp-Vertical-.png', NULL),
('395', 'Car Photo Stand', 'Car Photo Stand', 'Car Photo Stand', '6', '4.1', NULL, '140', '140', 'Mixed Products', 'Mixed-Products/Car-Photo-Stand-.png', NULL),
('396', 'Car LED Photo Stand Vertical', 'Car LED Photo Stand Vertical', 'Car LED Photo Stand Vertical', '6', '9', NULL, '1120', '1120', 'Mixed Products', 'Mixed-Products/Car-LED-Photo-Stand-Vertical-.png', NULL),
('397', 'Car LED Photo Stand Horizantal', 'Car LED Photo Stand Horizantal', 'Car LED Photo Stand Horizantal', '10', '6', NULL, '1120', '1120', 'Mixed Products', 'Mixed-Products/Car-LED-Photo-Stand-Horizantal-.png', NULL),
('398', 'Car Photo Stand', 'Car Photo Stand', 'Car Photo Stand', '5', '7.5', NULL, '210', '210', 'Mixed Products', 'Mixed-Products/Car-Photo-Stand-.png', NULL),
('399', 'Sandal Round Neck', 'Sandal Round Neck', 'Sandal Round Neck', NULL, NULL, NULL, '280', '280', 'T Shirt ', 'T-Shirt/Sandal-Round-Neck-.png', NULL),
('400', 'Gray Round Neck', 'Gray Round Neck', 'Gray Round Neck', NULL, NULL, NULL, '280', '280', 'T Shirt ', 'T-Shirt/Gray--Round-Neck-.png', NULL),
('401', 'Yellow Round Neck', 'Yellow Round Neck', 'Yellow Round Neck', NULL, NULL, NULL, '280', '280', 'T Shirt ', 'T-Shirt/Yellow--Round-Neck-.png', NULL),
('402', 'White Round Neck', 'White Round Neck', 'White Round Neck', NULL, NULL, NULL, '350', '350', 'T Shirt ', 'T-Shirt/White--Round-Neck-.png', NULL),
('403', 'Colour TShirt With Neck', 'Colour TShirt With Neck', 'Colour TShirt With Neck', NULL, NULL, NULL, '420', '420', 'T Shirt ', 'T-Shirt/Colour-TShirt-With-Neck-.png', NULL),
('404', 'A4 Thin Rubber Print on Polyseter T Shirt', 'A4 Thin Rubber Print on Polyseter T Shirt', 'A4 Thin Rubber Print on Polyseter T Shirt', NULL, NULL, NULL, '490', '490', 'T Shirt ', 'T-Shirt/A4-Thin-Rubber--Print-on-Polyseter-T--Shirt-.png', NULL),
('405', 'Cotton Text Print', 'Cotton Text Print', 'Cotton Text Print', NULL, NULL, NULL, '560', '560', 'T Shirt ', 'T-Shirt/Cotton-Text-Print-.png', NULL),
('406', 'Heart Crystal', 'Heart Crystal', 'Heart Crystal', NULL, NULL, NULL, '1960', '1960', '3D Crystal Cubs', '3D-Crystal-Cubs/Heart-Crystal-.png', NULL),
('407', 'Full Slant 3D Heart Crystal', 'Full Slant 3D Heart Crystal', 'Full Slant 3D Heart Crystal', NULL, NULL, NULL, '2100', '2100', '3D Crystal Cubs', '3D-Crystal-Cubs/Full-Slant-3D-Heart-Crystal-.png', NULL),
('408', 'Semi Slant 3D Heart Crystal', 'Semi Slant 3D Heart Crystal', 'Semi Slant 3D Heart Crystal', NULL, NULL, NULL, '2240', '2240', '3D Crystal Cubs', '3D-Crystal-Cubs/Semi-Slant-3D--Heart-Crystal-.png', NULL),
('409', '4X4X6 Single', '4X4X6 Single', '4X4X6 Single', NULL, NULL, NULL, '560', '560', '3D Crystal Cubs', '3D-Crystal-Cubs/4X4X6-Single-.png', NULL),
('410', '4X4X6 Double Head', '4X4X6 Double Head', '4X4X6 Double Head', NULL, NULL, NULL, '630', '630', '3D Crystal Cubs', '3D-Crystal-Cubs/4X4X6-Double-Head-.png', NULL),
('411', '5X5X8 Single', '5X5X8 Single', '5X5X8 Single', NULL, NULL, NULL, '699.3', '699.3', '3D Crystal Cubs', '3D-Crystal-Cubs/5X5X8-Single-.png', NULL),
('412', '5X5X8 Double Head ', '5X5X8 Double Head ', '5X5X8 Double Head ', NULL, NULL, NULL, '770', '770', '3D Crystal Cubs', '3D-Crystal-Cubs/5X5X8-Double-Head--.png', NULL),
('413', '6X6X10 Single', '6X6X10 Single', '6X6X10 Single', NULL, NULL, NULL, '1120', '1120', '3D Crystal Cubs', '3D-Crystal-Cubs/6X6X10-Single-.png', NULL),
('414', '6X6X10 Double Head', '6X6X10 Double Head', '6X6X10 Double Head', NULL, NULL, NULL, '1260', '1260', '3D Crystal Cubs', '3D-Crystal-Cubs/6X6X10-Double-Head-.png', NULL),
('415', '5X5X5 ', '5X5X5 ', '5X5X5 ', NULL, NULL, NULL, '630', '630', '3D Crystal Cubs', '3D-Crystal-Cubs/5X5X5--.png', NULL),
('416', 'Fixed Light Base with USB Power Cable', 'Fixed Light Base with USB Power Cable', 'Fixed Light Base with USB Power Cable', NULL, NULL, NULL, '280', '280', '3D Crystal Cubs', '3D-Crystal-Cubs/Fixed-Light-Base-with-USB-Power-Cable-.png', NULL),
('417', '12X8X6 Single', '12X8X6 Single', '12X8X6 Single', NULL, NULL, NULL, '2100', '2100', '3D Crystal Cubs', '3D-Crystal-Cubs/12X8X6-Single-.png', NULL),
('418', '12X8X5 Double Head', '12X8X5 Double Head', '12X8X5 Double Head', NULL, NULL, NULL, '2240', '2240', '3D Crystal Cubs', '3D-Crystal-Cubs/12X8X5-Double-Head-.png', NULL),
('419', 'Rotating Light Base-Big', 'Rotating Light Base-Big', 'Rotating Light Base-Big', NULL, NULL, NULL, '630', '630', '3D Crystal Cubs', '3D-Crystal-Cubs/Rotating-Light-Base-Big-.png', NULL),
('420', '3D Apple Big', '3D Apple Big', '3D Apple Big', NULL, NULL, NULL, '2240', '2240', '3D Crystal', '3D-Crystal-Cubs/3D-Apple-Big-.png', NULL),
('421', '3 D Big Apple', '3 D Big Apple', '3 D Big Apple', NULL, NULL, NULL, '1960', '1960', '3D Crystal', '3D-Crystal-Cubs/3-D-Big-Apple-.png', NULL),
('422', '3D Apple Medium', '3D Apple Medium', '3D Apple Medium', NULL, NULL, NULL, '1120', '1120', '3D Crystal', '3D-Crystal-Cubs/3D-Apple-Medium-.png', NULL),
('423', '3D Round ', '3D Round ', '3D Round ', NULL, NULL, NULL, '1960', '1960', '3D Crystal', '3D-Crystal-Cubs/3D-Round--.png', NULL),
('424', '2D Heart Crystal', '2D Heart Crystal', '2D Heart Crystal', NULL, NULL, NULL, '1540', '1540', '3D Crystal', '3D-Crystal-Cubs/2D-Heart-Crystal-.png', NULL),
('425', '2D Round Cut Crystal', '2D Round Cut Crystal', '2D Round Cut Crystal', NULL, NULL, NULL, '1260', '1260', '3D Crystal', '3D-Crystal-Cubs/2D-Round-Cut-Crystal-.png', NULL),
('426', '3D Love Heart Big', '3D Love Heart Big', '3D Love Heart Big', NULL, NULL, NULL, '2520', '2520', '3D Crystal', '3D-Crystal-Cubs/3D-Love-Heart-Big-.png', NULL),
('427', '3D Love Heart ', '3D Love Heart ', '3D Love Heart ', NULL, NULL, NULL, '1820', '1820', '3D Crystal', '3D-Crystal-Cubs/3D-Love-Heart--.png', NULL),
('428', '2D Rectangle Crystal', '2D Rectangle Crystal', '2D Rectangle Crystal', NULL, NULL, NULL, '420', '420', '3D Crystal', '3D-Crystal-Cubs/2D-Rectangle-Crystal-.png', NULL),
('429', '2D Oval Shape Crystal', '2D Oval Shape Crystal', '2D Oval Shape Crystal', NULL, NULL, NULL, '420', '420', '3D Crystal', '3D-Crystal-Cubs/2D-Oval-Shape-Crystal-.png', NULL),
('430', 'Golden Leaf Ice Berg Apple ', 'Golden Leaf Ice Berg Apple ', 'Golden Leaf Ice Berg Apple ', NULL, NULL, NULL, '2100', '2100', '3D Crystal', '3D-Crystal-Cubs/Golden-Leaf-Ice-Berg-Apple--.png', NULL),
('431', '3D Crystal Frame Big ', '3D Crystal Frame Big ', '3D Crystal Frame Big ', NULL, NULL, NULL, '2099.3', '2099.3', '3D Crystal', '3D-Crystal-Cubs/3D-Crystal-Frame-Big--.png', NULL),
('432', '3D Crystal Frame Bigger', '3D Crystal Frame Bigger', '3D Crystal Frame Bigger', NULL, NULL, NULL, '2520', '2520', '3D Crystal', '3D-Crystal-Cubs/3D-Crystal-Frame-Bigger-.png', NULL);
INSERT INTO `all_product` (`A`, `B`, `C`, `D`, `E`, `F`, `G`, `H`, `I`, `J`, `K`, `L`) VALUES
('433', 'CA-08', 'CA-08', 'CA-08', NULL, NULL, NULL, '1399.3', '1399.3', 'Big Crystal Awards', 'Big-Crystal-Awards/CA-08-.png', NULL),
('434', 'CA-09', 'CA-09', 'CA-09', NULL, NULL, NULL, '1260', '1260', 'Big Crystal Awards', 'Big-Crystal-Awards/CA-09-.png', NULL),
('435', 'CA -10', 'CA -10', 'CA -10', NULL, NULL, NULL, '1260', '1260', 'Big Crystal Awards', 'Big-Crystal-Awards/CA--10-.png', NULL),
('436', 'CA-12', 'CA-12', 'CA-12', NULL, NULL, NULL, '1260', '1260', 'Big Crystal Awards', 'Big-Crystal-Awards/CA-12-.png', NULL),
('437', 'CA-11', 'CA-11', 'CA-11', NULL, NULL, NULL, '1260', '1260', 'Big Crystal Awards', 'Big-Crystal-Awards/CA-11-.png', NULL),
('438', 'CA-15', 'CA-15', 'CA-15', NULL, NULL, NULL, '1260', '1260', 'Big Crystal Awards', 'Big-Crystal-Awards/CA-15-.png', NULL),
('439', '4X6 Inch ', '4X6 Inch ', '4X6 Inch ', NULL, NULL, NULL, '420', '420', 'Acrylic Awards', 'Acrylic-Awards/4X6-Inch--.png', NULL),
('440', '6X9', '6X9', '6X9', NULL, NULL, NULL, '630', '630', 'Acrylic Awards', 'Acrylic-Awards/6X9-.png', NULL),
('441', '8X12', '8X12', '8X12', NULL, NULL, NULL, '840', '840', 'Acrylic Awards', 'Acrylic-Awards/8X12-.png', NULL),
('442', 'CA-13', 'CA-13', 'CA-13', NULL, NULL, NULL, '420', '420', 'Crystal Awards', 'Crystal-Awards/CA-13-.png', NULL),
('443', 'CA-14', 'CA-14', 'CA-14', NULL, NULL, NULL, '980', '980', 'Crystal Awards', 'Crystal-Awards/CA-14-.png', NULL),
('444', 'CA-05', 'CA-05', 'CA-05', NULL, NULL, NULL, '699.3', '699.3', 'Crystal Awards', 'Crystal-Awards/CA-05-.png', NULL),
('445', 'CA-06', 'CA-06', 'CA-06', NULL, NULL, NULL, '980', '980', 'Crystal Awards', 'Crystal-Awards/CA-06-.png', NULL),
('446', 'CA-01', 'CA-01', 'CA-01', NULL, NULL, NULL, '699.3', '699.3', 'Crystal Awards', 'Crystal-Awards/CA-01-.png', NULL),
('447', 'CA-02', 'CA-02', 'CA-02', NULL, NULL, NULL, '699.3', '699.3', 'Crystal Awards', 'Crystal-Awards/CA-02-.png', NULL),
('448', 'CA-03', 'CA-03', 'CA-03', NULL, NULL, NULL, '699.3', '699.3', 'Crystal Awards', 'Crystal-Awards/CA-03-.png', NULL),
('449', 'CA-04', 'CA-04', 'CA-04', NULL, NULL, NULL, '699.3', '699.3', 'Crystal Awards', 'Crystal-Awards/CA-04-.png', NULL),
('450', 'CA-001', 'CA-001', 'CA-001', NULL, NULL, NULL, '699.3', '699.3', 'Crystal Awards', 'Crystal-Awards/CA-001-.png', NULL),
('451', 'CA-002', 'CA-002', 'CA-002', NULL, NULL, NULL, '699.3', '699.3', 'Crystal Awards', 'Crystal-Awards/CA-002-.png', NULL),
('452', 'CA-003', 'CA-003', 'CA-003', NULL, NULL, NULL, '699.3', '699.3', 'Crystal Awards', 'Crystal-Awards/CA-003-.png', NULL),
('453', 'CA-004', 'CA-004', 'CA-004', NULL, NULL, NULL, '699.3', '699.3', 'Crystal Awards', 'Crystal-Awards/CA-004-.png', NULL),
('454', 'CA-018', 'CA-018', 'CA-018', NULL, NULL, NULL, '699.3', '699.3', 'Crystal Awards', 'Crystal-Awards/CA-018-.png', NULL),
('455', 'CA-18', 'CA-18', 'CA-18', NULL, NULL, NULL, '699.3', '699.3', 'Crystal Awards', 'Crystal-Awards/CA-18-.png', NULL),
('456', 'CA-17', 'CA-17', 'CA-17', NULL, NULL, NULL, '420', '420', 'Crystal Awards', 'Crystal-Awards/CA-17-.png', NULL),
('457', 'CA-16', 'CA-16', 'CA-16', NULL, NULL, NULL, '1330', '1330', 'Crystal Awards', 'Crystal-Awards/CA-16-.png', NULL),
('458', 'BT-01', 'BT-01', 'BT-01', NULL, NULL, NULL, '280', '280', 'Trophy', 'Trophy/BT-01-.png', NULL),
('459', 'Medal', 'Medal', 'Medal', NULL, NULL, NULL, '140', '140', 'Trophy', 'Trophy/Medal-.png', NULL),
('460', 'BT-03', 'BT-03', 'BT-03', NULL, NULL, NULL, '560', '560', 'Trophy', 'Trophy/BT-03-.png', NULL),
('461', 'BT-06', 'BT-06', 'BT-06', NULL, NULL, NULL, '840', '840', 'Trophy', 'Trophy/BT-06-.png', NULL),
('462', 'BT-21', 'BT-21', 'BT-21', NULL, NULL, NULL, '490', '490', 'Trophy', 'Trophy/BT-21-.png', NULL),
('463', 'BT-22', 'BT-22', 'BT-22', NULL, NULL, NULL, '630', '630', 'Trophy', 'Trophy/BT-22-.png', NULL),
('464', 'BT-23', 'BT-23', 'BT-23', NULL, NULL, NULL, '699.3', '699.3', 'Trophy', 'Trophy/BT-23-.png', NULL),
('465', 'BT-24', 'BT-24', 'BT-24', NULL, NULL, NULL, '1260', '1260', 'Trophy', 'Trophy/BT-24-.png', NULL),
('466', 'BT-13', 'BT-13', 'BT-13', NULL, NULL, NULL, '560', '560', 'Trophy', 'Trophy/BT-13-.png', NULL),
('467', 'BT-25', 'BT-25', 'BT-25', NULL, NULL, NULL, '490', '490', 'Trophy', 'Trophy/BT-25-.png', NULL),
('468', 'BT-26', 'BT-26', 'BT-26', NULL, NULL, NULL, '560', '560', 'Trophy', 'Trophy/BT-26-.png', NULL),
('469', 'BT-27', 'BT-27', 'BT-27', NULL, NULL, NULL, '630', '630', 'Trophy', 'Trophy/BT-27-.png', NULL),
('470', 'BT-17', 'BT-17', 'BT-17', NULL, NULL, NULL, '560', '560', 'Trophy', 'Trophy/BT-17-.png', NULL),
('471', 'BT-18', 'BT-18', 'BT-18', NULL, NULL, NULL, '700', '700', 'Trophy', 'Trophy/BT-18-.png', NULL),
('472', 'BT-19', 'BT-19', 'BT-19', NULL, NULL, NULL, '980', '980', 'Trophy', 'Trophy/BT-19-.png', NULL),
('473', 'BT-20', 'BT-20', 'BT-20', NULL, NULL, NULL, '1260', '1260', 'Trophy', 'Trophy/BT-20-.png', NULL),
('474', '3 Heart Frame 12 Inch', '3 Heart Frame 12 Inch', '3 Heart Frame 12 Inch', NULL, NULL, NULL, '490', '490', 'Instant Photo frames', 'Instant-Photo-frames/3-Heart-Frame-12-Inch-.png', NULL),
('475', '3 Heart Frame 18 Inch', '3 Heart Frame 18 Inch', '3 Heart Frame 18 Inch', NULL, NULL, NULL, '699.3', '699.3', 'Instant Photo frames', 'Instant-Photo-frames/3-Heart-Frame-18-Inch-.png', NULL),
('476', 'Alphabet Collage Frame', 'Alphabet Collage Frame', 'Alphabet Collage Frame', NULL, NULL, NULL, '699.3', '699.3', 'Instant Photo frames', 'Instant-Photo-frames/Alphabet-Collage-Frame-.png', NULL),
('477', 'Circle Frames', 'Circle Frames', 'Circle Frames', NULL, NULL, NULL, '699.3', '699.3', 'Instant Photo frames', 'Instant-Photo-frames/Circle-Frames-.png', NULL),
('478', 'Honey Comb frames', 'Honey Comb frames', 'Honey Comb frames', NULL, NULL, NULL, '1120', '1120', 'Instant Photo frames', 'Instant-Photo-frames/Honey-Comb-frames-.png', NULL),
('479', 'Heart Collage Frame', 'Heart Collage Frame', 'Heart Collage Frame', '12', '8;8', NULL, '1820', '1820', 'Instant Photo frames', 'Instant-Photo-frames/Heart-Collage-Frame-.png', NULL),
('480', '20 Pics Collage Frame', '20 Pics Collage Frame', '20 Pics Collage Frame', '7.5', '10', NULL, '1820', '1820', 'Instant Photo frames', 'Instant-Photo-frames/20-Pics-Collage-Frame-.png', NULL),
('481', '4 frames Black', '4 frames Black', '4 frames Black', NULL, NULL, NULL, '420', '420', 'Instant Photo frames', 'Instant-Photo-frames/4-frames-Black-.png', NULL),
('482', '4 frames Brown', '4 frames Brown', '4 frames Brown', NULL, NULL, NULL, '420', '420', 'Instant Photo frames', 'Instant-Photo-frames/4-frames-Brown-.png', NULL),
('483', '4 Frames Silver', '4 Frames Silver', '4 Frames Silver', NULL, NULL, NULL, '420', '420', 'Instant Photo frames', 'Instant-Photo-frames/4-Frames-Silver-.png', NULL),
('484', '4 Frames Gold', '4 Frames Gold', '4 Frames Gold', NULL, NULL, NULL, '420', '420', 'Instant Photo frames', 'Instant-Photo-frames/4-Frames-Gold-.png', NULL),
('485', 'Hanging Frames 6X4 Black', 'Hanging Frames 6X4 Black', 'Hanging Frames 6X4 Black', NULL, NULL, NULL, '420', '420', 'Instant Photo frames', 'Instant-Photo-frames/Hanging-Frames-6X4-Black-.png', NULL),
('486', 'Hanging Frames 6X4 Brown', 'Hanging Frames 6X4 Brown', 'Hanging Frames 6X4 Brown', NULL, NULL, NULL, '420', '420', 'Instant Photo frames', 'Instant-Photo-frames/Hanging-Frames-6X4-Brown-.png', NULL),
('487', 'Hanging Frames 6X4 Gold', 'Hanging Frames 6X4 Gold', 'Hanging Frames 6X4 Gold', NULL, NULL, NULL, '420', '420', 'Instant Photo frames', 'Instant-Photo-frames/Hanging-Frames-6X4-Gold-.png', NULL),
('488', 'Hanging Frames 6X4 Silver', 'Hanging Frames 6X4 Silver', 'Hanging Frames 6X4 Silver', NULL, NULL, NULL, '420', '420', 'Instant Photo frames', 'Instant-Photo-frames/Hanging-Frames-6X4-Silver-.png', NULL),
('489', 'Hanging Frames 6X8 Black', 'Hanging Frames 6X8 Black', 'Hanging Frames 6X8 Black', NULL, NULL, NULL, '630', '630', 'Instant Photo frames', 'Instant-Photo-frames/Hanging-Frames-6X8-Black-.png', NULL),
('490', 'Hanging Frames 6X8 Brown', 'Hanging Frames 6X8 Brown', 'Hanging Frames 6X8 Brown', NULL, NULL, NULL, '630', '630', 'Instant Photo frames', 'Instant-Photo-frames/Hanging-Frames-6X8-Brown-.png', NULL),
('491', 'Hanging Frames 6X8 Gold', 'Hanging Frames 6X8 Gold', 'Hanging Frames 6X8 Gold', NULL, NULL, NULL, '630', '630', 'Instant Photo frames', 'Instant-Photo-frames/Hanging-Frames-6X8-Gold-.png', NULL),
('492', 'Hanging Frames 6X8 Silver', 'Hanging Frames 6X8 Silver', 'Hanging Frames 6X8 Silver', NULL, NULL, NULL, '630', '630', 'Instant Photo frames', 'Instant-Photo-frames/Hanging-Frames-6X8-Silver-.png', NULL),
('493', '5 frames Black', '5 frames Black', '5 frames Black', NULL, NULL, NULL, '560', '560', 'Instant Photo frames', 'Instant-Photo-frames/5-frames-Black-.png', NULL),
('494', '5 frames Brown', '5 frames Brown', '5 frames Brown', NULL, NULL, NULL, '560', '560', 'Instant Photo frames', 'Instant-Photo-frames/5-frames-Brown-.png', NULL),
('495', '5 Frames Silver', '5 Frames Silver', '5 Frames Silver', NULL, NULL, NULL, '560', '560', 'Instant Photo frames', 'Instant-Photo-frames/5-Frames-Silver-.png', NULL),
('496', '5 Frames Gold', '5 Frames Gold', '5 Frames Gold', NULL, NULL, NULL, '560', '560', 'Instant Photo frames', 'Instant-Photo-frames/5-Frames-Gold-.png', NULL),
('497', '8 frames Black', '8 frames Black', '8 frames Black', NULL, NULL, NULL, '840', '840', 'Instant Photo frames', 'Instant-Photo-frames/8-frames-Black-.png', NULL),
('498', '8 frames Brown', '8 frames Brown', '8 frames Brown', NULL, NULL, NULL, '840', '840', 'Instant Photo frames', 'Instant-Photo-frames/8-frames-Brown-.png', NULL),
('499', '8 Frames Silver', '8 Frames Silver', '8 Frames Silver', NULL, NULL, NULL, '840', '840', 'New Frames', 'Instant-Photo-frames/8-Frames-Silver-.png', NULL),
('500', '8 Frames Gold', '8 Frames Gold', '8 Frames Gold', NULL, NULL, NULL, '840', '840', 'New Frames', 'Instant-Photo-frames/8-Frames-Gold-.png', NULL),
('501', 'Tree Frame -Black', 'Tree Frame -Black', 'Tree Frame -Black', NULL, NULL, NULL, '770', '770', 'New Frames', 'Instant-Photo-frames/Tree-Frame--Black-.png', NULL),
('502', 'Tree Frame-Brown', 'Tree Frame-Brown', 'Tree Frame-Brown', '6.25', '5.25', NULL, '770', '770', 'New Frames', 'Instant-Photo-frames/Tree-Frame-Brown-.png', NULL),
('503', 'Tree Frame -Silver', 'Tree Frame -Silver', 'Tree Frame -Silver', '6.25', '5.25', NULL, '770', '770', 'New Frames', 'Instant-Photo-frames/Tree-Frame--Silver-.png', NULL),
('504', 'Tree Frame -Gold', 'Tree Frame -Gold', 'Tree Frame -Gold', NULL, NULL, NULL, '770', '770', 'New Frames', 'Instant-Photo-frames/Tree-Frame--Gold-.png', NULL),
('505', 'Couple Frame-White', 'Couple Frame-White', 'Couple Frame-White', NULL, NULL, NULL, '699.3', '699.3', 'New Frames', 'New-Frames/Couple-Frame-White-.png', NULL),
('506', 'Couple Frame-Black', 'Couple Frame-Black', 'Couple Frame-Black', NULL, NULL, NULL, '699.3', '699.3', 'New Frames', 'New-Frames/Couple-Frame-Black-.png', NULL),
('507', 'Couple Frame-Brown', 'Couple Frame-Brown', 'Couple Frame-Brown', NULL, NULL, NULL, '699.3', '699.3', 'Embossing 3D Frame', 'New-Frames/Couple-Frame-Brown-.png', NULL),
('508', 'Specs Frame Black', 'Specs Frame Black', 'Specs Frame Black', NULL, NULL, NULL, '630', '630', 'Embossing 3D Frame', 'New-Frames/Specs-Frame-Black-.png', NULL),
('509', 'Specs Frame Red', 'Specs Frame Red', 'Specs Frame Red', NULL, NULL, NULL, '630', '630', 'Embossing 3D Frame', 'New-Frames/Specs-Frame-Red-.png', NULL),
('510', '6X8 Metal Sheet-White', '6X8 Metal Sheet-White', '6X8 Metal Sheet-White', NULL, NULL, NULL, '420', '420', 'Embossing 3D Frame', 'New-Frames/6X8-Metal-Sheet-White-.png', NULL),
('511', '6X8 Metal Sheet-Silver', '6X8 Metal Sheet-Silver', '6X8 Metal Sheet-Silver', NULL, NULL, NULL, '420', '420', 'Embossing 3D Frame', 'New-Frames/6X8-Metal-Sheet-Silver-.png', NULL),
('512', '6X8 Metal Sheet-Gold', '6X8 Metal Sheet-Gold', '6X8 Metal Sheet-Gold', NULL, NULL, NULL, '420', '420', 'Sublimation Print on Plywood Frames', 'New-Frames/6X8-Metal-Sheet-Gold-.png', NULL),
('513', 'Embrossing Frame Heart', 'Embrossing Frame Heart', 'Embrossing Frame Heart', NULL, NULL, NULL, '448', '448', 'Sublimation Print on Plywood Frames', 'Embossing-3D-Frame/Embrossing-Frame-Heart-.png', NULL),
('514', 'Embrossing Frame Square', 'Embrossing Frame Square', 'Embrossing Frame Square', NULL, NULL, NULL, '448', '448', 'Sublimation Print on Plywood Frames', 'Embossing-3D-Frame/Embrossing-Frame-Square-.png', NULL),
('515', 'Embrossing Frame Rectangle', 'Embrossing Frame Rectangle', 'Embrossing Frame Rectangle', NULL, NULL, NULL, '448', '448', 'Sublimation Print on Plywood Frames', 'Embossing-3D-Frame/Embrossing-Frame-Rectangle-.png', NULL),
('516', 'Embrossing Frame Round', 'Embrossing Frame Round', 'Embrossing Frame Round', NULL, NULL, NULL, '448', '448', 'Sublimation Print on Plywood Frames', 'Embossing-3D-Frame/Embrossing-Frame--Round-.png', NULL),
('517', 'Embrossing Frame Collage', 'Embrossing Frame Collage', 'Embrossing Frame Collage', NULL, NULL, NULL, '448', '448', 'Sublimation Print on Plywood Frames', 'Embossing-3D-Frame/Embrossing-Frame--Collage-.png', NULL),
('518', 'Plywood frames-5X7', 'Plywood frames-5X7', 'Plywood frames-5X7', '11', '5.5', NULL, '490', '490', 'High Quality Print On Metal Sheet MDF Frames', 'Sublimation-Print-on-Plywood-Frames/Plywood-frames-5X7-.png', NULL),
('519', 'Plywood frames-6X6', 'Plywood frames-6X6', 'Plywood frames-6X6', '14', '7', NULL, '490', '490', 'High Quality Print On Metal Sheet MDF Frames', 'Sublimation-Print-on-Plywood-Frames/Plywood-frames-6X6-.png', NULL),
('520', 'Plywood Frames 6X8', 'Plywood Frames 6X8', 'Plywood Frames 6X8', '12', '10', NULL, '630', '630', 'High Quality Print On Metal Sheet MDF Frames', 'Sublimation-Print-on-Plywood-Frames/Plywood-Frames-6X8-.png', NULL),
('521', 'Plywood Frames 10X8', 'Plywood Frames 10X8', 'Plywood Frames 10X8', '14.4', '9', NULL, '840', '840', 'High Quality Print On Metal Sheet MDF Frames', 'Sublimation-Print-on-Plywood-Frames/Plywood-Frames-10X8-.png', NULL),
('522', 'Ply Wood Frmes 7X9', 'Ply Wood Frmes 7X9', 'Ply Wood Frmes 7X9', '11', '12', NULL, '699.3', '699.3', 'High Quality Print On Metal Sheet MDF Frames', 'Sublimation-Print-on-Plywood-Frames/Ply-Wood--Frmes-7X9-.png', NULL),
('523', 'Ply wood frames 11.25X16', 'Ply wood frames 11.25X16', 'Ply wood frames 11.25X16', '11', '5.5', NULL, '1680', '1680', 'High Quality Print On Metal Sheet MDF Frames', 'Sublimation-Print-on-Plywood-Frames/Ply-wood-frames-11.25X16-.png', NULL),
('524', '12X10 MDF Frame', '12X10 MDF Frame', '12X10 MDF Frame', '5', '7', NULL, '840', '840', 'High Quality Print On Metal Sheet Easel Frames', 'High-Quality-Print-On-Metal-Sheet-MDF-Frames/12X10-MDF-Frame-.png', NULL),
('525', 'Love 2 Heart MDF Frame', 'Love 2 Heart MDF Frame', 'Love 2 Heart MDF Frame', '7', '5', NULL, '840', '840', 'High Quality Print On Metal Sheet Easel Frames', 'High-Quality-Print-On-Metal-Sheet-MDF-Frames/Love-2-Heart-MDF-Frame-.png', NULL),
('526', 'Heart Arch MDF Frame', 'Heart Arch MDF Frame', 'Heart Arch MDF Frame', '8', '10', NULL, '840', '840', 'High Quality Print On Metal Sheet Easel Frames', 'High-Quality-Print-On-Metal-Sheet-MDF-Frames/Heart-Arch-MDF-Frame-.png', NULL),
('527', 'Couple Heart MDF Frame', 'Couple Heart MDF Frame', 'Couple Heart MDF Frame', '8', '10', NULL, '840', '840', 'High Quality Print On Metal Sheet Easel Frames', 'High-Quality-Print-On-Metal-Sheet-MDF-Frames/Couple-Heart-MDF-Frame-.png', NULL),
('528', 'Apple MDF Frame', 'Apple MDF Frame', 'Apple MDF Frame', '6', '4', NULL, '840', '840', 'Table Top Gifts', 'High-Quality-Print-On-Metal-Sheet-MDF-Frames/Apple-MDF-Frame-.png', NULL),
('529', 'Wide MDF Frame', 'Wide MDF Frame', 'Wide MDF Frame', '6', '4', NULL, '840', '840', 'Table Top Gifts', 'High-Quality-Print-On-Metal-Sheet-MDF-Frames/Wide-MDF-Frame-.png', NULL),
('530', '5x7 Easel Frames Horizantal', '5x7 Easel Frames Horizantal', '5x7 Easel Frames Horizantal', '6', '4', NULL, '630', '630', 'Table Top Gifts', 'High-Quality-Print-On-Metal-Sheet-MDF-Frames/5x7-Easel-Frames-Horizantal-.png', NULL),
('531', '5x7 Easel Frames Verticle', '5x7 Easel Frames Verticle', '5x7 Easel Frames Verticle', '6', '4', NULL, '630', '630', 'Table Top Gifts', 'High-Quality-Print-On-Metal-Sheet-MDF-Frames/5x7--Easel-Frames--Verticle-.png', NULL),
('532', '10X8 Easel Frame Verticle', '10X8 Easel Frame Verticle', '10X8 Easel Frame Verticle', '6', '4', NULL, '840', '840', 'Table Top Gifts', 'High-Quality-Print-On-Metal-Sheet-MDF-Frames/10X8-Easel-Frame-Verticle-.png', NULL),
('533', '10X8 Easel Frame Horizantel', '10X8 Easel Frame Horizantel', '10X8 Easel Frame Horizantel', NULL, NULL, NULL, '840', '840', 'MDF Sublimation Frames', 'High-Quality-Print-On-Metal-Sheet-MDF-Frames/10X8-Easel-Frame-Horizantel-.png', NULL),
('534', 'Happy Family', 'Happy Family', 'Happy Family', NULL, NULL, NULL, '699.3', '699.3', 'MDF Sublimation Frames', 'Table-Top-Gifts/Happy-Family-.png', NULL),
('535', 'Love White', 'Love White', 'Love White', NULL, NULL, NULL, '699.3', '699.3', 'MDF Sublimation Frames', 'Table-Top-Gifts/Love-White-.png', NULL),
('536', 'Happy Birthday ', 'Happy Birthday ', 'Happy Birthday ', NULL, NULL, NULL, '699.3', '699.3', 'MDF Sublimation Frames', 'Table-Top-Gifts/Happy-Birthday--.png', NULL),
('537', 'Friends', 'Friends', 'Friends', NULL, NULL, NULL, '699.3', '699.3', 'MDF Sublimation Frames', 'Table-Top-Gifts/Friends-.png', NULL),
('538', 'Love Gold', 'Love Gold', 'Love Gold', NULL, NULL, NULL, '699.3', '699.3', 'MDF Sublimation Frames', 'Table-Top-Gifts/Love-Gold-.png', NULL),
('539', 'MDF Love Frame 6X5', 'MDF Love Frame 6X5', 'MDF Love Frame 6X5', NULL, NULL, NULL, '308', '308', 'MDF Sublimation Frames', 'MDF-Sublimation--Frames/MDF-Love-Frame-6X5-.png', NULL),
('540', 'MDF Happy Birthday 6X5', 'MDF Happy Birthday 6X5', 'MDF Happy Birthday 6X5', NULL, NULL, NULL, '308', '308', 'MDF Sublimation Frames', 'MDF-Sublimation--Frames/MDF-Happy-Birthday-6X5-.png', NULL),
('541', 'MDF Friends Frame 6X5', 'MDF Friends Frame 6X5', 'MDF Friends Frame 6X5', NULL, NULL, NULL, '308', '308', 'MDF Sublimation Frames', 'MDF-Sublimation--Frames/MDF-Friends--Frame-6X5-.png', NULL),
('542', 'MDF Family Frame 6X5', 'MDF Family Frame 6X5', 'MDF Family Frame 6X5', NULL, NULL, NULL, '308', '308', '4X4 Fridge Management', 'MDF-Sublimation--Frames/MDF-Family--Frame-6X5-.png', NULL),
('543', 'Note Book', 'Note Book', 'Note Book', '2.75', '4', NULL, '280', '280', '4X4 Fridge Management', 'MDF-Sublimation--Frames/Note-Book-.png', NULL),
('544', 'MDF Rectangle Frame 8X6', 'MDF Rectangle Frame 8X6', 'MDF Rectangle Frame 8X6', NULL, NULL, NULL, '560', '560', '4X4 Fridge Management', 'MDF-Sublimation--Frames/MDF-Rectangle-Frame-8X6-.png', NULL),
('545', 'MDF Exam Frame 9.25X14.25', 'MDF Exam Frame 9.25X14.25', 'MDF Exam Frame 9.25X14.25', NULL, NULL, NULL, '630', '630', '4X4 Fridge Management', 'MDF-Sublimation--Frames/MDF-Exam-Frame-9.25X14.25-.png', NULL),
('546', 'Calender 6X8 12 Leaves', 'Calender 6X8 12 Leaves', 'Calender 6X8 12 Leaves', NULL, NULL, NULL, '490', '490', '4X4 Fridge Management', 'MDF-Sublimation--Frames/Calender-6X8-12-Leaves-.png', NULL),
('547', 'Calender 12X8 12 Leaves', 'Calender 12X8 12 Leaves', 'Calender 12X8 12 Leaves', NULL, NULL, NULL, '840', '840', '4X4 Fridge Management', 'MDF-Sublimation--Frames/Calender-12X8-12-Leaves-.png', NULL),
('548', '4X4 Hexgon', '4X4 Hexgon', '4X4 Hexgon', NULL, NULL, NULL, '210', '210', '4X4 Fridge Management', 'Fridge-Management/4X4-Hexgon-.png', NULL),
('549', '4X4 Rectangle', '4X4 Rectangle', '4X4 Rectangle', NULL, NULL, NULL, '210', '210', 'Fridge Management', 'Fridge-Management/4X4-Rectangle-.png', NULL),
('550', '4X4 Oval Shape', '4X4 Oval Shape', '4X4 Oval Shape', NULL, NULL, NULL, '210', '210', 'Fridge Management', 'Fridge-Management/4X4-Oval-Shape-.png', NULL),
('551', '4X4 Happy Home', '4X4 Happy Home', '4X4 Happy Home', NULL, NULL, NULL, '210', '210', 'Fridge Management', 'Fridge-Management/4X4-Happy-Home-.png', NULL),
('552', '4X4 Heart ', '4X4 Heart ', '4X4 Heart ', NULL, NULL, NULL, '210', '210', 'Fridge Management', 'Fridge-Management/4X4-Heart--.png', NULL),
('553', '4X4 Double Heart', '4X4 Double Heart', '4X4 Double Heart', '5', '8.5', NULL, '210', '210', 'Fridge Management', 'Fridge-Management/4X4-Double-Heart-.png', NULL),
('554', '4X4 Round', '4X4 Round', '4X4 Round', '6', '4.5', NULL, '210', '210', 'Fridge Management', 'Fridge-Management/4X4-Round-.png', NULL),
('555', 'Flower', 'Flower', 'Flower', NULL, NULL, NULL, '140', '140', 'Fridge Management', 'Fridge-Management/Flower-.png', NULL),
('556', 'Square shape-Magnet', 'Square shape-Magnet', 'Square shape-Magnet', NULL, NULL, NULL, '140', '140', '6X6 Fridge Management', 'Fridge-Management/Square-shape-Magnet-.png', NULL),
('557', 'Heart Shape -Magnet', 'Heart Shape -Magnet', 'Heart Shape -Magnet', '6', '4', NULL, '140', '140', '6X6 Fridge Management', 'Fridge-Management/Heart-Shape--Magnet-.png', NULL),
('558', 'Round Shape Magnet', 'Round Shape Magnet', 'Round Shape Magnet', NULL, NULL, NULL, '140', '140', '6X6 Fridge Management', 'Fridge-Management/Round-Shape-Magnet-.png', NULL),
('559', 'Rectangle Shape-Magnet', 'Rectangle Shape-Magnet', 'Rectangle Shape-Magnet', NULL, NULL, NULL, '140', '140', '6X6 Fridge Management', 'Fridge-Management/Rectangle-Shape-Magnet-.png', NULL),
('560', 'Oval Shape-Magnet', 'Oval Shape-Magnet', 'Oval Shape-Magnet', NULL, NULL, NULL, '140', '140', '6X6 Fridge Management', 'Fridge-Management/Oval-Shape-Magnet-.png', NULL),
('561', 'Hexogan Shape-Magnet', 'Hexogan Shape-Magnet', 'Hexogan Shape-Magnet', NULL, NULL, NULL, '140', '140', '6X6 Fridge Management', 'Fridge-Management/Hexogan-Shape-Magnet-.png', NULL),
('562', '6X6 Hexgon', '6X6 Hexgon', '6X6 Hexgon', NULL, NULL, NULL, '350', '350', '6X6 Fridge Management', 'Fridge-Management/6X6-Hexgon-.png', NULL),
('563', '6X6 Rectangle', '6X6 Rectangle', '6X6 Rectangle', '9', '9', NULL, '350', '350', 'Engravving on Metal Products', 'Fridge-Management/6X6-Rectangle-.png', NULL),
('564', '6X6 Oval Shape', '6X6 Oval Shape', '6X6 Oval Shape', NULL, NULL, NULL, '350', '350', 'Engravving on Metal Products', 'Fridge-Management/6X6-Oval-Shape-.png', NULL),
('565', '6X6 Happy Home', '6X6 Happy Home', '6X6 Happy Home', NULL, NULL, NULL, '350', '350', 'Engravving on Metal Products', 'Fridge-Management/6X6-Happy-Home-.png', NULL),
('566', '6X6 Heart ', '6X6 Heart ', '6X6 Heart ', NULL, NULL, NULL, '350', '350', 'Prints', 'Fridge-Management/6X6-Heart--.png', NULL),
('567', '6X6 Double Heart', '6X6 Double Heart', '6X6 Double Heart', NULL, NULL, NULL, '350', '350', 'Prints', 'Fridge-Management/6X6-Double-Heart-.png', NULL),
('568', '6X6 Round', '6X6 Round', '6X6 Round', NULL, NULL, NULL, '350', '350', 'Prints', 'Fridge-Management/6X6-Round-.png', NULL),
('569', 'Plate 7X7', 'Plate 7X7', 'Plate 7X7', NULL, NULL, NULL, '350', '350', 'Prints', 'Engravving-on-Metal-Products/Plate-7X7-.png', NULL),
('570', 'Metal Ring', 'Metal Ring', 'Metal Ring', NULL, NULL, NULL, '280', '280', 'Prints', 'Engravving-on-Metal-Products/Metal-Ring-.png', NULL),
('571', 'Metal Bracelet', 'Metal Bracelet', 'Metal Bracelet', NULL, NULL, NULL, '350', '350', 'Prints', 'Engravving-on-Metal-Products/Metal-Bracelet-.png', NULL),
('572', 'Big Prints 16X20', 'Big Prints 16X20', 'Big Prints 16X20', NULL, NULL, NULL, '448', '448', 'Prints', 'Prints/Big-Prints-16X20-.png', NULL),
('573', 'Big Prints 20X24', 'Big Prints 20X24', 'Big Prints 20X24', NULL, NULL, NULL, '672', '672', 'Prints', 'Prints/Big-Prints-20X24-.png', NULL),
('574', 'Big Prints 20X30', 'Big Prints 20X30', 'Big Prints 20X30', NULL, NULL, NULL, '840', '840', 'Prints', 'Prints/Big-Prints-20X30-.png', NULL),
('575', 'Big Prints 24X36', 'Big Prints 24X36', 'Big Prints 24X36', NULL, NULL, NULL, '1209.6', '1209.6', 'Prints', 'Prints/Big-Prints-24X36-.png', NULL),
('576', 'Big Prints 30X40', 'Big Prints 30X40', 'Big Prints 30X40', NULL, NULL, NULL, '1680', '1680', 'Prints', 'Prints/Big-Prints-30X40-.png', NULL),
('577', 'Big Prints 40X60', 'Big Prints 40X60', 'Big Prints 40X60', NULL, NULL, NULL, '3360', '3360', 'Prints', 'Prints/Big-Prints-40X60-.png', NULL),
('578', 'Wall Mounted Canvas Print 12X8', 'Wall Mounted Canvas Print 12X8', 'Wall Mounted Canvas Print 12X8', NULL, NULL, NULL, '840', '840', 'Prints', 'Prints/Wall-Mounted-Canvas-Print-12X8-.png', NULL),
('579', 'Wall Mounted Canvas Print 12X10', 'Wall Mounted Canvas Print 12X10', 'Wall Mounted Canvas Print 12X10', NULL, NULL, NULL, '980', '980', 'Prints', 'Prints/Wall-Mounted-Canvas-Print-12X10-.png', NULL),
('580', 'Wall Mounted Canvas Print 12X15', 'Wall Mounted Canvas Print 12X15', 'Wall Mounted Canvas Print 12X15', NULL, NULL, NULL, '1120', '1120', 'Prints', 'Prints/Wall-Mounted-Canvas-Print-12X15-.png', NULL),
('581', 'Wall Mounted Canvas Print 12X18', 'Wall Mounted Canvas Print 12X18', 'Wall Mounted Canvas Print 12X18', NULL, NULL, NULL, '1400', '1400', 'Prints', 'Prints/Wall-Mounted-Canvas-Print-12X18-.png', NULL),
('582', 'Wall Mounted Canvas Print 16X20', 'Wall Mounted Canvas Print 16X20', 'Wall Mounted Canvas Print 16X20', NULL, NULL, NULL, '2100', '2100', 'Prints', 'Prints/Wall-Mounted-Canvas-Print-16X20-.png', NULL),
('583', 'Wall Mounted Canvas Print 20X24', 'Wall Mounted Canvas Print 20X24', 'Wall Mounted Canvas Print 20X24', NULL, NULL, NULL, '2800', '2800', 'Prints', 'Prints/Wall-Mounted-Canvas-Print-20X24-.png', NULL),
('584', 'Wall Mounted Canvas Print 20X30', 'Wall Mounted Canvas Print 20X30', 'Wall Mounted Canvas Print 20X30', NULL, NULL, NULL, '3500', '3500', 'Prints', 'Prints/Wall-Mounted-Canvas-Print-20X30-.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `blog_content` varchar(2000) DEFAULT NULL,
  `created_by` varchar(250) DEFAULT NULL,
  `categories` varchar(250) DEFAULT NULL,
  `tags` varchar(250) DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `slug` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `blog_content`, `created_by`, `categories`, `tags`, `created_on`, `updated_on`, `slug`) VALUES
(10, 'Top Tips: Age 3–5', '<p style=\"text-align: justify;\">At this stage your child will still be enjoying picture books of all kinds to share with you, but will probably start bringing home simple decodable books from school too. Decodable books are designed for your child to read and practise phonics. So, here are a few tips to make sure you make the most of all these different types of books.</p>\r\n<p style=\"text-align: justify;\"><img class=\"alignnone wp-image-103 size-full\" src=\"http://littleprodigybooks.in/wp-content/uploads/2016/07/blog-1-1.jpg\" width=\"708\" height=\"350\" /></p>\r\n<p style=\"text-align: justify;\"><strong>Tip 1: Read together every day</strong></p>\r\n<p style=\"text-align: justify;\">Try a short reading time when you are reading (newspaper, magazine, book, on?screen) and your child is too. It’s good to start this habit of quiet reading time early, however short to begin with!</p>\r\n<p style=\"text-align: justify;\"><strong>Tip 3:Talk about the book before you begin reading</strong></p>\r\n<p style=\"text-align: justify;\">Before reading a book together, always talk about the title, the pictures and the information on the cover (front and back). If it’s new, ask what your child thinks the book might be about. If it’s an old favourite then talk about the bits you love most! Don’t worry if some books get chosen again and again!</p>\r\n<p style=\"text-align: justify;\"><strong>Tip 4:Read with different voices</strong></p>\r\n<p style=\"text-align: justify;\">When reading aloud use lots of expression and try different voices for different characters. Get your child to join in with bits too, such as, ‘They pulled and they pulled!’ and ‘Fee, fi, fo, fom...’. See if your child can copy you!</p>\r\n<p style=\"text-align: justify;\"><strong>Tip 5:Ask each other questions</strong></p>\r\n<p style=\"text-align: justify;\">Talk about the stories and information books when you’ve finished reading together and ask questions. What did you like best? Why did the tiger let Floppy go? Have you ever played a trick on any', 'Little Prodigy', 'Fiction, Novels', 'Fiction, Novels', '2020-08-18 04:39:09', NULL, 'top-tips-age-35'),
(12, 'Literary Unicorn Party', '<p style=\"text-align: justify;\">ChickPea turns five tomorrow. Five! It feels like she has always been here and despite her daily stomping, roaring and screaming she makes us laugh everyday with her quirky take on life. She is currently adding<em> big</em> words to her vocab and using them in pretty much every conversation. My mum had ChickPea yesterday afternoon and said, ‘your child is trying to include the word <em>unfortunately</em> in every single sentence’.</p>\r\n<p style=\"text-align: justify;\"><img class=\"alignnone wp-image-113 size-full\" src=\"http://littleprodigybooks.in/wp-content/uploads/2016/07/blog-5-1.jpg\" width=\"708\" height=\"350\" /></p>\r\n<p style=\"text-align: justify;\">There is a family birthday party for the five year old on Sunday and this year it is unicorn themed. We’ve now had a cranky ladybird party and two dinosaur parties for the roaring, stomping one…and she requested another dinosaur party this year. After much reading of books which do not involve dinosaurs…ChickPea announced one morning at breakfast that she now liked unicorns and ‘Thelma the Unicorn’ was her favourite book in the world.</p>\r\n<p style=\"text-align: justify;\">And so we have a unicorn party. Book themed parties are my favourite as the theming is done for you, many books mention food and the story provides a focus for the party. You can see a list and link to all our book parties at the end of this post.</p>\r\n<p style=\"text-align: justify;\">I’ll upload photos of the party (really more a family lunch!), but in the meantime – the following gifts are wrapped and ready for the birthday girl – from various family members. I’ve linked where possible to items – in case you also have a unicorn loving child. There is also a Fairy Door on it’s way – but I can’t show a photo of this as the fairies deliver this one via Aunty Amy – who has super close connections with the tooth fairy (see here). The books are all ones that I’ve ordered for her – some are for older readers but the older sister', 'Little Prodigy', 'Fiction, Novels', 'Fiction, Novels', '2020-11-25 06:24:25', '2020-11-25 06:24:25', 'Literary Unicorn Party'),
(13, 'Novel Review', '<p style=\"text-align: justify;\">My first child has a lovely baby book, full of anecdotes, photos and locks of hair. Second child has an empty baby book…totally empty. Not a thing.</p>\r\n<p style=\"text-align: justify;\">Fortunately ChickPea is a resilient second child and come on, look at the photos she has thanks to my dear friend Simone Carter, who snapped these before ChickPea turned into the reflux baby from hell (I am still recovering). Whilst ChickPea may not mind her lack of baby book at the moment..her brand new, never been opened baby book has been traumatising me for years and every so often I stumble upon it while looking for something else and write myself a note to ‘do baby book’. Never do it. But I write the notes and feel the guilt.</p>\r\n<p style=\"text-align: justify;\"><img class=\"alignnone wp-image-107 size-full\" src=\"http://littleprodigybooks.in/wp-content/uploads/2016/07/blog-3-1.jpg\" width=\"708\" height=\"350\" /></p>\r\n<p style=\"text-align: justify;\">Enter ‘The Day You Came Into the World’ by Frances Lalor and Erin Beachy. I stumbled upon this book through a Facebook friend and oh my wordy I owe the creators a debt of thanks as my baby book guilt issues are now no longer. I’ve just this week popped the original, never-used baby book in the Vinnies bin – and I’m sure some other mother is going to love it sick and make it gorgeous. While they make the other one gorgeous, I’m all smug with my copy of ‘The Day You Came Into the World’.</p>\r\n<p style=\"text-align: justify;\">Lalor and Beachy have created the most gorgeous and gentle picture book, and it finishes with a page of details which a parent can fill in with their own story of the day their baby came into the world. One page?! Even I can do that. This is a story that can be read for a lifetime – as a reminder of the very special day that a child came into the world. It will inspire memories, laughter and possibly some tears. I’m so very, very pleased to be able to give ChickPea a beautiful book with a ', 'Little Prodigy', 'Fiction, Novels', 'Fiction, Novels', '2020-11-25 06:29:45', '2020-11-25 06:29:45', 'Novel Review'),
(14, 'The Little Prince', '<p style=\"text-align: justify;\">Boom! ‘The Little Prince’, presented by Monkey Baa Theatre Company and Spare Parts Puppet Theatre, based on the book by Antoine de Saint-Exupéry STARTS TODAY! Still hoping to be magically transported to Sydney for this! Next time I am in Sydney I am making it a priority to visit Monkey Baa Theatre Company as I only ever hear brilliant things about them!</p>\r\n<p style=\"text-align: justify;\"><img class=\"alignnone wp-image-110 size-full\" src=\"http://littleprodigybooks.in/wp-content/uploads/2016/07/blog-4-1.jpg\" width=\"708\" height=\"350\" /></p>\r\n<p style=\"text-align: justify;\">Are you going to see ‘The Little Prince’? Do you have your tickets yet? Do let me know how it is. There really is nothing better than performances based on books or stories, for young and old alike. For young audiences, a pre-reading of the book can help with understanding the narrative structure of the theatre production and bring the book to life in a way that is magical and will stay with them forever.</p>\r\n<p style=\"text-align: justify;\">With its timeless message about the importance of friendship, The Little Prince is an adventure story that celebrates the richness of human feeling and imagination.</p>\r\n<p style=\"text-align: justify;\">One of the most widely read books in history – 140 million copies sold worldwide and printed in more than 250 languages and dialects including braille – Saint-Exupéry’s exquisite tale tells the story of a curious prince who leaves his tiny home planet and journeys across the universe, discovering that adults have very strange ideas about the things that really matter.</p>\r\n<p style=\"text-align: justify;\">Associate Director of Spare Parts and director of the production, Michael Barlow, said that The Little Prince is an imaginative and vivid work, continually reminding us of the magic of the imagination.</p>\r\n<p style=\"text-align: justify;\">“The work speaks strongly about what really matters in life. It isn’t expensive or flashy thin', 'Little Prodigy', 'Fiction, Novels', 'Fiction, Novels', '2020-11-25 06:29:45', '2020-11-25 06:29:45', 'The Little Prince'),
(15, 'Books Which Kids Like', '<p style=\"text-align: justify;\">Reading is a fundamental part of every child\'s life. Whether they are being <!--more-->read to, looking at pictures or reading a book themselves, kids should have as many experiences with books as they can. However, presenting kids with any old book simply won\'t do. Depending on age and developmental level, there are certain types of books that kids should enjoy.</p>\r\n<p style=\"text-align: justify;\"><img class=\"alignnone wp-image-104 size-full\" src=\"http://littleprodigybooks.in/wp-content/uploads/2016/07/blog-2-1.jpg\" width=\"708\" height=\"350\" /></p>\r\n<p style=\"text-align: justify;\"><strong>Babies</strong></p>\r\n<p style=\"text-align: justify;\">Babies and toddlers between 1 and 2 years old will enjoy looking at books with bright colors and large pictures. Plastic, vinyl or cloth books are appropriate for children of this age because they are easy to hold and can be washed if they come in contact with kids\' mouths. Infants and toddlers like to look at books that include pictures of babies and familiar objects such as a type of animal living in the home, favorite types of toys and foods and familiar items such as bottles and blankets. Older toddlers may also enjoy looking at sturdy board books including photos and pictures of familiar objects and children doing familiar activities such as sleeping or playing.</p>\r\n<strong>2 to 3 Years</strong>\r\n<p style=\"text-align: justify;\">Kids between 2 and 3 years old like to read picture storybooks that include vibrant, detailed illustrations that support the story line. Since kids of this age are becoming more aware of language, books that include rhythmic patterns, rhyming and repetition or predictable text provide them with opportunities to memorize stories to tell to others. 2 and 3 year-olds will also enjoy books that they can interact with including pop-up books and touch-and-feel books.</p>\r\n<strong>4 to 5 Years</strong>\r\n<p style=\"text-align: justify;\">Kids who are 4 and 5 years old love to m', 'Little Prodigy', 'Fiction, Novels', 'Fiction, Novels', '2020-11-25 06:30:50', '2020-11-25 06:30:50', 'Books Which Kids Like');

-- --------------------------------------------------------

--
-- Table structure for table `blogcommentreplies`
--

CREATE TABLE `blogcommentreplies` (
  `id` int(11) NOT NULL,
  `comment_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogcommentreplies`
--

INSERT INTO `blogcommentreplies` (`id`, `comment_id`, `user_id`, `description`, `created_at`, `updated_at`) VALUES
(1, 18, 2, 'reply comment 1', '2020-08-02 02:09:13', '2020-08-02 02:09:13'),
(2, 19, 2, 'reply 2', '2020-08-02 02:10:08', '2020-08-02 02:10:08'),
(3, 18, 2, 'reply 1', '2020-08-02 02:14:46', '2020-08-02 02:14:46'),
(4, 18, 2, 'reply 111', '2020-08-02 02:15:13', '2020-08-02 02:15:13'),
(5, 18, 2, 'reply 112', '2020-08-02 02:15:31', '2020-08-02 02:15:31'),
(6, 18, 2, 'reply 113', '2020-08-02 02:15:39', '2020-08-02 02:15:39'),
(7, 19, 2, 'reply 12', '2020-08-02 02:15:47', '2020-08-02 02:15:47'),
(8, 19, 2, 'reply 14', '2020-08-02 02:15:52', '2020-08-02 02:15:52'),
(9, 18, 2, NULL, '2020-08-02 02:16:57', '2020-08-02 02:16:57'),
(10, 18, 2, 'rest 1', '2020-08-02 02:17:05', '2020-08-02 02:17:05'),
(11, 18, 2, NULL, '2020-08-02 02:17:27', '2020-08-02 02:17:27'),
(12, 18, 2, NULL, '2020-08-02 02:17:29', '2020-08-02 02:17:29'),
(13, 18, 2, NULL, '2020-08-02 02:17:45', '2020-08-02 02:17:45'),
(14, 18, 2, NULL, '2020-08-02 02:17:46', '2020-08-02 02:17:46'),
(15, 18, 2, NULL, '2020-08-02 02:18:28', '2020-08-02 02:18:28'),
(16, 18, 2, 'test reply 111', '2020-08-02 02:18:34', '2020-08-02 02:18:34'),
(17, 18, 2, 'test reply 213123', '2020-08-02 02:24:39', '2020-08-02 02:24:39'),
(18, 19, 2, 'new reply 1', '2020-08-02 02:25:30', '2020-08-02 02:25:30'),
(19, 19, 2, 'new reply 2', '2020-08-02 02:25:38', '2020-08-02 02:25:38'),
(20, 19, 2, 'new reply 4', '2020-08-02 02:25:44', '2020-08-02 02:25:44'),
(21, 18, 2, 'test c reply 1114', '2020-08-02 02:26:36', '2020-08-02 02:26:36'),
(22, 18, 2, 'test c reply 222222', '2020-08-02 02:26:45', '2020-08-02 02:26:45'),
(23, NULL, NULL, NULL, '2020-08-07 02:45:10', '2020-08-07 02:45:10'),
(24, NULL, NULL, NULL, '2020-08-07 02:45:20', '2020-08-07 02:45:20'),
(25, 18, NULL, 'test1 2308', '2020-08-23 03:38:17', '2020-08-23 03:38:17'),
(26, 18, NULL, 'fddf', '2020-11-21 20:58:17', '2020-11-21 20:58:17'),
(27, 18, NULL, 'Testbanu', '2020-11-21 20:58:50', '2020-11-21 20:58:50'),
(28, 29, 130, 'rhdthj', '2020-11-21 21:00:22', '2020-11-21 21:00:22'),
(29, 18, 130, 'hgvhv', '2020-11-21 21:03:15', '2020-11-21 21:03:15');

-- --------------------------------------------------------

--
-- Table structure for table `blogcomments`
--

CREATE TABLE `blogcomments` (
  `id` int(10) UNSIGNED NOT NULL,
  `comments` varchar(2000) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `post_id` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment_status` int(6) NOT NULL DEFAULT '0',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogcomments`
--

INSERT INTO `blogcomments` (`id`, `comments`, `user_id`, `post_id`, `created_at`, `email`, `website`, `name`, `comment_status`, `updated_at`) VALUES
(1, NULL, 2, 1, '2020-07-30 01:58:44', 'test@test.com', 'asdas', 'suguna', 0, '2020-07-30 01:58:44'),
(2, 'New content', 2, 1, '2020-07-30 02:04:02', 'test@test.com', 'fdsdfsdf', 'suguna', 0, '2020-07-30 02:04:02'),
(3, 'cvxcvxc', 2, 1, '2020-07-30 02:04:20', 'xcv', 'xcvxcv', 'suguna', 0, '2020-07-30 02:04:20'),
(4, 'xvsfsfd', 2, 1, '2020-07-30 02:06:24', 'test@test.com', 'sdfsdfsdf', 'suguna', 0, '2020-07-30 02:06:24'),
(5, 'zcxcz', 2, 1, '2020-07-30 02:07:48', 'test@test.com', 'czxczxcz', 'suguna', 0, '2020-07-30 02:07:48'),
(6, 'zczxc', 2, 1, '2020-07-30 02:09:17', 'test@test.com', 'zxczx', 'suguna', 0, '2020-07-30 02:09:17'),
(7, 'zczxc', 2, 1, '2020-07-30 02:15:27', 'test@test.com', 'zxczx', 'suguna', 0, '2020-07-30 02:15:27'),
(8, 'cggnvn', 2, 1, '2020-07-30 02:24:34', 'nmb', 'mn', 'suguna', 0, '2020-07-30 02:24:34'),
(9, 'cggnvn', 2, NULL, '2020-07-30 02:24:41', 'nmb@ada.com', 'mn', 'suguna', 0, '2020-07-30 02:24:41'),
(10, 'cggnvn', 2, 1, '2020-07-30 02:24:42', 'nmb@ada.com', 'mn', 'suguna', 0, '2020-07-30 02:24:42'),
(11, 'cggnvn', 2, NULL, '2020-07-30 02:25:13', 'nmb@ada.com', 'mn', 'suguna', 0, '2020-07-30 02:25:13'),
(12, 'cggnvn', 2, NULL, '2020-07-30 02:25:17', 'nmb@ada.com', 'mn', 'suguna', 0, '2020-07-30 02:25:17'),
(13, 'cggnvn', 2, NULL, '2020-07-30 02:26:19', 'nmb@ada.com', 'mn', 'suguna', 0, '2020-07-30 02:26:19'),
(14, 'test', 2, 1, '2020-07-30 02:28:21', 'test@test.com', 'test.com', 'suguna', 0, '2020-07-30 02:28:21'),
(15, 'test', 2, 1, '2020-07-30 02:28:22', 'test@test.com', 'test.com', 'suguna', 0, '2020-07-30 02:28:22'),
(16, 'test', 2, 1, '2020-07-30 02:29:01', 'test@test.com', 'test.com', 'suguna', 0, '2020-07-30 02:29:01'),
(17, 'test comment', 2, 1, '2020-07-30 03:22:34', 'test@test.com', 'website@mail.com', 'suguna', 0, '2020-07-30 03:22:34'),
(18, 'test 123', 4, 10, '2020-08-03 06:11:24', 'pmrlsivas@gmail.com', NULL, 'siva', 1, '2020-11-21 13:38:02'),
(19, 'Lovely Tips for my kid. Thank you 🙂', NULL, 10, '2020-08-09 23:51:50', 'test@test.com', NULL, 'Anonymous', 0, '2020-08-09 23:51:50'),
(20, 'My new comment', NULL, 10, '2020-08-23 03:39:14', 'test@test.com', NULL, 'Test', 0, '2020-08-23 03:39:14'),
(21, 'testingcomment', 2, 10, '2020-11-20 21:02:06', 'test@test.com', NULL, 'Admin', 0, '2020-11-20 21:02:06'),
(22, 'gd', NULL, 10, '2020-11-20 21:04:39', 'shdh@fbfdbf', 'hfdsh', 'dgssdfg', 2, '2020-11-21 13:38:27'),
(23, 'gd', NULL, 10, '2020-11-20 21:05:15', 'shdh@fbfdbf', 'hfdsh', 'dgssdfg', 0, '2020-11-20 21:05:15'),
(24, 'fdggf', 130, 10, '2020-11-20 21:22:27', 'fdgdf@fd', 'dfhdf', 'sivatest', 0, '2020-11-20 21:22:27'),
(25, 'newcomment', 2, 10, '2020-11-20 21:24:24', 'test@test.com', NULL, 'Admin', 0, '2020-11-20 21:24:24'),
(26, 'aaavvv', 2, 10, '2020-11-20 21:26:45', 'test@test.com', NULL, 'Admin', 0, '2020-11-20 21:26:45'),
(27, 'test', 130, 10, '2020-11-20 21:48:14', 'siva@gmail', 'awsgg', 'sivatest', 0, '2020-11-20 21:48:14'),
(28, 'sdbsdfb', NULL, 10, '2020-11-20 21:50:30', 'fsbsf@ffsd', 'sb', 'bsnf', 0, '2020-11-20 21:50:30'),
(29, 'vvvvv', 2, 10, '2020-11-21 13:43:52', 'test@test.com', NULL, 'Admin', 1, '2020-11-21 13:46:12'),
(30, 'sdgfsdg', 130, 10, '2020-11-21 21:00:47', 'siva@gmail.com', 'dgg', 'sivatest', 0, '2020-11-21 21:00:47'),
(31, 'testing1', 2, 10, '2020-11-21 21:51:16', 'littleprodigybooks@gmail.com', 'aaa', 'Admin', 0, '2020-11-21 21:51:16'),
(32, 'Test by siva', 130, 10, '2020-11-22 13:26:43', 'pmrlsivas@gmail.com', 'www.slinggroups.in', 'sivatest', 0, '2020-11-22 13:26:43'),
(33, 'fff', 2, 10, '2020-11-22 14:12:07', 'littleprodigybooks@gmail.com', 'efe', 'Admin', 0, '2020-11-22 14:12:07'),
(34, 'hi', 2, 10, '2020-11-22 14:45:28', 'littleprodigybooks@gmail.com', 'bbb', 'Admin', 0, '2020-11-22 14:45:28'),
(35, 'mmm', 2, 10, '2020-11-22 14:54:16', 'littleprodigybooks@gmail.com', 'king', 'Admin', 0, '2020-11-22 14:54:16'),
(36, 'mailtest1', 2, 10, '2020-11-22 15:16:32', 'littleprodigybooks@gmail.com', 'test1', 'Admin', 0, '2020-11-22 15:16:32'),
(37, 'ccc', 2, 10, '2020-11-22 15:28:45', 'littleprodigybooks@gmail.com', 'eee', 'Admin', 0, '2020-11-22 15:28:45'),
(38, 'ccc', 2, 10, '2020-11-22 15:30:07', 'littleprodigybooks@gmail.com', 'eee', 'Admin', 0, '2020-11-22 15:30:07'),
(39, 'dd', 2, 10, '2020-11-22 15:31:35', 'littleprodigybooks@gmail.com', 'ee', 'Admin', 0, '2020-11-22 15:31:35'),
(40, 'dds', 2, 10, '2020-11-22 15:32:54', 'littleprodigybooks@gmail.com', 'ee', 'Admin', 0, '2020-11-22 15:32:54'),
(41, 'dee', 2, 10, '2020-11-22 15:35:40', 'littleprodigybooks@gmail.com', 'sss', 'Admin', 0, '2020-11-22 15:35:40'),
(42, 'sew', 2, 10, '2020-11-22 15:38:46', 'littleprodigybooks@gmail.com', 'ww', 'Admin', 0, '2020-11-22 15:38:46'),
(43, 'sew', 2, 10, '2020-11-22 15:41:06', 'littleprodigybooks@gmail.com', 'ww', 'Admin', 0, '2020-11-22 15:41:06'),
(44, 'sew', 2, 10, '2020-11-22 15:42:32', 'littleprodigybooks@gmail.com', 'ww', 'Admin', 0, '2020-11-22 15:42:32'),
(45, 'sew', 2, 10, '2020-11-22 15:42:48', 'littleprodigybooks@gmail.com', 'ww', 'Admin', 0, '2020-11-22 15:42:48'),
(46, 'sew', 2, 10, '2020-11-22 15:44:51', 'littleprodigybooks@gmail.com', 'ww', 'Admin', 0, '2020-11-22 15:44:51'),
(47, 'fgdfg', 2, 10, '2020-11-22 15:51:09', 'littleprodigybooks@gmail.com', 'gfdf', 'Admin', 0, '2020-11-22 15:51:09'),
(48, 'vbf', 2, 10, '2020-11-23 19:34:38', 'littleprodigybooks@gmail.com', '3', 'Admin', 0, '2020-11-23 19:34:38'),
(49, 'err', 2, 10, '2020-11-23 19:40:58', 'littleprodigybooks@gmail.com', 'tt', 'Admin', 0, '2020-11-23 19:40:58'),
(50, 'new spam comment', 2, 10, '2020-11-23 19:47:55', 'littleprodigybooks@gmail.com', 'yyy', 'Admin', 0, '2020-11-23 19:47:55'),
(51, 'rfv', 2, 10, '2020-11-23 19:56:24', 'littleprodigybooks@gmail.com', 'ee', 'Admin', 2, '2020-11-25 15:04:42'),
(52, 'www', 2, 10, '2020-11-23 20:00:05', 'littleprodigybooks@gmail.com', 'e', 'Admin', 1, '2020-11-25 15:04:30'),
(53, 'siva test', 130, 10, '2020-11-23 21:01:56', 'pmrlsivas@gmail.com', 'siva test', 'sivatest', 0, '2020-11-23 21:01:56'),
(54, 'New Comment1234', 130, 10, '2020-11-23 21:07:55', 'pmrlsivas@gmail.com', 'New Comment1234', 'sivatest', 0, '2020-11-23 21:07:55'),
(55, 'littleprodigybooks@gmail.com', 130, 10, '2020-11-23 21:11:36', 'pmrlsivas@gmail.com', 'littleprodigybooks@gmail.com', 'sivatest', 1, '2020-11-23 21:15:48'),
(56, 'Testing', 2, 10, '2020-11-24 21:31:48', 'littleprodigybooks@gmail.com', 't', 'Admin', 1, '2020-11-30 20:32:45'),
(57, 'sdgg', 130, 10, '2020-11-24 22:17:57', 'pmrlsivas@gmail.com', 'sgdg', 'sivatest', 0, '2020-11-24 22:17:57'),
(58, 'Test', 283, 14, '2020-12-09 20:39:57', 'ligori007@gmail.com', NULL, 'Ligori007', 0, '2020-12-09 20:39:57'),
(59, 'Testing10', 2, 10, '2020-12-10 21:58:19', 'littleprodigybooks@gmail.com', 'a', 'Admin', 0, '2020-12-10 21:58:19'),
(60, 'jjj', 2, 10, '2020-12-10 22:12:09', 'littleprodigybooks@gmail.com', 'uuu', 'Admin', 0, '2020-12-10 22:12:09'),
(61, 'jjj', 2, 10, '2020-12-10 22:12:48', 'littleprodigybooks@gmail.com', 'uuu', 'Admin', 0, '2020-12-10 22:12:48'),
(62, 'aaa', 2, 10, '2020-12-11 21:37:04', 'littleprodigybooks@gmail.com', '34324', 'Admin', 0, '2020-12-11 21:37:04'),
(63, 'sss', 2, 10, '2020-12-11 21:43:59', 'littleprodigybooks@gmail.com', 'aaa', 'Admin', 0, '2020-12-11 21:43:59'),
(64, 'sss', 2, 10, '2020-12-11 21:49:39', 'littleprodigybooks@gmail.com', 'www', 'Admin', 0, '2020-12-11 21:49:39'),
(65, 'sss', 2, 10, '2020-12-11 21:52:06', 'littleprodigybooks@gmail.com', 'www', 'Admin', 0, '2020-12-11 21:52:06'),
(66, 'sss', 2, 10, '2020-12-11 21:52:37', 'littleprodigybooks@gmail.com', 'www', 'Admin', 0, '2020-12-11 21:52:37'),
(67, 'sss', 2, 10, '2020-12-11 21:55:13', 'littleprodigybooks@gmail.com', 'www', 'Admin', 0, '2020-12-11 21:55:13'),
(68, 'sss', 2, 10, '2020-12-11 21:56:07', 'littleprodigybooks@gmail.com', 'www', 'Admin', 0, '2020-12-11 21:56:07'),
(69, 'sss', 2, 10, '2020-12-11 21:56:54', 'littleprodigybooks@gmail.com', 'www', 'Admin', 0, '2020-12-11 21:56:54'),
(70, 'sss', 2, 10, '2020-12-11 21:58:41', 'littleprodigybooks@gmail.com', 'www', 'Admin', 0, '2020-12-11 21:58:41'),
(71, 'sss', 2, 10, '2020-12-11 22:01:10', 'littleprodigybooks@gmail.com', 'www', 'Admin', 0, '2020-12-11 22:01:10'),
(72, 'ggg', 2, 10, '2020-12-11 22:04:24', 'littleprodigybooks@gmail.com', 'gtt', 'Admin', 0, '2020-12-11 22:04:24'),
(73, 'assd', 2, 10, '2020-12-11 22:10:44', 'littleprodigybooks@gmail.com', 'eee', 'Admin', 0, '2020-12-11 22:10:44'),
(74, 'www', 2, 10, '2020-12-11 22:14:55', 'littleprodigybooks@gmail.com', 'qqq', 'Admin', 0, '2020-12-11 22:14:55'),
(75, 'qqq', 2, 10, '2020-12-11 22:20:03', 'littleprodigybooks@gmail.com', 'waaa', 'Admin', 0, '2020-12-11 22:20:03'),
(76, 'vvv', 2, 10, '2020-12-11 22:25:16', 'littleprodigybooks@gmail.com', 'vvv', 'Admin', 0, '2020-12-11 22:25:16'),
(77, 'ffff', 2, 10, '2020-12-11 22:28:32', 'littleprodigybooks@gmail.com', 'fff', 'Admin', 0, '2020-12-11 22:28:32'),
(78, 'nnn', 2, 10, '2020-12-12 02:01:52', 'littleprodigybooks@gmail.com', 'iii', 'Admin', 0, '2020-12-12 02:01:52'),
(79, 'azx', 2, 10, '2020-12-12 02:08:59', 'littleprodigybooks@gmail.com', 'sdfds', 'Admin', 0, '2020-12-12 02:08:59');

-- --------------------------------------------------------

--
-- Table structure for table `boxes`
--

CREATE TABLE `boxes` (
  `id` int(11) NOT NULL,
  `plan` varchar(255) DEFAULT NULL,
  `plan_name` varchar(100) DEFAULT NULL,
  `plan_count` int(11) DEFAULT NULL,
  `plan_amount` decimal(10,2) DEFAULT NULL,
  `status` enum('0','1','2') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boxes`
--

INSERT INTO `boxes` (`id`, `plan`, `plan_name`, `plan_count`, `plan_amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'King Box', 'king', 10, 1000.00, '1', '2020-11-10 01:52:53', '2020-11-10 01:52:53'),
(2, 'Queen Box', 'queen', 20, 2000.00, '1', '2020-11-10 01:52:53', '2020-11-10 01:52:53'),
(3, 'Knight Box', 'knight', 30, 3000.00, '1', '2020-11-10 01:52:53', '2020-11-10 01:52:53'),
(4, 'Warden Box', 'warden', 40, 4000.00, '1', '2020-11-10 01:52:53', '2020-11-10 01:52:53');

-- --------------------------------------------------------

--
-- Table structure for table `box_products`
--

CREATE TABLE `box_products` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `box_id` int(11) DEFAULT NULL,
  `box_amount` float(10,2) NOT NULL DEFAULT '0.00',
  `box_count` int(11) DEFAULT NULL,
  `cart_ids` varchar(255) DEFAULT NULL,
  `book_details` text,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `box_products`
--

INSERT INTO `box_products` (`id`, `user_id`, `box_id`, `box_amount`, `box_count`, `cart_ids`, `book_details`, `status`, `created_at`, `updated_at`) VALUES
(1, 221, 1, 1000.00, 10, '[112,113,114,115,116,117,118,119,120,121]', NULL, 0, '2020-11-10 05:16:28', '2020-11-10 05:16:28'),
(2, 221, 1, 1000.00, 10, '[122,123,124,125,126,127,128,129,130,131]', NULL, 0, '2020-11-10 05:23:41', '2020-11-10 05:23:41'),
(3, 221, 1, 1000.00, 10, '[132,133,134,135,136,137,138,139,140,141]', NULL, 0, '2020-11-10 05:27:26', '2020-11-10 05:27:26'),
(4, 221, 1, 1000.00, 10, '[142,143,144,145,146,147,148,149,150,151]', NULL, 0, '2020-11-11 06:41:29', '2020-11-11 06:41:29'),
(5, 221, 1, 1000.00, 10, '[152,153,154,155,156,157,158,159,160,161]', NULL, 0, '2020-11-11 07:06:14', '2020-11-11 07:06:14'),
(6, 221, 1, 1000.00, 10, '[162,163,164,165,166,167,168,169,170,171]', NULL, 0, '2020-11-11 07:40:16', '2020-11-11 07:40:16'),
(7, 221, 1, 1000.00, 10, '[175,176,177,178,179,180,181,182,183,184]', NULL, 2, '2020-11-12 11:59:39', '2020-11-12 11:59:39'),
(8, 221, 1, 1000.00, 10, '[185,186,187,188,189,190,191,192,193,194]', NULL, 2, '2020-11-12 14:10:31', '2020-11-12 14:10:31'),
(9, 221, 1, 1000.00, 10, '[195,196,197,198,199,200,201,202,203,204]', NULL, 2, '2020-11-12 16:15:43', '2020-11-12 16:15:43'),
(10, 221, 1, 1000.00, 10, '[205,206,207,208,209,210,211,212,213,214]', NULL, 2, '2020-11-12 16:30:55', '2020-11-12 16:30:55'),
(11, 221, 1, 1000.00, 10, '[215,216,217,218,219,220,221,222,223,224]', NULL, 2, '2020-11-12 16:33:49', '2020-11-12 16:33:49'),
(12, 221, 1, 1000.00, 10, '[225,226,227,228,229,230,231,232,233,234]', NULL, 2, '2020-11-12 16:39:03', '2020-11-12 16:39:03'),
(13, 221, 1, 1000.00, 10, '[235,236,237,238,239,240,241,242,243,244]', NULL, 2, '2020-11-12 16:43:49', '2020-11-12 16:43:49'),
(14, 2, 1, 1000.00, 10, '[129,130,131,132,133,134,135,136,137,138]', NULL, 2, '2020-11-12 23:53:42', '2020-11-12 23:53:42'),
(15, 2, 2, 2000.00, 20, '[140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159]', NULL, 1, '2020-11-13 13:45:45', '2020-11-13 13:45:45'),
(16, 130, 1, 1000.00, 10, '[163,164,165,166,167,168,169,170,171,172]', NULL, 1, '2020-11-21 09:19:27', '2020-11-21 09:19:27'),
(17, 130, 1, 1000.00, 10, '[174,175,176,177,178,179,180,181,182,183]', NULL, 1, '2020-11-22 20:22:38', '2020-11-22 20:22:38'),
(18, 130, 1, 1000.00, 10, '[184,185,186,187,188,189,190,191,192,193]', NULL, 1, '2020-11-22 20:26:53', '2020-11-22 20:26:53'),
(19, 2, 1, 1000.00, 10, '[206,207,208,209,210,211,212,213,214,215]', NULL, 1, '2020-12-18 19:12:51', '2020-12-18 19:12:51'),
(20, 2, 1, 1000.00, 10, '[216,217,218,219,220,221,222,223,224,225]', NULL, 1, '2020-12-18 20:22:42', '2020-12-18 20:22:42'),
(21, 2, 1, 1000.00, 10, '[226,227,228,229,230,231,232,233,234,235]', NULL, 1, '2020-12-18 20:28:44', '2020-12-18 20:28:44'),
(22, 283, 1, 1000.00, 10, '[236,237,238,239,240,241,242,243,244,245]', NULL, 1, '2020-12-22 11:23:28', '2020-12-22 11:23:28');

-- --------------------------------------------------------

--
-- Table structure for table `caricature`
--

CREATE TABLE `caricature` (
  `id` int(3) NOT NULL,
  `book_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_details` longtext COLLATE utf8mb4_unicode_ci,
  `actual_price` int(11) DEFAULT NULL,
  `offer_price` int(11) DEFAULT NULL,
  `sale` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `in_stock` text COLLATE utf8mb4_unicode_ci,
  `sku` int(11) DEFAULT NULL,
  `categories` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isbn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `additional_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories_id` int(11) DEFAULT NULL,
  `review` longtext COLLATE utf8mb4_unicode_ci,
  `product_attach` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1-Image, 2-Text, 3-No Attach',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `caricature`
--

INSERT INTO `caricature` (`id`, `book_title`, `book_path`, `thumb_img`, `product_img`, `product_details`, `actual_price`, `offer_price`, `sale`, `in_stock`, `sku`, `categories`, `tags`, `isbn`, `description`, `additional_info`, `categories_id`, `review`, `product_attach`, `created_at`, `updated_at`) VALUES
(328, 'Caricature-1', 'Caricature-1-.png', 'Caricature-1-.png', NULL, '', 600, 420, '', 'Yes', 329, 'Caricature', 'Caricature', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(329, 'Caricature-2', 'Caricature-2-.png', 'Caricature-2-.png', NULL, '', 600, 420, '', 'Yes', 330, 'Caricature', 'Caricature', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(330, 'Caricature-3', 'Caricature-3-.png', 'Caricature-3-.png', NULL, '', 600, 420, '', 'Yes', 331, 'Caricature', 'Caricature', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(331, 'Caricature-4', 'Caricature-4-.png', 'Caricature-4-.png', NULL, '', 600, 420, '', 'Yes', 332, 'Caricature', 'Caricature', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(332, 'Caricature-5', 'Caricature-5-.png', 'Caricature-5-.png', NULL, '', 600, 420, '', 'Yes', 333, 'Caricature', 'Caricature', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(333, 'Caricature-6', 'Caricature-6-.png', 'Caricature-6-.png', NULL, '', 600, 420, '', 'Yes', 334, 'Caricature', 'Caricature', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(334, 'Caricature-7', 'Caricature-7-.png', 'Caricature-7-.png', NULL, '', 600, 420, '', 'Yes', 335, 'Caricature', 'Caricature', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(335, 'Caricature-8', 'Caricature-8-.png', 'Caricature-8-.png', NULL, '', 600, 420, '', 'Yes', 336, 'Caricature', 'Caricature', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(336, 'Caricature-9', 'Caricature-9-.png', 'Caricature-9-.png', NULL, '', 600, 420, '', 'Yes', 337, 'Caricature', 'Caricature', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(337, 'Caricature-10', 'Caricature-10-.png', 'Caricature-10-.png', NULL, '', 600, 420, '', 'Yes', 338, 'Caricature', 'Caricature', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(338, 'Caricature-11', 'Caricature-11-.png', 'Caricature-11-.png', NULL, '', 600, 420, '', 'Yes', 339, 'Caricature', 'Caricature', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(339, 'Caricature-12', 'Caricature-12-.png', 'Caricature-12-.png', NULL, '', 600, 420, '', 'Yes', 340, 'Caricature', 'Caricature', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(340, 'Caricature-13', 'Caricature-13-.png', 'Caricature-13-.png', NULL, '', 600, 420, '', 'Yes', 341, 'Caricature', 'Caricature', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(341, 'Caricature-14', 'Caricature-14-.png', 'Caricature-14-.png', NULL, '', 600, 420, '', 'Yes', 342, 'Caricature', 'Caricature', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(342, 'Caricature-15', 'Caricature-15-.png', 'Caricature-15-.png', NULL, '', 600, 420, '', 'Yes', 343, 'Caricature', 'Caricature', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(343, 'Caricature-16', 'Caricature-16-.png', 'Caricature-16-.png', NULL, '', 600, 420, '', 'Yes', 344, 'Caricature', 'Caricature', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(344, 'Caricature-17', 'Caricature-17-.png', 'Caricature-17-.png', NULL, '', 600, 420, '', 'Yes', 345, 'Caricature', 'Caricature', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(345, 'Caricature-18', 'Caricature-18-.png', 'Caricature-18-.png', NULL, '', 600, 420, '', 'Yes', 346, 'Caricature', 'Caricature', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(346, 'Caricature-19', 'Caricature-19-.png', 'Caricature-19-.png', NULL, '', 600, 420, '', 'Yes', 347, 'Caricature', 'Caricature', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(347, 'Caricature-20', 'Caricature-20-.png', 'Caricature-20-.png', NULL, '', 600, 420, '', 'Yes', 348, 'Caricature', 'Caricature', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(348, 'Caricature-21', 'Caricature-21-.png', 'Caricature-21-.png', NULL, '', 600, 420, '', 'Yes', 349, 'Caricature', 'Caricature', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(349, 'Caricature-22', 'Caricature-22-.png', 'Caricature-22-.png', NULL, '', 600, 420, '', 'Yes', 350, 'Caricature', 'Caricature', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(350, 'Caricature-23', 'Caricature-23-.png', 'Caricature-23-.png', NULL, '', 600, 420, '', 'Yes', 351, 'Caricature', 'Caricature', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(351, 'Caricature-24', 'Caricature-24-.png', 'Caricature-24-.png', NULL, '', 600, 420, '', 'Yes', 352, 'Caricature', 'Caricature', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(352, 'Caricature-25', 'Caricature-25-.png', 'Caricature-25-.png', NULL, '', 600, 420, '', 'Yes', 353, 'Caricature', 'Caricature', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(353, 'Caricature-26', 'Caricature-26-.png', 'Caricature-26-.png', NULL, '', 600, 420, '', 'Yes', 354, 'Caricature', 'Caricature', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(354, 'Caricature-27', 'Caricature-27-.png', 'Caricature-27-.png', NULL, '', 600, 420, '', 'Yes', 355, 'Caricature', 'Caricature', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(355, 'Caricature-28', 'Caricature-28-.png', 'Caricature-28-.png', NULL, '', 600, 420, '', 'Yes', 356, 'Caricature', 'Caricature', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(356, 'Caricature-29', 'Caricature-29-.png', 'Caricature-29-.png', NULL, '', 600, 420, '', 'Yes', 357, 'Caricature', 'Caricature', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(357, 'Caricature-30', 'Caricature-30-.png', 'Caricature-30-.png', NULL, '', 600, 420, '', 'Yes', 358, 'Caricature', 'Caricature', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(358, 'Caricature-31', 'Caricature-31-.png', 'Caricature-31-.png', NULL, '', 600, 420, '', 'Yes', 359, 'Caricature', 'Caricature', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(359, 'Caricature-32', 'Caricature-32-.png', 'Caricature-32-.png', NULL, '', 600, 420, '', 'Yes', 360, 'Caricature', 'Caricature', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(360, 'Caricature-33', 'Caricature-33-.png', 'Caricature-33-.png', NULL, '', 600, 420, '', 'Yes', 361, 'Caricature', 'Caricature', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(361, 'Caricature-34', 'Caricature-34-.png', 'Caricature-34-.png', NULL, '', 600, 420, '', 'Yes', 362, 'Caricature', 'Caricature', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(362, 'Caricature-35', 'Caricature-35-.png', 'Caricature-35-.png', NULL, '', 600, 420, '', 'Yes', 363, 'Caricature', 'Caricature', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(363, 'Caricature-36', 'Caricature-36-.png', 'Caricature-36-.png', NULL, '', 600, 420, '', 'Yes', 364, 'Caricature', 'Caricature', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(364, 'Caricature-37', 'Caricature-37-.png', 'Caricature-37-.png', NULL, '', 600, 420, '', 'Yes', 365, 'Caricature', 'Caricature', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(365, 'Caricature-38', 'Caricature-38-.png', 'Caricature-38-.png', NULL, '', 600, 420, '', 'Yes', 366, 'Caricature', 'Caricature', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(366, 'Caricature-39', 'Caricature-39-.png', 'Caricature-39-.png', NULL, '', 600, 420, '', 'Yes', 367, 'Caricature', 'Caricature', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(367, 'Caricature-40', 'Caricature-40-.png', 'Caricature-40-.png', NULL, '', 600, 420, '', 'Yes', 368, 'Caricature', 'Caricature', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cart-products`
--

CREATE TABLE `cart-products` (
  `id` int(70) NOT NULL,
  `temp_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `book_title` varchar(255) DEFAULT NULL,
  `category_id` int(70) DEFAULT NULL,
  `sku` int(11) DEFAULT NULL,
  `qty` int(20) DEFAULT NULL,
  `amount` int(10) DEFAULT NULL,
  `curr_total` int(11) DEFAULT NULL,
  `book_id` int(70) DEFAULT NULL,
  `status` enum('0','1','2') NOT NULL DEFAULT '1',
  `attach` tinyint(4) DEFAULT NULL,
  `cart_attach` varchar(255) DEFAULT NULL,
  `cart_attach_text` varchar(80) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart-products`
--

INSERT INTO `cart-products` (`id`, `temp_id`, `user_id`, `book_title`, `category_id`, `sku`, `qty`, `amount`, `curr_total`, `book_id`, `status`, `attach`, `cart_attach`, `cart_attach_text`, `created_at`, `update_at`) VALUES
(1, 0, NULL, 'How to train your dragon', 1, 2423, 1, 100, NULL, 10, '1', NULL, NULL, NULL, '2020-08-17 15:41:10', '2020-08-17 15:41:10'),
(2, 0, NULL, 'How to train your dragon', 1, 2423, 1, 100, NULL, 10, '1', NULL, NULL, NULL, '2020-08-17 15:41:54', '2020-08-17 15:41:54'),
(46, 0, 7, 'adsasd', 2, 21312, 1, 80, NULL, 1, '1', NULL, NULL, NULL, '2020-08-18 15:11:21', '2020-08-18 15:11:21'),
(78, NULL, 135, 'Saturn', 4, 80, 1, 240, NULL, 6, '0', NULL, NULL, NULL, '2020-09-20 20:07:37', '2020-09-21 08:50:28'),
(79, NULL, 135, 'Saturn', 4, 80, 1, 240, NULL, 6, '0', NULL, NULL, NULL, '2020-09-20 20:07:42', '2020-09-21 08:50:37'),
(80, NULL, 135, 'Saturn', 4, 80, 1, 240, NULL, 6, '0', NULL, NULL, NULL, '2020-09-20 20:07:42', '2020-09-21 08:50:40'),
(81, NULL, 135, 'Saturn', 4, 80, 1, 240, NULL, 6, '0', NULL, NULL, NULL, '2020-09-20 20:07:42', '2020-09-21 08:50:33'),
(82, NULL, 135, 'Saturn', 4, 80, 1, 240, NULL, 6, '0', NULL, NULL, NULL, '2020-09-20 20:07:43', '2020-09-21 08:50:32'),
(84, NULL, 78, 'How Does It Fly? Jet Plane', 9, 456, 1, 135, NULL, 4, '0', NULL, NULL, NULL, '2020-10-01 07:03:26', '2020-10-01 07:03:49'),
(85, NULL, 78, 'How Does It Fly? Jet Plane', 9, 456, 1, 135, NULL, 4, '1', NULL, NULL, NULL, '2020-10-01 07:03:26', '2020-10-01 07:03:26'),
(86, NULL, 78, 'How Does It Fly? Jet Plane', 9, 456, 1, 135, NULL, 4, '0', NULL, NULL, NULL, '2020-10-01 07:03:26', '2020-10-01 07:03:43'),
(87, NULL, 78, 'How Does It Fly? Jet Plane', 9, 456, 1, 135, NULL, 4, '0', NULL, NULL, NULL, '2020-10-01 07:03:28', '2020-10-01 07:03:43'),
(107, NULL, 78, 'Your Healthy Plate: Fruits', 2, 469, 1, 240, NULL, 7, '1', NULL, NULL, NULL, '2020-10-05 06:57:01', '2020-10-05 06:57:01'),
(108, NULL, 78, 'Your Healthy Plate: Fruits', 2, 469, 1, 240, NULL, 7, '1', NULL, NULL, NULL, '2020-10-05 06:57:02', '2020-10-05 06:57:02'),
(113, NULL, 232, 'Kids Can Keep Air Clean', 1, 14611, 1, 240, NULL, 1, '1', NULL, NULL, NULL, '2020-10-26 03:13:09', '2020-10-26 03:13:09'),
(125, NULL, 95, 'It Is about Time!', 3, 410, 1, 240, NULL, 7, '1', NULL, NULL, NULL, '2020-11-12 07:10:49', '2020-11-12 07:10:49'),
(126, NULL, 95, 'It Is about Time!', 3, 410, 1, 240, NULL, 7, '0', NULL, NULL, NULL, '2020-11-12 07:10:50', '2020-11-12 07:11:02'),
(127, NULL, 95, 'What Should I Do? On the Playground', 12, 467, 1, 240, NULL, 7, '0', NULL, NULL, NULL, '2020-11-12 07:13:37', '2020-11-12 07:13:49'),
(128, NULL, 95, 'What Should I Do? On the Playground', 12, 467, 1, 240, NULL, 7, '1', NULL, NULL, NULL, '2020-11-12 07:13:37', '2020-11-12 07:13:37'),
(236, NULL, 283, 'Kids Can Clean Up Trash', 1, 415, 1, 0, NULL, 2, '1', NULL, NULL, NULL, '2020-12-21 22:53:28', '2020-12-21 22:53:28'),
(237, NULL, 283, 'How Did That Get To My Table Pasta', 6, 384, 1, 0, NULL, 5, '1', NULL, NULL, NULL, '2020-12-21 22:53:28', '2020-12-21 22:53:28'),
(238, NULL, 283, 'Caring', 8, 17, 1, 0, NULL, 1, '1', NULL, NULL, NULL, '2020-12-21 22:53:28', '2020-12-21 22:53:28'),
(239, NULL, 283, 'Responsibility', 8, 28, 1, 0, NULL, 5, '1', NULL, NULL, NULL, '2020-12-21 22:53:28', '2020-12-21 22:53:28'),
(240, NULL, 283, 'How Does It Fly? Jet Plane', 9, 456, 1, 0, NULL, 4, '1', NULL, NULL, NULL, '2020-12-21 22:53:28', '2020-12-21 22:53:28'),
(241, NULL, 283, 'How Does It Fly? Fighter Plane', 9, 452, 1, 0, NULL, 8, '1', NULL, NULL, NULL, '2020-12-21 22:53:28', '2020-12-21 22:53:28'),
(242, NULL, 283, 'Farm Animals: Goats', 10, 45, 1, 0, NULL, 5, '1', NULL, NULL, NULL, '2020-12-21 22:53:28', '2020-12-21 22:53:28'),
(243, NULL, 283, 'What Does It Do Combine', 11, 1440, 1, 0, NULL, 4, '1', NULL, NULL, NULL, '2020-12-21 22:53:28', '2020-12-21 22:53:28'),
(244, NULL, 283, 'How Did They Build That? Dam', 17, 390, 1, 0, NULL, 3, '1', NULL, NULL, NULL, '2020-12-21 22:53:28', '2020-12-21 22:53:28'),
(245, NULL, 283, 'How Did They Build That? Water Park', 17, 408, 1, 0, NULL, 10, '1', NULL, NULL, NULL, '2020-12-21 22:53:28', '2020-12-21 22:53:28'),
(311, NULL, 310, 'Square Stone', 39, 236, 1, 1260, NULL, 235, '1', 1, '1619943439.jpg', '', '2021-05-02 08:17:19', '2021-05-02 08:17:19'),
(373, NULL, 309, 'Magic Mirror Round with  Clock', 36, 227, 4, 1120, NULL, 226, '1', 1, '1620897238.png', '', '2021-05-13 09:13:58', '2021-05-13 09:14:35'),
(374, NULL, 309, 'Gray  Round Neck', 44, 401, 8, 280, NULL, 400, '0', 1, '1620897315.png', '', '2021-05-13 09:15:15', '2021-05-13 09:16:09'),
(385, NULL, 313, 'Stainless Steel Blue Coated 600 ML', 3, 47, 1, 490, NULL, 46, '1', 2, '', 'Deethya', '2021-06-21 06:48:07', '2021-06-21 06:48:07'),
(386, NULL, 315, 'CA-08', 45, 434, 55, 1999, NULL, 433, '1', 3, '', '', '2021-12-02 03:46:54', '2021-12-02 03:58:35'),
(388, NULL, 306, 'Stainless Steel Blue Coated 600 ML', 3, 47, 1, 700, NULL, 46, '0', 2, '', 'Tre', '2021-12-06 10:57:47', '2021-12-06 10:57:53');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(20) UNSIGNED NOT NULL,
  `series_name` varchar(200) DEFAULT NULL,
  `series_desc` varchar(2000) DEFAULT NULL,
  `series_table_name` varchar(100) DEFAULT NULL,
  `no_of_books` int(20) UNSIGNED DEFAULT '0',
  `age_group` varchar(50) DEFAULT NULL,
  `banner_img` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `series_name`, `series_desc`, `series_table_name`, `no_of_books`, `age_group`, `banner_img`) VALUES
(1, 'Mug', 'Personalized gifts help the recipient realize that the sender took extra efforts to choose a thoughtful gift for them. Send this personalized mug to your dear ones on special occasions to give them sweet memories for a lifetime.Love inspires the most beautiful gestures. Let your sweetheart know how much you love them by personalizing this mug with a photo of both of you on the mug.\r\n', 'mug', 47, '3-5 Years', 'E:\\xampp\\tmp\\phpFAD7.tmp'),
(3, 'Water Bottle', 'Firm grip and attractive design.Keeps your drink hot for 16 hours and cold for 20 hours.Easy to open clip on button with lock.Aesthetically appealing finish.100% food grade both inside and outside for safety, strength and durability.', 'waterbottle', 25, '3-5 Years', 'E:\\xampp\\tmp\\php879.tmp'),
(31, 'Pillows', 'Wake up fresh every day with this cool-gel infused memory foam pillow. Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. The memory foam adapts to your neck and head and provides an ideal support for you to sleep peacefully all night. The gel pillow comes with a washable and breathable outer fabric for a longer life of the product.\r\n', 'pillows', 25, '3-5 Years', 'E:\\xampp\\tmp\\php879.tmp'),
(32, 'Teddy Bear', 'Crafted with superior materials.Super soft polyester fabric makes it both huggable and durable.Kids can snuggle with their soft bear during story time, engage in play, and even read a story to their furry friend.Gives the best cuddles.Enhances social skills and imaginative play.', 'teddybear', 25, '3-5 Years', 'E:\\xampp\\tmp\\php879.tmp'),
(33, 'Farmaan', 'It may be a unique gift for a loved one or for you. keep your favourite picture with you at all times on this personalized Wall Hanging. It is Beautiful and useful gift.Gift for Wife, Valentine\'s Day Gift, New Mrs Gift,Valentines gifts - Valentines Day Gift - Romantic gifts- Valentine\'s Day wall Hanging.Buy these Wall Hangings available at Click Print with beautiful designs printed on them.You can personalize it the way you want it. Note: Print available on front side only.\r\n', 'farmaan', 25, '3-5 Years', 'E:\\xampp\\tmp\\php879.tmp'),
(34, 'Face Mask', 'With the blue side facing out, nose strip up, and holding the ear loops in both hands, place the mask against your face covering both nose and mouth. Place earl-loops around both ears. Adjust the mask to fit securely under the chin and over the bridge of the nose. Mask should cover the nose, mouth, and chin. ', 'facemask', 25, '3-5 Years', 'E:\\xampp\\tmp\\php879.tmp'),
(35, 'Keychain', 'Printed using the latest colour transfer technology, the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.\r\n', 'keychain', 25, '3-5 Years', 'E:\\xampp\\tmp\\php879.tmp'),
(36, 'Magic Mirror', 'Handle the mirror with care.Use a soft, lint and grit free cloth to clean the mirror.This reduces the chances of scratching the mirror surface.Keep away from water.\r\n', 'magicmirror', 25, '3-5 Years', 'E:\\xampp\\tmp\\php879.tmp'),
(38, 'Tile Print', 'This ceramic personalized tile makes a perfect home decor gift for your photo.It can be placed on your living room table. You can customize it with a photo of the best resolution for the best printing results. It comes along with a table holder', 'tileprint', 25, '3-5 Years', 'E:\\xampp\\tmp\\php879.tmp'),
(39, 'Photo Frames', 'Made from fine quality wood.Memories warm you up from the inside. Keep your memories right in front of your eyes with this real classy photo frame.This frame would make as a perfect gift for your loved ones on festivals & occasions like birthdays, anniversaries or farewells', 'photoframes', 25, '3-5 Years', 'E:\\xampp\\tmp\\php879.tmp'),
(40, 'Acrylic Bed Lamp', 'Night lamp for bedroom, living room, hotel etc.It\'s best product for gift.Fancy night lamp with 7 different colour led light lamp.It is wonderful for your bedroom,baby room,bathroom,corridor and other rooms. Warm multicolor light will not affect your sleep. Cute Design shape will make your room unique Energy saving and environmental protection.', 'acrylicbedlamp', 25, '3-5 Years', 'E:\\xampp\\tmp\\php879.tmp'),
(41, 'Caricature', 'Life becomes an adventure when you have someone fun besides you. This cute caricature will surely nudge the recipient to take on that fun adventurous trip. Share your thoughts with the recipient by adding 2 images. You could make this cute table decor yours too!\r\n', 'caricature', 25, '3-5 Years', 'E:\\xampp\\tmp\\php879.tmp'),
(42, 'Engraving Gifts', 'Laser Engraved Photos and text on Steem Beech Timber Wood with stunning detail. Engraved pictures make a great, lasting gift for generations. Design yours online!', 'engravinggifts', 25, '3-5 Years', 'E:\\xampp\\tmp\\php879.tmp'),
(43, 'Clocks', 'New Designer wall clock Wrapped in soft paper and packed with bubble wrap and cardboard box for reaching you safely.Wrapped in soft paper and packed with bubble wrap and cardboard box for reaching you safely\r\n', 'clocks', 25, '3-5 Years', 'E:\\xampp\\tmp\\php879.tmp'),
(44, 'T-Shirt', 'Cool and laid-back, this polo t-shirt is perfect for an off-duty look. The t-shirt ensures adequate wearing comfort, thanks to its cotton fabric. Team it up with denim and everyday shoes to make a casual statement.\r\n', 'tshirt', 25, '3-5 Years', 'E:\\xampp\\tmp\\php879.tmp'),
(45, 'Trophy', 'Scintillating gold color polished awards are dedicated to those fortunate individuals who set standards and inspire others to follow them. Have your brand printed at a base with a message of your choice. UNIQUELY Crafted and designed for any corporate award giving occasion. This trophy design is evergreen', 'trophy', 25, '3-5 Years', 'E:\\xampp\\tmp\\php879.tmp');

-- --------------------------------------------------------

--
-- Table structure for table `clocks`
--

CREATE TABLE `clocks` (
  `id` int(3) NOT NULL,
  `book_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_details` longtext COLLATE utf8mb4_unicode_ci,
  `actual_price` int(11) DEFAULT NULL,
  `offer_price` int(11) DEFAULT NULL,
  `sale` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `in_stock` text COLLATE utf8mb4_unicode_ci,
  `sku` int(11) DEFAULT NULL,
  `categories` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isbn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `additional_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories_id` int(11) DEFAULT NULL,
  `review` longtext COLLATE utf8mb4_unicode_ci,
  `product_attach` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1-Image, 2-Text, 3-No Attach',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clocks`
--

INSERT INTO `clocks` (`id`, `book_title`, `book_path`, `thumb_img`, `product_img`, `product_details`, `actual_price`, `offer_price`, `sale`, `in_stock`, `sku`, `categories`, `tags`, `isbn`, `description`, `additional_info`, `categories_id`, `review`, `product_attach`, `created_at`, `updated_at`) VALUES
(290, '12-Clock-8 Inch Gold', '12-Clock-8-Inch-Gold-.png', '12-Clock-8-Inch-Gold-.png', NULL, '', 700, 490, '', 'Yes', 291, 'Clocks', 'Clocks', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(291, '04-Clock-10 Inch Gold', '04-Clock-10-Inch-Gold-.png', '04-Clock-10-Inch-Gold-.png', NULL, '', 999, 699, '', 'Yes', 292, 'Clocks', 'Clocks', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(292, '14-Clock-8 Inch Heart', '14-Clock-8-Inch-Heart-.png', '14-Clock-8-Inch-Heart-.png', NULL, '', 700, 490, '', 'Yes', 293, 'Clocks', 'Clocks', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(293, '13 Clock-8 Inch Fancy', '13-Clock-8-Inch-Fancy-.png', '13-Clock-8-Inch-Fancy-.png', NULL, '', 700, 490, '', 'Yes', 294, 'Clocks', 'Clocks', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(294, '14 Clock-9 Inch  Wood Finish', '14-Clock-9-Inch--Wood-Finish-.png', '14-Clock-9-Inch--Wood-Finish-.png', NULL, '', 1200, 840, '', 'Yes', 295, 'Clocks', 'Clocks', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(295, 'Fancy 12 Inch Clock-07', 'Fancy-12-Inch-Clock-07-.png', 'Fancy-12-Inch-Clock-07-.png', NULL, '', 1400, 980, '', 'Yes', 296, 'Clocks', 'Clocks', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(296, '12X8 Rectangle Clock-06', '12X8-Rectangle-Clock-06-.png', '12X8-Rectangle-Clock-06-.png', NULL, '', 1400, 980, '', 'Yes', 297, 'Clocks', 'Clocks', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(297, '8X12Rectangle Clock-06', '8X12Rectangle-Clock-06-.png', '8X12Rectangle-Clock-06-.png', NULL, '', 1400, 980, '', 'Yes', 298, 'Clocks', 'Clocks', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(298, '01-Clock-14 Inch', '01-Clock-14-Inch-.png', '01-Clock-14-Inch-.png', NULL, '', 2000, 1400, '', 'Yes', 299, 'Clocks', 'Clocks', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(299, '02-Clock-12 Inch', '02-Clock-12-Inch-.png', '02-Clock-12-Inch-.png', NULL, '', 1400, 980, '', 'Yes', 300, 'Clocks', 'Clocks', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(300, '8 Inches MDF  Laminated Clock', '8-Inches-MDF--Laminated-Clock-.png', '8-Inches-MDF--Laminated-Clock-.png', NULL, '', 600, 420, '', 'Yes', 301, 'Clocks', 'Clocks', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(301, '11 Inches MDF Laminated Clock', '11-Inches-MDF-Laminated-Clock-.png', '11-Inches-MDF-Laminated-Clock-.png', NULL, '', 800, 560, '', 'Yes', 302, 'Clocks', 'Clocks', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(302, '14 Inches MDF Laminated Clock', '14-Inches-MDF-Laminated-Clock-.png', '14-Inches-MDF-Laminated-Clock-.png', NULL, '', 999, 699, '', 'Yes', 303, 'Clocks', 'Clocks', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(303, '12X11 Inches Heart MDF Laminated Clock', '12X11-Inches-Heart-MDF-Laminated-Clock-.png', '12X11-Inches-Heart-MDF-Laminated-Clock-.png', NULL, '', 999, 699, '', 'Yes', 304, 'Clocks', 'Clocks', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(304, '11X11 Heart Clock-09', '11X11-Heart-Clock-09-.png', '11X11-Heart-Clock-09-.png', NULL, '', 1400, 980, '', 'Yes', 305, 'Clocks', 'Clocks', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(305, '18 Inches MDF Laminated  Clock', '18-Inches-MDF-Laminated--Clock-.png', '18-Inches-MDF-Laminated--Clock-.png', NULL, '', 1400, 980, '', 'Yes', 306, 'Clocks', 'Clocks', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `combo_plans`
--

CREATE TABLE `combo_plans` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `volume` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `price` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `combo_plans`
--

INSERT INTO `combo_plans` (`id`, `name`, `volume`, `price`) VALUES
(1, 'King', 10, 1000),
(2, 'Queen', 20, 2000),
(3, 'Knight', 30, 3000),
(4, 'Warden', 40, 4000);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `coupon` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon`, `created_at`, `updated_at`) VALUES
(7, 'MRTAMIZHAN', '2021-06-18 13:39:38', '2021-06-18 13:39:38');

-- --------------------------------------------------------

--
-- Table structure for table `engravinggifts`
--

CREATE TABLE `engravinggifts` (
  `id` int(3) NOT NULL,
  `book_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_details` longtext COLLATE utf8mb4_unicode_ci,
  `actual_price` int(11) DEFAULT NULL,
  `offer_price` int(11) DEFAULT NULL,
  `sale` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `in_stock` text COLLATE utf8mb4_unicode_ci,
  `sku` int(11) DEFAULT NULL,
  `categories` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isbn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `additional_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories_id` int(11) DEFAULT NULL,
  `review` longtext COLLATE utf8mb4_unicode_ci,
  `product_attach` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1-Image, 2-Text, 3-No Attach',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `engravinggifts`
--

INSERT INTO `engravinggifts` (`id`, `book_title`, `book_path`, `thumb_img`, `product_img`, `product_details`, `actual_price`, `offer_price`, `sale`, `in_stock`, `sku`, `categories`, `tags`, `isbn`, `description`, `additional_info`, `categories_id`, `review`, `product_attach`, `created_at`, `updated_at`) VALUES
(306, '12X5 Inch Wood  Engraving Clock', '12X5-Inch-Wood--Engraving-Clock-.png', '12X5-Inch-Wood--Engraving-Clock-.png', NULL, '12X5 Inch Wood  Engraving Clock Laser Engraved Photos and text on Steem Beech Timber Wood with stunning detail. Engraved pictures make a great lasting gift for generations. Design yours online!', 1000, 980, 'No', 'Yes', 307, 'Wood Engraving', 'Wood Engraving', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-16 07:48:56'),
(307, '8 Inche Round Wood Graving Clock', '8-Inche-Round-Wood-Graving-Clock-.png', '8-Inche-Round-Wood-Graving-Clock-.png', NULL, '8 Inche Round Wood Graving Clock Laser Engraved Photos and text on Steem Beech Timber Wood with stunning detail. Engraved pictures make a great lasting gift for generations. Design yours online!', 1000, 910, 'No', 'Yes', 308, 'Wood Engraving', 'Wood Engraving', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-16 07:49:38'),
(308, '10 Inch Round Wood  Engraving Clock', '10-Inch-Round-Wood--Engraving-Clock-.png', '10-Inch-Round-Wood--Engraving-Clock-.png', NULL, '10 Inch Round Wood  Engraving Clock Laser Engraved Photos and text on Steem Beech Timber Wood with stunning detail. Engraved pictures make a great lasting gift for generations. Design yours online!', 1000, 1000, 'No', 'Yes', 309, 'Wood Engraving', 'Wood Engraving', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-16 07:50:19'),
(309, 'Maxi 6X4  Inch  Wooden Frame With Engraving', 'Maxi-6X4--Inch--Wooden-Frame-With-Engraving-.png', 'Maxi-6X4--Inch--Wooden-Frame-With-Engraving-.png', NULL, '', 700, 490, '', 'Yes', 310, 'Wood Engraving', 'Wood Engraving', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(310, 'Wood Engraving 5X7', 'Wood-Engraving-5X7-.png', 'Wood-Engraving-5X7-.png', NULL, '', 600, 420, '', 'Yes', 311, 'Wood Engraving', 'Wood Engraving', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(311, 'Wood Engraving ZIg Zag Wood ', 'Wood-Engraving-ZIg-Zag-Wood--.png', 'Wood-Engraving-ZIg-Zag-Wood--.png', NULL, '', 999, 699, '', 'Yes', 312, 'Wood Engraving', 'Wood Engraving', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(312, 'Black Coated Pen Stand With Pen', 'Black-Coated-Pen-Stand-With-Pen-.png', 'Black-Coated-Pen-Stand-With-Pen-.png', NULL, '', 500, 350, '', 'Yes', 313, 'Wood Engraving', 'Wood Engraving', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(313, 'Date PEN  Stand  Withn Pen', 'Date-PEN--Stand--Withn-Pen-.png', 'Date-PEN--Stand--Withn-Pen-.png', NULL, '', 900, 630, '', 'Yes', 314, 'Wood Engraving', 'Wood Engraving', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(314, 'Visiting  Card Pen Stand With Pen', 'Visiting--Card-Pen-Stand-With-Pen-.png', 'Visiting--Card-Pen-Stand-With-Pen-.png', NULL, '', 500, 350, '', 'Yes', 315, 'Wood Engraving', 'Wood Engraving', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(315, 'Pen Drive Box without Pen drive', 'Pen-Drive-Box-without-Pen-drive-.png', 'Pen-Drive-Box-without-Pen-drive-.png', NULL, '', 400, 280, '', 'Yes', 316, 'Wood Engraving', 'Wood Engraving', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(316, 'Engraving Name On Leather Wallet', 'Engraving-Name-On-Leather-Wallet-.png', 'Engraving-Name-On-Leather-Wallet-.png', NULL, '', 600, 420, '', 'Yes', 317, 'Wood Engraving', 'Wood Engraving', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(317, 'Triangle Pen Stand With Pen', 'Triangle-Pen-Stand-With-Pen-.png', 'Triangle-Pen-Stand-With-Pen-.png', NULL, '', 500, 350, '', 'Yes', 318, 'Wood Engraving', 'Wood Engraving', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(318, 'LED Light Pen With Multicolour Light-Black', 'LED-Light-Pen-With-Multicolour-Light-Black-.png', 'LED-Light-Pen-With-Multicolour-Light-Black-.png', NULL, '', 300, 210, '', 'Yes', 319, 'Engraving on Pens', 'Engraving on Pens', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(319, 'Wooden Pen', 'Wooden-Pen-.png', 'Wooden-Pen-.png', NULL, '', 200, 140, '', 'Yes', 320, 'Engraving on Pens', 'Engraving on Pens', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(320, 'White LED Pen-Blue', 'White-LED-Pen-Blue-.png', 'White-LED-Pen-Blue-.png', NULL, '', 260, 182, '', 'Yes', 321, 'Engraving on Pens', 'Engraving on Pens', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(321, 'White LED Pen-Red', 'White-LED-Pen-Red-.png', 'White-LED-Pen-Red-.png', NULL, '', 260, 182, '', 'Yes', 322, 'Engraving on Pens', 'Engraving on Pens', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(322, 'White LED Pen-Black', 'White-LED-Pen-Black-.png', 'White-LED-Pen-Black-.png', NULL, '', 260, 182, '', 'Yes', 323, 'Engraving on Pens', 'Engraving on Pens', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(323, 'Engraving on Metal Pen-Black', 'Engraving-on-Metal-Pen-Black-.png', 'Engraving-on-Metal-Pen-Black-.png', NULL, '', 500, 350, '', 'Yes', 324, 'Engraving on Pens', 'Engraving on Pens', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(324, 'Silver Finish-Ball Point Pen', 'Silver-Finish-Ball-Point-Pen-.png', 'Silver-Finish-Ball-Point-Pen-.png', NULL, '', 160, 112, '', 'Yes', 325, 'Engraving on Pens', 'Engraving on Pens', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(325, 'Black Finish Ball Point Pen', 'Black-Finish-Ball-Point-Pen-.png', 'Black-Finish-Ball-Point-Pen-.png', NULL, '', 160, 112, '', 'Yes', 326, 'Engraving on Pens', 'Engraving on Pens', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(326, 'Twist Ball point Pen', 'Twist-Ball-point-Pen-.png', 'Twist-Ball-point-Pen-.png', NULL, '', 160, 112, '', 'Yes', 327, 'Engraving on Pens', 'Engraving on Pens', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(327, 'Metal CAP Wooden Pen', 'Metal-CAP-Wooden-Pen-.png', 'Metal-CAP-Wooden-Pen-.png', NULL, '', 300, 210, '', 'Yes', 328, 'Engraving on Pens', 'Engraving on Pens', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `facemask`
--

CREATE TABLE `facemask` (
  `id` int(3) NOT NULL,
  `book_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_details` longtext COLLATE utf8mb4_unicode_ci,
  `actual_price` int(11) DEFAULT NULL,
  `offer_price` int(11) DEFAULT NULL,
  `sale` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `in_stock` text COLLATE utf8mb4_unicode_ci,
  `sku` int(11) DEFAULT NULL,
  `categories` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isbn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `additional_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories_id` int(11) DEFAULT NULL,
  `review` longtext COLLATE utf8mb4_unicode_ci,
  `product_attach` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1-Image, 2-Text, 3-No Attach',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facemask`
--

INSERT INTO `facemask` (`id`, `book_title`, `book_path`, `thumb_img`, `product_img`, `product_details`, `actual_price`, `offer_price`, `sale`, `in_stock`, `sku`, `categories`, `tags`, `isbn`, `description`, `additional_info`, `categories_id`, `review`, `product_attach`, `created_at`, `updated_at`) VALUES
(121, 'Your own Face mask', 'Your-own-Face-mask-121.png', 'Your-own-Face-mask-121.png', NULL, 'Your own Face mask place earl-loops around both ears. Adjust the mask to fit securely under the chin and over the bridge of the nose. Mask should cover the nose mouth and chin.', 140, 98, 'No', 'Yes', 122, 'Face Mask', 'Face Mask', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 09:43:00'),
(122, 'Little Krishna', 'Little-Krishna-122.png', 'Little-Krishna-122.png', NULL, 'Little Krishna place earl-loops around both ears. Adjust the mask to fit securely under the chin and over the bridge of the nose. Mask should cover the nose mouth and chin.', 140, 98, 'No', 'Yes', 123, 'Face Mask', 'Face Mask', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 3, '0000-00-00 00:00:00', '2021-07-14 09:43:25'),
(123, 'Mottu Patlu', 'Mottu-Patlu-123.png', 'Mottu-Patlu-123.png', NULL, 'Mottu Patlu place earl-loops around both ears. Adjust the mask to fit securely under the chin and over the bridge of the nose. Mask should cover the nose mouth and chin.', 140, 98, 'No', 'Yes', 124, 'Face Mask', 'Face Mask', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 3, '0000-00-00 00:00:00', '2021-07-14 09:44:42'),
(124, 'Frozen', 'Frozen-124.png', 'Frozen-124.png', NULL, 'Frozen place earl-loops around both ears. Adjust the mask to fit securely under the chin and over the bridge of the nose. Mask should cover the nose mouth and chin.', 140, 98, 'No', 'Yes', 125, 'Face Mask', 'Face Mask', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 3, '0000-00-00 00:00:00', '2021-07-14 09:45:18'),
(125, 'Chuttki', 'Chuttki-125.png', 'Chuttki-125.png', NULL, 'Chuttki place earl-loops around both ears. Adjust the mask to fit securely under the chin and over the bridge of the nose. Mask should cover the nose mouth and chin.', 140, 98, 'No', 'Yes', 126, 'Face Mask', 'Face Mask', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 3, '0000-00-00 00:00:00', '2021-07-14 09:45:51'),
(126, 'Masha', 'Masha-126.png', 'Masha-126.png', NULL, 'Masha place earl-loops around both ears. Adjust the mask to fit securely under the chin and over the bridge of the nose. Mask should cover the nose mouth and chin.', 140, 98, 'No', 'Yes', 127, 'Face Mask', 'Face Mask', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 3, '0000-00-00 00:00:00', '2021-07-14 09:46:21'),
(127, 'Cat', 'Cat-127.png', 'Cat-127.png', NULL, 'Cat place earl-loops around both ears. Adjust the mask to fit securely under the chin and over the bridge of the nose. Mask should cover the nose mouth and chin.', 140, 98, 'No', 'Yes', 128, 'Face Mask', 'Face Mask', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 3, '0000-00-00 00:00:00', '2021-07-14 09:47:06'),
(128, 'Tiger', 'Tiger-128.png', 'Tiger-128.png', NULL, 'Tiger place earl-loops around both ears. Adjust the mask to fit securely under the chin and over the bridge of the nose. Mask should cover the nose mouth and chin.', 140, 98, 'No', 'Yes', 129, 'Face Mask', 'Face Mask', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 3, '0000-00-00 00:00:00', '2021-07-14 09:47:46'),
(129, 'Tiger Mouth Open', 'Tiger-Mouth-Open-129.png', 'Tiger-Mouth-Open-129.png', NULL, 'Tiger Mouth Open place earl-loops around both ears. Adjust the mask to fit securely under the chin and over the bridge of the nose. Mask should cover the nose mouth and chin.', 140, 98, 'No', 'Yes', 130, 'Face Mask', 'Face Mask', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 3, '0000-00-00 00:00:00', '2021-07-14 09:48:31'),
(130, 'Teeth', 'Teeth-130.png', 'Teeth-130.png', NULL, 'Teeth place earl-loops around both ears. Adjust the mask to fit securely under the chin and over the bridge of the nose. Mask should cover the nose mouth and chin.', 140, 98, 'No', 'Yes', 131, 'Face Mask', 'Face Mask', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 3, '0000-00-00 00:00:00', '2021-07-14 09:49:06'),
(131, 'Shizu Dog', 'Shizu-Dog-131.png', 'Shizu-Dog-131.png', NULL, 'Shizu Dog place earl-loops around both ears. Adjust the mask to fit securely under the chin and over the bridge of the nose. Mask should cover the nose mouth and chin.', 140, 98, 'No', 'Yes', 132, 'Face Mask', 'Face Mask', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 3, '0000-00-00 00:00:00', '2021-07-14 09:49:53'),
(132, 'Skull', 'Skull-132.png', 'Skull-132.png', NULL, 'Skull place earl-loops around both ears. Adjust the mask to fit securely under the chin and over the bridge of the nose. Mask should cover the nose mouth and chin.', 140, 98, 'No', 'Yes', 133, 'Face Mask', 'Face Mask', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 3, '0000-00-00 00:00:00', '2021-07-14 09:50:27'),
(133, 'Batman', 'Batman-133.png', 'Batman-133.png', NULL, 'Batman place earl-loops around both ears. Adjust the mask to fit securely under the chin and over the bridge of the nose. Mask should cover the nose mouth and chin.', 140, 98, 'No', 'Yes', 134, 'Face Mask', 'Face Mask', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 3, '0000-00-00 00:00:00', '2021-07-14 09:51:07'),
(134, 'Pubg', 'Pubg-134.png', 'Pubg-134.png', NULL, 'Pubg place earl-loops around both ears. Adjust the mask to fit securely under the chin and over the bridge of the nose. Mask should cover the nose mouth and chin.', 140, 98, 'No', 'Yes', 135, 'Face Mask', 'Face Mask', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 3, '0000-00-00 00:00:00', '2021-07-14 09:51:35'),
(135, 'Spiderman', 'Spiderman-135.png', 'Spiderman-135.png', NULL, 'Spiderman place earl-loops around both ears. Adjust the mask to fit securely under the chin and over the bridge of the nose. Mask should cover the nose mouth and chin.', 140, 98, 'No', 'Yes', 136, 'Face Mask', 'Face Mask', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 3, '0000-00-00 00:00:00', '2021-07-14 09:52:33'),
(136, 'Ironman', 'Ironman-136.png', 'Ironman-136.png', NULL, 'Ironman place earl-loops around both ears. Adjust the mask to fit securely under the chin and over the bridge of the nose. Mask should cover the nose mouth and chin.', 140, 98, 'No', 'Yes', 137, 'Face Mask', 'Face Mask', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 3, '0000-00-00 00:00:00', '2021-07-14 09:53:21'),
(137, 'Ready made Girl Face', 'Ready-made-Girl-Face-137.png', 'Ready-made-Girl-Face-137.png', NULL, 'Ready made Girl Face place earl-loops around both ears. Adjust the mask to fit securely under the chin and over the bridge of the nose. Mask should cover the nose mouth and chin.', 140, 98, 'No', 'Yes', 138, 'Face Mask', 'Face Mask', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 3, '0000-00-00 00:00:00', '2021-07-14 09:54:16'),
(138, 'Barbie Girl', 'Barbie-Girl-138.png', 'Barbie-Girl-138.png', NULL, 'Barbie Girl place earl-loops around both ears. Adjust the mask to fit securely under the chin and over the bridge of the nose. Mask should cover the nose mouth and chin.', 140, 98, 'No', 'Yes', 139, 'Face Mask', 'Face Mask', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 3, '0000-00-00 00:00:00', '2021-07-14 09:55:02'),
(139, 'Flower', 'Flower-139.png', 'Flower-139.png', NULL, 'Flower place earl-loops around both ears. Adjust the mask to fit securely under the chin and over the bridge of the nose. Mask should cover the nose mouth and chin.', 140, 98, 'No', 'Yes', 140, 'Face Mask', 'Face Mask', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 3, '0000-00-00 00:00:00', '2021-07-14 09:55:40');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `farmaan`
--

CREATE TABLE `farmaan` (
  `id` int(3) NOT NULL,
  `book_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_details` longtext COLLATE utf8mb4_unicode_ci,
  `actual_price` int(11) DEFAULT NULL,
  `offer_price` int(11) DEFAULT NULL,
  `sale` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `in_stock` text COLLATE utf8mb4_unicode_ci,
  `sku` int(11) DEFAULT NULL,
  `categories` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isbn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `additional_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories_id` int(11) DEFAULT NULL,
  `review` longtext COLLATE utf8mb4_unicode_ci,
  `product_attach` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1-Image, 2-Text, 3-No Attach',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `farmaan`
--

INSERT INTO `farmaan` (`id`, `book_title`, `book_path`, `thumb_img`, `product_img`, `product_details`, `actual_price`, `offer_price`, `sale`, `in_stock`, `sku`, `categories`, `tags`, `isbn`, `description`, `additional_info`, `categories_id`, `review`, `product_attach`, `created_at`, `updated_at`) VALUES
(113, 'Farmaan Verticle', 'Farmaan-Verticle-113.png', 'Farmaan-Verticle-113.png', NULL, 'It may be a unique gift for a loved one or for you. Farmaan Verticle keep your favourite picture with you at all times on this personalized Wall Hanging. It is Beautiful and useful gift. Gift for Wife Valentine\'s Day Gift New Mrs Gift Valentines gifts - Valentines Day Gift - Romantic gifts- Valentine\'s Day wall Hanging. Buy these Wall Hangings available at Click Print with beautiful designs printed on them. You can personalize it the way you want it. Note: Print available on front side only.', 600, 420, 'No', 'Yes', 114, 'Farmaan', 'Farmaan', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 09:23:32'),
(114, 'Farmaan Horizantal', 'Farmaan-Horizantal-114.png', 'Farmaan-Horizantal-114.png', NULL, 'It may be a unique gift for a loved one or for you. Farmaan Horizantal keep your favourite picture with you at all times on this personalized Wall Hanging. It is Beautiful and useful gift. Gift for Wife Valentine\'s Day Gift New Mrs Gift Valentines gifts - Valentines Day Gift - Romantic gifts- Valentine\'s Day wall Hanging. Buy these Wall Hangings available at Click Print with beautiful designs printed on them. You can personalize it the way you want it. Note: Print available on front side only.', 600, 420, 'No', 'Yes', 115, 'Farmaan', 'Farmaan', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 09:26:18'),
(115, 'Farmaan Biggest', 'Farmaan-Biggest-115.png', 'Farmaan-Biggest-115.png', NULL, 'It may be a unique gift for a loved one or for you. Farmaan Biggest keep your favourite picture with you at all times on this personalized Wall Hanging. It is Beautiful and useful gift. Gift for Wife Valentine\'s Day Gift New Mrs Gift Valentines gifts - Valentines Day Gift - Romantic gifts- Valentine\'s Day wall Hanging. Buy these Wall Hangings available at Click Print with beautiful designs printed on them. You can personalize it the way you want it. Note: Print available on front side only.', 2800, 1960, 'No', 'Yes', 116, 'Farmaan', 'Farmaan', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 09:27:24'),
(116, 'Farmaan Verticle', 'Farmaan-Verticle-116.png', 'Farmaan-Verticle-116.png', NULL, 'It may be a unique gift for a loved one or for you. Farmaan Verticle keep your favourite picture with you at all times on this personalized Wall Hanging. It is Beautiful and useful gift. Gift for Wife Valentine\'s Day Gift New Mrs Gift Valentines gifts - Valentines Day Gift - Romantic gifts- Valentine\'s Day wall Hanging. Buy these Wall Hangings available at Click Print with beautiful designs printed on them. You can personalize it the way you want it. Note: Print available on front side only.', 999, 699, 'No', 'Yes', 117, 'Farmaan', 'Farmaan', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 09:27:50'),
(117, 'Farmaan Horizantal', 'Farmaan-Horizantal-117.png', 'Farmaan-Horizantal-117.png', NULL, 'It may be a unique gift for a loved one or for you. Farmaan Horizantal keep your favourite picture with you at all times on this personalized Wall Hanging. It is Beautiful and useful gift. Gift for Wife Valentine\'s Day Gift New Mrs Gift Valentines gifts - Valentines Day Gift - Romantic gifts- Valentine\'s Day wall Hanging. Buy these Wall Hangings available at Click Print with beautiful designs printed on them. You can personalize it the way you want it. Note: Print available on front side only.', 999, 699, 'No', 'Yes', 118, 'Farmaan', 'Farmaan', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 09:29:12'),
(118, 'Ladies Pouch', 'Ladies-Pouch-118.png', 'Ladies-Pouch-118.png', NULL, 'It may be a unique gift for a loved one or for you. Ladies Pouch keep your favourite picture with you at all times on this personalized Wall Hanging. It is Beautiful and useful gift. Gift for Wife Valentine\'s Day Gift New Mrs Gift Valentines gifts - Valentines Day Gift - Romantic gifts- Valentine\'s Day wall Hanging. Buy these Wall Hangings available at Click Print with beautiful designs printed on them. You can personalize it the way you want it. Note: Print available on front side only.', 300, 210, 'No', 'Yes', 119, 'Farmaan', 'Farmaan', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 4, '0000-00-00 00:00:00', '2021-07-14 09:29:49'),
(119, 'Turkey Towel', 'Turkey-Towel-119.png', 'Turkey-Towel-119.png', NULL, 'It may be a unique gift for a loved one or for you. Turkey Towel keep your favourite picture with you at all times on this personalized Wall Hanging. It is Beautiful and useful gift. Gift for Wife Valentine\'s Day Gift New Mrs Gift Valentines gifts - Valentines Day Gift - Romantic gifts- Valentine\'s Day wall Hanging. Buy these Wall Hangings available at Click Print with beautiful designs printed on them. You can personalize it the way you want it. Note: Print available on front side only.', 1500, 1050, 'No', 'Yes', 120, 'Farmaan', 'Farmaan', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 09:30:37'),
(120, 'Turkey Napkin', 'Turkey-Napkin-120.png', 'Turkey-Napkin-120.png', NULL, 'It may be a unique gift for a loved one or for you. Turkey Napkin keep your favourite picture with you at all times on this personalized Wall Hanging. It is Beautiful and useful gift. Gift for Wife Valentine\'s Day Gift New Mrs Gift Valentines gifts - Valentines Day Gift - Romantic gifts- Valentine\'s Day wall Hanging. Buy these Wall Hangings available at Click Print with beautiful designs printed on them. You can personalize it the way you want it. Note: Print available on front side only.', 800, 560, 'No', 'Yes', 121, 'Farmaan', 'Farmaan', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 09:31:07');

-- --------------------------------------------------------

--
-- Table structure for table `gps_track`
--

CREATE TABLE `gps_track` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `lng` decimal(11,7) NOT NULL,
  `lat` decimal(11,7) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` bigint(20) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `keychain`
--

CREATE TABLE `keychain` (
  `id` int(3) NOT NULL,
  `book_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_details` longtext COLLATE utf8mb4_unicode_ci,
  `actual_price` int(11) DEFAULT NULL,
  `offer_price` int(11) DEFAULT NULL,
  `sale` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `in_stock` text COLLATE utf8mb4_unicode_ci,
  `sku` int(11) DEFAULT NULL,
  `categories` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isbn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `additional_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories_id` int(11) DEFAULT NULL,
  `review` longtext COLLATE utf8mb4_unicode_ci,
  `product_attach` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1-Image, 2-Text, 3-No Attach',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keychain`
--

INSERT INTO `keychain` (`id`, `book_title`, `book_path`, `thumb_img`, `product_img`, `product_details`, `actual_price`, `offer_price`, `sale`, `in_stock`, `sku`, `categories`, `tags`, `isbn`, `description`, `additional_info`, `categories_id`, `review`, `product_attach`, `created_at`, `updated_at`) VALUES
(140, 'Su01 Stones Heart Key Single Side', 'Su01-Stones-Heart-Key-Single-Side-140.png', 'Su01-Stones-Heart-Key-Single-Side-140.png', NULL, 'Su01 Stones Heart Key Single Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 500, 350, 'No', 'Yes', 141, 'Metal Key Chain', 'Metal Key Chain', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 10:08:44'),
(141, 'Su02 Stones Rectangle Key Single Side', 'Su02-Stones-Rectangle-Key-Single-Side-141.png', 'Su02-Stones-Rectangle-Key-Single-Side-141.png', NULL, 'Su02 Stones Rectangle Key Single Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 500, 350, 'No', 'Yes', 142, 'Metal Key Chain', 'Metal Key Chain', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 10:10:47'),
(142, 'Su 72 Semi rectangle Key Single Side', 'Su-72-Semi-rectangle-Key-Single-Side-142.png', 'Su-72-Semi-rectangle-Key-Single-Side-142.png', NULL, 'Su 72 Semi rectangle Key Single Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 440, 308, 'No', 'Yes', 143, 'Metal Key Chain', 'Metal Key Chain', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 10:11:28'),
(143, 'Su 09Heart Metal Key Double Side', 'Su-09Heart-Metal-Key-Double-Side-143.png', 'Su-09Heart-Metal-Key-Double-Side-143.png', NULL, 'Su 09Heart Metal Key Double Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 440, 308, 'No', 'Yes', 144, 'Metal Key Chain', 'Metal Key Chain', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 10:12:07'),
(144, 'Su 10 Square Metal Key Double Side', 'Su-10-Square-Metal-Key-Double-Side-144.png', 'Su-10-Square-Metal-Key-Double-Side-144.png', NULL, 'Su 10 Square Metal Key Double Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 440, 308, 'No', 'Yes', 145, 'Metal Key Chain', 'Metal Key Chain', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 10:12:46'),
(145, 'Su 11 Round Metal Key Double Side', 'Su-11-Round-Metal-Key-Double-Side-145.png', 'Su-11-Round-Metal-Key-Double-Side-145.png', NULL, 'Su 11 Round Metal Key Double Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 440, 308, 'No', 'Yes', 146, 'Metal Key Chain', 'Metal Key Chain', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 10:13:16'),
(146, 'Su 12 Ovel Metal Key Double Side', 'Su-12-Ovel-Metal-Key-Double-Side-146.png', 'Su-12-Ovel-Metal-Key-Double-Side-146.png', NULL, 'Su 12 Ovel Metal Key Double Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 440, 308, 'No', 'Yes', 147, 'Metal Key Chain', 'Metal Key Chain', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 10:15:07'),
(147, 'Su 05 Rotating Heart Key Double Side', 'Su-05-Rotating-Heart-Key-Double-Side-147.png', 'Su-05-Rotating-Heart-Key-Double-Side-147.png', NULL, 'Su 05 Rotating Heart Key Double Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 500, 350, 'No', 'Yes', 148, 'Metal Key Chain', 'Metal Key Chain', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 10:15:50'),
(148, 'Su 07 Rotating Round Key Double Side', 'Su-07-Rotating-Round-Key-Double-Side-148.png', 'Su-07-Rotating-Round-Key-Double-Side-148.png', NULL, 'Su 07 Rotating Round Key Double Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 500, 350, 'No', 'Yes', 149, 'Metal Key Chain', 'Metal Key Chain', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 10:17:20'),
(149, 'Su 73Red Suqare Key Double Side', 'Su-73Red-Suqare-Key-Double-Side-149.png', 'Su-73Red-Suqare-Key-Double-Side-149.png', NULL, 'Su 73Red Suqare Key Double Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 500, 350, 'No', 'Yes', 150, 'Metal Key Chain', 'Metal Key Chain', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 10:17:58'),
(150, 'Su 74 Blue Square Key Double Side', 'Su-74-Blue-Square-Key-Double-Side-150.png', 'Su-74-Blue-Square-Key-Double-Side-150.png', NULL, 'Su 74 Blue Square Key Double Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 500, 350, 'No', 'Yes', 151, 'Metal Key Chain', 'Metal Key Chain', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 10:22:23'),
(151, 'Su 75 Red Round Key Double side', 'Su-75-Red-Round-Key-Double-side-151.png', 'Su-75-Red-Round-Key-Double-side-151.png', NULL, 'Su 75 Red Round Key Double side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 500, 350, 'No', 'Yes', 152, 'Metal Key Chain', 'Metal Key Chain', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 10:24:12'),
(152, 'Su 76 Blue Round Key Double Side', 'Su-76-Blue-Round-Key-Double-Side-152.png', 'Su-76-Blue-Round-Key-Double-Side-152.png', NULL, 'Su 76 Blue Round Key Double Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 500, 350, 'No', 'Yes', 153, 'Metal Key Chain', 'Metal Key Chain', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 10:24:45'),
(153, 'Su 77 Red Heart Key Double Side', 'Su-77-Red-Heart-Key-Double-Side--153.png', 'Su-77-Red-Heart-Key-Double-Side--153.png', NULL, 'Su 77 Red Heart Key Double Side  using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 500, 350, 'No', 'Yes', 154, 'Metal Key Chain', 'Metal Key Chain', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 10:25:50'),
(154, 'Su 78  Blue Heart Key Double Side', 'Su-78--Blue-Heart-Key-Double-Side-154.png', 'Su-78--Blue-Heart-Key-Double-Side-154.png', NULL, 'Su 78  Blue Heart Key Double Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 500, 350, 'No', 'Yes', 155, 'Metal Key Chain', 'Metal Key Chain', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 10:27:48'),
(155, 'Su 79 Red Rope Square Key Double side', 'Su-79-Red-Rope-Square-Key-Double-side-155.png', 'Su-79-Red-Rope-Square-Key-Double-side-155.png', NULL, 'Su 79 Red Rope Square Key Double side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 540, 378, 'No', 'Yes', 156, 'Metal Key Chain', 'Metal Key Chain', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 10:28:21'),
(156, 'Su 80 Blue Rope Square Key Double side', 'Su-80-Blue-Rope-Square-Key-Double-side-156.png', 'Su-80-Blue-Rope-Square-Key-Double-side-156.png', NULL, 'Su 80 Blue Rope Square Key Double side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 540, 378, 'No', 'Yes', 157, 'Metal Key Chain', 'Metal Key Chain', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 10:28:56'),
(157, 'Su 81 Red  Rope Round  Key Double side', 'Su-81-Red--Rope-Round--Key-Double-side-157.png', 'Su-81-Red--Rope-Round--Key-Double-side-157.png', NULL, 'Su 81 Red  Rope Round  Key Double side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 540, 378, 'No', 'Yes', 158, 'Metal Key Chain', 'Metal Key Chain', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 10:29:46'),
(158, 'Su 82  Blue Rope Round  Key Double side', 'Su-82--Blue-Rope-Round--Key-Double-side-158.png', 'Su-82--Blue-Rope-Round--Key-Double-side-158.png', NULL, 'Su 82  Blue Rope Round  Key Double side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 540, 378, 'No', 'Yes', 159, 'Metal Key Chain', 'Metal Key Chain', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 10:56:57'),
(159, 'Su 83  Red  Rope Heart   Key Double side', 'Su-83--Red--Rope-Heart---Key-Double-side-159.png', 'Su-83--Red--Rope-Heart---Key-Double-side-159.png', NULL, 'Su 83  Red  Rope Heart   Key Double side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 540, 378, 'No', 'Yes', 160, 'Metal Key Chain', 'Metal Key Chain', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 10:57:37'),
(160, 'Su 83  Red  Rope Blue   Key Double side', 'Su-83--Red--Rope-Blue---Key-Double-side-160.png', 'Su-83--Red--Rope-Blue---Key-Double-side-160.png', NULL, 'Su 83  Red  Rope Blue   Key Double side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 540, 378, 'No', 'Yes', 161, 'Metal Key Chain', 'Metal Key Chain', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 10:58:25'),
(161, '59 Round Metal Key Double Side', '59-Round-Metal-Key-Double-Side-161.png', '59-Round-Metal-Key-Double-Side-161.png', NULL, '59 Round Metal Key Double Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 300, 210, 'No', 'Yes', 162, 'Metal Key Chain', 'Metal Key Chain', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 11:00:23'),
(162, '60 Square Metal Key Double Side', '60-Square-Metal-Key-Double-Side-162.png', '60-Square-Metal-Key-Double-Side-162.png', NULL, '60 Square Metal Key Double Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 300, 210, 'No', 'Yes', 163, 'Metal Key Chain', 'Metal Key Chain', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 11:01:01'),
(163, '61 New Rectangle Metal Key Double Side', '61-New-Rectangle-Metal-Key-Double-Side-163.png', '61-New-Rectangle-Metal-Key-Double-Side-163.png', NULL, '61 New Rectangle Metal Key Double Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 300, 210, 'No', 'Yes', 164, 'Metal Key Chain', 'Metal Key Chain', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 11:01:45'),
(164, '03 Heart Metal Key Single Side', '03-Heart-Metal-Key-Single-Side--164.png', '03-Heart-Metal-Key-Single-Side--164.png', NULL, '03 Heart Metal Key Single Side  using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 300, 210, 'No', 'Yes', 165, 'Metal Key Chain', 'Metal Key Chain', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 11:02:33'),
(165, '13 Oval Metal Key Double Side', '13-Oval-Metal-Key-Double-Side-165.png', '13-Oval-Metal-Key-Double-Side-165.png', NULL, '13 Oval Metal Key Double Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 300, 210, 'No', 'Yes', 166, 'Metal Key Chain', 'Metal Key Chain', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 11:03:06'),
(166, '62 Rottating Barrel Metal Double Side', '62-Rottating-Barrel-Metal-Double-Side-166.png', '62-Rottating-Barrel-Metal-Double-Side-166.png', NULL, '62 Rottating Barrel Metal Double Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 300, 210, 'No', 'Yes', 167, 'Metal Key Chain', 'Metal Key Chain', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 11:03:59'),
(167, '63  Rotating Long Metal Double Side', '63--Rotating-Long-Metal-Double-Side-167.png', '63--Rotating-Long-Metal-Double-Side-167.png', NULL, '63  Rotating Long Metal Double Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 300, 210, 'No', 'Yes', 168, 'Metal Key Chain', 'Metal Key Chain', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 11:04:54'),
(168, '64 Rotating Round Metal Double Side', '64-Rotating-Round-Metal-Double-Side-168.png', '64-Rotating-Round-Metal-Double-Side-168.png', NULL, '64 Rotating Round Metal Double Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 300, 210, 'No', 'Yes', 169, 'Metal Key Chain', 'Metal Key Chain', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 11:06:08'),
(169, '65 Red Heart Metal Key Double Side', '65-Red-Heart-Metal-Key-Double-Side-169.png', '65-Red-Heart-Metal-Key-Double-Side-169.png', NULL, '65 Red Heart Metal Key Double Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 300, 210, 'No', 'Yes', 170, 'Metal Key Chain', 'Metal Key Chain', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 11:06:52'),
(170, '66 Diamond Metal Key Single Side', '66-Diamond-Metal-Key-Single-Side-170.png', '66-Diamond-Metal-Key-Single-Side-170.png', NULL, '66 Diamond Metal Key Single Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 300, 210, 'No', 'Yes', 171, 'Metal Key Chain', 'Metal Key Chain', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 11:07:23'),
(171, '67 Opener Metal Key Single Side', '67-Opener-Metal-Key-Single-Side-171.png', '67-Opener-Metal-Key-Single-Side-171.png', NULL, '67 Opener Metal Key Single Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 300, 210, 'No', 'Yes', 172, 'Metal Key Chain', 'Metal Key Chain', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 11:08:05'),
(172, '68 Locket Metal Key  Single Side', '68-Locket-Metal-Key--Single-Side--172.png', '68-Locket-Metal-Key--Single-Side--172.png', NULL, '68 Locket Metal Key  Single Side  using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 300, 210, 'No', 'Yes', 173, 'Metal Key Chain', 'Metal Key Chain', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 11:08:42'),
(173, '08 Round Metal Double Side', '08-Round-Metal-Double-Side-173.png', '08-Round-Metal-Double-Side-173.png', NULL, '08 Round Metal Double Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 300, 210, 'No', 'Yes', 174, 'Metal Key Chain', 'Metal Key Chain', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 11:09:24'),
(174, '04 Rectangle Metal Key Single Side', '04-Rectangle-Metal-Key-Single-Side-174.png', '04-Rectangle-Metal-Key-Single-Side-174.png', NULL, '04 Rectangle Metal Key Single Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 300, 210, 'No', 'Yes', 175, 'Metal Key Chain', 'Metal Key Chain', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 11:10:11'),
(175, '15 Round Metal Key Single Side', '15-Round-Metal-Key-Single-Side-175.png', '15-Round-Metal-Key-Single-Side-175.png', NULL, '15 Round Metal Key Single Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 300, 210, 'No', 'Yes', 176, 'Metal Key Chain', 'Metal Key Chain', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 11:48:42'),
(176, '16 Camera Key Single Side', '16-Camera-Key-Single-Side-176.png', '16-Camera-Key-Single-Side-176.png', NULL, '16 Camera Key Single Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 300, 210, 'No', 'Yes', 177, 'Metal Key Chain', 'Metal Key Chain', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 11:49:20'),
(177, '17 Friend Metal  Key Double Side', '17-Friend-Metal--Key-Double-Side-177.png', '17-Friend-Metal--Key-Double-Side-177.png', NULL, '17 Friend Metal  Key Double Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 300, 210, 'No', 'Yes', 178, 'Metal Key Chain', 'Metal Key Chain', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 11:50:59'),
(178, '18 Birthday Metal Key Double Side', '18-Birthday-Metal-Key-Double-Side-178.png', '18-Birthday-Metal-Key-Double-Side-178.png', NULL, '18 Birthday Metal Key Double Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 300, 210, 'No', 'Yes', 179, 'Metal Key Chain', 'Metal Key Chain', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 13:25:57'),
(179, '20 I Love you Metal Key  Double Side', '20-I-Love-you-Metal-Key--Double-Side-179.png', '20-I-Love-you-Metal-Key--Double-Side-179.png', NULL, '20 I Love you Metal Key  Double Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 300, 210, 'No', 'Yes', 180, 'Metal Key Chain', 'Metal Key Chain', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 13:27:08'),
(180, '69 Foot ball Metal Key  Sing Side', '69-Foot-ball-Metal-Key--Sing-Side-180.png', '69-Foot-ball-Metal-Key--Sing-Side-180.png', NULL, '69 Foot ball Metal Key  Sing Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 300, 210, 'No', 'Yes', 181, 'Metal Key Chain', 'Metal Key Chain', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 13:27:50'),
(181, '86 Arch Oval Silver Key', '86-Arch-Oval-Silver-Key-181.png', '86-Arch-Oval-Silver-Key-181.png', NULL, '86 Arch Oval Silver Key using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 400, 280, 'No', 'Yes', 182, 'Besyt QualityKey Chains 4', 'Besyt QualityKey Chains 4', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 13:28:41'),
(182, '87 Oval Silver Key', '87-Oval-Silver-Key-182.png', '87-Oval-Silver-Key-182.png', NULL, '87 Oval Silver Key using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 400, 280, 'No', 'Yes', 183, 'Besyt QualityKey Chains 4', 'Besyt QualityKey Chains 4', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 13:29:54'),
(183, '89 Sun Flower Silver Key', '89-Sun-Flower-Silver-Key-183.png', '89-Sun-Flower-Silver-Key-183.png', NULL, '89 Sun Flower Silver Key using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 400, 280, 'No', 'Yes', 184, 'Besyt QualityKey Chains 4', 'Besyt QualityKey Chains 4', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 13:30:27'),
(184, '90 Rectangle Silver Key', '90-Rectangle-Silver-Key-184.png', '90-Rectangle-Silver-Key-184.png', NULL, '90 Rectangle Silver Key using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 400, 280, 'No', 'Yes', 185, 'Besyt QualityKey Chains 4', 'Besyt QualityKey Chains 4', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 13:31:07'),
(185, '91 Square Stone Silver key', '91-Square-Stone-Silver-key-185.png', '91-Square-Stone-Silver-key-185.png', NULL, '91 Square Stone Silver key using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 500, 350, 'No', 'Yes', 186, 'Besyt QualityKey Chains 4', 'Besyt QualityKey Chains 4', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 13:50:02'),
(186, '92 Heart Stone Silver Key', '92-Heart-Stone-Silver-Key-186.png', '92-Heart-Stone-Silver-Key-186.png', NULL, '92 Heart Stone Silver Key using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 500, 350, 'No', 'Yes', 187, 'Besyt QualityKey Chains 4', 'Besyt QualityKey Chains 4', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 13:50:57'),
(187, '35 Gold Rectangle key chain Single side', '35-Gold-Rectangle-key-chain-Single-side-187.png', '35-Gold-Rectangle-key-chain-Single-side-187.png', NULL, '35 Gold Rectangle key chain Single side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 400, 280, 'No', 'Yes', 188, 'Key Chains', 'Key Chains', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 13:52:33'),
(188, '36 GoldSidel Antique KeySingle', '36-GoldSidel-Antique-KeySingle--188.png', '36-GoldSidel-Antique-KeySingle--188.png', NULL, '36 GoldSidel Antique KeySingle  using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 400, 280, 'No', 'Yes', 189, 'Key Chains', 'Key Chains', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 13:54:19'),
(189, '38 GoldSidel Antique KeySingle', '38-GoldSidel-Antique-KeySingle--189.png', '38-GoldSidel-Antique-KeySingle--189.png', NULL, '38 GoldSidel Antique KeySingle  using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 400, 280, 'No', 'Yes', 190, 'Key Chains', 'Key Chains', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 13:56:34'),
(190, '93 Heart', '93-Heart-190.png', '93-Heart-190.png', NULL, '93 Heart using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 400, 280, 'No', 'Yes', 191, 'Key Chains', 'Key Chains', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 13:57:10'),
(191, '94 Hexogan', '94-Hexogan-191.png', '94-Hexogan-191.png', NULL, '94 Hexogan using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 400, 280, 'No', 'Yes', 192, 'Key Chains', 'Key Chains', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 14:01:00'),
(192, '95 Square', '95-Square-192.png', '95-Square-192.png', NULL, '95 Square using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 400, 280, 'No', 'Yes', 193, 'Key Chains', 'Key Chains', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 14:01:52'),
(193, '33 Plastic Key Double Side', '33-Plastic-Key-Double-Side-193.png', '33-Plastic-Key-Double-Side-193.png', NULL, '33 Plastic Key Double Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 100, 70, 'No', 'Yes', 194, 'Key Chains', 'Key Chains', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 14:02:47'),
(194, '41 Small Rectangle Crystal Key Chain', '41-Small-Rectangle-Crystal-Key-Chain-194.png', '41-Small-Rectangle-Crystal-Key-Chain-194.png', NULL, '41 Small Rectangle Crystal Key Chain using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 300, 210, 'No', 'Yes', 195, 'Key Chais 3', 'Key Chais 3', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 14:03:26'),
(195, '42 Heart Crystal Key Chain', '42-Heart-Crystal-Key-Chain-195.png', '42-Heart-Crystal-Key-Chain-195.png', NULL, '42 Heart Crystal Key Chain using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 400, 280, 'No', 'Yes', 196, 'Key Chais 3', 'Key Chais 3', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 14:05:23'),
(196, '43 Round Crystal Key Chain', '43-Round-Crystal-Key-Chain-196.png', '43-Round-Crystal-Key-Chain-196.png', NULL, '43 Round Crystal Key Chain using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 400, 280, 'No', 'Yes', 197, 'Key Chais 3', 'Key Chais 3', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 14:06:08'),
(197, '44 Big Rectangle Crystal Key Chain', '44-Big-Rectangle-Crystal-Key-Chain-197.png', '44-Big-Rectangle-Crystal-Key-Chain-197.png', NULL, '44 Big Rectangle Crystal Key Chain using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 400, 280, 'No', 'Yes', 198, 'Key Chais 3', 'Key Chais 3', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 14:09:30'),
(198, '45 Rotating Oval Metal Key Double Side', '45-Rotating-Oval-Metal-Key-Double-Side-198.png', '45-Rotating-Oval-Metal-Key-Double-Side-198.png', NULL, '45 Rotating Oval Metal Key Double Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 300, 210, 'No', 'Yes', 199, 'Key Chais 3', 'Key Chais 3', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 14:12:14'),
(199, '46 Hexagon Metal Key Single Side', '46-Hexagon-Metal-Key-Single-Side-199.png', '46-Hexagon-Metal-Key-Single-Side-199.png', NULL, '46 Hexagon Metal Key Single Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 300, 210, 'No', 'Yes', 200, 'Key Chais 3', 'Key Chais 3', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 14:13:06'),
(200, '47 Triangle Metal Key Single Side', '47-Triangle-Metal-Key-Single-Side-200.png', '47-Triangle-Metal-Key-Single-Side-200.png', NULL, '47 Triangle Metal Key Single Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 300, 210, 'No', 'Yes', 201, 'Key Chais 3', 'Key Chais 3', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 14:14:17'),
(201, '48 Big Metal Key Single Side', '48-Big-Metal-Key-Single-Side-201.png', '48-Big-Metal-Key-Single-Side-201.png', NULL, '48 Big Metal Key Single Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 300, 210, 'No', 'Yes', 202, 'Key Chais 3', 'Key Chais 3', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 14:14:59'),
(202, '49 Double Line Heart Metal Singlide', '49-Double-Line-Heart-Metal-Singlide-202.png', '49-Double-Line-Heart-Metal-Singlide-202.png', NULL, '49 Double Line Heart Metal Singlide using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 300, 210, 'No', 'Yes', 203, 'Key Chais 3', 'Key Chais 3', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 14:15:38'),
(203, '50 Mango Round Metal Single Side', '50-Mango-Round-Metal-Single-Side-203.png', '50-Mango-Round-Metal-Single-Side-203.png', NULL, '50 Mango Round Metal Single Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 300, 210, 'No', 'Yes', 204, 'Key Chais 3', 'Key Chais 3', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 14:16:14'),
(204, '51 Diamond Key Metal Double side', '51-Diamond-Key-Metal-Double-side-204.png', '51-Diamond-Key-Metal-Double-side-204.png', NULL, '51 Diamond Key Metal Double side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 300, 210, 'No', 'Yes', 205, 'Key Chais 3', 'Key Chais 3', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 14:16:48'),
(205, '52 Rectangle Metal Double Side', '52-Rectangle-Metal-Double-Side-205.png', '52-Rectangle-Metal-Double-Side-205.png', NULL, '52 Rectangle Metal Double Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 300, 210, 'No', 'Yes', 206, 'Key Chais 3', 'Key Chais 3', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 14:17:55'),
(206, '53 Hanging Heart Metal Double side', '53-Hanging-Heart-Metal-Double-side-206.png', '53-Hanging-Heart-Metal-Double-side-206.png', NULL, '53 Hanging Heart Metal Double side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 300, 210, 'No', 'Yes', 207, 'Key Chais 3', 'Key Chais 3', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 14:18:45'),
(207, '58 Rotating Heart Metal Double Side', '58-Rotating-Heart-Metal-Double-Side-207.png', '58-Rotating-Heart-Metal-Double-Side-207.png', NULL, '58 Rotating Heart Metal Double Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 300, 210, 'No', 'Yes', 208, 'Key Chais 3', 'Key Chais 3', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 14:19:28'),
(208, '55 Rotating Rec Metal Double Side', '55-Rotating-Rec-Metal-Double-Side-208.png', '55-Rotating-Rec-Metal-Double-Side-208.png', NULL, '55 Rotating Rec Metal Double Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 300, 210, 'No', 'Yes', 209, 'Key Chais 3', 'Key Chais 3', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 14:21:09'),
(209, '56 Rotating Square Metal Double Side', '56-Rotating-Square-Metal-Double-Side-209.png', '56-Rotating-Square-Metal-Double-Side-209.png', NULL, '56 Rotating Square Metal Double Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 300, 210, 'No', 'Yes', 210, 'Key Chais 3', 'Key Chais 3', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 14:21:47'),
(210, '70 Blue Stone Square Metal Single Side', '70-Blue-Stone-Square-Metal-Single-Side-210.png', '70-Blue-Stone-Square-Metal-Single-Side-210.png', NULL, '70 Blue Stone Square Metal Single Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 400, 280, 'No', 'Yes', 211, 'Key Chais 3', 'Key Chais 3', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 14:22:44'),
(211, '71 LED Light Key Single Side', '71-LED-Light-Key-Single-Side-211.png', '71-LED-Light-Key-Single-Side-211.png', NULL, '71 LED Light Key Single Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 300, 210, 'No', 'Yes', 212, 'Key Chais 3', 'Key Chais 3', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 14:23:35'),
(212, 'Round Badge44 mm', 'Round-Badge44-mm-212.png', 'Round-Badge44-mm-212.png', NULL, 'Round Badge44 mm using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 120, 84, 'No', 'Yes', 213, 'Key Chais 3', 'Key Chais 3', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 14:24:18'),
(213, 'Round Badge56 mm', 'Round-Badge56-mm-213.png', 'Round-Badge56-mm-213.png', NULL, 'Round Badge56 mm using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 140, 98, 'No', 'Yes', 214, 'Key Chais 3', 'Key Chais 3', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 14:24:55'),
(214, '21 Rectangle Wood Key  Single Side', '21-Rectangle-Wood-Key--Single-Side-214.png', '21-Rectangle-Wood-Key--Single-Side-214.png', NULL, '21 Rectangle Wood Key  Single Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 160, 112, 'No', 'Yes', 215, 'Wooden Key Chains', 'Wooden Key Chains', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 14:25:46'),
(215, '22 Heart Wood  Key Single Side', '22-Heart-Wood--Key-Single-Side-215.png', '22-Heart-Wood--Key-Single-Side-215.png', NULL, '22 Heart Wood  Key Single Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 200, 140, 'No', 'Yes', 216, 'Wooden Key Chains', 'Wooden Key Chains', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 14:26:32'),
(216, '23 Double Heart Wood Key Single Side', '23-Double-Heart-Wood-Key-Single-Side-216.png', '23-Double-Heart-Wood-Key-Single-Side-216.png', NULL, '23 Double Heart Wood Key Single Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 300, 210, 'No', 'Yes', 217, 'Wooden Key Chains', 'Wooden Key Chains', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 14:27:17'),
(217, '24 Oval Wood Key Single Side', '24-Oval-Wood-Key-Single-Side-217.png', '24-Oval-Wood-Key-Single-Side-217.png', NULL, '24 Oval Wood Key Single Side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 200, 140, 'No', 'Yes', 218, 'Wooden Key Chains', 'Wooden Key Chains', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 14:30:23'),
(218, '25 Big Rectangle Wood Key Single side', '25-Big-Rectangle-Wood-Key-Single-side-218.png', '25-Big-Rectangle-Wood-Key-Single-side-218.png', NULL, '25 Big Rectangle Wood Key Single side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 200, 140, 'No', 'Yes', 219, 'Wooden Key Chains', 'Wooden Key Chains', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 14:31:00'),
(219, '26 Heart Polymer Key Double Side', '26-Heart-Polymer-Key-Double-Side--219.png', '26-Heart-Polymer-Key-Double-Side--219.png', NULL, '26 Heart Polymer Key Double Side  using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 160, 112, 'No', 'Yes', 220, 'Wooden Key Chains', 'Wooden Key Chains', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 14:31:51'),
(220, '27 Double Heart Polymer Key Double side', '27-Double-Heart-Polymer-Key-Double-side-220.png', '27-Double-Heart-Polymer-Key-Double-side-220.png', NULL, '27 Double Heart Polymer Key Double side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 160, 112, 'No', 'Yes', 221, 'Wooden Key Chains', 'Wooden Key Chains', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 14:32:32'),
(221, '28 Rectanle Polymer Key Double side', '28-Rectanle-Polymer-Key-Double-side-221.png', '28-Rectanle-Polymer-Key-Double-side-221.png', NULL, '28 Rectanle Polymer Key Double side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 160, 112, 'No', 'Yes', 222, 'Wooden Key Chains', 'Wooden Key Chains', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 14:33:09'),
(222, '31 Oval Polymer key double side', '31-Oval-Polymer-key-double-side-222.png', '31-Oval-Polymer-key-double-side-222.png', NULL, '31 Oval Polymer key double side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 160, 112, 'No', 'Yes', 223, 'Wooden Key Chains', 'Wooden Key Chains', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 14:34:14'),
(223, '32 Square Polymer Key Double side', '32-Square-Polymer-Key-Double-side-223.png', '32-Square-Polymer-Key-Double-side-223.png', NULL, '32 Square Polymer Key Double side using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 160, 112, 'No', 'Yes', 224, 'Wooden Key Chains', 'Wooden Key Chains', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 14:35:43');
INSERT INTO `keychain` (`id`, `book_title`, `book_path`, `thumb_img`, `product_img`, `product_details`, `actual_price`, `offer_price`, `sale`, `in_stock`, `sku`, `categories`, `tags`, `isbn`, `description`, `additional_info`, `categories_id`, `review`, `product_attach`, `created_at`, `updated_at`) VALUES
(224, '85 Big Heart polymer Key', '85-Big-Heart-polymer-Key--224.png', '85-Big-Heart-polymer-Key--224.png', NULL, '85 Big Heart polymer Key  using the latest colour transfer technology the colours of the key chain will not fade off. We\'ve also made sure about the stitching which is extremely strong and the key ring is of the highest-grade material so that the strength of the ring is maintained.', 300, 210, 'No', 'Yes', 225, 'Wooden Key Chains', 'Wooden Key Chains', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 14:36:24');

-- --------------------------------------------------------

--
-- Table structure for table `magicmirror`
--

CREATE TABLE `magicmirror` (
  `id` int(3) NOT NULL,
  `book_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_details` longtext COLLATE utf8mb4_unicode_ci,
  `actual_price` int(11) DEFAULT NULL,
  `offer_price` int(11) DEFAULT NULL,
  `sale` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `in_stock` text COLLATE utf8mb4_unicode_ci,
  `sku` int(11) DEFAULT NULL,
  `categories` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isbn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `additional_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories_id` int(11) DEFAULT NULL,
  `review` longtext COLLATE utf8mb4_unicode_ci,
  `product_attach` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1-Image, 2-Text, 3-No Attach',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `magicmirror`
--

INSERT INTO `magicmirror` (`id`, `book_title`, `book_path`, `thumb_img`, `product_img`, `product_details`, `actual_price`, `offer_price`, `sale`, `in_stock`, `sku`, `categories`, `tags`, `isbn`, `description`, `additional_info`, `categories_id`, `review`, `product_attach`, `created_at`, `updated_at`) VALUES
(225, 'Magic Mirror Round', 'Magic-Mirror-Round-225.png', 'Magic-Mirror-Round-225.png', NULL, 'Handle the mirror with care. Magic Mirror Round use a soft lint and grit free cloth to clean the mirror. This reduces the chances of scratching the mirror surface. Keep away from water.', 999, 699, 'No', 'Yes', 226, 'Magic Mirror', 'Magic Mirror', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 14:39:42'),
(226, 'Magic Mirror Round with  Clock', 'Magic-Mirror-Round-with--Clock-226.png', 'Magic-Mirror-Round-with--Clock-226.png', NULL, 'Handle the mirror with care. Magic Mirror Round with  Clock use a soft lint and grit free cloth to clean the mirror. This reduces the chances of scratching the mirror surface. Keep away from water.', 1600, 1120, 'No', 'Yes', 227, 'Magic Mirror', 'Magic Mirror', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 14:40:34'),
(227, 'Magic Mirror Double Heart', 'Magic-Mirror-Double-Heart-227.png', 'Magic-Mirror-Double-Heart-227.png', NULL, 'Handle the mirror with care. Magic Mirror Double Heart use a soft lint and grit free cloth to clean the mirror. This reduces the chances of scratching the mirror surface. Keep away from water.', 1800, 1260, 'No', 'Yes', 228, 'Magic Mirror', 'Magic Mirror', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 14:41:11'),
(228, 'Magic Mirror Rectangle Verticle', 'Magic-Mirror-Rectangle-Verticle--228.png', 'Magic-Mirror-Rectangle-Verticle--228.png', NULL, 'Handle the mirror with care. Magic Mirror Rectangle Verticle  use a soft lint and grit free cloth to clean the mirror. This reduces the chances of scratching the mirror surface. Keep away from water.', 999, 699, 'No', 'Yes', 229, 'Magic Mirror', 'Magic Mirror', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 14:41:50'),
(229, 'Magic Mirror Rectangle Horizantal', 'Magic-Mirror-Rectangle-Horizantal-229.png', 'Magic-Mirror-Rectangle-Horizantal-229.png', NULL, 'Handle the mirror with care. Magic Mirror Rectangle Horizantal use a soft lint and grit free cloth to clean the mirror. This reduces the chances of scratching the mirror surface. Keep away from water.', 999, 699, 'No', 'Yes', 230, 'Magic Mirror', 'Magic Mirror', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 14:46:18');

-- --------------------------------------------------------

--
-- Table structure for table `mail_queue`
--

CREATE TABLE `mail_queue` (
  `id` bigint(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `plan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_08_16_093450_create_sessions_table', 2),
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 3),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 3),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 3),
(7, '2016_06_01_000004_create_oauth_clients_table', 3),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `mug`
--

CREATE TABLE `mug` (
  `id` int(10) UNSIGNED NOT NULL,
  `book_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_details` longtext COLLATE utf8mb4_unicode_ci,
  `actual_price` int(11) DEFAULT NULL,
  `offer_price` int(11) DEFAULT NULL,
  `sale` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `in_stock` text COLLATE utf8mb4_unicode_ci,
  `sku` int(11) DEFAULT NULL,
  `categories` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isbn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `additional_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories_id` int(11) DEFAULT NULL,
  `review` longtext COLLATE utf8mb4_unicode_ci,
  `product_attach` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1-Image, 2-Text, 3-No Attach',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mug`
--

INSERT INTO `mug` (`id`, `book_title`, `book_path`, `thumb_img`, `product_img`, `product_details`, `actual_price`, `offer_price`, `sale`, `in_stock`, `sku`, `categories`, `tags`, `isbn`, `description`, `additional_info`, `categories_id`, `review`, `product_attach`, `created_at`, `updated_at`) VALUES
(1, 'White cup', 'White-cup-1.png', 'White-cup-1.png', NULL, 'This is one beautifully designed White cup you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 240, 168, 'Yes', '1000', 1, 'Mug', 'Mug', NULL, '', 'Width: 20 cm, Height: 9 cm', 1, '0', 1, '2020-08-13 14:44:57', '2020-12-02 09:44:35'),
(2, 'Tea Cup', 'Tea-Cup-2.png', 'Tea-Cup-2.png', NULL, 'This is one beautifully designed Tea Cup you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 300, 210, 'Yes', '1000', 2, 'Mug', 'Mug', NULL, '', 'Width: 17 cm, Height: 6 cm', 1, '0', 1, '2020-08-14 14:44:57', '2020-12-03 09:44:35'),
(3, 'Big Mug', 'Big-Mug-3.png', 'Big-Mug-3.png', NULL, 'This is one beautifully designed Big Mug you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 500, 350, 'Yes', '1000', 3, 'Mug', 'Mug', NULL, '', 'Width: 20 cm, Height: 10 cm', 1, '0', 1, '2020-08-15 14:44:57', '2020-12-04 09:44:35'),
(4, 'White Heart Handel Cup', 'White-Heart-Handel-Cup-4.png', 'White-Heart-Handel-Cup-4.png', NULL, 'This is one beautifully designed White Heart Handel Cup you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 400, 280, 'Yes', '1000', 4, 'Mug', 'Mug', NULL, '', 'Width: 20 cm, Height: 9 cm', 1, '0', 1, '2020-08-16 14:44:57', '2020-12-05 09:44:35'),
(5, 'Red Heart Handel Mug', 'Red-Heart-Handel-Mug-5.png', 'Red-Heart-Handel-Mug-5.png', NULL, 'This is one beautifully designed Red Heart Handel Mug you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 500, 350, 'Yes', '1000', 5, 'Mug', 'Mug', NULL, '', 'Width: 20 cm, Height: 9 cm', 1, '0', 1, '2020-08-17 14:44:57', '2020-12-06 09:44:35'),
(6, 'White Heart Shape Handel', 'White-Heart-Shape-Handel-6.png', 'White-Heart-Shape-Handel-6.png', NULL, 'This is one beautifully designed White Heart Shape Handel you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 500, 350, 'Yes', '1000', 6, 'Mug', 'Mug', NULL, '', 'Width: 17 cm, Height: 6 cm', 1, '0', 1, '2020-08-18 14:44:57', '2020-12-07 09:44:35'),
(7, 'Black Patch Mug', 'Black-Patch-Mug-7.png', 'Black-Patch-Mug-7.png', NULL, 'This is one beautifully designed Black Patch Mug you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 500, 350, 'Yes', '1000', 7, 'Mug', 'Mug', NULL, '', 'Width: 18 cm, Height: 8 cm', 1, '0', 1, '2020-08-19 14:44:57', '2020-12-08 09:44:35'),
(8, 'Gold Ceramic Mug', 'Gold-Ceramic-Mug-8.png', 'Gold-Ceramic-Mug-8.png', NULL, 'This is one beautifully designed Gold Ceramic Mug you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 500, 350, 'Yes', '1000', 8, 'Mug', 'Mug', NULL, '', 'Width: 20 cm, Height: 9 cm', 1, '0', 1, '2020-08-20 14:44:57', '2020-12-09 09:44:35'),
(9, 'Silver Ceramic Mug', 'Silver-Ceramic-Mug-9.png', 'Silver-Ceramic-Mug-9.png', NULL, 'This is one beautifully designed Silver Ceramic Mug you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 500, 350, 'Yes', '1000', 9, 'Mug', 'Mug', NULL, '', 'Width: 20 cm, Height: 9 cm', 1, '0', 1, '2020-08-21 14:44:57', '2020-12-10 09:44:35'),
(10, 'Steel Mug', 'Steel-Mug-10.png', 'Steel-Mug-10.png', NULL, 'This is one beautifully designed Steel Mug you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 600, 420, 'Yes', '1000', 10, 'Mug', 'Mug', NULL, '', 'Width: 17 cm, Height: 6 cm', 1, '0', 1, '2020-08-22 14:44:57', '2020-12-11 09:44:35'),
(11, 'Forsted Mug', 'Forsted-Mug-11.png', 'Forsted-Mug-11.png', NULL, 'This is one beautifully designed Forsted Mug you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 500, 350, 'Yes', '1000', 11, 'Mug', 'Mug', NULL, '', 'Width: 20 cm, Height: 9 cm', 1, '0', 1, '2020-08-23 14:44:57', '2020-12-12 09:44:35'),
(12, 'Inner Colour Ceramic ( Brown Color )', 'Inner-Colour-Ceramic-Brown-12.png', 'Inner-Colour-Ceramic-Brown-12.png', NULL, 'This is one beautifully designed Inner Colour Ceramic ( Brown Color ) you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 400, 280, 'Yes', '1000', 12, 'Mug', 'Mug', NULL, '', 'Width: 20 cm, Height: 9 cm', 1, '0', 1, '2020-08-24 14:44:57', '2020-12-13 09:44:35'),
(13, 'Inner Colour Ceramic ( Pink Color )', 'Inner-Colour-Ceramic-Pink-13.png', 'Inner-Colour-Ceramic-Pink-13.png', NULL, 'This is one beautifully designed Inner Colour Ceramic ( Pink Color ) you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 400, 280, 'Yes', '1000', 13, 'Mug', 'Mug', NULL, '', 'Width: 20 cm, Height: 9 cm', 1, '0', 1, '2020-08-25 14:44:57', '2020-12-14 09:44:35'),
(14, 'Inner Colour Ceramic ( Orange Color )', 'Inner-Colour-Ceramic-Orange-14.png', 'Inner-Colour-Ceramic-Orange-14.png', NULL, 'This is one beautifully designed Inner Colour Ceramic ( Orange Color ) you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 400, 280, 'Yes', '1000', 14, 'Mug', 'Mug', NULL, '', 'Width: 20 cm, Height: 9 cm', 1, '0', 1, '2020-08-26 14:44:57', '2020-12-15 09:44:35'),
(15, 'Inner Colour Ceramic ( Dark Green Color )', 'Inner-Colour-Ceramic-Dark-Green-15.png', 'Inner-Colour-Ceramic-Dark-Green-15.png', NULL, 'This is one beautifully designed Inner Colour Ceramic ( Dark Green Color ) you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 400, 280, 'Yes', '1000', 15, 'Mug', 'Mug', NULL, '', 'Width: 20 cm, Height: 9 cm', 1, '0', 1, '2020-08-27 14:44:57', '2020-12-16 09:44:35'),
(16, 'Inner Colour Ceramic ( Dark Blue Color )', 'Inner-Colour-Ceramic-Dark-Blue-16.png', 'Inner-Colour-Ceramic-Dark-Blue-16.png', NULL, 'This is one beautifully designed Inner Colour Ceramic ( Dark Blue Color ) you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 400, 280, 'Yes', '1000', 16, 'Mug', 'Mug', NULL, '', 'Width: 20 cm, Height: 9 cm', 1, '0', 1, '2020-08-28 14:44:57', '2020-12-17 09:44:35'),
(17, 'Inner Colour Ceramic ( Lite  Blue Color )', 'Inner-Colour-Ceramic-Lite--Blue-17.png', 'Inner-Colour-Ceramic-Lite--Blue-17.png', NULL, 'This is one beautifully designed Inner Colour Ceramic ( Lite  Blue Color ) you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 400, 280, 'Yes', '1000', 17, 'Mug', 'Mug', NULL, '', 'Width: 20 cm, Height: 9 cm', 1, '0', 1, '2020-08-29 14:44:57', '2020-12-18 09:44:35'),
(18, 'Inner Colour Ceramic ( Red  Color )', 'Inner-Colour-Ceramic-Red-18.png', 'Inner-Colour-Ceramic-Red-18.png', NULL, 'This is one beautifully designed Inner Colour Ceramic ( Red  Color ) you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 400, 280, 'Yes', '1000', 18, 'Mug', 'Mug', NULL, '', 'Width: 20 cm, Height: 9 cm', 1, '0', 1, '2020-08-30 14:44:57', '2020-12-19 09:44:35'),
(19, 'Inner Colour Ceramic ( Lite Green Color )', 'Inner-Colour-Ceramic-Lite--Green-19.png', 'Inner-Colour-Ceramic-Lite--Green-19.png', NULL, 'This is one beautifully designed Inner Colour Ceramic ( Lite Green Color ) you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 400, 280, 'Yes', '1000', 19, 'Mug', 'Mug', NULL, '', 'Width: 20 cm, Height: 9 cm', 1, '0', 1, '2020-08-31 14:44:57', '2020-12-20 09:44:35'),
(20, 'Inner Colour Ceramic ( Black Color )', 'Inner-Colour-Ceramic-Black-20.png', 'Inner-Colour-Ceramic-Black-20.png', NULL, 'This is one beautifully designed Inner Colour Ceramic ( Black Color ) you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 400, 280, 'Yes', '1000', 20, 'Mug', 'Mug', NULL, '', 'Width: 20 cm, Height: 9 cm', 1, '0', 1, '2020-09-01 14:44:57', '2020-12-21 09:44:35'),
(21, 'Inner Colour Ceramic ( Yellow Color )', 'Inner-Colour-Ceramic-Yellow-21.png', 'Inner-Colour-Ceramic-Yellow-21.png', NULL, 'This is one beautifully designed Inner Colour Ceramic ( Yellow Color ) you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 400, 280, 'Yes', '1000', 21, 'Mug', 'Mug', NULL, '', 'Width: 20 cm, Height: 9 cm', 1, '0', 1, '2020-09-02 14:44:57', '2020-12-22 09:44:35'),
(22, 'Lovers Mug', 'Lovers-Mug-22.png', 'Lovers-Mug-22.png', NULL, 'This is one beautifully designed Lovers Mug you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 900, 630, 'Yes', '1000', 22, 'Mug', 'Mug', NULL, '', 'Width: 6.5 cm, Height: 8.5;6.5 cm', 1, '0', 1, '2020-09-03 14:44:57', '2020-12-23 09:44:35'),
(23, 'Magic Mug ( Black Color )', 'Magic-Mug-Black-23.png', 'Magic-Mug-Black-23.png', NULL, 'This is one beautifully designed Magic Mug ( Black Color ) you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 500, 350, 'Yes', '1000', 23, 'Mug', 'Mug', NULL, '', 'Width: 20 cm, Height: 9 cm', 1, '0', 1, '2020-09-04 14:44:57', '2020-12-24 09:44:35'),
(24, 'Magic Mug ( Red Color )', 'Magic-Mug-Red-24.png', 'Magic-Mug-Red-24.png', NULL, 'This is one beautifully designed Magic Mug ( Red Color ) you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 500, 350, 'Yes', '1000', 24, 'Mug', 'Mug', NULL, '', 'Width: 20 cm, Height: 9 cm', 1, '0', 1, '2020-09-05 14:44:57', '2020-12-25 09:44:35'),
(25, 'Magic Mug ( Blue Color )', 'Magic-Mug-Blue-25.png', 'Magic-Mug-Blue-25.png', NULL, 'This is one beautifully designed Magic Mug ( Blue Color ) you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 500, 350, 'Yes', '1000', 25, 'Mug', 'Mug', NULL, '', 'Width: 20 cm, Height: 9 cm', 1, '0', 1, '2020-09-06 14:44:57', '2020-12-26 09:44:35'),
(26, 'Heart Handel Magic Mug ( Black Color )', 'Heart-Handel-Magic-Mug-Black-26.png', 'Heart-Handel-Magic-Mug-Black-26.png', NULL, 'This is one beautifully designed Heart Handel Magic Mug ( Black Color ) you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 600, 420, 'Yes', '1000', 26, 'Mug', 'Mug', NULL, '', 'Width: 20 cm, Height: 9 cm', 1, '0', 1, '2020-09-07 14:44:57', '2020-12-27 09:44:35'),
(27, 'Heart Handel Magic Mug ( Blue Color )', 'Heart-Handel-Magic-Mug-Blue-27.png', 'Heart-Handel-Magic-Mug-Blue-27.png', NULL, 'This is one beautifully designed Heart Handel Magic Mug ( Blue Color ) you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 600, 420, 'Yes', '1000', 27, 'Mug', 'Mug', NULL, '', 'Width: 20 cm, Height: 9 cm', 1, '0', 1, '2020-09-08 14:44:57', '2020-12-28 09:44:35'),
(28, 'Heart Handel Magic Mug ( Red Color )', 'Heart-Handel-Magic-Mug-Red-28.png', 'Heart-Handel-Magic-Mug-Red-28.png', NULL, 'This is one beautifully designed Heart Handel Magic Mug ( Red Color ) you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 600, 420, 'Yes', '1000', 28, 'Mug', 'Mug', NULL, '', 'Width: 20 cm, Height: 9 cm', 1, '0', 1, '2020-09-09 14:44:57', '2020-12-29 09:44:35'),
(29, 'Heart Shape Magic Mug ( Black Color )', 'Heart-Shape-Magic-Mug-Black-29.png', 'Heart-Shape-Magic-Mug-Black-29.png', NULL, 'This is one beautifully designed Heart Shape Magic Mug ( Black Color ) you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 700, 490, 'Yes', '1000', 29, 'Mug', 'Mug', NULL, '', 'Width: 13.5 cm, Height: 7 cm', 1, '0', 1, '2020-09-10 14:44:57', '2020-12-30 09:44:35'),
(30, 'Heart Shape Magic Mug ( Blue Color )', 'Heart-Shape-Magic-Mug-Blue-30.png', 'Heart-Shape-Magic-Mug-Blue-30.png', NULL, 'This is one beautifully designed Heart Shape Magic Mug ( Blue Color ) you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 700, 490, 'Yes', '1000', 30, 'Mug', 'Mug', NULL, '', 'Width: 13.5 cm, Height: 7 cm', 1, '0', 1, '2020-09-11 14:44:57', '2020-12-31 09:44:35'),
(31, 'Heart Shape Magic Mug ( Red Color )', 'Heart-Shape-Magic-Mug-Red-31.png', 'Heart-Shape-Magic-Mug-Red-31.png', NULL, 'This is one beautifully designed Heart Shape Magic Mug ( Red Color ) you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 700, 490, 'Yes', '1000', 31, 'Mug', 'Mug', NULL, '', 'Width: 13.5 cm, Height: 7 cm', 1, '0', 1, '2020-09-12 14:44:57', '2021-01-01 09:44:35'),
(32, 'Tea Cup ( White Color )', 'Tea-Cup-White-32.png', 'Tea-Cup-White-32.png', NULL, 'This is one beautifully designed Tea Cup ( White Color ) you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 300, 210, 'Yes', '1000', 32, 'Mug', 'Mug', NULL, '', 'Width: 17 cm, Height: 6 cm', 1, '0', 1, '2020-09-13 14:44:57', '2021-01-02 09:44:35'),
(33, 'Tea Cup ( Blue Color )', 'Tea-Cup-Blue-33.png', 'Tea-Cup-Blue-33.png', NULL, 'This is one beautifully designed Tea Cup ( Blue Color ) you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 400, 280, 'Yes', '1000', 33, 'Mug', 'Mug', NULL, '', 'Width: 17 cm, Height: 6 cm', 1, '0', 1, '2020-09-14 14:44:57', '2021-01-03 09:44:35'),
(34, 'Tea Cup ( Red Color )', 'Tea-Cup-Red-34.png', 'Tea-Cup-Red-34.png', NULL, 'This is one beautifully designed Tea Cup ( Red Color ) you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 400, 280, 'Yes', '1000', 34, 'Mug', 'Mug', NULL, '', 'Width: 17 cm, Height: 6 cm', 1, '0', 1, '2020-09-15 14:44:57', '2021-01-04 09:44:35'),
(35, 'Tea Cup ( Yellow Color )', 'Tea-Cup-Yellow-35.png', 'Tea-Cup-Yellow-35.png', NULL, 'This is one beautifully designed Tea Cup ( Yellow Color ) you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 400, 280, 'Yes', '1000', 35, 'Mug', 'Mug', NULL, '', 'Width: 17 cm, Height: 6 cm', 1, '0', 1, '2020-09-16 14:44:57', '2021-01-05 09:44:35'),
(36, 'Tea Cup ( Green Color )', 'Tea-Cup-Green-36.png', 'Tea-Cup-Green-36.png', NULL, 'This is one beautifully designed Tea Cup ( Green Color ) you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 400, 280, 'Yes', '1000', 36, 'Mug', 'Mug', NULL, '', 'Width: 17 cm, Height: 6 cm', 1, '0', 1, '2020-09-17 14:44:57', '2021-01-06 09:44:35'),
(37, 'Polymer Mug ( White Color )', 'Polymer-Mug-White-37.png', 'Polymer-Mug-White-37.png', NULL, 'This is one beautifully designed Polymer Mug ( White Color ) you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 360, 252, 'Yes', '1000', 37, 'Mug', 'Mug', NULL, '', 'Width: 20 cm, Height: 9 cm', 1, '0', 1, '2020-09-18 14:44:57', '2021-01-07 09:44:35'),
(38, 'Polymer Mug ( Sky Blue Color )', 'Polymer-Mug-Sky-Blue-38.png', 'Polymer-Mug-Sky-Blue-38.png', NULL, 'This is one beautifully designed Polymer Mug ( Sky Blue Color ) you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 460, 322, 'Yes', '1000', 38, 'Mug', 'Mug', NULL, '', 'Width: 20 cm, Height: 9 cm', 1, '0', 1, '2020-09-19 14:44:57', '2021-01-08 09:44:35'),
(39, 'Polymer Mug ( Yellow Color )', 'Polymer-Mug-Yellow-39.png', 'Polymer-Mug-Yellow-39.png', NULL, 'This is one beautifully designed Polymer Mug ( Yellow Color ) you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 460, 322, 'Yes', '1000', 39, 'Mug', 'Mug', NULL, '', 'Width: 20 cm, Height: 9 cm', 1, '0', 1, '2020-09-20 14:44:57', '2021-01-09 09:44:35'),
(40, 'Polymer Mug ( Red Color )', 'Polymer-Mug-Red-40.png', 'Polymer-Mug-Red-40.png', NULL, 'This is one beautifully designed Polymer Mug ( Red Color ) you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 460, 322, 'Yes', '1000', 40, 'Mug', 'Mug', NULL, '', 'Width: 20 cm, Height: 9 cm', 1, '0', 1, '2020-09-21 14:44:57', '2021-01-10 09:44:35'),
(41, 'Polymer Heart  Mug ( Blue Color )', 'Polymer-Heart--Mug-Blue-41.png', 'Polymer-Heart--Mug-Blue-41.png', NULL, 'This is one beautifully designed Polymer Heart  Mug ( Blue Color ) you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 500, 350, 'Yes', '1000', 41, 'Mug', 'Mug', NULL, '', 'Width: 20 cm, Height: 9 cm', 1, '0', 1, '2020-09-22 14:44:57', '2021-01-11 09:44:35'),
(42, 'Polymer Heart  Mug ( Red Color )', 'Polymer-Heart--Mug-Red-42.png', 'Polymer-Heart--Mug-Red-42.png', NULL, 'This is one beautifully designed Polymer Heart  Mug ( Red Color ) you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 500, 350, 'Yes', '1000', 42, 'Mug', 'Mug', NULL, '', 'Width: 20 cm, Height: 9 cm', 1, '0', 1, '2020-09-23 14:44:57', '2021-01-12 09:44:35'),
(43, 'Happy Birthday Mug', 'Happy-Birthday-Mug-43.png', 'Happy-Birthday-Mug-43.png', NULL, 'This is one beautifully designed Happy Birthday Mug you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 600, 420, 'Yes', '1000', 43, 'Mug', 'Mug', NULL, '', 'Width: 20 cm, Height: 9 cm', 1, '0', 1, '2020-09-24 14:44:57', '2021-01-13 09:44:35'),
(44, 'Love You Forever Mug', 'Love-You-Forever-Mug-44.png', 'Love-You-Forever-Mug-44.png', NULL, 'This is one beautifully designed Love You Forever Mug you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 600, 420, 'Yes', '1000', 44, 'Mug', 'Mug', NULL, '', 'Width: 20 cm, Height: 9 cm', 1, '0', 1, '2020-09-25 14:44:57', '2021-01-14 09:44:35'),
(45, 'Happy Anniversary Mug', 'Happy-Anniversary-Mug-45.png', 'Happy-Anniversary-Mug-45.png', NULL, 'This is one beautifully designed Happy Anniversary Mug you must pick. This cup can be personalized by getting any image of your choice in it. PACKAGE CONTENT: 1 Printed Ceramic Coffee Mug (11 Oz.350 ml Capacity) | Thermocol safe packaging WASH CARE: Do Not Scrub from Outside | FEATURES - Dishwasher Safe | Microwave and Oven Safe | Freezer Safe | Non Toxic | BPA Free | Environment Friendly | Reusable and Odorless', 600, 420, 'Yes', '1000', 45, 'Mug', 'Mug', NULL, '', 'Width: 20 cm, Height: 9 cm', 1, '0', 1, '2020-09-26 14:44:57', '2021-01-15 09:44:35'),
(46, 'Stainless Steel Blue Coated 600 ML', 'Happy-Anniversary-Mug-45.png', 'Happy-Anniversary-Mug-45.png', NULL, '', 420, 420, 'Yes', '1000', 46, 'Mug', 'Mug', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0003d56370567dfd99cffb5de19401652c62337a53e11a5cb5d4de6e92c0c69d1f14ad6420335e98', 130, 1, 'FlipBookPassport', '[]', 0, '2020-12-01 05:00:09', '2020-12-01 05:00:09', '2021-11-30 22:00:09'),
('028ba6c4f8a18602835c277a99810ac7ecb92fc8a4e9d945875f1eda6dc7af84de6b2841318779e1', 257, 1, NULL, '[]', 0, '2020-12-11 20:07:53', '2020-12-11 20:07:53', '2021-12-11 13:07:53'),
('02aa8428aad77a92fe197bfae0f91ed5747ebdf776758afc386a9b5f274654adc5f991b8a0af9e95', 130, 1, 'FlipBookPassport', '[]', 0, '2020-12-01 08:12:07', '2020-12-01 08:12:07', '2021-12-01 01:12:07'),
('03f9a572e0ef59839c3475a382a8f2f3029516dbdd3ac52dd2dd998bcb288d97678ef60624f9b902', 130, 1, 'FlipBookPassport', '[]', 0, '2020-12-01 14:09:00', '2020-12-01 14:09:00', '2021-12-01 07:09:00'),
('043d1b0567d0d8c1eee3feafa4ec58d5dccb3eb8724d8bd0ee6d8c12eed14a9111405063b7d55e9d', 293, 1, 'FlipBookPassport', '[]', 0, '2020-12-01 14:22:37', '2020-12-01 14:22:37', '2021-12-01 07:22:37'),
('05e81981be7df82979932765d671ee3939e022650ad4c653a71e887f2b7fb080a2a15cfe9f44ca9a', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-03 06:56:56', '2020-12-03 06:56:56', '2021-12-02 23:56:56'),
('08a5bd576080910bca938eedb2ca7560e587286eba5493fa8807a0532d7b3f83dca7cb7abad71df9', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-03 10:20:32', '2020-12-03 10:20:32', '2021-12-03 03:20:32'),
('095ad6616d3fd66b2b450c1c8f8a3762208da485507f88fce4cf1b7295791e12c14fe689d9b76268', 130, 1, 'FlipBookPassport', '[]', 0, '2020-12-01 14:20:11', '2020-12-01 14:20:11', '2021-12-01 07:20:11'),
('0996cd9e39dfa5577e04c318eb1e1db0f7b49434998673324072563e3b8d7b0d07a9df74c0eb956e', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-03 06:39:33', '2020-12-03 06:39:33', '2021-12-02 23:39:33'),
('0e496455b9f4909864b81c25df39e49aa8608a53d258380602cf46c1b1ebeee8c143b83235bbd095', 283, 1, NULL, '[]', 0, '2020-12-11 04:26:27', '2020-12-11 04:26:27', '2021-12-10 21:26:27'),
('0f56f7804b9e2d6923725062f8b92505d9afd91a4bc7aa236205a9730189993cb5fac2a28976fb8d', 130, 1, 'FlipBookPassport', '[]', 0, '2020-12-01 04:39:46', '2020-12-01 04:39:46', '2021-11-30 21:39:46'),
('1028ef44fed9a7a26f91f53bf97c32535cc0bebe08de47cd4ebdc1efc2cce2f8cb478f100bb9404a', 130, 1, 'FlipBookPassport', '[]', 0, '2020-11-30 04:11:38', '2020-11-30 04:11:38', '2021-11-29 21:11:38'),
('10492aa566aae0c5d50c53ba1a444ed3ac5cc83a5221bc38628f60e08fe1d1fbf4139b6ed8982014', 257, 1, 'FlipBookPassport', '[]', 1, '2020-12-01 15:59:53', '2020-12-01 15:59:53', '2021-12-01 08:59:53'),
('156bd5ff2e6823eef53a155353df33cae3bcea4f0b4341a396f5676be55195bb3fffa0585e1a9ffa', 283, 1, NULL, '[]', 0, '2020-12-10 23:03:49', '2020-12-10 23:03:49', '2021-12-10 16:03:49'),
('15bcc9cc1798e178ab33c23c58e406e85187697e8f6eb34b9122952812dd94631b15698a157bcaa0', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-03 07:49:26', '2020-12-03 07:49:26', '2021-12-03 00:49:26'),
('168bd8144d2a3532b2ff983f9ae5a0a4e0d28a41f67903ab9752a575194ba37612a12dbc0c25f1cb', 130, 1, NULL, '[]', 0, '2020-12-08 14:16:31', '2020-12-08 14:16:31', '2021-12-08 07:16:31'),
('185e6dcc8432660dce8db594729df1b44eee75f01f270380b73ce6e6087849ee89bd035f2ea22748', 178, 1, 'FlipBookPassport', '[]', 0, '2020-12-01 13:15:52', '2020-12-01 13:15:52', '2021-12-01 06:15:52'),
('1a67826bc7d13df5995eb57f58baf8b0813562b324833437195d294e7b2afa3a122361183288873b', 130, 1, 'FlipBookPassport', '[]', 0, '2020-12-01 12:40:51', '2020-12-01 12:40:51', '2021-12-01 05:40:51'),
('1b4897ee1ceb74cdb730bc5c89cb562ccb13bc4b27b3b7e4eb4ff9821096f0d16cce68b1bbe61f68', 130, 1, NULL, '[]', 0, '2020-12-10 03:38:07', '2020-12-10 03:38:07', '2021-12-09 20:38:07'),
('1d18b8d5cf199388dd4db4c42d26b0c321ddd89777141ad8c188de342c21be88a26b03fdaa5ab1e0', 283, 1, NULL, '[]', 0, '2020-12-11 05:07:31', '2020-12-11 05:07:31', '2021-12-10 22:07:31'),
('1d6349cb64d82ab037365a19ef97f6a5d3a4e46560970a66d63035c28f3c3dcbda135b050f79acfb', 130, 1, 'FlipBookPassport', '[]', 0, '2020-12-12 13:39:22', '2020-12-12 13:39:22', '2021-12-12 06:39:22'),
('1dc2a9506a34099d5defb87248224a9e8b5581d6532aa624eec9a329b3e628c1d23db43742f93412', 130, 1, 'FlipBookPassport', '[]', 0, '2020-12-12 20:32:36', '2020-12-12 20:32:36', '2021-12-12 13:32:36'),
('1f65470162e38260239ea259fde4c7909e6b2f344e7f94fd64c15aea051b921f87691cfde98d1c2e', 285, 1, NULL, '[]', 0, '2020-12-11 00:42:20', '2020-12-11 00:42:20', '2021-12-10 17:42:20'),
('22f06b07e1675f966874df3f5ceab0e415a31ac4e3f6ea54ea37e1ba24987cc620b55a3dc708045f', 285, 1, 'FlipBookPassport', '[]', 0, '2020-12-15 20:40:39', '2020-12-15 20:40:39', '2021-12-15 13:40:39'),
('24337af7c2877d184df26c9761dfbf90384b372c0a6d6b9cb7daf4e9e415e858fa9ca951e4514355', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-03 10:21:11', '2020-12-03 10:21:11', '2021-12-03 03:21:11'),
('246817c6901e8f5a1a8160ffd3456075d6ce3c3fc0408087ba498b0bd1ebab863f9787a096d675f2', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-03 06:34:13', '2020-12-03 06:34:13', '2021-12-02 23:34:13'),
('25e9c746f85d2fbd9c998ff6b6f8078caa6abd105164ef2bdc4fde862ccdab2633d389dc7282c38f', 176, 1, 'FlipBookPassport', '[]', 0, '2020-12-03 10:10:53', '2020-12-03 10:10:53', '2021-12-03 03:10:53'),
('27a976602dd5393a4c663e3e29a97861bd7b012250bc2bccaafb1f0774972bef5b06df91b5c5a7fd', 285, 1, NULL, '[]', 0, '2020-12-10 22:04:32', '2020-12-10 22:04:32', '2021-12-10 15:04:32'),
('29399c94c59c3a6efab45a022a98d7db7a6c17e199f62585400e2a2886b2d248dc80c6d92cd16cb6', 2, 1, 'FlipBookPassport', '[]', 1, '2020-11-04 05:14:07', '2020-11-04 05:14:07', '2021-11-04 03:44:07'),
('2b18e08073dd44d556981087ee0c20ad480e64c979352bb61316919cf13a80ef7bb84324824797d3', 285, 1, 'FlipBookPassport', '[]', 0, '2020-12-17 18:38:49', '2020-12-17 18:38:49', '2021-12-17 11:38:49'),
('2d926e1b0493483b07ee13610dd7613defb9d4833625f2b2a5fe7e84c1664ea275de915dbc51e4df', 130, 1, 'FlipBookPassport', '[]', 0, '2020-11-30 04:56:30', '2020-11-30 04:56:30', '2021-11-29 21:56:30'),
('2ecb39872fa68c5203fb0f0e0adbee8263523836532f03bb37a2192d31ee0bd573e3b9512d0e6f41', 2, 1, 'FlipBookPassport', '[]', 0, '2020-11-21 11:00:36', '2020-11-21 11:00:36', '2021-11-21 04:00:36'),
('332c39635c04ad1ec0b1188b68eb21832359b85b0f7d352e07b14295722edb4692a3d87171d59ba4', 130, 1, 'FlipBookPassport', '[]', 0, '2020-11-30 04:28:36', '2020-11-30 04:28:36', '2021-11-29 21:28:36'),
('36a553dd9116a07d5a3f1adb40b2e7bc6cfa17996e75691a9c219bd71638e833df400a15f839f914', 285, 1, 'FlipBookPassport', '[]', 0, '2020-12-13 22:30:12', '2020-12-13 22:30:12', '2021-12-13 15:30:12'),
('3b5dbb13239b10117646e9a3424046fb66f825f0416818f560a22823e4ffd83d2b8be691e613a4c8', 257, 1, 'FlipBookPassport', '[]', 0, '2020-11-30 02:10:28', '2020-11-30 02:10:28', '2021-11-29 19:10:28'),
('3ecb3f84217082d0098df4d9b429c730da3bdef2d53468c92232fb0306494140e52fa7b4efadba5a', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-03 05:45:51', '2020-12-03 05:45:51', '2021-12-02 22:45:51'),
('3faf12d14d50d8bb42cbc3b858e9407492cfed62c935b247f271336e95c51819b2a90a0f4ae99b00', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-01 15:07:16', '2020-12-01 15:07:16', '2021-12-01 08:07:16'),
('438ac67b63e4bf31e897078c27fde95cb5bec6b194b3d19fefc113e2392c48a5814e2e6a7dfce5dc', 283, 1, 'FlipBookPassport', '[]', 0, '2020-12-17 01:34:44', '2020-12-17 01:34:44', '2021-12-16 18:34:44'),
('442546effe8f4c49898ba72b21915b518994f069f556bf9a067c15114426608863427fbf36135b64', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-03 06:30:08', '2020-12-03 06:30:08', '2021-12-02 23:30:09'),
('45c3ab18e690f77971ec6f3ec6e76e7b5db80a6a5106c9a38ea4e29a0feea63472e0a7cc9f1d37bc', 285, 1, 'FlipBookPassport', '[]', 0, '2020-12-15 01:35:52', '2020-12-15 01:35:52', '2021-12-14 18:35:52'),
('46dd94f3e8c878882d64cfb9a3f13efc689ac343a707f9444df16dda507eb6c6b15582bf951b0fc3', 130, 1, 'FlipBookPassport', '[]', 0, '2020-12-01 13:00:26', '2020-12-01 13:00:26', '2021-12-01 06:00:26'),
('476cb27e8b0a857da556a53d8c235e9680dd6db693d4a13aa7944a306f262fa724b378283b775b12', 285, 1, 'FlipBookPassport', '[]', 0, '2020-12-15 19:22:45', '2020-12-15 19:22:45', '2021-12-15 12:22:45'),
('486212d585ace466c33f5e3393d30ef7a22995b50c50cc8a5db7bbeeec93035db3b60b16c9d9151e', 130, 1, 'FlipBookPassport', '[]', 0, '2020-12-01 05:07:20', '2020-12-01 05:07:20', '2021-11-30 22:07:20'),
('4b1abc2566c1b564ffe63ef05dbb7ea35c4b4baf0100a6183e46fbe0dcddbb3d120a4201cd4a9863', 285, 1, 'FlipBookPassport', '[]', 0, '2020-12-15 01:34:28', '2020-12-15 01:34:28', '2021-12-14 18:34:28'),
('4de0cefa7dbe4123b3e75941ca5da6347e5c89f9969e0373c9a60eefbd3497d69bf0c9cfa52128ce', 285, 1, 'FlipBookPassport', '[]', 0, '2020-12-15 19:34:15', '2020-12-15 19:34:15', '2021-12-15 12:34:15'),
('4e5f232f1105b20279ed1af193ef9b6bb551b1f82289f05143a44005e27eb385ecd712d78b94e00c', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-03 05:42:37', '2020-12-03 05:42:37', '2021-12-02 22:42:37'),
('4f33d6224d1489029b405d052bdef2d25d0b9f581665ab894b4bca8ec0e40c276384999bef0447c0', 130, 1, 'FlipBookPassport', '[]', 0, '2020-11-30 02:26:44', '2020-11-30 02:26:44', '2021-11-29 19:26:44'),
('52af440b51440457d4226c6ac72db53edbb0fdcaafa358fe08c4684a133164176f27b64ded29c9b1', 285, 1, NULL, '[]', 0, '2020-12-10 22:18:57', '2020-12-10 22:18:57', '2021-12-10 15:18:57'),
('53bad06d0600b2aeafa56556e14b2f6874c15b8b96e6e9c808451c5e8f929c0673f69b22695338f5', 176, 1, 'FlipBookPassport', '[]', 0, '2020-12-14 12:53:30', '2020-12-14 12:53:30', '2021-12-14 05:53:30'),
('53e128e7a420ec2efe1c4dcc69bd9ea095906acc6ef510027574a95324f97564c28286a07ec0f392', 257, 1, 'FlipBookPassport', '[]', 0, '2020-12-17 01:29:05', '2020-12-17 01:29:05', '2021-12-16 18:29:05'),
('53f2d265ccb38d88df1579f6ed6961bc3dcacc4bd704525c6f137e20ac36473d448f9ca21dc3a00d', 285, 1, 'FlipBookPassport', '[]', 0, '2020-12-15 01:29:56', '2020-12-15 01:29:56', '2021-12-14 18:29:56'),
('5443833e88457e95c45abe8406cad486975ef487f741a6e9ff0fe68578652d8390551ec931171973', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-01 08:48:04', '2020-12-01 08:48:04', '2021-12-01 01:48:04'),
('54d196399cc8dc5aa4d713d9a9d806f03c3d4d26f5c164f0638b9ebbf0ea15a7d81ada5495a26b80', 130, 1, 'FlipBookPassport', '[]', 0, '2020-11-28 08:42:38', '2020-11-28 08:42:38', '2021-11-28 01:42:38'),
('55764baf8b72ac5f866013fa6957bc8a66185f4874d2f6031dd9bc69f1a402b13aafebe35190ee78', 130, 1, 'FlipBookPassport', '[]', 0, '2020-12-01 14:20:10', '2020-12-01 14:20:10', '2021-12-01 07:20:10'),
('557cac5af27826c8b6f567f1ef90b277821b50fa1d3325ce81d9d0b72309ffee8d7b714d90a44983', 285, 1, 'FlipBookPassport', '[]', 0, '2020-12-16 18:43:52', '2020-12-16 18:43:52', '2021-12-16 11:43:52'),
('58ed2daa795eb28405ab1d481309398ec5f2766e52bed02e43f4ed1ee5e81b3f1e8482d7b974c2df', 176, 1, 'FlipBookPassport', '[]', 0, '2020-12-14 13:01:32', '2020-12-14 13:01:32', '2021-12-14 06:01:32'),
('5a962a7b02ed01dd050980a786e7483e65870590aedfd95a94184e33dde4bd79b07d7dcdcebedf8a', 130, 1, 'FlipBookPassport', '[]', 0, '2020-11-30 04:26:04', '2020-11-30 04:26:04', '2021-11-29 21:26:04'),
('5d6f95968626342685f816d54ec4bf2c7432cf4198707ce3a91059b61b4198d236bac351412c8acf', 293, 1, 'FlipBookPassport', '[]', 0, '2020-12-03 09:00:53', '2020-12-03 09:00:53', '2021-12-03 02:00:53'),
('621b8636d5622dd6e5f8897c029d5e0c06ed805cc13f5d064444d6a6e8a19888a28a380776806b84', 130, 1, 'FlipBookPassport', '[]', 0, '2020-11-30 02:22:31', '2020-11-30 02:22:31', '2021-11-29 19:22:31'),
('63c2a358e9b1ebd9f882795fd8197eb6012b9a4b97bb12ebc83a6a233d6b3297c94aa3f0e316c4fb', 176, 1, 'FlipBookPassport', '[]', 0, '2020-12-03 08:44:17', '2020-12-03 08:44:17', '2021-12-03 01:44:17'),
('6486a7a38e374aab8f426de613dae3379ab3d6c25650a0c17862d8f0c97d7d538b3c78c1df2337ad', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-03 09:50:25', '2020-12-03 09:50:25', '2021-12-03 02:50:25'),
('658da103337ca1fffbd0468196cf015d68bd471d65f36dc6fff203a0012a390d1dd880c581ed0dd0', 130, 1, 'FlipBookPassport', '[]', 0, '2020-11-30 04:50:54', '2020-11-30 04:50:54', '2021-11-29 21:50:54'),
('66c420ea551921f77db0dcca1e3a1dc72c6fd311daa283baa890f34220d804921f9197fe61dce1e0', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-03 07:02:46', '2020-12-03 07:02:46', '2021-12-03 00:02:46'),
('66ca83a1b3d8818e7ef7ceb0a88a6acfe963de26e78cb48cb09fb90975c513967c50b7e54b8d6600', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-03 09:56:42', '2020-12-03 09:56:42', '2021-12-03 02:56:42'),
('676b029ec9d8c39870389c36ddc1dac29f13e056147036a728a1fb6aa72a4a977edee2c4d543b625', 130, 1, 'FlipBookPassport', '[]', 0, '2020-12-01 14:20:12', '2020-12-01 14:20:12', '2021-12-01 07:20:12'),
('6bb7ea0219d47a5f0a96654c251251bc27e58c9a90f273368d1e4edccd05bbe18003ed5712d51b4f', 130, 1, 'FlipBookPassport', '[]', 0, '2020-11-30 04:00:54', '2020-11-30 04:00:54', '2021-11-29 21:00:54'),
('6c91739d0cdeaa60bf742bbb708c7800d99c0376f25a980fd5d66b09410a2a689352164e4eb6a403', 283, 1, NULL, '[]', 0, '2020-12-10 23:36:08', '2020-12-10 23:36:08', '2021-12-10 16:36:08'),
('6d4ac83edc6527bb856a2bdb5480f429daca69d5892fc391231725408d30ed39c46544bb0de48c9c', 130, 1, 'FlipBookPassport', '[]', 0, '2020-12-01 05:31:49', '2020-12-01 05:31:49', '2021-11-30 22:31:49'),
('6d9dca9f09e41e2b6dd605766235563be46680b4c42fc43d5552ab7ef36fd8f8b141c7b2ec117f59', 303, 1, 'FlipBookPassport', '[]', 0, '2020-12-25 18:19:17', '2020-12-25 18:19:17', '2021-12-25 11:19:17'),
('6e56f5e740db6cf9359f45b7aee681cd0d7fd1364f8463665ce26030d565924d07e4ceb69b6c2d64', 130, 1, 'FlipBookPassport', '[]', 0, '2020-12-01 13:21:33', '2020-12-01 13:21:33', '2021-12-01 06:21:33'),
('6fc588380aad2ed187d4a4e179826f94d794b864bd370479be5f9ac09f053d171eda8a49d615ce69', 130, 1, 'FlipBookPassport', '[]', 0, '2020-11-30 02:23:14', '2020-11-30 02:23:14', '2021-11-29 19:23:14'),
('6ff384c757dbe611d8b986f358f4ed82242a2b48f844ecb74d3f49d7257d1e66eb33c81ac2b08ce1', 130, 1, 'FlipBookPassport', '[]', 0, '2020-11-30 02:22:28', '2020-11-30 02:22:28', '2021-11-29 19:22:28'),
('7256dcc8bbae6ac27ba877a7f3c3a8c56c743e31391903b02032b5283408b32fd5213122788f5fc2', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-01 15:08:09', '2020-12-01 15:08:09', '2021-12-01 08:08:09'),
('72d3169182c963834425c7441d40f8dfc8771d42d76d9c0e6a93aa2831e4291324720dfd9a2d6ec0', 178, 1, 'FlipBookPassport', '[]', 0, '2020-12-01 14:22:00', '2020-12-01 14:22:00', '2021-12-01 07:22:00'),
('75b275eedb044c10afcb35ba8ea75a369445061ea241a538338b7b89e7ba6885737fec4974fd8251', 285, 1, 'FlipBookPassport', '[]', 0, '2020-12-15 19:38:21', '2020-12-15 19:38:21', '2021-12-15 12:38:21'),
('761f0618a7847b542f12088b01ecf25e483b9e305ba842e752b951ac4de070d7480f3220132ef229', 176, 1, 'FlipBookPassport', '[]', 0, '2020-12-14 13:05:01', '2020-12-14 13:05:01', '2021-12-14 06:05:01'),
('77a9c0af8281251bd6dc96dbcd5c4e856ff00d197d0afa32054034c2dcf19baef3e06a27b575f83e', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-03 09:47:17', '2020-12-03 09:47:17', '2021-12-03 02:47:17'),
('798f4d3e979dc2db7d0b78f1c1281c9530bd3a62964946b557abc1f020016e1dbca1fa54301504ff', 257, 1, 'FlipBookPassport', '[]', 0, '2020-11-29 02:52:58', '2020-11-29 02:52:58', '2021-11-28 19:52:58'),
('7c6b3764e9795f61fb9cf3ad9fad46b73858d3660da53a89c3427f801df154878a970e1ce40588ca', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-03 09:09:55', '2020-12-03 09:09:55', '2021-12-03 02:09:55'),
('7ca23c3d5f52ea84290fe19b01d3443fdd0b987cde2ef8a9e90a5f5ec9b0ae66de4816d6d178c13e', 257, 1, 'FlipBookPassport', '[]', 0, '2020-12-11 20:21:48', '2020-12-11 20:21:48', '2021-12-11 13:21:48'),
('7cd3fe4383c9a01239f7fbac5f8f9d12b49ad63198126517427a7986529aa4ccf776da77841ce783', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-01 13:14:47', '2020-12-01 13:14:47', '2021-12-01 06:14:47'),
('7d2035fa97be29c3c96db4367cb836f7bbc55339a6bf9cc8b9074ef1497cb2a985a91de8d3deae90', 130, 1, 'FlipBookPassport', '[]', 0, '2020-11-30 02:26:20', '2020-11-30 02:26:20', '2021-11-29 19:26:20'),
('7d37300b383f3ad3e64aaecf504eb4fd8ccbcb04ad972db56b0582cefb7ce715d70334314cddf54b', 285, 1, 'FlipBookPassport', '[]', 0, '2020-12-15 01:37:49', '2020-12-15 01:37:49', '2021-12-14 18:37:49'),
('7e328d023136ef5b7fd26f4ac5fed63fad6018b23b016249af6906ab3b50e633d493cdf1ffe19d46', 303, 1, 'FlipBookPassport', '[]', 0, '2020-12-17 18:37:16', '2020-12-17 18:37:16', '2021-12-17 11:37:16'),
('7e7d77485401db7fde9de9be16e93a5231558fe2b3fdb8413e5c23ee0beb71a34a90e44958f6a114', 130, 1, 'FlipBookPassport', '[]', 0, '2020-11-30 02:23:58', '2020-11-30 02:23:58', '2021-11-29 19:23:58'),
('7f828e4f38c775427459a321d22dbe105a6c4cfaeb9fca247096015dac01711298cc22cd4445db51', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-03 08:06:57', '2020-12-03 08:06:57', '2021-12-03 01:06:57'),
('7fad13d37bf395f616fa50aae361eee3991dcf05ce6b54e3cd0ad72f0a2b6a5fb351c3f881e024e6', 130, 1, 'FlipBookPassport', '[]', 0, '2020-12-01 04:43:58', '2020-12-01 04:43:58', '2021-11-30 21:43:58'),
('7ff533d933a02ccce1e089c6e70269fe5d8f1cde6a597289b6aaea34ce7780155f92d701486ca77d', 130, 1, 'FlipBookPassport', '[]', 0, '2020-12-01 08:16:13', '2020-12-01 08:16:13', '2021-12-01 01:16:13'),
('80d5366209f4564915147346c7ef764b63f733f59a0699cda06de6481beea3039bd30c8c7ee32625', 130, 1, 'FlipBookPassport', '[]', 0, '2020-11-30 02:34:20', '2020-11-30 02:34:20', '2021-11-29 19:34:20'),
('8227078cedfe72b09f4b4d3b2f07eb63639f290fbd690d1a005f311f621bd1bb06387630efda57e3', 283, 1, NULL, '[]', 0, '2020-12-11 00:47:57', '2020-12-11 00:47:57', '2021-12-10 17:47:57'),
('82caa9553a2bfd5873fdb874f3dbd9f1b27125cf9e49e0d5731a88ca1cc4a9aaef5c3a3004e64a57', 293, 1, 'FlipBookPassport', '[]', 0, '2020-12-06 03:01:52', '2020-12-06 03:01:52', '2021-12-05 20:01:52'),
('8333391c09322e471ca971775ad20e1dec6c029b1cd73376369e7fc11316031243729c006115d4df', 303, 1, 'FlipBookPassport', '[]', 0, '2020-12-17 22:56:30', '2020-12-17 22:56:30', '2021-12-17 15:56:30'),
('84a312076bbd3ff993dafbd4f4aca785e3623225164bbaf5ec36fd3383e725073f98df333946d97d', 285, 1, 'FlipBookPassport', '[]', 0, '2020-11-22 13:09:18', '2020-11-22 13:09:18', '2021-11-22 06:09:18'),
('855988f5621b1042efa7d0c08387683f00c002e14fd22654332a138704557d38f5f5239537b5f8be', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-03 08:19:43', '2020-12-03 08:19:43', '2021-12-03 01:19:43'),
('8867ad6c67679d35d4f41a7279fd804f620593966977a2fc644399ca6e04e7d01dcf3628527e546a', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-03 06:33:12', '2020-12-03 06:33:12', '2021-12-02 23:33:12'),
('88b04df7d0543f3c47c3b2f6b87839a71b77cb7d0fad214aa405428da8d65df87487cd0c12d6cc03', 2, 1, 'FlipBookPassport', '[]', 0, '2020-11-21 10:08:50', '2020-11-21 10:08:50', '2021-11-21 03:08:50'),
('890399e4df8b537eee1730dfd5a0ed0f542571aa1838fe574ebf012ef3db15e8216191bee80f7d9b', 2, 1, 'MyApp', '[]', 0, '2020-11-04 05:11:03', '2020-11-04 05:11:03', '2021-11-04 03:41:03'),
('89b3967aa2d6367a1e72737692ff80018f6fb9b3473af2ef190c4f6106986c86b0ee19b5600986ec', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-03 05:44:59', '2020-12-03 05:44:59', '2021-12-02 22:44:59'),
('89ea4b4279fff20d124327d98b886c5423efcd3da96f968ed6e92085e563dc2a143658b2f001a213', 178, 1, 'FlipBookPassport', '[]', 0, '2020-12-13 00:09:14', '2020-12-13 00:09:14', '2021-12-12 17:09:14'),
('8b7113c4fa775e017ed146aadd0b604346d321f2c8cb680d91a5c8e3c5fa8372808bb60229324dd0', 285, 1, 'FlipBookPassport', '[]', 0, '2020-12-15 18:08:17', '2020-12-15 18:08:17', '2021-12-15 11:08:17'),
('8cabbf3e976dc8397adab9354c2f4bf5146f8a189c41b822fac9b028881bb1c1e9878ac86ea2a236', 283, 1, NULL, '[]', 0, '2020-12-10 23:01:18', '2020-12-10 23:01:18', '2021-12-10 16:01:18'),
('8d0a14d9050977768b68d03f92c23d0c998d351a1f28f2f52ff8053bb259cd1dd17400bcd6b94797', 130, 1, NULL, '[]', 0, '2020-12-11 17:45:23', '2020-12-11 17:45:23', '2021-12-11 10:45:23'),
('8d50e1e6c570190c35d4e3aa0ad1d4b72caca2409d96b374f72a8d0c7948ecf4daa7a013495e72cc', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-03 05:41:59', '2020-12-03 05:41:59', '2021-12-02 22:41:59'),
('8dd125a79a51e18982c0733e613ae121cabe9182bcd4b8593ea629fa183131981369a84b9cfaf80c', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-03 06:27:24', '2020-12-03 06:27:24', '2021-12-02 23:27:24'),
('8f063be028b01ac03e76813d507493e023ea043524d57f20d310df41d87a447197fc8159366959f9', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-03 06:26:11', '2020-12-03 06:26:11', '2021-12-02 23:26:12'),
('8fd0518f5efc497f050415c8f9d66c4de813bc1c41724dbded1ef2505c3d78f3bf5081db1ab84487', 130, 1, 'FlipBookPassport', '[]', 0, '2020-12-01 11:37:55', '2020-12-01 11:37:55', '2021-12-01 04:37:55'),
('9016fd5674a701a02d23128be1522739bfd9245571c37084d2859fd3f12ec43fad76fef1e2223c88', 176, 1, 'FlipBookPassport', '[]', 0, '2020-11-22 12:53:50', '2020-11-22 12:53:50', '2021-11-22 05:53:50'),
('916e81f273d8be8487b672627f87dcbbe680b5853ad9ea64d245576d7b1af82cc6ddd1aa1c577690', 285, 1, 'FlipBookPassport', '[]', 0, '2020-12-17 06:05:22', '2020-12-17 06:05:22', '2021-12-16 23:05:22'),
('94dbc27c0d99e9e5e5df3f5446b71b59bf44c3112824a05999187c3c591e165025539ab90dc75cfb', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-22 20:16:23', '2020-12-22 20:16:23', '2021-12-22 13:16:23'),
('96cd5b03d6b295b1888d2a0fe3543e3605a8cc02d28afbeb93bbbc4a7a28d3621cdacb3e7d9f59c7', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-01 09:44:24', '2020-12-01 09:44:24', '2021-12-01 02:44:24'),
('988e6863807bd1e8e8d73c322be2b9c645e268a98889defc3d5658f872143314dc12af938dc99644', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-03 05:44:05', '2020-12-03 05:44:05', '2021-12-02 22:44:06'),
('99ea7b16b61755398e4e8a99219627265c872202880224e4d6d3d0cb2988be6afc15ee4d6180781c', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-03 09:32:03', '2020-12-03 09:32:03', '2021-12-03 02:32:03'),
('9c6debe414730c96426528dd3682d738b66d7e2ac2d8be48e8ff6cba3cb0e0a96e3259797bab4b3e', 178, 1, 'FlipBookPassport', '[]', 0, '2020-11-22 13:08:19', '2020-11-22 13:08:19', '2021-11-22 06:08:20'),
('9e5e25ed28e3804da58b89b9d8a1142247f9ea8c433dd029e4c590620b47019fd0629b9d4e3f86bd', 130, 1, 'FlipBookPassport', '[]', 0, '2020-12-01 10:09:21', '2020-12-01 10:09:21', '2021-12-01 03:09:21'),
('9f683504cc476ffb5a45c8bbff8f065a8315f1d19b416d92e5581fb4ca13fc91c763b3f7291d735c', 257, 1, 'FlipBookPassport', '[]', 1, '2020-11-21 21:11:54', '2020-11-21 21:11:54', '2021-11-21 14:11:54'),
('a03d86f8afa6855988f6523e8c64663b128213cfce0c66587f5392b286236ca2524b184620be71a1', 176, 1, 'FlipBookPassport', '[]', 0, '2020-12-03 10:58:15', '2020-12-03 10:58:15', '2021-12-03 03:58:15'),
('a21a1b59edc43506ad7ed531ef44e0b32e5fa15567c786216ea22c0f4a4b3aa07dd84a09dd7e2b0e', 130, 1, 'FlipBookPassport', '[]', 0, '2020-12-13 00:04:21', '2020-12-13 00:04:21', '2021-12-12 17:04:21'),
('a2f54855470f54272bb8576af5dc11fcdb5d6e5e1659c7b88a6e3ff793b397f2b58a33aac7af7216', 130, 1, 'FlipBookPassport', '[]', 0, '2020-11-30 02:10:44', '2020-11-30 02:10:44', '2021-11-29 19:10:44'),
('a49715193804d619979f4859c9f319e62d1b84ab4cdaf6d81134cd6188017b086b178ed35c3279cd', 285, 1, NULL, '[]', 0, '2020-12-11 00:41:03', '2020-12-11 00:41:03', '2021-12-10 17:41:03'),
('a9c90a8334873e18ef4391dfb2b0660b5c982f25967116af521c7cb35d16b015cf147e2f8380fea3', 176, 1, 'FlipBookPassport', '[]', 0, '2020-12-14 12:59:22', '2020-12-14 12:59:22', '2021-12-14 05:59:22'),
('a9d4e40c68037e34405feb6744b20adbaa374a0bea9271173cfee1e24efae9a5d70a4e69fa01a4c1', 130, 1, NULL, '[]', 0, '2020-12-10 03:36:57', '2020-12-10 03:36:57', '2021-12-09 20:36:57'),
('ab5bdd98a33cb84cb3a4aaa40b864873ef56ca3b21ee1f45b089a67af31415b1483b3d4fd40425e5', 257, 1, NULL, '[]', 0, '2020-12-11 19:49:58', '2020-12-11 19:49:58', '2021-12-11 12:49:58'),
('ab9ce49b85ef5f103f52d749661ba9d1c2476889c8dfface8f2a727e286f41d7dc402993f6c891eb', 130, 1, 'FlipBookPassport', '[]', 0, '2020-11-30 02:27:23', '2020-11-30 02:27:23', '2021-11-29 19:27:24'),
('ac8888506635ba7bd961e462154100e2edbd48727f7a8c756db42f48f7b69da3cd8a07c74667b6dd', 130, 1, 'FlipBookPassport', '[]', 0, '2020-12-11 20:22:41', '2020-12-11 20:22:41', '2021-12-11 13:22:41'),
('b4fdd23c29e5ef36edfc5382457f6e17a33f55572a498554bf797af88be39e36072433962b5d12cf', 2, 1, 'FlipBookPassport', '[]', 0, '2020-11-04 05:12:24', '2020-11-04 05:12:24', '2021-11-04 03:42:24'),
('b52913114d7047de2ed1e4e8498f86c069ff94ee6def42d120c672c7cb2d835843ef09218e6ff480', 130, 1, 'FlipBookPassport', '[]', 0, '2020-12-13 20:25:32', '2020-12-13 20:25:32', '2021-12-13 13:25:32'),
('b596255db43432e7e90199de1468a7a3fb74b7f9467612aaa54b5d50d059fc1b91f9658c2ee51819', 130, 1, NULL, '[]', 0, '2020-12-10 22:40:43', '2020-12-10 22:40:43', '2021-12-10 15:40:43'),
('b930f4a51557b00b7d37795b8a379b0b06b2c95d158b65ea6d6c73c9e0e89cdb7ac5b820e456cf1f', 130, 1, NULL, '[]', 0, '2020-12-08 14:18:20', '2020-12-08 14:18:20', '2021-12-08 07:18:20'),
('ba94b37575683a705685708195824897f4444fd8ab1b8cecafc72f2d5165f54bd4b080f6e09c0cbf', 130, 1, 'FlipBookPassport', '[]', 0, '2020-12-01 17:03:53', '2020-12-01 17:03:53', '2021-12-01 10:03:53'),
('bb480190590c0eb20865531d4bf52d38addb388baa4192b17070727d9cc7451c25671f4045f31e5a', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-03 10:57:40', '2020-12-03 10:57:40', '2021-12-03 03:57:40'),
('bc3d2a22c71315bf86c77bd2c32caa9737c3034fed0d1b69a6e85afc71f30e826bf3cc179417e523', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-03 07:59:57', '2020-12-03 07:59:57', '2021-12-03 00:59:57'),
('bebb127fe167278e3862931d070dc051fc7a98c2057b35f568f823d3ee8058bf03ce005d9aea7d6c', 285, 1, NULL, '[]', 0, '2020-12-10 23:53:35', '2020-12-10 23:53:35', '2021-12-10 16:53:35'),
('bedbb815d1bc26df91e725d9c9a1202c3bd3aec6721ae4b545616f1ece53cca2a5ec7a027cdf8961', 130, 1, 'FlipBookPassport', '[]', 0, '2020-12-01 09:44:58', '2020-12-01 09:44:58', '2021-12-01 02:44:58'),
('bfef7f409c31ba84bcd793e6097c4f95800c9cd3772c56df56f768092610abd578e4a5c87db4ac2e', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-01 08:26:45', '2020-12-01 08:26:45', '2021-12-01 01:26:45'),
('c019a4b19a6f6d506c82da765ed8cce8f880dfb43cc790d31363874e1d8070e4fa9c2e8e7e2cd90e', 130, 1, 'FlipBookPassport', '[]', 0, '2020-12-01 08:43:46', '2020-12-01 08:43:46', '2021-12-01 01:43:46'),
('c08862482d9e652dd95d222e686392c02981c5d1782045198204528e8bd8699edc9caab8bd6b5b56', 130, 1, 'FlipBookPassport', '[]', 0, '2020-12-01 09:16:55', '2020-12-01 09:16:55', '2021-12-01 02:16:55'),
('c1a288bca294223302e006ca50da18ff9879781cf97ae54a6685306632fd91f242844d5b92942323', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-03 09:10:20', '2020-12-03 09:10:20', '2021-12-03 02:10:20'),
('c3595b2dd8b33d15b037deaff414ec1c4adf02a33bf201a3702246bc9e2642379cd7c125f737bb5c', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-03 05:20:52', '2020-12-03 05:20:52', '2021-12-02 22:20:52'),
('c361ec121f69f287df109efc6fe0f457c42afb93d77653810bfbc66e963dc4f5483b17f6543188a1', 283, 1, NULL, '[]', 0, '2020-12-10 23:38:58', '2020-12-10 23:38:58', '2021-12-10 16:38:58'),
('c59e67e4dcc5087bc9b4c168d23e386d17a9f34fcc19e6e8e481eb67fa459bdc2c866d2d8a11ff4b', 130, 1, 'FlipBookPassport', '[]', 0, '2020-12-01 04:57:19', '2020-12-01 04:57:19', '2021-11-30 21:57:19'),
('c63693172796e64c88e21064dd1f968b1a5c7de49c123b5dcff25052636546c69f4841dee93b1ae2', 176, 1, 'FlipBookPassport', '[]', 0, '2020-12-14 13:03:11', '2020-12-14 13:03:11', '2021-12-14 06:03:11'),
('c68b7cd98051962218d411babb4a53c14e5d35cd3493a9eb9d7a062f2029b0637da1d218db411036', 130, 1, 'FlipBookPassport', '[]', 0, '2020-12-17 22:41:35', '2020-12-17 22:41:35', '2021-12-17 15:41:35'),
('c7bba6d52e392ceb4ce8f19b58c4788c710ab30bf2ee4758d8a604d933a2bab993541e5ef06a4b13', 285, 1, 'FlipBookPassport', '[]', 0, '2020-12-15 19:54:25', '2020-12-15 19:54:25', '2021-12-15 12:54:25'),
('c846844555fbf3b6c4262e35b2e386b854071f1805164c40f0d6e74e75097f6e2435fc9f744636e7', 130, 1, 'FlipBookPassport', '[]', 0, '2020-12-01 04:43:58', '2020-12-01 04:43:58', '2021-11-30 21:43:58'),
('c8c8167505395f6b6d8b6df952a45e5efd7011d6784dcd19a8acf44ffe9d564f2e168e78ff0a422f', 130, 1, 'FlipBookPassport', '[]', 0, '2020-11-22 12:52:45', '2020-11-22 12:52:45', '2021-11-22 05:52:45'),
('c8d7458e3b05811bbb6c414d57ed6df5e9c78f13e5cfb7bb309253df8682093448f2c632b35510a8', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-01 15:17:35', '2020-12-01 15:17:35', '2021-12-01 08:17:35'),
('ce53e3a154c26cd296ff1f23a3ca40a0e29819c1e22b88a3695dc4ebfea2892fd462c641ac2e6576', 130, 1, NULL, '[]', 0, '2020-12-10 22:24:55', '2020-12-10 22:24:55', '2021-12-10 15:24:55'),
('cf021bdd94e9fd562f5c4d6d46eae4e46d30a4a35808d951aff1e648f857368c0b1d5f28682471d6', 130, 1, 'FlipBookPassport', '[]', 0, '2020-12-01 08:11:03', '2020-12-01 08:11:03', '2021-12-01 01:11:03'),
('d17770eca75f11ef6f6bab4b05a276a797c9c13167997cd658ccbbfd085409b4b8ed74c8ed9bf287', 303, 1, 'FlipBookPassport', '[]', 0, '2020-12-17 16:57:13', '2020-12-17 16:57:13', '2021-12-17 09:57:13'),
('d4e66626ce1f849285f3adcf5134f57bfdbea37c320ac785bc60baf846fc0643f302d7df09649ec2', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-03 09:58:15', '2020-12-03 09:58:15', '2021-12-03 02:58:15'),
('d5dd1a477a07b55f792d582fdf13a647f716a9c3fedde758e468df4e7a88240f0a722fe6aed21735', 285, 1, 'FlipBookPassport', '[]', 0, '2020-12-17 17:50:21', '2020-12-17 17:50:21', '2021-12-17 10:50:21'),
('d7ad4f2bc4c1bd6c3c143c7158b74920fb946e41542ea7b49ebf527830f9e7b21e646e77e6613a42', 303, 1, 'FlipBookPassport', '[]', 0, '2020-12-17 19:29:20', '2020-12-17 19:29:20', '2021-12-17 12:29:20'),
('da8e2990663f05bbf7b72f21fbd4f78149ee0d4452008bbd9c1fda301294049fd4550c36debe20e6', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-03 10:14:49', '2020-12-03 10:14:49', '2021-12-03 03:14:49'),
('df0c8ac331fb73fd9b1ab3dc71095ddad285e0061cad24187f47819e5668d7e48bb4ca89546119b0', 130, 1, NULL, '[]', 0, '2020-12-10 03:41:15', '2020-12-10 03:41:15', '2021-12-09 20:41:15'),
('e0a59c826c04b5a3bb5d360f3c3d0898e2e9b4777ff70c2b380004fe043b2b0f30cc65f7d8205e81', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-03 10:15:24', '2020-12-03 10:15:24', '2021-12-03 03:15:24'),
('e1a685fc0a998e8069672b83885c41c31ae7e64327838c58149d5eaecbbc2dfb926516b2bdcda554', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-03 06:41:58', '2020-12-03 06:41:58', '2021-12-02 23:41:58'),
('e2cf633150dfa8ab58729f350974ee29a74894ad9c22f03bd76c2e01ff7e1fb6da921e7434948124', 130, 1, 'FlipBookPassport', '[]', 0, '2020-11-30 02:26:35', '2020-11-30 02:26:35', '2021-11-29 19:26:35'),
('e50d646b18f1ee2b00d821ea85dd5f0c935c992ce4f71443518326c51ca78dae3cdc663dacc09b3d', 283, 1, NULL, '[]', 0, '2020-12-11 00:53:40', '2020-12-11 00:53:40', '2021-12-10 17:53:40'),
('e5b5b2ad8fd6dcde487ab61514d968f594c8569c1b02ffb1da8a7c4c76e9c8e8f2887e7fed2e8704', 2, 1, 'FlipBookPassport', '[]', 0, '2020-11-21 09:26:15', '2020-11-21 09:26:15', '2021-11-21 02:26:16'),
('e7d080cb5ca1efc175258fa087e5fb726f82b99d78c0921390e759ffbcf2e93786b6b75f1c7a871b', 285, 1, NULL, '[]', 0, '2020-12-10 22:06:01', '2020-12-10 22:06:01', '2021-12-10 15:06:01'),
('e7eb0392357b5b19c7607c1018cdd0f975d6c9913bca14529d70937265a521c3d7f9e324e288abb4', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-03 05:33:15', '2020-12-03 05:33:15', '2021-12-02 22:33:15'),
('e8b7f567f2407df44a9de2a7fe45e9899ed0c4f4828ce7df462cfa57dd8d053e682efe2cc23cd223', 285, 1, NULL, '[]', 0, '2020-12-10 22:29:06', '2020-12-10 22:29:06', '2021-12-10 15:29:06'),
('e929a5776961e8701d444288f618f470ed1c3879464602379cc0d67d0206a4de08c0f10fb29c2cb7', 130, 1, 'FlipBookPassport', '[]', 0, '2020-11-22 12:53:17', '2020-11-22 12:53:17', '2021-11-22 05:53:17'),
('e97dd416863c5d8e9fb269a67e2df64055e1e63c4b1af96a7ed85a7c5b8d42ee6d6207a8048cf8e9', 130, 1, 'FlipBookPassport', '[]', 0, '2020-11-30 20:07:28', '2020-11-30 20:07:28', '2021-11-30 13:07:28'),
('eb58ff94ffc9a94055fd2d9a383006d43751230c7fc4a95be9d085980b155b10c58270677a2c9087', 176, 1, 'FlipBookPassport', '[]', 0, '2020-12-14 12:52:09', '2020-12-14 12:52:09', '2021-12-14 05:52:09'),
('ebc5fa185a3ba48ca61e8faba52d619d3f1ab925b2681ff15805df24e4dcdb7a9ea1c3165eaad774', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-14 12:35:06', '2020-12-14 12:35:06', '2021-12-14 05:35:06'),
('efbe0e039de2446ec43b1066b42fc8e48944b1fe26859bd659dbca647fe55ddf31ea4e5bad5687a7', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-03 10:27:31', '2020-12-03 10:27:31', '2021-12-03 03:27:31'),
('f0fa8c6e2ad43ccfe91bf302baf8585dbfaef73ea2cc7f7901571f81f0c0db7a9421de62c580d19f', 130, 1, 'FlipBookPassport', '[]', 0, '2020-11-30 02:25:23', '2020-11-30 02:25:23', '2021-11-29 19:25:23'),
('f10733338b19de18b5a485c3b3908d50a5fd6227a2a6e17494a0630cc6df41aeff25f7462fe9c4c4', 130, 1, 'FlipBookPassport', '[]', 0, '2020-12-01 04:44:38', '2020-12-01 04:44:38', '2021-11-30 21:44:38'),
('f12e5d93227a18e62d388e0ec5efa6f9929df787ee99daafb39a7826f86da3d814627c832e91c77a', 2, 1, 'FlipBookPassport', '[]', 0, '2020-11-21 11:01:21', '2020-11-21 11:01:21', '2021-11-21 04:01:21'),
('f3490b3f08208575ca655d967ca508fe61edd626c2e8c4dc349e85a3e6a392b87523e2e9ab729bde', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-03 10:08:50', '2020-12-03 10:08:50', '2021-12-03 03:08:50'),
('f5f6b3bc4016b2bd63c4f38e30124805af0d5202dd82e6f9756a2a8b296d06e58adca9eb707a557c', 130, 1, 'FlipBookPassport', '[]', 0, '2020-12-01 08:13:24', '2020-12-01 08:13:24', '2021-12-01 01:13:24'),
('f655f4cc8020acb9030a24fc16249a96546999bac1998e4c920d96f474118f61e9f4b241a5c20c9a', 130, 1, 'FlipBookPassport', '[]', 0, '2020-12-01 08:15:30', '2020-12-01 08:15:30', '2021-12-01 01:15:30'),
('f6fadaee7e9152dc29ecc72db4af157e1b2525f007f21a284d20979b4696e0c041928a0ef5b97cf8', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-03 11:23:21', '2020-12-03 11:23:21', '2021-12-03 04:23:21'),
('f7cc3448ea68cba8b23935464fd09f4a98556b0a68d83b78ce59300419af79de64a6c484c2b651e1', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-03 09:30:55', '2020-12-03 09:30:55', '2021-12-03 02:30:55'),
('f84dc901bbc6ee660efb60af12c6c2b94aa9f91f3ca5624c693ba16f22d310e4e6dc6c3a0bf08c11', 2, 1, 'FlipBookPassport', '[]', 0, '2020-11-21 14:02:31', '2020-11-21 14:02:31', '2021-11-21 07:02:31'),
('f95aa4dc4bc53853d303c4d7a20941db91ec29c0366a0bf9b4040d20ca5c12357889dffeb162df96', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-03 10:16:24', '2020-12-03 10:16:24', '2021-12-03 03:16:24'),
('f9656f609ccf6413c9f1034f61b6e85dfed356ff63400157682bbbcf05d756e4070e67e07c664451', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-03 08:10:06', '2020-12-03 08:10:06', '2021-12-03 01:10:07'),
('fce15dbf208ea0a1a88287ea05d060a048826020e6014acc97f9a8e75ba57ce38b223892fac866f9', 299, 1, NULL, '[]', 0, '2020-12-10 03:54:32', '2020-12-10 03:54:32', '2021-12-09 20:54:32'),
('fe17d4f5e856e7f0de03fd901e3ca6c6d520245a0aad6082a02bf3179d5a9c9e4977dfe0da76c5de', 285, 1, NULL, '[]', 0, '2020-12-10 21:59:40', '2020-12-10 21:59:40', '2021-12-10 14:59:40'),
('fe569191ff2a152befa7a67720377a493e5f68eb08ceefb1d44157323613ad5e57eb734a067e0885', 124, 1, 'FlipBookPassport', '[]', 0, '2020-12-13 00:05:30', '2020-12-13 00:05:30', '2021-12-12 17:05:30'),
('ff71bbbc3268649f9118eecc3b57411e3c330e96d7d4e099f7d742b7e8059584ef72355c92a9a0a7', 299, 1, 'FlipBookPassport', '[]', 0, '2020-12-03 09:32:52', '2020-12-03 09:32:52', '2021-12-03 02:32:52');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'riKoQfrNNNKPFuVkeHUcCCV4ovJ1IjNi5lEN8GvI', 'http://localhost', 1, 0, 0, '2020-11-04 04:58:12', '2020-11-04 04:58:12'),
(2, NULL, 'Laravel Password Grant Client', 'Y6DrmqoYYjNQ0Pn4tn2htfMFjAKUN0wdpMnABRnO', 'http://localhost', 0, 1, 0, '2020-11-04 04:58:12', '2020-11-04 04:58:12');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-11-04 04:58:12', '2020-11-04 04:58:12');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offline_users`
--

CREATE TABLE `offline_users` (
  `id` int(10) NOT NULL,
  `user_id` int(20) DEFAULT NULL,
  `plan_id` int(20) DEFAULT NULL,
  `user_updated_password` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offline_users`
--

INSERT INTO `offline_users` (`id`, `user_id`, `plan_id`, `user_updated_password`) VALUES
(1, 27, 1, '0'),
(2, 28, 1, '1'),
(3, 30, 2, '1'),
(4, 31, 2, '0'),
(5, 32, 1, '1'),
(6, 33, 2, '0'),
(7, 34, 2, '1'),
(8, 35, 1, '1'),
(9, 36, 1, '0'),
(10, 37, 1, '0'),
(11, 41, 2, '1'),
(12, 42, 2, '1'),
(13, 44, 2, '1'),
(14, 45, 2, '0'),
(15, 46, 2, '0'),
(16, 47, 2, '0'),
(17, 48, 2, '0'),
(18, 49, 2, '0'),
(19, 50, 2, '0'),
(20, 51, 2, '0'),
(21, 52, 2, '1'),
(22, 53, 2, '1'),
(23, 54, 2, '1'),
(24, 55, 2, '0'),
(25, 56, 2, '1'),
(26, 57, 2, '1'),
(27, 58, 2, '1'),
(28, 59, 2, '1'),
(29, 60, 2, '0'),
(30, 61, 2, '1'),
(31, 62, 2, '1'),
(32, 63, 2, '0'),
(33, 64, 2, '0'),
(34, 65, 2, '1'),
(35, 66, 2, '1'),
(36, 67, 2, '0'),
(37, 68, 2, '1'),
(38, 69, 2, '1'),
(39, 70, 2, '1'),
(40, 71, 2, '0'),
(41, 72, 2, '0'),
(42, 73, 2, '1'),
(43, 74, 2, '1'),
(44, 75, 2, '1'),
(45, 76, 2, '1'),
(46, 77, 2, '1'),
(47, 78, 2, '1'),
(48, 79, 2, '1'),
(49, 80, 2, '1'),
(50, 81, 2, '0'),
(51, 82, 2, '1'),
(52, 83, 2, '0'),
(53, 84, 2, '1'),
(54, 85, 2, '1'),
(55, 86, 2, '0'),
(56, 87, 2, '1'),
(57, 88, 2, '0'),
(58, 89, 2, '0'),
(59, 90, 2, '1'),
(60, 91, 2, '0'),
(61, 92, 2, '1'),
(62, 93, 2, '1'),
(63, 94, 2, '0'),
(64, 95, 2, '1'),
(65, 96, 2, '0'),
(66, 97, 2, '1'),
(67, 98, 2, '0'),
(68, 99, 2, '1'),
(69, 100, 2, '0'),
(70, 101, 2, '1'),
(71, 102, 2, '1'),
(72, 103, 2, '1'),
(73, 104, 2, '0'),
(74, 105, 2, '1'),
(75, 106, 2, '0'),
(76, 107, 2, '1'),
(77, 108, 2, '1'),
(78, 109, 2, '0'),
(79, 110, 2, '0'),
(80, 111, 2, '0'),
(81, 112, 2, '0'),
(82, 113, 2, '0'),
(83, 114, 2, '1'),
(84, 115, 2, '0'),
(85, 116, 2, '0'),
(86, 117, 2, '1'),
(87, 118, 2, '1'),
(88, 119, 2, '0'),
(89, 120, 2, '1'),
(90, 121, 2, '0'),
(91, 122, 2, '0'),
(92, 123, 2, '1'),
(93, 125, 2, '1'),
(94, 126, 2, '1'),
(95, 127, 2, '0'),
(96, 128, 1, '0'),
(97, 130, 1, '1'),
(98, 131, 1, '1'),
(99, 132, 1, '0'),
(100, 133, 1, '1'),
(101, 134, 1, '1'),
(102, 135, 1, '1'),
(103, 136, 1, '0'),
(104, 137, 1, '0'),
(105, 138, 2, '0'),
(106, 139, 2, '0'),
(107, 140, 2, '0'),
(108, 141, 2, '0'),
(109, 142, 2, '0'),
(110, 143, 2, '0'),
(111, 144, 1, '0'),
(112, 145, 2, '0'),
(113, 146, 1, '1'),
(114, 147, 1, '0'),
(115, 148, 2, '1'),
(116, 149, 2, '0'),
(117, 150, 1, '1'),
(118, 151, 2, '1'),
(119, 152, 1, '1'),
(120, 153, 2, '1'),
(121, 157, 1, '0'),
(122, 158, 1, '0'),
(123, 159, 1, '0'),
(124, 160, 1, '1'),
(125, 161, 1, '0'),
(126, 162, 1, '0'),
(127, 163, 1, '0'),
(128, 164, 1, '0'),
(129, 165, 1, '0'),
(130, 166, 1, '0'),
(131, 167, 1, '1'),
(132, 168, 1, '0'),
(133, 169, 1, '0'),
(134, 170, 1, '0'),
(135, 171, 1, '0'),
(136, 172, 2, '1'),
(137, 173, 1, '0'),
(138, 176, 1, '1'),
(139, 179, 1, '0'),
(140, 180, 1, '1'),
(141, 181, 1, '0'),
(142, 183, 1, '0'),
(143, 184, 1, '0'),
(144, 185, 1, '0'),
(145, 186, 1, '0'),
(146, 187, 1, '1'),
(147, 188, 1, '1'),
(148, 189, 1, '0'),
(149, 197, 1, '0'),
(150, 198, 1, '0'),
(151, 199, 1, '0'),
(152, 201, 1, '1'),
(153, 202, 1, '0'),
(154, 203, 1, '1'),
(155, 208, 1, '1'),
(156, 210, 1, '1'),
(157, 211, 1, '1'),
(158, 212, 1, '0'),
(159, 213, 1, '0'),
(160, 221, 2, '1'),
(161, 222, 1, '0'),
(162, 225, 1, '0'),
(163, 226, 1, '0'),
(164, 227, 1, '0'),
(165, 228, 1, '0'),
(166, 229, 1, '0'),
(167, 230, 1, '0'),
(168, 231, 1, '0'),
(169, 232, 1, '1'),
(170, 233, 1, '0'),
(171, 234, 1, '1'),
(172, 235, 1, '0'),
(173, 236, 1, '0'),
(174, 237, 1, '0'),
(175, 238, 2, '0'),
(176, 239, 2, '0'),
(177, 240, 2, '1'),
(178, 241, 1, '0'),
(179, 242, 1, '1'),
(180, 243, 1, '0'),
(181, 244, 2, '0'),
(182, 245, 2, '1'),
(183, 249, 1, '0'),
(184, 250, 1, '0'),
(185, 251, 1, '0'),
(186, 252, 1, '0'),
(187, 253, 1, '0'),
(188, 254, 1, '1'),
(189, 258, 1, '0'),
(190, 259, 1, '1'),
(191, 260, 1, '0'),
(192, 261, 1, '1'),
(193, 264, 2, '1'),
(194, 265, 1, '1'),
(195, 266, 1, '1'),
(196, 267, 2, '1'),
(197, 268, 2, '1'),
(198, 269, 1, '0'),
(199, 270, 1, '1'),
(200, 271, 1, '1'),
(201, 272, 1, '1'),
(202, 273, 1, '1'),
(203, 274, 1, '0'),
(204, 275, 1, '1'),
(205, 276, 2, '0'),
(206, 277, 1, '0'),
(207, 278, 1, '0'),
(208, 280, 1, '0'),
(209, 281, 1, '1'),
(210, 282, 1, '1'),
(211, 283, 1, '1'),
(212, 284, 1, '1'),
(213, 288, 1, '0'),
(214, 289, 2, '0'),
(215, 290, 1, '0'),
(216, 291, 1, '0'),
(217, 292, 2, '0'),
(218, 293, 1, '0'),
(219, 294, 2, '0'),
(220, 296, 2, '0'),
(221, 297, 2, '0'),
(222, 298, 2, '0');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(10) UNSIGNED NOT NULL,
  `user_id` bigint(10) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `txn_id` varchar(255) DEFAULT NULL,
  `txn_details` text,
  `sub_total` decimal(12,2) DEFAULT NULL,
  `dvy_charge` decimal(12,2) DEFAULT NULL,
  `coupon` varchar(50) DEFAULT NULL,
  `coupon_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `amount` decimal(12,2) DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `ship_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `firstname`, `email`, `phone`, `address`, `txn_id`, `txn_details`, `sub_total`, `dvy_charge`, `coupon`, `coupon_amount`, `amount`, `status`, `ship_status`, `created_at`, `updated_at`) VALUES
(1, 306, 'sica', 'sica@gmail.com', '9994090424', 'dsd', 'Txn26683271', '9084322278', 1400.00, 60.00, NULL, 0.00, 760.00, '1', 4, '2021-12-06 17:40:20', '2021-12-12 20:08:29');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) NOT NULL,
  `ord_id` bigint(20) NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `book_title` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sku` int(11) DEFAULT NULL,
  `qty` int(20) DEFAULT NULL,
  `price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `total_price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `attach` tinyint(4) DEFAULT NULL,
  `cart_attach` varchar(255) DEFAULT NULL,
  `cart_attach_text` varchar(80) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `ord_id`, `book_id`, `book_title`, `category_id`, `sku`, `qty`, `price`, `total_price`, `attach`, `cart_attach`, `cart_attach_text`, `created_at`, `updated_at`) VALUES
(1, 1, 46, 'Stainless Steel Blue Coated 600 ML', 3, 47, 1, 700.00, 700.00, 2, '', 'Tre', '2021-12-06 17:40:20', '2021-12-06 17:40:20'),
(2, 1, 46, 'Stainless Steel Blue Coated 600 ML', 3, 47, 1, 700.00, 700.00, 2, '', 'Jaishu', '2021-12-06 17:40:20', '2021-12-06 17:40:20');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('haseenataj73@gmail.com', '$2y$10$mYB5I4yA1OOHavTBGz8QiODYtLDkYEbjL6rSyl/JA9IWj5QszkzyG', '2020-11-19 11:20:26'),
('priti2014@gmail.com', '$2y$10$fUDM3Aw6zmmOA5K29FDfA.1HvTvdJ8tc23NnHbzEkIBEqsKw25Vja', '2020-11-19 14:00:52'),
('Venkat.j.raghavan@gmail.com', '$2y$10$GTnLSkat.tbqRCpwkIn9ouq6ptDweFozTd.ujCzR9ENt.gqzQEMoq', '2020-11-19 14:24:22'),
('rashmiprasanna859@gmail.com', '$2y$10$uo5GEUy1lK/EnhDK99J5IOeuOp80KspAbrBb9BqjKL0cr.K1OWipW', '2020-11-20 15:49:54'),
('vinothtest@test.com', '$2y$10$xDIU/xl4sIQI19P.sKwHOuXQTiGQMyQG/1kMr2hgt2o5QrldJLaHG', '2020-11-29 06:02:33'),
('slinggroups@gmail.com', '$2y$10$dQyrpa0.aDJM4bCZ7b.zkeW5f5.ECP542PPnwxW6NrTMRUsTvIZn6', '2020-12-10 23:25:45'),
('littleprodigybooks@gmail.com', '$2y$10$I0TPboi0vlQaTH0KjNcrnePegRhlx7l6auEvq87u4PvROSwCDANVW', '2020-12-12 16:44:08'),
('sripraveen2424@gmail.com', '$2y$10$HIJ68kRpxsyHa0M.xcbXcezc0tlntDpknbzXYvSJnpJet4b9bpcz2', '2021-04-28 22:06:33'),
('ligori007@gmail.com', '$2y$10$mWVJNQnNtVG.Lr2ySKldnutG7eeFaeNQ7vdWJa/vNzMag2gCFeyfq', '2021-05-01 10:26:53'),
('sivikrish@gmail.com', '$2y$10$MjBRHbj7jiTuYDi3/kSRjOWtZw.DpuBxrgh4nOkM5EvJuLrkX2Zem', '2021-06-21 16:13:59');

-- --------------------------------------------------------

--
-- Table structure for table `photoframes`
--

CREATE TABLE `photoframes` (
  `id` int(3) NOT NULL,
  `book_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_details` longtext COLLATE utf8mb4_unicode_ci,
  `actual_price` int(11) DEFAULT NULL,
  `offer_price` int(11) DEFAULT NULL,
  `sale` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `in_stock` text COLLATE utf8mb4_unicode_ci,
  `sku` int(11) DEFAULT NULL,
  `categories` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isbn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `additional_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories_id` int(11) DEFAULT NULL,
  `review` longtext COLLATE utf8mb4_unicode_ci,
  `product_attach` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1-Image, 2-Text, 3-No Attach',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photoframes`
--

INSERT INTO `photoframes` (`id`, `book_title`, `book_path`, `thumb_img`, `product_img`, `product_details`, `actual_price`, `offer_price`, `sale`, `in_stock`, `sku`, `categories`, `tags`, `isbn`, `description`, `additional_info`, `categories_id`, `review`, `product_attach`, `created_at`, `updated_at`) VALUES
(230, 'Clasic Rock', 'Clasic-Rock--230.png', 'Clasic-Rock--230.png', NULL, 'Clasic Rock  Made from fine quality wood. Memories warm you up from the inside. Keep your memories right in front of your eyes with this real classy photo frame. This frame would make as a perfect gift for your loved ones on festivals & occasions like birthdays anniversaries or farewells.', 1200, 840, 'No', 'Yes', 231, 'Rock Photo Print', 'Rock Photo Print', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-16 07:10:06'),
(231, 'Arch Rock Photo Print (8X8)', 'Arch-Rock-231.png', 'Arch-Rock-231.png', NULL, 'Arch Rock Made from fine quality wood. Memories warm you up from the inside. Keep your memories right in front of your eyes with this real classy photo frame. This frame would make as a perfect gift for your loved ones on festivals & occasions like birthdays anniversaries or farewells.', 1200, 840, 'No', 'Yes', 232, 'Rock Photo Print', 'Rock Photo Print', NULL, NULL, 'Width: 8 cm, Height: 8 cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-15 06:21:47'),
(232, 'Arch Rock', 'Arch-Rock-232.png', 'Arch-Rock-232.png', NULL, '', 1800, 1260, '', 'Yes', 233, 'Rock Photo Print', 'Rock Photo Print', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 'Square Stone', 'Square-Stone-233.png', 'Square-Stone-233.png', NULL, 'Square Stone Made from fine quality wood. Memories warm you up from the inside. Keep your memories right in front of your eyes with this real classy photo frame. This frame would make as a perfect gift for your loved ones on festivals & occasions like birthdays anniversaries or farewells.', 900, 630, 'No', 'Yes', 234, 'Rock Photo Print', 'Rock Photo Print', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-16 07:11:06'),
(234, 'Square Stone', 'Square-Stone-234.png', 'Square-Stone-234.png', NULL, 'Square Stone Made from fine quality wood. Memories warm you up from the inside. Keep your memories right in front of your eyes with this real classy photo frame. This frame would make as a perfect gift for your loved ones on festivals & occasions like birthdays anniversaries or farewells.', 1200, 840, 'No', 'Yes', 235, 'Rock Photo Print', 'Rock Photo Print', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-16 07:11:43'),
(235, 'Square Stone', 'Square-Stone-235.png', 'Square-Stone-235.png', NULL, 'Square Stone Made from fine quality wood. Memories warm you up from the inside. Keep your memories right in front of your eyes with this real classy photo frame. This frame would make as a perfect gift for your loved ones on festivals & occasions like birthdays anniversaries or farewells.', 1800, 1260, 'No', 'Yes', 236, 'Rock Photo Print', 'Rock Photo Print', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-16 07:12:37'),
(236, '6X8  in Stone', '6X8--in-Stone-236.png', '6X8--in-Stone-236.png', NULL, '6X8  in Stone Made from fine quality wood. Memories warm you up from the inside. Keep your memories right in front of your eyes with this real classy photo frame. This frame would make as a perfect gift for your loved ones on festivals & occasions like birthdays anniversaries or farewells.', 999, 699, 'No', 'Yes', 237, 'Rock Photo Print', 'Rock Photo Print', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-16 07:23:26'),
(237, 'Rectangle Stone', 'Rectangle-Stone-237.png', 'Rectangle-Stone-237.png', NULL, 'Rectangle Stone Made from fine quality wood. Memories warm you up from the inside. Keep your memories right in front of your eyes with this real classy photo frame. This frame would make as a perfect gift for your loved ones on festivals & occasions like birthdays anniversaries or farewells.', 1100, 770, 'No', 'Yes', 238, 'Rock Photo Print', 'Rock Photo Print', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-16 07:25:27'),
(238, 'Rectangle Stone', 'Rectangle-Stone-238.png', 'Rectangle-Stone-238.png', NULL, 'Rectangle Stone Made from fine quality wood. Memories warm you up from the inside. Keep your memories right in front of your eyes with this real classy photo frame. This frame would make as a perfect gift for your loved ones on festivals & occasions like birthdays anniversaries or farewells.', 1600, 1120, 'No', 'Yes', 239, 'Rock Photo Print', 'Rock Photo Print', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-16 07:26:05'),
(239, 'Heart Stone', 'Heart-Stone-239.png', 'Heart-Stone-239.png', NULL, '', 1200, 840, '', 'Yes', 240, 'Rock Photo Print', 'Rock Photo Print', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 'Round Stone ', 'Round-Stone--240.png', 'Round-Stone--240.png', NULL, '', 1200, 840, '', 'Yes', 241, 'Rock Photo Print', 'Rock Photo Print', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 'Oval Stone ', 'Oval-Stone--241.png', 'Oval-Stone--241.png', NULL, '', 1200, 840, '', 'Yes', 242, 'Rock Photo Print', 'Rock Photo Print', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, 'Big Oval Rock', 'Big-Oval-Rock-242.png', 'Big-Oval-Rock-242.png', NULL, '', 2100, 1470, '', 'Yes', 243, 'Rock Photo Print', 'Rock Photo Print', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, 'Stone on Woods', 'Stone-on-Woods-243.png', 'Stone-on-Woods-243.png', NULL, '', 1200, 840, '', 'Yes', 244, 'Rock Photo Print', 'Rock Photo Print', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, '12X8 in Stone', '12X8-in-Stone-244.png', '12X8-in-Stone-244.png', NULL, '', 1600, 1120, '', 'Yes', 245, 'Rock Photo Print', 'Rock Photo Print', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(245, 'Wood  Frame', 'Wood--Frame-245.png', 'Wood--Frame-245.png', NULL, '', 1999, 1399, '', 'Yes', 246, 'Rock Photo Print', 'Rock Photo Print', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, 'Wood  Frame', 'Wood--Frame-246.png', 'Wood--Frame-246.png', NULL, '', 2500, 1750, '', 'Yes', 247, 'Rock Photo Print', 'Rock Photo Print', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(254, 'Round Cut', 'Round-Cut-254.png', 'Round-Cut-254.png', NULL, '', 999, 699, '', 'Yes', 255, 'Crystal frames', 'Crystal frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(255, 'Diamond cut', 'Diamond-cut-255.png', 'Diamond-cut-255.png', NULL, '', 999, 699, '', 'Yes', 256, 'Crystal frames', 'Crystal frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(256, 'Glass photot Print', 'Glass-photot-Print-256.png', 'Glass-photot-Print-256.png', NULL, '', 600, 420, '', 'Yes', 257, 'Crystal frames', 'Crystal frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(257, 'Round Cut', 'Round-Cut-257.png', 'Round-Cut-257.png', NULL, '', 1400, 980, '', 'Yes', 258, 'Crystal frames', 'Crystal frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(258, 'Diamond Cut', 'Diamond-Cut-258.png', 'Diamond-Cut-258.png', NULL, '', 1400, 980, '', 'Yes', 259, 'Crystal frames', 'Crystal frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(259, 'Round Clock Glass Photot Frame', 'Round-Clock-Glass-Photot-Frame-259.png', 'Round-Clock-Glass-Photot-Frame-259.png', NULL, '', 800, 560, '', 'Yes', 260, 'Crystal frames', 'Crystal frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(260, 'Glass photot Print-31', 'Glass-photot-Print-31-260.png', 'Glass-photot-Print-31-260.png', NULL, '', 600, 420, '', 'Yes', 261, 'Crystal frames', 'Crystal frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(261, 'Matt Finished Glass Photot Print-16', 'Matt-Finished-Glass-Photot-Print-16-261.png', 'Matt-Finished-Glass-Photot-Print-16-261.png', NULL, '', 600, 420, '', 'Yes', 262, 'Crystal frames', 'Crystal frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(262, 'Glass Photot frameh With Clock -28', 'Glass-Photot-frameh-With-Clock--28-262.png', 'Glass-Photot-frameh-With-Clock--28-262.png', NULL, '', 1200, 840, '', 'Yes', 263, 'Crystal frames', 'Crystal frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(263, 'Glass Photo Frame-29 Frame', 'Glass-Photo-Frame-29-Frame-263.png', 'Glass-Photo-Frame-29-Frame-263.png', NULL, '', 999, 699, '', 'Yes', 264, 'Crystal frames', 'Crystal frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(264, 'BCR-23', 'BCR-23-.png', 'BCR-23-.png', NULL, '', 1800, 1260, '', 'Yes', 265, 'Big Colour Crystal', 'Big Colour Crystal', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(265, 'BCR-26', 'BCR-26-.png', 'BCR-26-.png', NULL, '', 2200, 1540, '', 'Yes', 266, 'Big Colour Crystal', 'Big Colour Crystal', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(266, 'BCR-18', 'BCR-18-.png', 'BCR-18-.png', NULL, '', 2200, 1540, '', 'Yes', 267, 'Big Colour Crystal', 'Big Colour Crystal', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(267, 'BCR-30', 'BCR-30-.png', 'BCR-30-.png', NULL, '', 2200, 1540, '', 'Yes', 268, 'Big Colour Crystal', 'Big Colour Crystal', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(268, 'BCR-16', 'BCR-16-.png', 'BCR-16-.png', NULL, '', 2200, 1540, '', 'Yes', 269, 'Big Colour Crystal', 'Big Colour Crystal', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(269, 'BCR-22', 'BCR-22-.png', 'BCR-22-.png', NULL, '', 2200, 1540, '', 'Yes', 270, 'Big Colour Crystal', 'Big Colour Crystal', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(270, 'BCR-13', 'BCR-13-.png', 'BCR-13-.png', NULL, '', 1900, 1330, '', 'Yes', 271, 'Big Colour Crystal', 'Big Colour Crystal', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(271, 'BCR-27', 'BCR-27-.png', 'BCR-27-.png', NULL, '', 2200, 1540, '', 'Yes', 272, 'Big Colour Crystal', 'Big Colour Crystal', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(272, 'Heart Colour Crystal', 'Heart-Colour-Crystal-.png', 'Heart-Colour-Crystal-.png', NULL, '', 1800, 1260, '', 'Yes', 273, 'Clorour Crystal', 'Clorour Crystal', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(273, 'Rectangle corner Cut Colour Crystal', 'Rectangle-corner-Cut-Colour-Crystal-.png', 'Rectangle-corner-Cut-Colour-Crystal-.png', NULL, '', 800, 560, '', 'Yes', 274, 'Clorour Crystal', 'Clorour Crystal', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(274, 'Rectagle colour Crystal', 'Rectagle-colour-Crystal-.png', 'Rectagle-colour-Crystal-.png', NULL, '', 800, 560, '', 'Yes', 275, 'Clorour Crystal', 'Clorour Crystal', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(275, 'Rectagle colour Crystal', 'Rectagle-colour-Crystal-.png', 'Rectagle-colour-Crystal-.png', NULL, '', 1800, 1260, '', 'Yes', 276, 'Clorour Crystal', 'Clorour Crystal', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(276, 'Round Colour Crystal', 'Round-Colour-Crystal-.png', 'Round-Colour-Crystal-.png', NULL, '', 1300, 910, '', 'Yes', 277, 'Clorour Crystal', 'Clorour Crystal', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(277, 'Round Colour Crystal', 'Round-Colour-Crystal-.png', 'Round-Colour-Crystal-.png', NULL, '', 1400, 980, '', 'Yes', 278, 'Clorour Crystal', 'Clorour Crystal', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(278, 'Round Colour Crystal', 'Round-Colour-Crystal-.png', 'Round-Colour-Crystal-.png', NULL, '', 1999, 1399, '', 'Yes', 279, 'Clorour Crystal', 'Clorour Crystal', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(279, 'Big Horizantel colour Crystal with base', 'Big-Horizantel-colour-Crystal-with-base-.png', 'Big-Horizantel-colour-Crystal-with-base-.png', NULL, '', 2200, 1540, '', 'Yes', 280, 'Clorour Crystal', 'Clorour Crystal', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(280, 'Big Verticle colour Crystal with base', 'Big-Verticle-colour-Crystal-with-base-.png', 'Big-Verticle-colour-Crystal-with-base-.png', NULL, '', 2200, 1540, '', 'Yes', 281, 'Clorour Crystal', 'Clorour Crystal', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(368, 'Liquid Photo frame heart Shape', 'Liquid-Photo-frame-heart-Shape-.png', 'Liquid-Photo-frame-heart-Shape-.png', NULL, '', 500, 350, '', 'Yes', 369, 'Famous Products', 'Famous Products', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(369, 'Liquid Photo frame Ball Shape', 'Liquid-Photo-frame-Ball-Shape-.png', 'Liquid-Photo-frame-Ball-Shape-.png', NULL, '', 500, 350, '', 'Yes', 370, 'Famous Products', 'Famous Products', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(370, 'Liquid Photo frame Apple Shape', 'Liquid-Photo-frame-Apple-Shape-.png', 'Liquid-Photo-frame-Apple-Shape-.png', NULL, '', 500, 350, '', 'Yes', 371, 'Famous Products', 'Famous Products', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(371, 'Liquid Photo frame Circle Shape', 'Liquid-Photo-frame-Circle-Shape-.png', 'Liquid-Photo-frame-Circle-Shape-.png', NULL, '', 500, 350, '', 'Yes', 372, 'Famous Products', 'Famous Products', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(372, 'Liquid Photo frame Small Rectangle or Verticle  Shape', 'Liquid-Photo-frame-Small-Rectangle-or-Verticle--Shape-.png', 'Liquid-Photo-frame-Small-Rectangle-or-Verticle--Shape-.png', NULL, '', 500, 350, '', 'Yes', 373, 'Famous Products', 'Famous Products', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(373, 'Liquid Photo frame Flower Shape', 'Liquid-Photo-frame-Flower-Shape-.png', 'Liquid-Photo-frame-Flower-Shape-.png', NULL, '', 500, 350, '', 'Yes', 374, 'Famous Products', 'Famous Products', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(374, 'Liquid Photo frame Butterfly Shape', 'Liquid-Photo-frame-Butterfly-Shape-.png', 'Liquid-Photo-frame-Butterfly-Shape-.png', NULL, '', 500, 350, '', 'Yes', 375, 'Famous Products', 'Famous Products', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(375, 'Liquid Photo frame Cuple Heart  Shape', 'Liquid-Photo-frame-Cuple-Heart--Shape-.png', 'Liquid-Photo-frame-Cuple-Heart--Shape-.png', NULL, '', 600, 420, '', 'Yes', 376, 'Famous Products', 'Famous Products', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(376, 'Liquid Photo frame Big Recta ngle or Verticle  Shape', 'Liquid-Photo-frame-Big-Recta-ngle-or-Verticle--Shape-.png', 'Liquid-Photo-frame-Big-Recta-ngle-or-Verticle--Shape-.png', NULL, '', 700, 490, '', 'Yes', 377, 'Famous Products', 'Famous Products', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(377, 'Magnetic Magic Cube No Battery 6 Images', 'Magnetic-Magic-Cube-No-Battery-6-Images-.png', 'Magnetic-Magic-Cube-No-Battery-6-Images-.png', NULL, '', 800, 560, '', 'Yes', 378, 'Famous Products', 'Famous Products', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(378, 'Rotating Battery With Battery', 'Rotating-Battery-With-Battery-.png', 'Rotating-Battery-With-Battery-.png', NULL, '', 999, 699, '', 'Yes', 379, 'Famous Products', 'Famous Products', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(379, 'Rotating Cube -6 Images With battery', 'Rotating-Cube--6-Images-With-battery-.png', 'Rotating-Cube--6-Images-With-battery-.png', NULL, '', 999, 699, '', 'Yes', 380, 'Famous Products', 'Famous Products', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(380, 'First  Year Birthday Frame', 'First--Year-Birthday-Frame-.png', 'First--Year-Birthday-Frame-.png', NULL, '', 900, 630, '', 'Yes', 381, 'Famous Products', 'Famous Products', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(381, 'Rubiks Cube', 'Rubiks-Cube-.png', 'Rubiks-Cube-.png', NULL, '', 700, 490, '', 'Yes', 382, 'Famous Products', 'Famous Products', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(382, 'Moon Lamp Engraving', 'Moon-Lamp-Engraving-.png', 'Moon-Lamp-Engraving-.png', NULL, '', 1600, 1120, '', 'Yes', 383, 'Famous Products', 'Famous Products', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(383, 'Digital Cube Clock with 4 Side Print', 'Digital-Cube-Clock-with-4-Side-Print-.png', 'Digital-Cube-Clock-with-4-Side-Print-.png', NULL, '', 900, 630, '', 'Yes', 384, 'Famous Products', 'Famous Products', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(384, 'Phone Popup Holder', 'Phone-Popup-Holder-.png', 'Phone-Popup-Holder-.png', NULL, '', 160, 112, '', 'Yes', 385, 'Famous Products', 'Famous Products', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(385, 'Photo Locket-Megentha', 'Photo-Locket-Megentha-.png', 'Photo-Locket-Megentha-.png', NULL, '', 400, 280, '', 'Yes', 386, 'Famous Products', 'Famous Products', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(386, 'Photo Locket-Blue', 'Photo-Locket-Blue-.png', 'Photo-Locket-Blue-.png', NULL, '', 400, 280, '', 'Yes', 387, 'Famous Products', 'Famous Products', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(387, 'Puzzle heart', 'Puzzle-heart-.png', 'Puzzle-heart-.png', NULL, '', 400, 280, '', 'Yes', 388, 'Mixed Products', 'Mixed Products', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(388, 'Puzzle Rectangle', 'Puzzle-Rectangle-.png', 'Puzzle-Rectangle-.png', NULL, '', 400, 280, '', 'Yes', 389, 'Mixed Products', 'Mixed Products', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(389, 'School Bag', 'School-Bag-.png', 'School-Bag-.png', NULL, '', 1400, 980, '', 'Yes', 390, 'Mixed Products', 'Mixed Products', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(390, 'White Cap', 'White-Cap-.png', 'White-Cap-.png', NULL, '', 300, 210, '', 'Yes', 391, 'Mixed Products', 'Mixed Products', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(391, 'Red Cap', 'Red-Cap-.png', 'Red-Cap-.png', NULL, '', 300, 210, '', 'Yes', 392, 'Mixed Products', 'Mixed Products', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(392, 'Mouse Pad', 'Mouse-Pad-.png', 'Mouse-Pad-.png', NULL, '', 300, 210, '', 'Yes', 393, 'Mixed Products', 'Mixed Products', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(393, 'Back Light Bed Lamp Horizontal', 'Back-Light-Bed-Lamp-Horizontal-.png', 'Back-Light-Bed-Lamp-Horizontal-.png', NULL, '', 400, 280, '', 'Yes', 394, 'Mixed Products', 'Mixed Products', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(394, 'Back Light Bed Lamp Vertical', 'Back-Light-Bed-Lamp-Vertical-.png', 'Back-Light-Bed-Lamp-Vertical-.png', NULL, '', 400, 280, '', 'Yes', 395, 'Mixed Products', 'Mixed Products', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(395, 'Car Photo Stand', 'Car-Photo-Stand-.png', 'Car-Photo-Stand-.png', NULL, '', 200, 140, '', 'Yes', 396, 'Mixed Products', 'Mixed Products', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(396, 'Car LED Photo Stand Vertical', 'Car-LED-Photo-Stand-Vertical-.png', 'Car-LED-Photo-Stand-Vertical-.png', NULL, '', 1600, 1120, '', 'Yes', 397, 'Mixed Products', 'Mixed Products', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(397, 'Car LED Photo Stand Horizantal', 'Car-LED-Photo-Stand-Horizantal-.png', 'Car-LED-Photo-Stand-Horizantal-.png', NULL, '', 1600, 1120, '', 'Yes', 398, 'Mixed Products', 'Mixed Products', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(398, 'Car Photo Stand', 'Car-Photo-Stand-.png', 'Car-Photo-Stand-.png', NULL, '', 300, 210, '', 'Yes', 399, 'Mixed Products', 'Mixed Products', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(406, 'Heart Crystal', 'Heart-Crystal-.png', 'Heart-Crystal-.png', NULL, '', 2800, 1960, '', 'Yes', 407, '3D Crystal Cubs', '3D Crystal Cubs', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(407, 'Full Slant 3D Heart Crystal', 'Full-Slant-3D-Heart-Crystal-.png', 'Full-Slant-3D-Heart-Crystal-.png', NULL, '', 3000, 2100, '', 'Yes', 408, '3D Crystal Cubs', '3D Crystal Cubs', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(408, 'Semi Slant 3D  Heart Crystal', 'Semi-Slant-3D--Heart-Crystal-.png', 'Semi-Slant-3D--Heart-Crystal-.png', NULL, '', 3200, 2240, '', 'Yes', 409, '3D Crystal Cubs', '3D Crystal Cubs', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(409, '4X4X6 Single', '4X4X6-Single-.png', '4X4X6-Single-.png', NULL, '', 800, 560, '', 'Yes', 410, '3D Crystal Cubs', '3D Crystal Cubs', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(410, '4X4X6 Double Head', '4X4X6-Double-Head-.png', '4X4X6-Double-Head-.png', NULL, '', 900, 630, '', 'Yes', 411, '3D Crystal Cubs', '3D Crystal Cubs', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(411, '5X5X8 Single', '5X5X8-Single-.png', '5X5X8-Single-.png', NULL, '', 999, 699, '', 'Yes', 412, '3D Crystal Cubs', '3D Crystal Cubs', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(412, '5X5X8 Double Head ', '5X5X8-Double-Head--.png', '5X5X8-Double-Head--.png', NULL, '', 1100, 770, '', 'Yes', 413, '3D Crystal Cubs', '3D Crystal Cubs', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(413, '6X6X10 Single', '6X6X10-Single-.png', '6X6X10-Single-.png', NULL, '', 1600, 1120, '', 'Yes', 414, '3D Crystal Cubs', '3D Crystal Cubs', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(414, '6X6X10 Double Head', '6X6X10-Double-Head-.png', '6X6X10-Double-Head-.png', NULL, '', 1800, 1260, '', 'Yes', 415, '3D Crystal Cubs', '3D Crystal Cubs', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(415, '5X5X5 ', '5X5X5--.png', '5X5X5--.png', NULL, '', 900, 630, '', 'Yes', 416, '3D Crystal Cubs', '3D Crystal Cubs', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(416, 'Fixed Light Base with USB Power Cable', 'Fixed-Light-Base-with-USB-Power-Cable-.png', 'Fixed-Light-Base-with-USB-Power-Cable-.png', NULL, '', 400, 280, '', 'Yes', 417, '3D Crystal Cubs', '3D Crystal Cubs', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(417, '12X8X6 Single', '12X8X6-Single-.png', '12X8X6-Single-.png', NULL, '', 3000, 2100, '', 'Yes', 418, '3D Crystal Cubs', '3D Crystal Cubs', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(418, '12X8X5 Double Head', '12X8X5-Double-Head-.png', '12X8X5-Double-Head-.png', NULL, '', 3200, 2240, '', 'Yes', 419, '3D Crystal Cubs', '3D Crystal Cubs', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(419, 'Rotating Light Base-Big', 'Rotating-Light-Base-Big-.png', 'Rotating-Light-Base-Big-.png', NULL, '', 900, 630, '', 'Yes', 420, '3D Crystal Cubs', '3D Crystal Cubs', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(420, '3D Apple Big', '3D-Apple-Big-.png', '3D-Apple-Big-.png', NULL, '', 3200, 2240, '', 'Yes', 421, '3D Crystal', '3D Crystal', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(421, '3 D Big Apple', '3-D-Big-Apple-.png', '3-D-Big-Apple-.png', NULL, '', 2800, 1960, '', 'Yes', 422, '3D Crystal', '3D Crystal', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(422, '3D Apple Medium', '3D-Apple-Medium-.png', '3D-Apple-Medium-.png', NULL, '', 1600, 1120, '', 'Yes', 423, '3D Crystal', '3D Crystal', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(423, '3D Round ', '3D-Round--.png', '3D-Round--.png', NULL, '', 2800, 1960, '', 'Yes', 424, '3D Crystal', '3D Crystal', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(424, '2D Heart Crystal', '2D-Heart-Crystal-.png', '2D-Heart-Crystal-.png', NULL, '', 2200, 1540, '', 'Yes', 425, '3D Crystal', '3D Crystal', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(425, '2D Round Cut Crystal', '2D-Round-Cut-Crystal-.png', '2D-Round-Cut-Crystal-.png', NULL, '', 1800, 1260, '', 'Yes', 426, '3D Crystal', '3D Crystal', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(426, '3D Love Heart Big', '3D-Love-Heart-Big-.png', '3D-Love-Heart-Big-.png', NULL, '', 3600, 2520, '', 'Yes', 427, '3D Crystal', '3D Crystal', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(427, '3D Love Heart ', '3D-Love-Heart--.png', '3D-Love-Heart--.png', NULL, '', 2600, 1820, '', 'Yes', 428, '3D Crystal', '3D Crystal', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(428, '2D Rectangle Crystal', '2D-Rectangle-Crystal-.png', '2D-Rectangle-Crystal-.png', NULL, '', 600, 420, '', 'Yes', 429, '3D Crystal', '3D Crystal', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(429, '2D Oval Shape Crystal', '2D-Oval-Shape-Crystal-.png', '2D-Oval-Shape-Crystal-.png', NULL, '', 600, 420, '', 'Yes', 430, '3D Crystal', '3D Crystal', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(430, 'Golden Leaf Ice Berg Apple ', 'Golden-Leaf-Ice-Berg-Apple--.png', 'Golden-Leaf-Ice-Berg-Apple--.png', NULL, '', 3000, 2100, '', 'Yes', 431, '3D Crystal', '3D Crystal', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(431, '3D Crystal Frame Big ', '3D-Crystal-Frame-Big--.png', '3D-Crystal-Frame-Big--.png', NULL, '', 2999, 2099, '', 'Yes', 432, '3D Crystal', '3D Crystal', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(432, '3D Crystal Frame Bigger', '3D-Crystal-Frame-Bigger-.png', '3D-Crystal-Frame-Bigger-.png', NULL, '', 3600, 2520, '', 'Yes', 433, '3D Crystal', '3D Crystal', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(474, '3 Heart Frame 12 Inch', '3-Heart-Frame-12-Inch-.png', '3-Heart-Frame-12-Inch-.png', NULL, '', 700, 490, '', 'Yes', 475, 'Instant Photo frames', 'Instant Photo frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(475, '3 Heart Frame 18 Inch', '3-Heart-Frame-18-Inch-.png', '3-Heart-Frame-18-Inch-.png', NULL, '', 999, 699, '', 'Yes', 476, 'Instant Photo frames', 'Instant Photo frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(476, 'Alphabet Collage Frame', 'Alphabet-Collage-Frame-.png', 'Alphabet-Collage-Frame-.png', NULL, '', 999, 699, '', 'Yes', 477, 'Instant Photo frames', 'Instant Photo frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(477, 'Circle Frames', 'Circle-Frames-.png', 'Circle-Frames-.png', NULL, '', 999, 699, '', 'Yes', 478, 'Instant Photo frames', 'Instant Photo frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(478, 'Honey Comb frames', 'Honey-Comb-frames-.png', 'Honey-Comb-frames-.png', NULL, '', 1600, 1120, '', 'Yes', 479, 'Instant Photo frames', 'Instant Photo frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(479, 'Heart Collage Frame', 'Heart-Collage-Frame-.png', 'Heart-Collage-Frame-.png', NULL, '', 2600, 1820, '', 'Yes', 480, 'Instant Photo frames', 'Instant Photo frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(480, '20 Pics Collage Frame', '20-Pics-Collage-Frame-.png', '20-Pics-Collage-Frame-.png', NULL, '', 2600, 1820, '', 'Yes', 481, 'Instant Photo frames', 'Instant Photo frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(481, '4 frames Black', '4-frames-Black-.png', '4-frames-Black-.png', NULL, '', 600, 420, '', 'Yes', 482, 'Instant Photo frames', 'Instant Photo frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(482, '4 frames Brown', '4-frames-Brown-.png', '4-frames-Brown-.png', NULL, '', 600, 420, '', 'Yes', 483, 'Instant Photo frames', 'Instant Photo frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(483, '4 Frames Silver', '4-Frames-Silver-.png', '4-Frames-Silver-.png', NULL, '', 600, 420, '', 'Yes', 484, 'Instant Photo frames', 'Instant Photo frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(484, '4 Frames Gold', '4-Frames-Gold-.png', '4-Frames-Gold-.png', NULL, '', 600, 420, '', 'Yes', 485, 'Instant Photo frames', 'Instant Photo frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(485, 'Hanging Frames 6X4 Black', 'Hanging-Frames-6X4-Black-.png', 'Hanging-Frames-6X4-Black-.png', NULL, '', 600, 420, '', 'Yes', 486, 'Instant Photo frames', 'Instant Photo frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(486, 'Hanging Frames 6X4 Brown', 'Hanging-Frames-6X4-Brown-.png', 'Hanging-Frames-6X4-Brown-.png', NULL, '', 600, 420, '', 'Yes', 487, 'Instant Photo frames', 'Instant Photo frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(487, 'Hanging Frames 6X4 Gold', 'Hanging-Frames-6X4-Gold-.png', 'Hanging-Frames-6X4-Gold-.png', NULL, '', 600, 420, '', 'Yes', 488, 'Instant Photo frames', 'Instant Photo frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(488, 'Hanging Frames 6X4 Silver', 'Hanging-Frames-6X4-Silver-.png', 'Hanging-Frames-6X4-Silver-.png', NULL, '', 600, 420, '', 'Yes', 489, 'Instant Photo frames', 'Instant Photo frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(489, 'Hanging Frames 6X8 Black', 'Hanging-Frames-6X8-Black-.png', 'Hanging-Frames-6X8-Black-.png', NULL, '', 900, 630, '', 'Yes', 490, 'Instant Photo frames', 'Instant Photo frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(490, 'Hanging Frames 6X8 Brown', 'Hanging-Frames-6X8-Brown-.png', 'Hanging-Frames-6X8-Brown-.png', NULL, '', 900, 630, '', 'Yes', 491, 'Instant Photo frames', 'Instant Photo frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(491, 'Hanging Frames 6X8 Gold', 'Hanging-Frames-6X8-Gold-.png', 'Hanging-Frames-6X8-Gold-.png', NULL, '', 900, 630, '', 'Yes', 492, 'Instant Photo frames', 'Instant Photo frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(492, 'Hanging Frames 6X8 Silver', 'Hanging-Frames-6X8-Silver-.png', 'Hanging-Frames-6X8-Silver-.png', NULL, '', 900, 630, '', 'Yes', 493, 'Instant Photo frames', 'Instant Photo frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(493, '5 frames Black', '5-frames-Black-.png', '5-frames-Black-.png', NULL, '', 800, 560, '', 'Yes', 494, 'Instant Photo frames', 'Instant Photo frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(494, '5 frames Brown', '5-frames-Brown-.png', '5-frames-Brown-.png', NULL, '', 800, 560, '', 'Yes', 495, 'Instant Photo frames', 'Instant Photo frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(495, '5 Frames Silver', '5-Frames-Silver-.png', '5-Frames-Silver-.png', NULL, '', 800, 560, '', 'Yes', 496, 'Instant Photo frames', 'Instant Photo frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(496, '5 Frames Gold', '5-Frames-Gold-.png', '5-Frames-Gold-.png', NULL, '', 800, 560, '', 'Yes', 497, 'Instant Photo frames', 'Instant Photo frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(497, '8 frames Black', '8-frames-Black-.png', '8-frames-Black-.png', NULL, '', 1200, 840, '', 'Yes', 498, 'Instant Photo frames', 'Instant Photo frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(498, '8 frames Brown', '8-frames-Brown-.png', '8-frames-Brown-.png', NULL, '', 1200, 840, '', 'Yes', 499, 'Instant Photo frames', 'Instant Photo frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(499, '8 Frames Silver', '8-Frames-Silver-.png', '8-Frames-Silver-.png', NULL, '', 1200, 840, '', 'Yes', 500, 'New Frames', 'New Frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(500, '8 Frames Gold', '8-Frames-Gold-.png', '8-Frames-Gold-.png', NULL, '', 1200, 840, '', 'Yes', 501, 'New Frames', 'New Frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(501, 'Tree Frame -Black', 'Tree-Frame--Black-.png', 'Tree-Frame--Black-.png', NULL, '', 1100, 770, '', 'Yes', 502, 'New Frames', 'New Frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(502, 'Tree Frame-Brown', 'Tree-Frame-Brown-.png', 'Tree-Frame-Brown-.png', NULL, '', 1100, 770, '', 'Yes', 503, 'New Frames', 'New Frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(503, 'Tree Frame -Silver', 'Tree-Frame--Silver-.png', 'Tree-Frame--Silver-.png', NULL, '', 1100, 770, '', 'Yes', 504, 'New Frames', 'New Frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(504, 'Tree Frame -Gold', 'Tree-Frame--Gold-.png', 'Tree-Frame--Gold-.png', NULL, '', 1100, 770, '', 'Yes', 505, 'New Frames', 'New Frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(505, 'Couple Frame-White', 'Couple-Frame-White-.png', 'Couple-Frame-White-.png', NULL, '', 999, 699, '', 'Yes', 506, 'New Frames', 'New Frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(506, 'Couple Frame-Black', 'Couple-Frame-Black-.png', 'Couple-Frame-Black-.png', NULL, '', 999, 699, '', 'Yes', 507, 'New Frames', 'New Frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(507, 'Couple Frame-Brown', 'Couple-Frame-Brown-.png', 'Couple-Frame-Brown-.png', NULL, '', 999, 699, '', 'Yes', 508, 'Embossing 3D Frame', 'Embossing 3D Frame', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(508, 'Specs Frame Black', 'Specs-Frame-Black-.png', 'Specs-Frame-Black-.png', NULL, '', 900, 630, '', 'Yes', 509, 'Embossing 3D Frame', 'Embossing 3D Frame', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(509, 'Specs Frame Red', 'Specs-Frame-Red-.png', 'Specs-Frame-Red-.png', NULL, '', 900, 630, '', 'Yes', 510, 'Embossing 3D Frame', 'Embossing 3D Frame', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(510, '6X8 Metal Sheet-White', '6X8-Metal-Sheet-White-.png', '6X8-Metal-Sheet-White-.png', NULL, '', 600, 420, '', 'Yes', 511, 'Embossing 3D Frame', 'Embossing 3D Frame', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(511, '6X8 Metal Sheet-Silver', '6X8-Metal-Sheet-Silver-.png', '6X8-Metal-Sheet-Silver-.png', NULL, '', 600, 420, '', 'Yes', 512, 'Embossing 3D Frame', 'Embossing 3D Frame', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(512, '6X8 Metal Sheet-Gold', '6X8-Metal-Sheet-Gold-.png', '6X8-Metal-Sheet-Gold-.png', NULL, '', 600, 420, '', 'Yes', 513, 'Sublimation Print on Plywood Frames', 'Sublimation Print on Plywood Frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(513, 'Embrossing Frame Heart', 'Embrossing-Frame-Heart-.png', 'Embrossing-Frame-Heart-.png', NULL, '', 640, 448, '', 'Yes', 514, 'Sublimation Print on Plywood Frames', 'Sublimation Print on Plywood Frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(514, 'Embrossing Frame Square', 'Embrossing-Frame-Square-.png', 'Embrossing-Frame-Square-.png', NULL, '', 640, 448, '', 'Yes', 515, 'Sublimation Print on Plywood Frames', 'Sublimation Print on Plywood Frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(515, 'Embrossing Frame Rectangle', 'Embrossing-Frame-Rectangle-.png', 'Embrossing-Frame-Rectangle-.png', NULL, '', 640, 448, '', 'Yes', 516, 'Sublimation Print on Plywood Frames', 'Sublimation Print on Plywood Frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(516, 'Embrossing Frame  Round', 'Embrossing-Frame--Round-.png', 'Embrossing-Frame--Round-.png', NULL, '', 640, 448, '', 'Yes', 517, 'Sublimation Print on Plywood Frames', 'Sublimation Print on Plywood Frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(517, 'Embrossing Frame  Collage', 'Embrossing-Frame--Collage-.png', 'Embrossing-Frame--Collage-.png', NULL, '', 640, 448, '', 'Yes', 518, 'Sublimation Print on Plywood Frames', 'Sublimation Print on Plywood Frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(518, 'Plywood frames-5X7', 'Plywood-frames-5X7-.png', 'Plywood-frames-5X7-.png', NULL, '', 700, 490, '', 'Yes', 519, 'High Quality Print On Metal Sheet MDF Frames', 'High Quality Print On Metal Sheet MDF Frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(519, 'Plywood frames-6X6', 'Plywood-frames-6X6-.png', 'Plywood-frames-6X6-.png', NULL, '', 700, 490, '', 'Yes', 520, 'High Quality Print On Metal Sheet MDF Frames', 'High Quality Print On Metal Sheet MDF Frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(520, 'Plywood Frames 6X8', 'Plywood-Frames-6X8-.png', 'Plywood-Frames-6X8-.png', NULL, '', 900, 630, '', 'Yes', 521, 'High Quality Print On Metal Sheet MDF Frames', 'High Quality Print On Metal Sheet MDF Frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(521, 'Plywood Frames 10X8', 'Plywood-Frames-10X8-.png', 'Plywood-Frames-10X8-.png', NULL, '', 1200, 840, '', 'Yes', 522, 'High Quality Print On Metal Sheet MDF Frames', 'High Quality Print On Metal Sheet MDF Frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(522, 'Ply Wood  Frmes 7X9', 'Ply-Wood--Frmes-7X9-.png', 'Ply-Wood--Frmes-7X9-.png', NULL, '', 999, 699, '', 'Yes', 523, 'High Quality Print On Metal Sheet MDF Frames', 'High Quality Print On Metal Sheet MDF Frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(523, 'Ply wood frames 11.25X16', 'Ply-wood-frames-11.25X16-.png', 'Ply-wood-frames-11.25X16-.png', NULL, '', 2400, 1680, '', 'Yes', 524, 'High Quality Print On Metal Sheet MDF Frames', 'High Quality Print On Metal Sheet MDF Frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(524, '12X10 MDF Frame', '12X10-MDF-Frame-.png', '12X10-MDF-Frame-.png', NULL, '', 1200, 840, '', 'Yes', 525, 'High Quality Print On Metal Sheet Easel Frames', 'High Quality Print On Metal Sheet Easel Frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(525, 'Love 2 Heart MDF Frame', 'Love-2-Heart-MDF-Frame-.png', 'Love-2-Heart-MDF-Frame-.png', NULL, '', 1200, 840, '', 'Yes', 526, 'High Quality Print On Metal Sheet Easel Frames', 'High Quality Print On Metal Sheet Easel Frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(526, 'Heart Arch MDF Frame', 'Heart-Arch-MDF-Frame-.png', 'Heart-Arch-MDF-Frame-.png', NULL, '', 1200, 840, '', 'Yes', 527, 'High Quality Print On Metal Sheet Easel Frames', 'High Quality Print On Metal Sheet Easel Frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(527, 'Couple Heart MDF Frame', 'Couple-Heart-MDF-Frame-.png', 'Couple-Heart-MDF-Frame-.png', NULL, '', 1200, 840, '', 'Yes', 528, 'High Quality Print On Metal Sheet Easel Frames', 'High Quality Print On Metal Sheet Easel Frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(528, 'Apple MDF Frame', 'Apple-MDF-Frame-.png', 'Apple-MDF-Frame-.png', NULL, '', 1200, 840, '', 'Yes', 529, 'Table Top Gifts', 'Table Top Gifts', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(529, 'Wide MDF Frame', 'Wide-MDF-Frame-.png', 'Wide-MDF-Frame-.png', NULL, '', 1200, 840, '', 'Yes', 530, 'Table Top Gifts', 'Table Top Gifts', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(530, '5x7 Easel Frames Horizantal', '5x7-Easel-Frames-Horizantal-.png', '5x7-Easel-Frames-Horizantal-.png', NULL, '', 900, 630, '', 'Yes', 531, 'Table Top Gifts', 'Table Top Gifts', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(531, '5x7  Easel Frames  Verticle', '5x7--Easel-Frames--Verticle-.png', '5x7--Easel-Frames--Verticle-.png', NULL, '', 900, 630, '', 'Yes', 532, 'Table Top Gifts', 'Table Top Gifts', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(532, '10X8 Easel Frame Verticle', '10X8-Easel-Frame-Verticle-.png', '10X8-Easel-Frame-Verticle-.png', NULL, '', 1200, 840, '', 'Yes', 533, 'Table Top Gifts', 'Table Top Gifts', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(533, '10X8 Easel Frame Horizantel', '10X8-Easel-Frame-Horizantel-.png', '10X8-Easel-Frame-Horizantel-.png', NULL, '', 1200, 840, '', 'Yes', 534, 'MDF Sublimation  Frames', 'MDF Sublimation  Frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(534, 'Happy Family', 'Happy-Family-.png', 'Happy-Family-.png', NULL, '', 999, 699, '', 'Yes', 535, 'MDF Sublimation  Frames', 'MDF Sublimation  Frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(535, 'Love White', 'Love-White-.png', 'Love-White-.png', NULL, '', 999, 699, '', 'Yes', 536, 'MDF Sublimation  Frames', 'MDF Sublimation  Frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(536, 'Happy Birthday ', 'Happy-Birthday--.png', 'Happy-Birthday--.png', NULL, '', 999, 699, '', 'Yes', 537, 'MDF Sublimation  Frames', 'MDF Sublimation  Frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(537, 'Friends', 'Friends-.png', 'Friends-.png', NULL, '', 999, 699, '', 'Yes', 538, 'MDF Sublimation  Frames', 'MDF Sublimation  Frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(538, 'Love Gold', 'Love-Gold-.png', 'Love-Gold-.png', NULL, '', 999, 699, '', 'Yes', 539, 'MDF Sublimation  Frames', 'MDF Sublimation  Frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(539, 'MDF Love Frame 6X5', 'MDF-Love-Frame-6X5-.png', 'MDF-Love-Frame-6X5-.png', NULL, '', 440, 308, '', 'Yes', 540, 'MDF Sublimation  Frames', 'MDF Sublimation  Frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(540, 'MDF Happy Birthday 6X5', 'MDF-Happy-Birthday-6X5-.png', 'MDF-Happy-Birthday-6X5-.png', NULL, '', 440, 308, '', 'Yes', 541, 'MDF Sublimation  Frames', 'MDF Sublimation  Frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(541, 'MDF Friends  Frame 6X5', 'MDF-Friends--Frame-6X5-.png', 'MDF-Friends--Frame-6X5-.png', NULL, '', 440, 308, '', 'Yes', 542, 'MDF Sublimation  Frames', 'MDF Sublimation  Frames', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(542, 'MDF Family  Frame 6X5', 'MDF-Family--Frame-6X5-.png', 'MDF-Family--Frame-6X5-.png', NULL, '', 440, 308, '', 'Yes', 543, '4X4 Fridge Management', '4X4 Fridge Management', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(543, 'Note Book', 'Note-Book-.png', 'Note-Book-.png', NULL, '', 400, 280, '', 'Yes', 544, '4X4 Fridge Management', '4X4 Fridge Management', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(544, 'MDF Rectangle Frame 8X6', 'MDF-Rectangle-Frame-8X6-.png', 'MDF-Rectangle-Frame-8X6-.png', NULL, '', 800, 560, '', 'Yes', 545, '4X4 Fridge Management', '4X4 Fridge Management', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(545, 'MDF Exam Frame 9.25X14.25', 'MDF-Exam-Frame-9.25X14.25-.png', 'MDF-Exam-Frame-9.25X14.25-.png', NULL, '', 900, 630, '', 'Yes', 546, '4X4 Fridge Management', '4X4 Fridge Management', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(546, 'Calender 6X8 12 Leaves', 'Calender-6X8-12-Leaves-.png', 'Calender-6X8-12-Leaves-.png', NULL, '', 700, 490, '', 'Yes', 547, '4X4 Fridge Management', '4X4 Fridge Management', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(547, 'Calender 12X8 12 Leaves', 'Calender-12X8-12-Leaves-.png', 'Calender-12X8-12-Leaves-.png', NULL, '', 1200, 840, '', 'Yes', 548, '4X4 Fridge Management', '4X4 Fridge Management', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(548, '4X4 Hexgon', '4X4-Hexgon-.png', '4X4-Hexgon-.png', NULL, '', 300, 210, '', 'Yes', 549, '4X4 Fridge Management', '4X4 Fridge Management', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(549, '4X4 Rectangle', '4X4-Rectangle-.png', '4X4-Rectangle-.png', NULL, '', 300, 210, '', 'Yes', 550, ' Fridge Management', ' Fridge Management', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(550, '4X4 Oval Shape', '4X4-Oval-Shape-.png', '4X4-Oval-Shape-.png', NULL, '', 300, 210, '', 'Yes', 551, ' Fridge Management', ' Fridge Management', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `photoframes` (`id`, `book_title`, `book_path`, `thumb_img`, `product_img`, `product_details`, `actual_price`, `offer_price`, `sale`, `in_stock`, `sku`, `categories`, `tags`, `isbn`, `description`, `additional_info`, `categories_id`, `review`, `product_attach`, `created_at`, `updated_at`) VALUES
(551, '4X4 Happy Home', '4X4-Happy-Home-.png', '4X4-Happy-Home-.png', NULL, '', 300, 210, '', 'Yes', 552, ' Fridge Management', ' Fridge Management', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(552, '4X4 Heart ', '4X4-Heart--.png', '4X4-Heart--.png', NULL, '', 300, 210, '', 'Yes', 553, ' Fridge Management', ' Fridge Management', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(553, '4X4 Double Heart', '4X4-Double-Heart-.png', '4X4-Double-Heart-.png', NULL, '', 300, 210, '', 'Yes', 554, ' Fridge Management', ' Fridge Management', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(554, '4X4 Round', '4X4-Round-.png', '4X4-Round-.png', NULL, '', 300, 210, '', 'Yes', 555, ' Fridge Management', ' Fridge Management', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(555, 'Flower', 'Flower-.png', 'Flower-.png', NULL, '', 200, 140, '', 'Yes', 556, ' Fridge Management', ' Fridge Management', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(556, 'Square shape-Magnet', 'Square-shape-Magnet-.png', 'Square-shape-Magnet-.png', NULL, '', 200, 140, '', 'Yes', 557, '6X6 Fridge Management', '6X6 Fridge Management', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(557, 'Heart Shape -Magnet', 'Heart-Shape--Magnet-.png', 'Heart-Shape--Magnet-.png', NULL, '', 200, 140, '', 'Yes', 558, '6X6 Fridge Management', '6X6 Fridge Management', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(558, 'Round Shape Magnet', 'Round-Shape-Magnet-.png', 'Round-Shape-Magnet-.png', NULL, '', 200, 140, '', 'Yes', 559, '6X6 Fridge Management', '6X6 Fridge Management', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(559, 'Rectangle Shape-Magnet', 'Rectangle-Shape-Magnet-.png', 'Rectangle-Shape-Magnet-.png', NULL, '', 200, 140, '', 'Yes', 560, '6X6 Fridge Management', '6X6 Fridge Management', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(560, 'Oval Shape-Magnet', 'Oval-Shape-Magnet-.png', 'Oval-Shape-Magnet-.png', NULL, '', 200, 140, '', 'Yes', 561, '6X6 Fridge Management', '6X6 Fridge Management', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(561, 'Hexogan Shape-Magnet', 'Hexogan-Shape-Magnet-.png', 'Hexogan-Shape-Magnet-.png', NULL, '', 200, 140, '', 'Yes', 562, '6X6 Fridge Management', '6X6 Fridge Management', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(562, '6X6 Hexgon', '6X6-Hexgon-.png', '6X6-Hexgon-.png', NULL, '', 500, 350, '', 'Yes', 563, '6X6 Fridge Management', '6X6 Fridge Management', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(566, '6X6 Heart ', '6X6-Heart--.png', '6X6-Heart--.png', NULL, '', 500, 350, '', 'Yes', 567, 'Prints', 'Prints', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(567, '6X6 Double Heart', '6X6-Double-Heart-.png', '6X6-Double-Heart-.png', NULL, '', 500, 350, '', 'Yes', 568, 'Prints', 'Prints', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(568, '6X6 Round', '6X6-Round-.png', '6X6-Round-.png', NULL, '', 500, 350, '', 'Yes', 569, 'Prints', 'Prints', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(569, 'Plate 7X7', 'Plate-7X7-.png', 'Plate-7X7-.png', NULL, '', 500, 350, '', 'No', 570, 'Prints', 'Prints', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(570, 'Metal Ring', 'Metal-Ring-.png', 'Metal-Ring-.png', NULL, '', 400, 280, '', 'No', 571, 'Prints', 'Prints', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(571, 'Metal Bracelet', 'Metal-Bracelet-.png', 'Metal-Bracelet-.png', NULL, '', 500, 350, '', 'No', 572, 'Prints', 'Prints', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(572, 'Big Prints 16X20', 'Big-Prints-16X20-.png', 'Big-Prints-16X20-.png', NULL, '', 640, 448, '', 'Yes', 573, 'Prints', 'Prints', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(573, 'Big Prints 20X24', 'Big-Prints-20X24-.png', 'Big-Prints-20X24-.png', NULL, '', 960, 672, '', 'Yes', 574, 'Prints', 'Prints', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(574, 'Big Prints 20X30', 'Big-Prints-20X30-.png', 'Big-Prints-20X30-.png', NULL, '', 1200, 840, '', 'Yes', 575, 'Prints', 'Prints', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(575, 'Big Prints 24X36', 'Big-Prints-24X36-.png', 'Big-Prints-24X36-.png', NULL, '', 1728, 1210, '', 'Yes', 576, 'Prints', 'Prints', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(576, 'Big Prints 30X40', 'Big-Prints-30X40-.png', 'Big-Prints-30X40-.png', NULL, '', 2400, 1680, '', 'Yes', 577, 'Prints', 'Prints', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(577, 'Big Prints 40X60', 'Big-Prints-40X60-.png', 'Big-Prints-40X60-.png', NULL, '', 4800, 3360, '', 'Yes', 578, 'Prints', 'Prints', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(578, 'Wall Mounted Canvas Print 12X8', 'Wall-Mounted-Canvas-Print-12X8-.png', 'Wall-Mounted-Canvas-Print-12X8-.png', NULL, '', 1200, 840, '', 'Yes', 579, 'Prints', 'Prints', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(579, 'Wall Mounted Canvas Print 12X10', 'Wall-Mounted-Canvas-Print-12X10-.png', 'Wall-Mounted-Canvas-Print-12X10-.png', NULL, '', 1400, 980, '', 'Yes', 580, 'Prints', 'Prints', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(580, 'Wall Mounted Canvas Print 12X15', 'Wall-Mounted-Canvas-Print-12X15-.png', 'Wall-Mounted-Canvas-Print-12X15-.png', NULL, '', 1600, 1120, '', 'Yes', 581, 'Prints', 'Prints', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(581, 'Wall Mounted Canvas Print 12X18', 'Wall-Mounted-Canvas-Print-12X18-.png', 'Wall-Mounted-Canvas-Print-12X18-.png', NULL, '', 2000, 1400, '', 'Yes', 582, 'Prints', 'Prints', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(582, 'Wall Mounted Canvas Print 16X20', 'Wall-Mounted-Canvas-Print-16X20-.png', 'Wall-Mounted-Canvas-Print-16X20-.png', NULL, '', 3000, 2100, '', 'Yes', 583, 'Prints', 'Prints', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(583, 'Wall Mounted Canvas Print 20X24', 'Wall-Mounted-Canvas-Print-20X24-.png', 'Wall-Mounted-Canvas-Print-20X24-.png', NULL, '', 4000, 2800, '', 'Yes', 584, 'Prints', 'Prints', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(584, 'Wall Mounted Canvas Print 20X30', 'Wall-Mounted-Canvas-Print-20X24-.png', 'Wall-Mounted-Canvas-Print-20X24-.png', NULL, '', 5000, 3500, '', 'Yes', 585, 'Prints', 'Prints', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pillows`
--

CREATE TABLE `pillows` (
  `id` int(10) UNSIGNED NOT NULL,
  `book_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_details` longtext COLLATE utf8mb4_unicode_ci,
  `actual_price` int(11) DEFAULT NULL,
  `offer_price` int(11) DEFAULT NULL,
  `sale` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `in_stock` text COLLATE utf8mb4_unicode_ci,
  `sku` int(11) DEFAULT NULL,
  `categories` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isbn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `additional_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories_id` int(11) DEFAULT NULL,
  `review` longtext COLLATE utf8mb4_unicode_ci,
  `product_attach` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1-Image, 2-Text, 3-No Attach',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pillows`
--

INSERT INTO `pillows` (`id`, `book_title`, `book_path`, `thumb_img`, `product_img`, `product_details`, `actual_price`, `offer_price`, `sale`, `in_stock`, `sku`, `categories`, `tags`, `isbn`, `description`, `additional_info`, `categories_id`, `review`, `product_attach`, `created_at`, `updated_at`) VALUES
(53, 'Stain Square Pillow', 'Stain-Square-Pillow-53.png', 'Stain-Square-Pillow-53.png', NULL, 'Stain Square Pillow Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 700, 490, 'No', 'Yes', 54, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 06:37:38'),
(54, 'Stain Heart  Pillow', 'Stain-Heart--Pillow-54.png', 'Stain-Heart--Pillow-54.png', NULL, 'Stain Heart  Pillow Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 700, 490, 'No', 'Yes', 55, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 06:38:12'),
(55, 'Red Fur Pillow Square', 'Red-Fur-Pillow-Square-55.png', 'Red-Fur-Pillow-Square-55.png', NULL, 'Red Fur Pillow Square Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 900, 630, 'No', 'Yes', 56, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 06:38:40'),
(56, 'White  Fur Pillow Square', 'White--Fur-Pillow-Square-56.png', 'White--Fur-Pillow-Square-56.png', NULL, 'White  Fur Pillow Square Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 900, 630, 'No', 'Yes', 57, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 06:39:11'),
(57, 'Red Fur Pillow Heart', 'Red-Fur-Pillow-Heart-57.png', 'Red-Fur-Pillow-Heart-57.png', NULL, 'Red Fur Pillow Heart Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 800, 560, 'No', 'Yes', 58, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 06:40:02'),
(58, 'White  Fur Pillow Heart', 'White--Fur-Pillow-Heart-58.png', 'White--Fur-Pillow-Heart-58.png', NULL, 'White  Fur Pillow Heart Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 800, 560, 'No', 'Yes', 59, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 06:40:51'),
(59, 'Pink  Fur Pillow Heart', 'Pink--Fur-Pillow-Heart-59.png', 'Pink--Fur-Pillow-Heart-59.png', NULL, 'Pink  Fur Pillow Heart Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 800, 560, 'No', 'Yes', 60, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 06:41:36'),
(60, 'Blue  Fur Pillow Heart', 'Blue--Fur-Pillow-Heart-60.png', 'Blue--Fur-Pillow-Heart-60.png', NULL, 'Blue  Fur Pillow Heart Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 800, 560, 'No', 'Yes', 61, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 06:42:15'),
(61, 'Yellow Fur Pillow Heart', 'Yellow-Fur-Pillow-Heart-61.png', 'Yellow-Fur-Pillow-Heart-61.png', NULL, 'Yellow Fur Pillow Heart Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 800, 560, 'No', 'Yes', 62, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 06:42:41'),
(62, 'Velvet heart Pillow', 'Velvet-heart-Pillow-62.png', 'Velvet-heart-Pillow-62.png', NULL, 'Velvet heart Pillow Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 900, 630, 'No', 'Yes', 63, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 06:43:10'),
(63, 'Rose Petal Rd Heart', 'Rose-Petal-Rd-Heart-63.png', 'Rose-Petal-Rd-Heart-63.png', NULL, 'Rose Petal Rd Heart Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 999, 699, 'No', 'Yes', 64, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 06:43:38'),
(64, 'Love Red Fur Pillow', 'Love-Red-Fur-Pillow-64.png', 'Love-Red-Fur-Pillow-64.png', NULL, 'Love Red Fur Pillow Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 999, 699, 'No', 'Yes', 65, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 06:44:08'),
(65, 'Love Violet Fur Pillow', 'Love-Violet-Fur-Pillow-65.png', 'Love-Violet-Fur-Pillow-65.png', NULL, 'Love Violet Fur Pillow Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 999, 699, 'No', 'Yes', 66, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 06:44:39'),
(66, 'Love Yellow Fur Pillow', 'Love-Yellow-Fur-Pillow-66.png', 'Love-Yellow-Fur-Pillow-66.png', NULL, 'Love Yellow Fur Pillow Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 999, 699, 'No', 'Yes', 67, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 06:45:10'),
(67, 'Love Blue Fur Pillow', 'Love-Blue-Fur-Pillow-67.png', 'Love-Blue-Fur-Pillow-67.png', NULL, 'Love Blue Fur Pillow Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 999, 699, 'No', 'Yes', 68, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 06:45:45'),
(68, 'Love Pink Fur Pillow', 'Love-Pink-Fur-Pillow-68.png', 'Love-Pink-Fur-Pillow-68.png', NULL, 'Love Pink Fur Pillow Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 999, 699, 'No', 'Yes', 69, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 06:46:14'),
(69, 'Yellow Velvet Pillow', 'Yellow-Velvet-Pillow-69.png', 'Yellow-Velvet-Pillow-69.png', NULL, 'Yellow Velvet Pillow Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 900, 630, 'No', 'Yes', 70, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 06:46:47'),
(70, 'Megenta Velvet Pillow', 'Megenta-Velvet-Pillow-70.png', 'Megenta-Velvet-Pillow-70.png', NULL, 'Megenta Velvet Pillow Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 900, 630, 'No', 'Yes', 71, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 06:47:19'),
(71, 'Black Velvet Pillow', 'Black-Velvet-Pillow-71.png', 'Black-Velvet-Pillow-71.png', NULL, 'Black Velvet Pillow Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 900, 630, 'No', 'Yes', 72, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 06:47:47'),
(72, '3 Heart Velvet Pillow', '3-Heart-Velvet-Pillow--72.png', '3-Heart-Velvet-Pillow--72.png', NULL, '3 Heart Velvet Pillow  Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 1200, 840, 'No', 'Yes', 73, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 06:48:30'),
(73, 'Heart LED Pillow-Yellow', 'Heart-LED-Pillow-Yellow-73.png', 'Heart-LED-Pillow-Yellow-73.png', NULL, 'Heart LED Pillow-Yellow Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 999, 699, 'No', 'Yes', 74, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 06:49:07'),
(74, 'Heart LED Pillow-Red', 'Heart-LED-Pillow-Red-74.png', 'Heart-LED-Pillow-Red-74.png', NULL, 'Heart LED Pillow-Red Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 999, 699, 'No', 'Yes', 75, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 06:50:37'),
(75, 'Square LED Pillow-Yellow', 'Square-LED-Pillow-Yellow-75.png', 'Square-LED-Pillow-Yellow-75.png', NULL, 'Square LED Pillow-Yellow Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 1200, 840, 'No', 'Yes', 76, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 06:51:08'),
(76, 'Square LED Pillow-Red', 'Square-LED-Pillow-Red-76.png', 'Square-LED-Pillow-Red-76.png', NULL, 'Square LED Pillow-Red Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 1200, 840, 'No', 'Yes', 77, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 06:51:42'),
(77, 'Magic Pillow -Square', 'Magic-Pillow--Square-77.png', 'Magic-Pillow--Square-77.png', NULL, 'Magic Pillow -Square Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 999, 699, 'No', 'Yes', 78, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 06:52:12'),
(78, 'Magic Pillow -Heart', 'Magic-Pillow--Heart-78.png', 'Magic-Pillow--Heart-78.png', NULL, 'Magic Pillow -Heart Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 999, 699, 'No', 'Yes', 79, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 06:52:46'),
(79, 'Double Heart Pillow', 'Double-Heart-Pillow-79.png', 'Double-Heart-Pillow-79.png', NULL, 'Double Heart Pillow Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 1500, 1050, 'No', 'Yes', 80, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 06:53:17'),
(80, 'Miss Smily Pillow', 'Miss-Smily-Pillow-80.png', 'Miss-Smily-Pillow-80.png', NULL, 'Miss Smily Pillow Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 900, 630, 'No', 'Yes', 81, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 06:53:43'),
(81, 'Mr Smily Pillow', 'Mr-Smily-Pillow-81.png', 'Mr-Smily-Pillow-81.png', NULL, 'Mr Smily Pillow Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 900, 630, 'No', 'Yes', 82, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 06:54:16'),
(82, 'Kiss  Smily Pillow', 'Kiss--Smily-Pillow-82.png', 'Kiss--Smily-Pillow-82.png', NULL, 'Kiss  Smily Pillow Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 900, 630, 'No', 'Yes', 83, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 06:54:50'),
(83, '2 Heart Smily Pillow', '2-Heart-Smily-Pillow-83.png', '2-Heart-Smily-Pillow-83.png', NULL, '2 Heart Smily Pillow Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 900, 630, 'No', 'Yes', 84, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 06:55:28'),
(84, 'RK Pink Heart Pillow', 'RK-Pink-Heart-Pillow-84.png', 'RK-Pink-Heart-Pillow-84.png', NULL, 'RK Pink Heart Pillow Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 900, 630, 'No', 'Yes', 85, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 06:56:06'),
(85, 'Thin Stain Heart Pillow', 'Thin-Stain-Heart-Pillow-85.png', 'Thin-Stain-Heart-Pillow-85.png', NULL, 'Thin Stain Heart Pillow Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 500, 350, 'No', 'Yes', 86, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 06:56:40'),
(86, 'Jute FabricPillow', 'Jute-FabricPillow-86.png', 'Jute-FabricPillow-86.png', NULL, 'Jute FabricPillow Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 999, 699, 'No', 'Yes', 87, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 06:57:06'),
(87, 'Cushion Key Chain', 'Cushion-Key-Chain-87.png', 'Cushion-Key-Chain-87.png', NULL, 'Cushion Key Chain Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 300, 210, 'No', 'Yes', 88, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 06:57:46'),
(88, 'Square Double Heart Pillow', 'Square-Double-Heart-Pillow-88.png', 'Square-Double-Heart-Pillow-88.png', NULL, 'Square Double Heart Pillow Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 900, 630, 'No', 'Yes', 89, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 06:58:19'),
(89, 'Square Double Heart Pillow-Red', 'Square-Double-Heart-Pillow-Red-89.png', 'Square-Double-Heart-Pillow-Red-89.png', NULL, 'Square Double Heart Pillow-Red Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 900, 630, 'No', 'Yes', 90, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 06:58:50'),
(90, 'Square Double Heart Pillow-Blue', 'Square-Double-Heart-Pillow-Blue-90.png', 'Square-Double-Heart-Pillow-Blue-90.png', NULL, 'Square Double Heart Pillow-Blue Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 900, 630, 'No', 'Yes', 91, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 06:59:30'),
(91, 'Square Double Heart Pillow-Violet', 'Square-Double-Heart-Pillow-Violet-91.png', 'Square-Double-Heart-Pillow-Violet-91.png', NULL, 'Square Double Heart Pillow-Violet Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 900, 630, 'No', 'Yes', 92, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 07:00:09'),
(92, 'Square Double Heart Pillow-Yellow', 'Square-Double-Heart-Pillow-Yellow-92.png', 'Square-Double-Heart-Pillow-Yellow-92.png', NULL, 'Square Double Heart Pillow-Yellow Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 900, 630, 'No', 'Yes', 93, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 07:00:40'),
(93, 'Small Fur Pillow Red', 'Small-Fur-Pillow-Red-93.png', 'Small-Fur-Pillow-Red-93.png', NULL, 'Small Fur Pillow Red Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 400, 280, 'No', 'Yes', 94, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 07:01:11'),
(94, 'Small Fur Pillow Blue', 'Small-Fur-Pillow-Blue-94.png', 'Small-Fur-Pillow-Blue-94.png', NULL, 'Small Fur Pillow Blue Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 400, 280, 'No', 'Yes', 95, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 07:01:42'),
(95, 'Small Fur Pillow Pink', 'Small-Fur-Pillow-Pink-95.png', 'Small-Fur-Pillow-Pink-95.png', NULL, 'Small Fur Pillow Pink Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 400, 280, 'No', 'Yes', 96, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 07:02:29'),
(96, 'Small Fur Pillow Yellow', 'Small-Fur-Pillow-Yellow-96.png', 'Small-Fur-Pillow-Yellow-96.png', NULL, 'Small Fur Pillow Yellow Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 400, 280, 'No', 'Yes', 97, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 07:02:55'),
(97, 'Small Fur Pillow White', 'Small-Fur-Pillow-White-97.png', 'Small-Fur-Pillow-White-97.png', NULL, 'Small Fur Pillow White Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 400, 280, 'No', 'Yes', 98, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 07:03:25'),
(98, 'Couple Pillow', 'Couple-Pillow-98.png', 'Couple-Pillow-98.png', NULL, 'Couple Pillow Made with cool gel technology, the memory foam pillow circulates your body heat and gives you cooler and comfortable sleep. pillow is washable and breathable outer fabric for a longer life of the product.', 1200, 840, 'No', 'Yes', 99, 'Pillows', 'Pillows', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 07:03:54');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name`, `price`) VALUES
(1, 'Yearly', 1000),
(2, 'Monthly', 500);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'member');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('YrJRbkM5HV95Oc4n9fIViVfwgmVHUGhXU9pACEPq', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVjFFWFBmYjB1M1JMckk0cHNKRzBDUDU2aEQxS1hFSXFjYmc3dFVQVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9sb2NhbGhvc3QvU3VicmEvd2ViL3Nlcmllcy9tdWciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1609660719),
('xewG84go0jcjGqAEviwDOWjtvCoFtotVkhvWDzpG', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV1dTQnlKQnYzT21nQ3hEWjgzdDhiYWdxZUJsbmlWNTBoSkdocHRobCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly9sb2NhbGhvc3QvU3VicmEvd2ViL3Nlcmllcy93YXRlcmJvdHRsZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1609661802);

-- --------------------------------------------------------

--
-- Table structure for table `teddybear`
--

CREATE TABLE `teddybear` (
  `id` int(3) NOT NULL,
  `book_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_details` longtext COLLATE utf8mb4_unicode_ci,
  `actual_price` int(11) DEFAULT NULL,
  `offer_price` int(11) DEFAULT NULL,
  `sale` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `in_stock` text COLLATE utf8mb4_unicode_ci,
  `sku` int(11) DEFAULT NULL,
  `categories` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isbn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `additional_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories_id` int(11) DEFAULT NULL,
  `review` longtext COLLATE utf8mb4_unicode_ci,
  `product_attach` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1-Image, 2-Text, 3-No Attach',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teddybear`
--

INSERT INTO `teddybear` (`id`, `book_title`, `book_path`, `thumb_img`, `product_img`, `product_details`, `actual_price`, `offer_price`, `sale`, `in_stock`, `sku`, `categories`, `tags`, `isbn`, `description`, `additional_info`, `categories_id`, `review`, `product_attach`, `created_at`, `updated_at`) VALUES
(99, 'Cycle Teddy Bear ( White Color )', 'Cycle-Teddy-Bear-White-99.png', 'Cycle-Teddy-Bear-White-99.png', NULL, 'Crafted with superior materialsCycle Teddy Bear ( White Color ). Super soft polyester fabric makes it both huggable and durable. Kids can snuggle with their soft bear during story time engage in play and even read a story to their furry friend. Gives the best cuddles. Enhances social skills and imaginative play.', 1100, 770, 'No', 'Yes', 100, 'Teddy Bear', 'Teddy Bear', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 07:42:38'),
(100, 'Cycle Teddy Bear ( Purple Color )', 'Cycle-Teddy-Bear-Purple-100.png', 'Cycle-Teddy-Bear-Purple-100.png', NULL, 'Crafted with superior materialsCycle Teddy Bear ( Purple Color ). Super soft polyester fabric makes it both huggable and durable. Kids can snuggle with their soft bear during story time engage in play and even read a story to their furry friend. Gives the best cuddles. Enhances social skills and imaginative play.', 1100, 770, 'No', 'Yes', 101, 'Teddy Bear', 'Teddy Bear', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 07:43:22'),
(101, 'Cycle Teddy Bear ( Yellow Color )', 'Cycle-Teddy-Bear-Yellow-101.png', 'Cycle-Teddy-Bear-Yellow-101.png', NULL, 'Crafted with superior materialsCycle Teddy Bear ( Yellow Color ). Super soft polyester fabric makes it both huggable and durable. Kids can snuggle with their soft bear during story time engage in play and even read a story to their furry friend. Gives the best cuddles. Enhances social skills and imaginative play.', 1100, 770, 'No', 'Yes', 102, 'Teddy Bear', 'Teddy Bear', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 07:43:46'),
(102, 'Cycle Teddy Bear ( Pink Color )', 'Cycle-Teddy-Bear-Pink-102.png', 'Cycle-Teddy-Bear-Pink-102.png', NULL, 'Crafted with superior materialsCycle Teddy Bear ( Pink Color ). Super soft polyester fabric makes it both huggable and durable. Kids can snuggle with their soft bear during story time engage in play and even read a story to their furry friend. Gives the best cuddles. Enhances social skills and imaginative play.', 1100, 770, 'No', 'Yes', 103, 'Teddy Bear', 'Teddy Bear', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 07:44:10'),
(103, 'Cycle Teddy Bear ( Blue Color )', 'Cycle-Teddy-Bear-Blue-103.png', 'Cycle-Teddy-Bear-Blue-103.png', NULL, 'Crafted with superior materialsCycle Teddy Bear ( Blue Color ). Super soft polyester fabric makes it both huggable and durable. Kids can snuggle with their soft bear during story time engage in play and even read a story to their furry friend. Gives the best cuddles. Enhances social skills and imaginative play.', 1100, 770, 'No', 'Yes', 104, 'Teddy Bear', 'Teddy Bear', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 07:44:38'),
(104, 'Cycle Teddy Bear ( Red Color )', 'Cycle-Teddy-Bear-Red-104.png', 'Cycle-Teddy-Bear-Red-104.png', NULL, 'Crafted with superior materialsCycle Teddy Bear ( Red Color ). Super soft polyester fabric makes it both huggable and durable. Kids can snuggle with their soft bear during story time engage in play and even read a story to their furry friend. Gives the best cuddles. Enhances social skills and imaginative play.', 1100, 770, 'No', 'Yes', 105, 'Teddy Bear', 'Teddy Bear', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 07:45:08'),
(105, 'Couple Teddy Bear', 'Couple-Teddy-Bear-105.png', 'Couple-Teddy-Bear-105.png', NULL, 'Crafted with superior materialsCycle Teddy Bear ( Red Color ). Super soft polyester fabric makes it both huggable and durable. Kids can snuggle with their soft bear during story time engage in play and even read a story to their furry friend. Gives the best cuddles. Enhances social skills and imaginative play.', 1200, 840, 'No', 'Yes', 106, 'Teddy Bear', 'Teddy Bear', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 07:45:38'),
(106, 'I Love You Pillow Teddy Bear', 'I-Love-You-Pillow-Teddy-Bear-106.png', 'I-Love-You-Pillow-Teddy-Bear-106.png', NULL, 'Crafted with superior materialsI Love You Pillow Teddy Bear. Super soft polyester fabric makes it both huggable and durable. Kids can snuggle with their soft bear during story time engage in play and even read a story to their furry friend. Gives the best cuddles. Enhances social skills and imaginative play.', 1400, 980, 'No', 'Yes', 107, 'Teddy Bear', 'Teddy Bear', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 07:46:47'),
(107, 'Velvet Teddy Bear', 'Velvet-Teddy-Bear-107.png', 'Velvet-Teddy-Bear-107.png', NULL, 'Crafted with superior materialsVelvet Teddy Bear. Super soft polyester fabric makes it both huggable and durable. Kids can snuggle with their soft bear during story time engage in play and even read a story to their furry friend. Gives the best cuddles. Enhances social skills and imaginative play.', 800, 560, 'No', 'Yes', 108, 'Teddy Bear', 'Teddy Bear', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 07:47:29'),
(108, 'Big Teddy Bear  with heart pillow', '-Big-Teddy-Bear--with-heart-pillow-108.png', '-Big-Teddy-Bear--with-heart-pillow-108.png', NULL, 'Crafted with superior materials Big Teddy Bear  with heart pillow. Super soft polyester fabric makes it both huggable and durable. Kids can snuggle with their soft bear during story time engage in play and even read a story to their furry friend. Gives the best cuddles. Enhances social skills and imaginative play.', 2500, 1750, 'No', 'Yes', 109, 'Teddy Bear', 'Teddy Bear', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 08:23:39'),
(109, 'Fur Teddy Bear 16 Inches Pink', 'Fur-Teddy-Bear-16-Inches-Pink-109.png', 'Fur-Teddy-Bear-16-Inches-Pink-109.png', NULL, 'Crafted with superior materialsFur Teddy Bear 16 Inches Pink. Super soft polyester fabric makes it both huggable and durable. Kids can snuggle with their soft bear during story time engage in play and even read a story to their furry friend. Gives the best cuddles. Enhances social skills and imaginative play.', 1400, 980, 'No', 'Yes', 110, 'Teddy Bear', 'Teddy Bear', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 08:25:52'),
(110, 'Fur Teddy Bear 16 Inches Red', 'Fur-Teddy-Bear-16-Inches-Red-110.png', 'Fur-Teddy-Bear-16-Inches-Red-110.png', NULL, 'Crafted with superior materialsFur Teddy Bear 16 Inches Red. Super soft polyester fabric makes it both huggable and durable. Kids can snuggle with their soft bear during story time engage in play and even read a story to their furry friend. Gives the best cuddles. Enhances social skills and imaginative play.', 1400, 980, 'No', 'Yes', 111, 'Teddy Bear', 'Teddy Bear', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 08:26:40'),
(111, 'Fur Teddy Bear 14Inches Pink', 'Fur-Teddy-Bear-14Inches-Pink-111.png', 'Fur-Teddy-Bear-14Inches-Pink-111.png', NULL, 'Crafted with superior materialsFur Teddy Bear 14Inches Pink. Super soft polyester fabric makes it both huggable and durable. Kids can snuggle with their soft bear during story time engage in play and even read a story to their furry friend. Gives the best cuddles. Enhances social skills and imaginative play.', 1300, 910, 'No', 'Yes', 112, 'Teddy Bear', 'Teddy Bear', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 08:27:09'),
(112, 'Fur Teddy Bear 14Inches Red', 'Fur-Teddy-Bear-14Inches-Red-112.png', 'Fur-Teddy-Bear-14Inches-Red-112.png', NULL, 'Crafted with superior materialsFur Teddy Bear 14Inches Red. Super soft polyester fabric makes it both huggable and durable. Kids can snuggle with their soft bear during story time engage in play and even read a story to their furry friend. Gives the best cuddles. Enhances social skills and imaginative play.', 1300, 910, 'No', 'Yes', 113, 'Teddy Bear', 'Teddy Bear', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 08:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `tileprint`
--

CREATE TABLE `tileprint` (
  `id` int(3) NOT NULL,
  `book_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_details` longtext COLLATE utf8mb4_unicode_ci,
  `actual_price` int(11) DEFAULT NULL,
  `offer_price` int(11) DEFAULT NULL,
  `sale` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `in_stock` text COLLATE utf8mb4_unicode_ci,
  `sku` int(11) DEFAULT NULL,
  `categories` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isbn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `additional_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories_id` int(11) DEFAULT NULL,
  `review` longtext COLLATE utf8mb4_unicode_ci,
  `product_attach` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1-Image, 2-Text, 3-No Attach',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tileprint`
--

INSERT INTO `tileprint` (`id`, `book_title`, `book_path`, `thumb_img`, `product_img`, `product_details`, `actual_price`, `offer_price`, `sale`, `in_stock`, `sku`, `categories`, `tags`, `isbn`, `description`, `additional_info`, `categories_id`, `review`, `product_attach`, `created_at`, `updated_at`) VALUES
(247, 'Heart Print', 'Heart-Print-247.png', 'Heart-Print-247.png', NULL, 'This ceramic Heart Print tile  makes a perfect home decor gift for your photo. It can be placed on your living room table. You can customize it with a photo of the best resolution for the best printing results. It comes along with a table holder.', 400, 280, 'No', 'Yes', 248, 'Tile Print', 'Tile Print', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-15 05:33:42'),
(248, 'Personalised photo printed Tile', 'Tile-248.png', 'Tile-248.png', NULL, 'This ceramic Pesonalised photo printed Tile  makes a perfect home decor gift for your photo. It can be placed on your living room table. You can customize it with a photo of the best resolution for the best printing results. It comes along with a table holder.', 400, 280, 'No', 'Yes', 249, 'Tile Print', 'Tile Print', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-15 05:34:39'),
(249, 'Pesonalised photo printed Tile', 'Tile-249.png', 'Tile-249.png', NULL, 'This ceramic Pesonalised photo printed Tile  makes a perfect home decor gift for your photo. It can be placed on your living room table. You can customize it with a photo of the best resolution for the best printing results. It comes along with a table holder.', 500, 350, 'No', 'Yes', 250, 'Tile Print', 'Tile Print', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-15 05:35:39'),
(250, 'Personalised photo printed Tile', 'Tile-250.png', 'Tile-250.png', NULL, 'This ceramic Pesonalised photo printed Tile  makes a perfect home decor gift for your photo. It can be placed on your living room table. You can customize it with a photo of the best resolution for the best printing results. It comes along with a table holder.', 700, 490, 'No', 'Yes', 251, 'Tile Print', 'Tile Print', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-15 05:36:21'),
(251, 'Personalised photo printed Tile', 'Tile-251.png', 'Tile-251.png', NULL, 'This ceramic Pesonalised photo printed Tile  makes a perfect home decor gift for your photo. It can be placed on your living room table. You can customize it with a photo of the best resolution for the best printing results. It comes along with a table holder.', 900, 630, 'No', 'Yes', 252, 'Tile Print', 'Tile Print', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-15 05:37:01'),
(252, 'Personalised photo printed Tile', 'Tile-252.png', 'Tile-252.png', NULL, 'This ceramic Pesonalised photo printed Tile  makes a perfect home decor gift for your photo. It can be placed on your living room table. You can customize it with a photo of the best resolution for the best printing results. It comes along with a table holder.', 600, 420, 'No', 'Yes', 253, 'Tile Print', 'Tile Print', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-15 05:37:44'),
(253, 'Personalised photo printed Tile', 'Tile-253.png', 'Tile-253.png', NULL, 'This ceramic Pesonalised photo printed Tile  makes a perfect home decor gift for your photo. It can be placed on your living room table. You can customize it with a photo of the best resolution for the best printing results. It comes along with a table holder.', 999, 699, 'No', 'Yes', 254, 'Tile Print', 'Tile Print', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-15 05:38:38');

-- --------------------------------------------------------

--
-- Table structure for table `trialbooks`
--

CREATE TABLE `trialbooks` (
  `id` int(20) NOT NULL,
  `book_title` varchar(255) DEFAULT NULL,
  `thumb_img` varchar(255) DEFAULT NULL,
  `pdf` varchar(255) DEFAULT NULL,
  `categories_id` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `trophy`
--

CREATE TABLE `trophy` (
  `id` int(3) NOT NULL,
  `book_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_details` longtext COLLATE utf8mb4_unicode_ci,
  `actual_price` int(11) DEFAULT NULL,
  `offer_price` int(11) DEFAULT NULL,
  `sale` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `in_stock` text COLLATE utf8mb4_unicode_ci,
  `sku` int(11) DEFAULT NULL,
  `categories` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isbn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `additional_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories_id` int(11) DEFAULT NULL,
  `review` longtext COLLATE utf8mb4_unicode_ci,
  `product_attach` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1-Image, 2-Text, 3-No Attach',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trophy`
--

INSERT INTO `trophy` (`id`, `book_title`, `book_path`, `thumb_img`, `product_img`, `product_details`, `actual_price`, `offer_price`, `sale`, `in_stock`, `sku`, `categories`, `tags`, `isbn`, `description`, `additional_info`, `categories_id`, `review`, `product_attach`, `created_at`, `updated_at`) VALUES
(433, 'CA-08', 'CA-08-.png', 'CA-08-.png', NULL, '', 1999, 1399, '', 'Yes', 434, 'Big Crystal Awards', 'Big Crystal Awards', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(434, 'CA-09', 'CA-09-.png', 'CA-09-.png', NULL, '', 1800, 1260, '', 'Yes', 435, 'Big Crystal Awards', 'Big Crystal Awards', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(435, 'CA -10', 'CA--10-.png', 'CA--10-.png', NULL, '', 1800, 1260, '', 'Yes', 436, 'Big Crystal Awards', 'Big Crystal Awards', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(436, 'CA-12', 'CA-12-.png', 'CA-12-.png', NULL, '', 1800, 1260, '', 'Yes', 437, 'Big Crystal Awards', 'Big Crystal Awards', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(437, 'CA-11', 'CA-11-.png', 'CA-11-.png', NULL, '', 1800, 1260, '', 'Yes', 438, 'Big Crystal Awards', 'Big Crystal Awards', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(438, 'CA-15', 'CA-15-.png', 'CA-15-.png', NULL, '', 1800, 1260, '', 'Yes', 439, 'Big Crystal Awards', 'Big Crystal Awards', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(439, '4X6 Inch ', '4X6-Inch--.png', '4X6-Inch--.png', NULL, '', 600, 420, '', 'Yes', 440, 'Acrylic Awards', 'Acrylic Awards', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(440, '6X9', '6X9-.png', '6X9-.png', NULL, '', 900, 630, '', 'Yes', 441, 'Acrylic Awards', 'Acrylic Awards', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(441, '8X12', '8X12-.png', '8X12-.png', NULL, '', 1200, 840, '', 'Yes', 442, 'Acrylic Awards', 'Acrylic Awards', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(442, 'CA-13', 'CA-13-.png', 'CA-13-.png', NULL, '', 600, 420, '', 'Yes', 443, 'Crystal Awards', 'Crystal Awards', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(443, 'CA-14', 'CA-14-.png', 'CA-14-.png', NULL, '', 1400, 980, '', 'Yes', 444, 'Crystal Awards', 'Crystal Awards', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(444, 'CA-05', 'CA-05-.png', 'CA-05-.png', NULL, '', 999, 699, '', 'Yes', 445, 'Crystal Awards', 'Crystal Awards', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(445, 'CA-06', 'CA-06-.png', 'CA-06-.png', NULL, '', 1400, 980, '', 'Yes', 446, 'Crystal Awards', 'Crystal Awards', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(446, 'CA-01', 'CA-01-.png', 'CA-01-.png', NULL, '', 999, 699, '', 'Yes', 447, 'Crystal Awards', 'Crystal Awards', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(447, 'CA-02', 'CA-02-.png', 'CA-02-.png', NULL, '', 999, 699, '', 'Yes', 448, 'Crystal Awards', 'Crystal Awards', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(448, 'CA-03', 'CA-03-.png', 'CA-03-.png', NULL, '', 999, 699, '', 'Yes', 449, 'Crystal Awards', 'Crystal Awards', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(449, 'CA-04', 'CA-04-.png', 'CA-04-.png', NULL, '', 999, 699, '', 'Yes', 450, 'Crystal Awards', 'Crystal Awards', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(450, 'CA-001', 'CA-001-.png', 'CA-001-.png', NULL, '', 999, 699, '', 'Yes', 451, 'Crystal Awards', 'Crystal Awards', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(451, 'CA-002', 'CA-002-.png', 'CA-002-.png', NULL, '', 999, 699, '', 'Yes', 452, 'Crystal Awards', 'Crystal Awards', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(452, 'CA-003', 'CA-003-.png', 'CA-003-.png', NULL, '', 999, 699, '', 'Yes', 453, 'Crystal Awards', 'Crystal Awards', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(453, 'CA-004', 'CA-004-.png', 'CA-004-.png', NULL, '', 999, 699, '', 'Yes', 454, 'Crystal Awards', 'Crystal Awards', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(454, 'CA-018', 'CA-018-.png', 'CA-018-.png', NULL, '', 999, 699, '', 'Yes', 455, 'Crystal Awards', 'Crystal Awards', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(455, 'CA-18', 'CA-18-.png', 'CA-18-.png', NULL, '', 999, 699, '', 'Yes', 456, 'Crystal Awards', 'Crystal Awards', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(456, 'CA-17', 'CA-17-.png', 'CA-17-.png', NULL, '', 600, 420, '', 'Yes', 457, 'Crystal Awards', 'Crystal Awards', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(457, 'CA-16', 'CA-16-.png', 'CA-16-.png', NULL, '', 1900, 1330, '', 'Yes', 458, 'Crystal Awards', 'Crystal Awards', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(458, 'BT-01', 'BT-01-.png', 'BT-01-.png', NULL, '', 400, 280, '', 'Yes', 459, 'Trophy', 'Trophy', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(459, 'Medal', 'Medal-.png', 'Medal-.png', NULL, '', 200, 140, '', 'Yes', 460, 'Trophy', 'Trophy', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(460, 'BT-03', 'BT-03-.png', 'BT-03-.png', NULL, '', 800, 560, '', 'Yes', 461, 'Trophy', 'Trophy', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(461, 'BT-06', 'BT-06-.png', 'BT-06-.png', NULL, '', 1200, 840, '', 'Yes', 462, 'Trophy', 'Trophy', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(462, 'BT-21', 'BT-21-.png', 'BT-21-.png', NULL, '', 700, 490, '', 'Yes', 463, 'Trophy', 'Trophy', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(463, 'BT-22', 'BT-22-.png', 'BT-22-.png', NULL, '', 900, 630, '', 'Yes', 464, 'Trophy', 'Trophy', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(464, 'BT-23', 'BT-23-.png', 'BT-23-.png', NULL, '', 999, 699, '', 'Yes', 465, 'Trophy', 'Trophy', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(465, 'BT-24', 'BT-24-.png', 'BT-24-.png', NULL, '', 1800, 1260, '', 'Yes', 466, 'Trophy', 'Trophy', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(466, 'BT-13', 'BT-13-.png', 'BT-13-.png', NULL, '', 800, 560, '', 'Yes', 467, 'Trophy', 'Trophy', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(467, 'BT-25', 'BT-25-.png', 'BT-25-.png', NULL, '', 700, 490, '', 'Yes', 468, 'Trophy', 'Trophy', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(468, 'BT-26', 'BT-26-.png', 'BT-26-.png', NULL, '', 800, 560, '', 'Yes', 469, 'Trophy', 'Trophy', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(469, 'BT-27', 'BT-27-.png', 'BT-27-.png', NULL, '', 900, 630, '', 'Yes', 470, 'Trophy', 'Trophy', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(470, 'BT-17', 'BT-17-.png', 'BT-17-.png', NULL, '', 800, 560, '', 'Yes', 471, 'Trophy', 'Trophy', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(471, 'BT-18', 'BT-18-.png', 'BT-18-.png', NULL, '', 1000, 700, '', 'Yes', 472, 'Trophy', 'Trophy', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(472, 'BT-19', 'BT-19-.png', 'BT-19-.png', NULL, '', 1400, 980, '', 'Yes', 473, 'Trophy', 'Trophy', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(473, 'BT-20', 'BT-20-.png', 'BT-20-.png', NULL, '', 1800, 1260, '', 'Yes', 474, 'Trophy', 'Trophy', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tshirt`
--

CREATE TABLE `tshirt` (
  `id` int(3) NOT NULL,
  `book_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_details` longtext COLLATE utf8mb4_unicode_ci,
  `actual_price` int(11) DEFAULT NULL,
  `offer_price` int(11) DEFAULT NULL,
  `sale` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `in_stock` text COLLATE utf8mb4_unicode_ci,
  `sku` int(11) DEFAULT NULL,
  `categories` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isbn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `additional_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories_id` int(11) DEFAULT NULL,
  `review` longtext COLLATE utf8mb4_unicode_ci,
  `product_attach` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1-Image, 2-Text, 3-No Attach',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tshirt`
--

INSERT INTO `tshirt` (`id`, `book_title`, `book_path`, `thumb_img`, `product_img`, `product_details`, `actual_price`, `offer_price`, `sale`, `in_stock`, `sku`, `categories`, `tags`, `isbn`, `description`, `additional_info`, `categories_id`, `review`, `product_attach`, `created_at`, `updated_at`) VALUES
(399, 'Sandal Round Neck', 'Sandal-Round-Neck-.png', 'Sandal-Round-Neck-.png', NULL, NULL, 400, 280, 'No', 'Yes', 400, 'T Shirt', 'T Shirt', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '2021-07-14 08:25:28'),
(400, 'Gray  Round Neck', 'Gray--Round-Neck-.png', 'Gray--Round-Neck-.png', NULL, '', 400, 280, '', 'Yes', 401, 'T Shirt ', 'T Shirt ', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(401, 'Yellow  Round Neck', 'Yellow--Round-Neck-.png', 'Yellow--Round-Neck-.png', NULL, '', 400, 280, '', 'Yes', 402, 'T Shirt ', 'T Shirt ', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(402, 'White  Round Neck', 'White--Round-Neck-.png', 'White--Round-Neck-.png', NULL, '', 500, 350, '', 'Yes', 403, 'T Shirt ', 'T Shirt ', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(403, 'Colour TShirt With Neck', 'Colour-TShirt-With-Neck-.png', 'Colour-TShirt-With-Neck-.png', NULL, '', 600, 420, '', 'Yes', 404, 'T Shirt ', 'T Shirt ', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(404, 'A4 Thin Rubber  Print on Polyseter T  Shirt', 'A4-Thin-Rubber--Print-on-Polyseter-T--Shirt-.png', 'A4-Thin-Rubber--Print-on-Polyseter-T--Shirt-.png', NULL, '', 700, 490, '', 'Yes', 405, 'T Shirt ', 'T Shirt ', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(405, 'Cotton Text Print', 'Cotton-Text-Print-.png', 'Cotton-Text-Print-.png', NULL, '', 800, 560, '', 'Yes', 406, 'T Shirt ', 'T Shirt ', NULL, '', 'Width: NULL cm, Height:  cm', 0, '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(10) NOT NULL DEFAULT '2',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `session_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_mode` enum('Online','Offline') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Online',
  `user_updated_password` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2',
  `otp` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `session_id`, `registration_mode`, `user_updated_password`, `otp`) VALUES
(2, 'Siva', 'subragiftstudio@gmail.com', 1, NULL, '$2y$10$XKMONOcdpcUMY8iTTvufX.IfK72dN2.4Glc48V07OYQScei7VDf4O', NULL, '2020-07-23 00:36:09', '2021-12-12 14:36:33', '3fOvfhfyR4Lgimn8fchRIzhlBjNeM2Uw8y6aOSOQ', 'Offline', '2', NULL),
(306, 'sica', 'sica@gmail.com', 2, NULL, '$2y$10$9lTkMADXXc2BBt9nNeN9KOvK5W/gFZlwjhwz/8A1aq4FAGc82GzaO', NULL, '2020-12-26 15:59:41', '2021-11-30 10:58:37', 'hMy9mImDx9Wo4M6agppKQD5BcrrigwJ5GgVzwhqM', 'Online', '2', NULL),
(307, 'Praveen', 'sripraveen2424@gmail.com', 2, NULL, '$2y$10$UNremekw2l0Cg15RZZ7seupasjlutugkSbqfNtCyLog/2iGxBu.me', NULL, '2021-04-14 07:29:19', '2021-04-28 12:33:59', NULL, 'Online', '2', NULL),
(308, 'PKM', 'test@test.com', 2, NULL, '$2y$10$UQXJgmqLshEJtSQmpRNb9.0fPwNHwWKG3jt3pklV.VYFm0MSajo.G', NULL, '2021-04-28 20:52:52', '2021-04-28 20:52:52', NULL, 'Online', '2', NULL),
(309, 'Ligori 007', 'ligori007@gmail.com', 2, NULL, '$2y$10$2o40gO37pHQ8swG8FJCaJO8LdG/lcQvY0NRKEJRFCcioD2nJAuZIy', NULL, '2021-05-01 10:25:31', '2021-05-12 08:20:09', '7hydL8P0Fdn6eiF13GNsOUSAykPlrBdMKeLHpcW7', 'Online', '2', NULL),
(310, 'siva', 'sivikrish@gmail.com', 2, NULL, '$2y$10$KcuulwW40TYarNe0ATq/GOVdpWP2FjERLX87lGZnO/O2EAg/aKmmy', NULL, '2021-05-02 17:44:52', '2021-05-02 17:44:52', NULL, 'Online', '2', NULL),
(311, 'Banumathi', 'r.banumathi.mcom@gmail.com', 2, NULL, '$2y$10$DRSz01SYnXL1EDuwvSgjx.uurqK2dOLEAlubZJ0kiGfhmtZHl3ENa', NULL, '2021-05-02 21:34:14', '2021-05-02 21:34:14', NULL, 'Online', '2', NULL),
(312, 'test', 'test@34.com', 2, NULL, '$2y$10$V3yTMNbBKfRuSzIToncDP.VGGgA3a8HV3nIl5SHYAjEC/FiVNLYs6', NULL, '2021-06-18 13:11:58', '2021-06-18 13:11:58', NULL, 'Online', '2', NULL),
(313, 'siva', 'sivak@ticketnew.com', 2, NULL, '$2y$10$8UXtPHN.dE01cSXRMSsXEOAG5qfdMEsdtO0ALyaRYgLrtOEE3rhIW', NULL, '2021-06-21 16:17:32', '2021-06-21 16:17:32', NULL, 'Online', '2', NULL),
(314, 'vinothini', 'vinomathish@gmail.com', 2, NULL, '$2y$10$VAMeU6LRtJMSXLOlwv4ii.fz6BO0BS2TXiSLYnll9cX0FQtO3VZMW', NULL, '2021-06-22 15:07:34', '2021-06-22 15:07:34', NULL, 'Online', '2', NULL),
(315, 'poornima', 'poornimabakthavatchala@email.com', 2, NULL, '$2y$10$pQFJRhEzIFXrOhNr2NE7ueLqPDy79Pd3M8Lxw6d8HulUfrG.Wo.Ji', NULL, '2021-11-30 15:53:25', '2021-12-02 03:46:45', 'lxz5i7GEkPNTchSvbXEE1D1n2bXcH7jIzj4JlRQ0', 'Online', '2', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_additional_details`
--

CREATE TABLE `user_additional_details` (
  `id` int(10) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `age` int(10) DEFAULT NULL,
  `country` text,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_books`
--

CREATE TABLE `user_books` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `book_id` int(10) UNSIGNED DEFAULT NULL,
  `cat_id` int(10) UNSIGNED DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `txn_id` varchar(255) DEFAULT NULL,
  `txn_details` text,
  `product_details` text,
  `address` varchar(255) DEFAULT NULL,
  `phone` text,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `is_app` tinyint(4) NOT NULL DEFAULT '0',
  `is_delivered` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_box_books`
--

CREATE TABLE `user_box_books` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `box_product_id` int(10) UNSIGNED DEFAULT NULL,
  `txn_id` varchar(255) DEFAULT NULL,
  `txn_details` text,
  `product_details` text,
  `address` varchar(255) DEFAULT NULL,
  `phone` text,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `is_app` tinyint(4) NOT NULL DEFAULT '0',
  `is_delivered` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_plan`
--

CREATE TABLE `user_plan` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `plan_id` int(10) DEFAULT NULL,
  `txn_id` varchar(255) DEFAULT NULL,
  `txn_details` text,
  `created_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `expiry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `address` varchar(255) DEFAULT NULL,
  `phone` text,
  `coupon` varchar(50) DEFAULT NULL,
  `is_app` tinyint(4) NOT NULL DEFAULT '0',
  `amount` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_plan`
--

INSERT INTO `user_plan` (`id`, `user_id`, `plan_id`, `txn_id`, `txn_details`, `created_on`, `expiry`, `status`, `address`, `phone`, `coupon`, `is_app`, `amount`) VALUES
(5, 2, 2, 'Txn17299431', NULL, '2020-08-19 22:04:00', '2022-08-20 22:04:00', '0', NULL, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_plan_bkup`
--

CREATE TABLE `user_plan_bkup` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `plan_id` int(10) UNSIGNED DEFAULT NULL,
  `txn_id` varchar(255) DEFAULT NULL,
  `txn_details` text,
  `created_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `expiry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(3) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_plan_bkup`
--

INSERT INTO `user_plan_bkup` (`id`, `user_id`, `plan_id`, `txn_id`, `txn_details`, `created_on`, `expiry`, `status`) VALUES
(4, 4, 1, 'txn_1HGQoLFVJjiIwa1TKKcNubCS', '{\"id\":\"ch_1HGQoLFVJjiIwa1TWBIx9N8x\",\"object\":\"charge\",\"amount\":10000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_1HGQoLFVJjiIwa1TKKcNubCS\",\"billing_details\":{\"address\":{\"city\":null,\"country\":null,\"line1\":null,\"line2\":null,\"postal_code\":null,\"state\":null},\"email\":null,\"name\":null,\"phone\":null},\"calculated_statement_descriptor\":\"Stripe\",\"captured\":true,\"created\":1597503405,\"currency\":\"inr\",\"customer\":\"cus_Hq72uBKPLr9VOX\",\"description\":\"Basic\",\"destination\":null,\"dispute\":null,\"disputed\":false,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{\"order_id\":\"price_1H7G32FVJjiIwa1TbQ6YKuok\"},\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"risk_score\":5,\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1HGQoKFVJjiIwa1Ttk9mjqVH\",\"payment_method_details\":{\"card\":{\"brand\":\"visa\",\"checks\":{\"address_line1_check\":null,\"address_postal_code_check\":null,\"cvc_check\":\"pass\"},\"country\":\"US\",\"exp_month\":8,\"exp_year\":2022,\"fingerprint\":\"c9s5b8jW8j4KnVQ2\",\"funding\":\"credit\",\"installments\":null,\"last4\":\"4242\",\"network\":\"visa\",\"three_d_secure\":null,\"wallet\":null},\"type\":\"card\"},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/acct_1H6slMFVJjiIwa1T\\/ch_1HGQoLFVJjiIwa1TWBIx9N8x\\/rcpt_Hq72sSI0rczVj8W5Reh6OBYhpeXinAB\",\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_1HGQoLFVJjiIwa1TWBIx9N8x\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1HGQoKFVJjiIwa1Ttk9mjqVH\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"Visa\",\"country\":\"US\",\"customer\":\"cus_Hq72uBKPLr9VOX\",\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":8,\"exp_year\":2022,\"fingerprint\":\"c9s5b8jW8j4KnVQ2\",\"funding\":\"credit\",\"last4\":\"4242\",\"metadata\":[],\"name\":null,\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"statement_descriptor_suffix\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null}', '2020-08-15 09:26:42', '2020-08-23 11:36:22', 1),
(5, 2, 2, 'Txn19532011', NULL, '2020-08-23 11:36:33', '2020-08-23 11:36:33', 1);

--
-- Triggers `user_plan_bkup`
--
DELIMITER $$
CREATE TRIGGER `test_trigger` BEFORE INSERT ON `user_plan_bkup` FOR EACH ROW SET NEW.created_on = IFNULL(NEW.created_on, NOW()), NEW.expiry = TIMESTAMPADD(DAY, 1, NEW.created_on)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `waterbottle`
--

CREATE TABLE `waterbottle` (
  `id` int(10) UNSIGNED NOT NULL,
  `book_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_details` longtext COLLATE utf8mb4_unicode_ci,
  `actual_price` int(11) DEFAULT NULL,
  `offer_price` int(11) DEFAULT NULL,
  `sale` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `in_stock` text COLLATE utf8mb4_unicode_ci,
  `sku` int(11) DEFAULT NULL,
  `categories` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isbn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `additional_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories_id` int(11) DEFAULT NULL,
  `review` longtext COLLATE utf8mb4_unicode_ci,
  `product_attach` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1-Image, 2-Text, 3-No Attach',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `waterbottle`
--

INSERT INTO `waterbottle` (`id`, `book_title`, `book_path`, `thumb_img`, `product_img`, `product_details`, `actual_price`, `offer_price`, `sale`, `in_stock`, `sku`, `categories`, `tags`, `isbn`, `description`, `additional_info`, `categories_id`, `review`, `product_attach`, `created_at`, `updated_at`) VALUES
(46, 'Stainless Steel Blue Coated 600 ML', 'Stainless-Steel-Blue-Coated-600-ML-46.png', 'Stainless-Steel-Blue-Coated-600-ML-46.png', NULL, 'Stainless Steel Blue Coated 600 ML - Firm grip and attractive design. Keeps your drink hot for 16 hours and cold for 20 hours. Easy to open clip on button with lock. Aesthetically appealing finish. 100% food grade both inside and outside for safety and durability.', 700, 490, 'No', 'Yes', 47, 'Water Bottle', 'Water Bottle', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Stainless Steel Coated 750 ML', 'Stainless-Steel-Coated-750-ML-47.png', 'Stainless-Steel-Coated-750-ML-47.png', NULL, 'Stainless Steel Coated 750 ML - Firm grip and attractive design. Keeps your drink hot for 16 hours and cold for 20 hours. Easy to open clip on button with lock. Aesthetically appealing finish. 100% food grade both inside and outside for safety and durability.', 600, 420, 'No', 'Yes', 47, 'Water Bottle', 'Water Bottle', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Red Water Bottle 750 ML', 'Red-Water-Bottle-750-ML-48.png', 'Red-Water-Bottle-750-ML-48.png', NULL, 'Red Water Bottle 750 ML - Firm grip and attractive design. Keeps your drink hot for 16 hours and cold for 20 hours. Easy to open clip on button with lock. Aesthetically appealing finish. 100% food grade both inside and outside for safety and durability.', 400, 280, 'No', 'Yes', 48, 'Water Bottle', 'Water Bottle', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Blue Water Bottle 750 ML', 'Blue-Water-Bottle-750-ML-49.png', 'Blue-Water-Bottle-750-ML-49.png', NULL, 'Blue Water Bottle 750 ML - Firm grip and attractive design. Keeps your drink hot for 16 hours and cold for 20 hours. Easy to open clip on button with lock. Aesthetically appealing finish. 100% food grade both inside and outside for safety and durability.', 400, 280, 'No', 'Yes', 49, 'Water Bottle', 'Water Bottle', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Metal Water Bottle  White  600 ML', 'Metal-Water-Bottle--White--600-ML-50.png', 'Metal-Water-Bottle--White--600-ML-50.png', NULL, 'Metal Water Bottle  White  600 ML - Firm grip and attractive design. Keeps your drink hot for 16 hours and cold for 20 hours. Easy to open clip on button with lock. Aesthetically appealing finish. 100% food grade both inside and outside for safety and durability.', 700, 490, 'No', 'Yes', 50, 'Water Bottle', 'Water Bottle', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Metal Water Bottle  White 750 ML', 'Metal-Water-Bottle--White-750-ML-51.png', 'Metal-Water-Bottle--White-750-ML-51.png', NULL, 'Metal Water Bottle  White 750 ML - Firm grip and attractive design. Keeps your drink hot for 16 hours and cold for 20 hours. Easy to open clip on button with lock. Aesthetically appealing finish. 100% food grade both inside and outside for safety and durability.', 800, 560, 'No', 'Yes', 51, 'Water Bottle', 'Water Bottle', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Stainless Flask 350 ML', 'Stainless-Flask-350-ML-52.png', 'Stainless-Flask-350-ML-52.png', NULL, 'Stainless Flask 350 ML - Firm grip and attractive design. Keeps your drink hot for 16 hours and cold for 20 hours. Easy to open clip on button with lock. Aesthetically appealing finish. 100% food grade both inside and outside for safety and durability.', 1500, 1050, 'No', 'Yes', 52, 'Water Bottle', 'Water Bottle', NULL, NULL, 'Width: NULL cm, Height:  cm', 0, '0', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acrylicbedlamp`
--
ALTER TABLE `acrylicbedlamp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogcommentreplies`
--
ALTER TABLE `blogcommentreplies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogcomments`
--
ALTER TABLE `blogcomments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `boxes`
--
ALTER TABLE `boxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `box_products`
--
ALTER TABLE `box_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `caricature`
--
ALTER TABLE `caricature`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart-products`
--
ALTER TABLE `cart-products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clocks`
--
ALTER TABLE `clocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `combo_plans`
--
ALTER TABLE `combo_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `engravinggifts`
--
ALTER TABLE `engravinggifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facemask`
--
ALTER TABLE `facemask`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `farmaan`
--
ALTER TABLE `farmaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gps_track`
--
ALTER TABLE `gps_track`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`(191));

--
-- Indexes for table `keychain`
--
ALTER TABLE `keychain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `magicmirror`
--
ALTER TABLE `magicmirror`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail_queue`
--
ALTER TABLE `mail_queue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mug`
--
ALTER TABLE `mug`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `offline_users`
--
ALTER TABLE `offline_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `photoframes`
--
ALTER TABLE `photoframes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pillows`
--
ALTER TABLE `pillows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teddybear`
--
ALTER TABLE `teddybear`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tileprint`
--
ALTER TABLE `tileprint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trialbooks`
--
ALTER TABLE `trialbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trophy`
--
ALTER TABLE `trophy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tshirt`
--
ALTER TABLE `tshirt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_additional_details`
--
ALTER TABLE `user_additional_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_books`
--
ALTER TABLE `user_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_box_books`
--
ALTER TABLE `user_box_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_plan`
--
ALTER TABLE `user_plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_plan_bkup`
--
ALTER TABLE `user_plan_bkup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `waterbottle`
--
ALTER TABLE `waterbottle`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acrylicbedlamp`
--
ALTER TABLE `acrylicbedlamp`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=290;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `blogcommentreplies`
--
ALTER TABLE `blogcommentreplies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `blogcomments`
--
ALTER TABLE `blogcomments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `boxes`
--
ALTER TABLE `boxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `box_products`
--
ALTER TABLE `box_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `caricature`
--
ALTER TABLE `caricature`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=368;

--
-- AUTO_INCREMENT for table `cart-products`
--
ALTER TABLE `cart-products`
  MODIFY `id` int(70) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=389;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `clocks`
--
ALTER TABLE `clocks`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=306;

--
-- AUTO_INCREMENT for table `combo_plans`
--
ALTER TABLE `combo_plans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `engravinggifts`
--
ALTER TABLE `engravinggifts`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=328;

--
-- AUTO_INCREMENT for table `facemask`
--
ALTER TABLE `facemask`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `farmaan`
--
ALTER TABLE `farmaan`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `gps_track`
--
ALTER TABLE `gps_track`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keychain`
--
ALTER TABLE `keychain`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `magicmirror`
--
ALTER TABLE `magicmirror`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT for table `mail_queue`
--
ALTER TABLE `mail_queue`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mug`
--
ALTER TABLE `mug`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `offline_users`
--
ALTER TABLE `offline_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `photoframes`
--
ALTER TABLE `photoframes`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=585;

--
-- AUTO_INCREMENT for table `pillows`
--
ALTER TABLE `pillows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teddybear`
--
ALTER TABLE `teddybear`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `tileprint`
--
ALTER TABLE `tileprint`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT for table `trialbooks`
--
ALTER TABLE `trialbooks`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trophy`
--
ALTER TABLE `trophy`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=474;

--
-- AUTO_INCREMENT for table `tshirt`
--
ALTER TABLE `tshirt`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=406;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=316;

--
-- AUTO_INCREMENT for table `user_additional_details`
--
ALTER TABLE `user_additional_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_books`
--
ALTER TABLE `user_books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_box_books`
--
ALTER TABLE `user_box_books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_plan`
--
ALTER TABLE `user_plan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_plan_bkup`
--
ALTER TABLE `user_plan_bkup`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `waterbottle`
--
ALTER TABLE `waterbottle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
