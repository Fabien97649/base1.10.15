-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2023 at 03:48 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


-- --------------------------------------------------------

--
-- Table structure for table `addon_account`
--

CREATE TABLE `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `addon_account`
--

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('caution', 'caution', 0);

-- --------------------------------------------------------

--
-- Table structure for table `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(46) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(16, 'caution', 0, 'a0a122055d25c1810111bab7bd182013162d3adb'),
(17, 'caution', 0, 'char1:a0a122055d25c1810111bab7bd182013162d3adb'),
(19, 'caution', 0, 'char1:ed923ad8b5d281ef46f305b44a0f532178fe882b');

-- --------------------------------------------------------

--
-- Table structure for table `addon_inventory`
--

CREATE TABLE `addon_inventory` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `addon_inventory_items`
--

CREATE TABLE `addon_inventory_items` (
  `id` int(11) NOT NULL,
  `inventory_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(46) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `sender` varchar(60) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(40) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`id`, `identifier`, `sender`, `target_type`, `target`, `label`, `amount`) VALUES
(1, 'char1:ed923ad8b5d281ef46f305b44a0f532178fe882b', 'char1:a0a122055d25c1810111bab7bd182013162d3adb', 'society', 'society_cardealer', 'Facture Cardealer', 2);

-- --------------------------------------------------------

--
-- Table structure for table `cardealer_vehicles`
--

CREATE TABLE `cardealer_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cardealer_vehicles`
--

INSERT INTO `cardealer_vehicles` (`id`, `vehicle`, `price`) VALUES
(3, 'blista', 8000);

-- --------------------------------------------------------

--
-- Table structure for table `datastore`
--

CREATE TABLE `datastore` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `datastore`
--

INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
('property', 'Property', 0),
('user_ears', 'Ears', 0),
('user_glasses', 'Glasses', 0),
('user_helmet', 'Helmet', 0),
('user_mask', 'Mask', 0);

-- --------------------------------------------------------

--
-- Table structure for table `datastore_data`
--

CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `owner` varchar(46) DEFAULT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `datastore_data`
--

INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(52, 'property', NULL, '{}'),
(53, 'property', NULL, '{}'),
(54, 'user_ears', 'a0a122055d25c1810111bab7bd182013162d3adb', '{}'),
(55, 'property', 'a0a122055d25c1810111bab7bd182013162d3adb', '{}'),
(56, 'user_glasses', 'a0a122055d25c1810111bab7bd182013162d3adb', '{}'),
(57, 'user_helmet', 'a0a122055d25c1810111bab7bd182013162d3adb', '{}'),
(58, 'user_mask', 'a0a122055d25c1810111bab7bd182013162d3adb', '{}'),
(59, 'property', NULL, '{}'),
(60, 'property', NULL, '{}'),
(61, 'property', NULL, '{}'),
(62, 'property', NULL, '{}'),
(63, 'user_helmet', 'char1:a0a122055d25c1810111bab7bd182013162d3adb', '{}'),
(64, 'user_mask', 'char1:a0a122055d25c1810111bab7bd182013162d3adb', '{}'),
(65, 'property', 'char1:a0a122055d25c1810111bab7bd182013162d3adb', '{\"dressing\":[{\"skin\":{\"nose_3\":5,\"lipstick_1\":0,\"bracelets_2\":0,\"cheeks_1\":2,\"eyebrows_6\":0,\"dad\":29,\"makeup_4\":0,\"nose_4\":8,\"beard_3\":0,\"hair_1\":76,\"bracelets_1\":-1,\"age_2\":0,\"sun_1\":0,\"arms_2\":0,\"bproof_2\":0,\"decals_2\":0,\"bags_2\":0,\"beard_2\":10,\"chain_2\":2,\"lip_thickness\":-2,\"mom\":43,\"blush_3\":0,\"age_1\":0,\"cheeks_3\":6,\"tshirt_1\":4,\"blush_1\":0,\"bodyb_1\":-1,\"eye_color\":0,\"ears_1\":-1,\"helmet_1\":-1,\"bodyb_2\":0,\"face_md_weight\":61,\"nose_6\":0,\"hair_color_1\":61,\"chest_2\":0,\"nose_2\":6,\"bodyb_3\":-1,\"blush_2\":0,\"bodyb_4\":0,\"eyebrows_5\":0,\"makeup_2\":0,\"tshirt_2\":2,\"lipstick_2\":0,\"pants_1\":28,\"chin_3\":0,\"lipstick_4\":0,\"beard_4\":0,\"neck_thickness\":0,\"cheeks_2\":-10,\"beard_1\":11,\"shoes_2\":2,\"jaw_1\":0,\"torso_2\":2,\"lipstick_3\":0,\"chin_1\":0,\"eyebrows_4\":0,\"jaw_2\":0,\"makeup_3\":0,\"hair_color_2\":29,\"moles_1\":0,\"mask_2\":0,\"ears_2\":0,\"bags_1\":0,\"eyebrows_1\":0,\"pants_2\":3,\"shoes_1\":70,\"eye_squint\":0,\"chin_4\":0,\"helmet_2\":0,\"torso_1\":24,\"eyebrows_3\":0,\"hair_2\":0,\"mask_1\":0,\"skin_md_weight\":27,\"complexion_1\":0,\"blemishes_1\":0,\"chest_3\":0,\"moles_2\":0,\"nose_1\":-5,\"chain_1\":22,\"bproof_1\":0,\"complexion_2\":0,\"sex\":0,\"watches_1\":-1,\"eyebrows_2\":0,\"arms\":1,\"glasses_1\":0,\"watches_2\":0,\"chin_13\":0,\"blemishes_2\":0,\"glasses_2\":0,\"makeup_1\":0,\"nose_5\":10,\"decals_1\":0,\"chest_1\":0,\"chin_2\":0,\"sun_2\":0},\"label\":\"osc\"},{\"skin\":{\"nose_3\":5,\"lipstick_1\":0,\"bracelets_2\":0,\"cheeks_1\":2,\"eyebrows_6\":0,\"dad\":29,\"makeup_4\":0,\"nose_4\":8,\"beard_3\":0,\"hair_1\":76,\"bracelets_1\":-1,\"bodyb_4\":0,\"sun_1\":0,\"arms_2\":0,\"bproof_2\":0,\"decals_2\":0,\"bags_2\":0,\"beard_2\":10,\"chain_2\":2,\"lip_thickness\":-2,\"mom\":43,\"blush_3\":0,\"age_1\":0,\"cheeks_3\":6,\"tshirt_1\":4,\"blush_1\":0,\"bodyb_1\":-1,\"eye_color\":0,\"ears_1\":-1,\"helmet_1\":-1,\"bodyb_2\":0,\"face_md_weight\":61,\"nose_6\":0,\"hair_color_1\":61,\"chest_2\":0,\"makeup_1\":0,\"bodyb_3\":-1,\"helmet_2\":0,\"eyebrows_5\":0,\"pants_1\":28,\"makeup_2\":0,\"tshirt_2\":2,\"lipstick_4\":0,\"lipstick_2\":0,\"chin_3\":0,\"moles_2\":0,\"beard_4\":0,\"neck_thickness\":0,\"age_2\":0,\"beard_1\":11,\"shoes_2\":2,\"jaw_1\":0,\"torso_2\":2,\"chin_1\":0,\"chest_1\":0,\"eyebrows_4\":0,\"jaw_2\":0,\"chin_13\":0,\"hair_color_2\":29,\"moles_1\":0,\"mask_2\":0,\"lipstick_3\":0,\"bags_1\":0,\"eyebrows_1\":0,\"ears_2\":0,\"shoes_1\":70,\"makeup_3\":0,\"chin_4\":0,\"blush_2\":0,\"torso_1\":23,\"eyebrows_3\":0,\"hair_2\":0,\"mask_1\":0,\"cheeks_2\":-10,\"complexion_1\":0,\"blemishes_1\":0,\"chest_3\":0,\"nose_2\":6,\"chain_1\":22,\"nose_1\":-5,\"bproof_1\":0,\"complexion_2\":0,\"sex\":0,\"watches_1\":-1,\"eye_squint\":0,\"arms\":1,\"glasses_1\":0,\"watches_2\":0,\"skin_md_weight\":27,\"blemishes_2\":0,\"glasses_2\":0,\"pants_2\":3,\"nose_5\":10,\"decals_1\":0,\"eyebrows_2\":0,\"chin_2\":0,\"sun_2\":0},\"label\":\"OSC\"},{\"skin\":{\"nose_3\":5,\"lipstick_1\":0,\"eyebrows_2\":0,\"cheeks_1\":2,\"eyebrows_6\":0,\"dad\":29,\"makeup_4\":0,\"nose_4\":8,\"beard_3\":0,\"hair_1\":76,\"bracelets_1\":-1,\"bodyb_4\":0,\"sun_1\":0,\"arms_2\":0,\"bproof_2\":0,\"decals_2\":0,\"bags_2\":0,\"beard_2\":10,\"chain_2\":2,\"lip_thickness\":-2,\"mom\":43,\"blush_3\":0,\"age_1\":0,\"cheeks_3\":6,\"tshirt_1\":4,\"blush_1\":0,\"bodyb_1\":-1,\"eye_color\":0,\"ears_1\":-1,\"helmet_1\":-1,\"bodyb_2\":0,\"face_md_weight\":61,\"nose_6\":0,\"hair_color_1\":61,\"chest_2\":0,\"makeup_1\":0,\"bodyb_3\":-1,\"moles_2\":0,\"helmet_2\":0,\"eyebrows_5\":0,\"makeup_2\":0,\"bracelets_2\":0,\"tshirt_2\":2,\"lipstick_2\":0,\"chin_3\":0,\"decals_1\":0,\"beard_4\":0,\"pants_1\":28,\"neck_thickness\":0,\"beard_1\":11,\"shoes_2\":2,\"jaw_1\":0,\"torso_2\":2,\"lipstick_3\":0,\"chin_1\":0,\"eyebrows_4\":0,\"jaw_2\":0,\"chest_1\":0,\"hair_color_2\":29,\"moles_1\":0,\"mask_2\":0,\"sun_2\":0,\"bags_1\":0,\"eyebrows_1\":0,\"watches_2\":0,\"shoes_1\":70,\"makeup_3\":0,\"chin_4\":0,\"blush_2\":0,\"torso_1\":23,\"eyebrows_3\":0,\"hair_2\":0,\"mask_1\":0,\"eye_squint\":0,\"complexion_1\":0,\"blemishes_1\":0,\"chest_3\":0,\"nose_2\":6,\"age_2\":0,\"chain_1\":22,\"bproof_1\":0,\"complexion_2\":0,\"ears_2\":0,\"skin_md_weight\":27,\"watches_1\":-1,\"arms\":1,\"glasses_1\":0,\"nose_1\":-5,\"chin_13\":0,\"blemishes_2\":0,\"glasses_2\":0,\"pants_2\":3,\"nose_5\":10,\"cheeks_2\":-10,\"sex\":0,\"chin_2\":0,\"lipstick_4\":0},\"label\":\"gg\"},{\"skin\":{\"nose_3\":5,\"lipstick_1\":0,\"eyebrows_2\":0,\"cheeks_1\":2,\"eyebrows_6\":0,\"dad\":29,\"makeup_4\":0,\"nose_4\":8,\"beard_3\":0,\"hair_1\":76,\"bracelets_1\":-1,\"bodyb_4\":0,\"sun_1\":0,\"arms_2\":0,\"bproof_2\":0,\"decals_2\":0,\"bags_2\":0,\"beard_2\":10,\"chain_2\":2,\"lip_thickness\":-2,\"mom\":43,\"blush_3\":0,\"age_1\":0,\"cheeks_3\":6,\"tshirt_1\":4,\"blush_1\":0,\"bodyb_1\":-1,\"eye_color\":0,\"ears_1\":-1,\"helmet_1\":-1,\"bodyb_2\":0,\"face_md_weight\":61,\"nose_6\":0,\"hair_color_1\":61,\"chest_2\":0,\"nose_2\":6,\"bodyb_3\":-1,\"chest_1\":0,\"helmet_2\":0,\"eyebrows_5\":0,\"makeup_2\":0,\"pants_1\":28,\"tshirt_2\":2,\"torso_1\":24,\"chin_3\":0,\"lipstick_2\":0,\"beard_4\":0,\"eye_squint\":0,\"decals_1\":0,\"beard_1\":11,\"shoes_2\":2,\"jaw_1\":0,\"torso_2\":2,\"skin_md_weight\":27,\"watches_1\":-1,\"eyebrows_4\":0,\"jaw_2\":0,\"neck_thickness\":0,\"sun_2\":0,\"moles_1\":0,\"mask_2\":0,\"moles_2\":0,\"bags_1\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"shoes_1\":70,\"eyebrows_3\":0,\"chin_4\":0,\"blush_2\":0,\"hair_color_2\":29,\"chin_1\":0,\"hair_2\":0,\"mask_1\":0,\"makeup_1\":0,\"complexion_1\":0,\"blemishes_1\":0,\"chest_3\":0,\"pants_2\":3,\"chain_1\":22,\"nose_1\":-5,\"bproof_1\":0,\"complexion_2\":0,\"sex\":0,\"ears_2\":0,\"bracelets_2\":0,\"arms\":1,\"glasses_1\":0,\"watches_2\":0,\"chin_13\":0,\"blemishes_2\":0,\"glasses_2\":0,\"lipstick_3\":0,\"nose_5\":10,\"cheeks_2\":-10,\"age_2\":0,\"chin_2\":0,\"lipstick_4\":0},\"label\":\"hola\"},{\"skin\":{\"nose_3\":5,\"lipstick_1\":0,\"eyebrows_2\":0,\"cheeks_1\":2,\"eyebrows_6\":0,\"dad\":29,\"makeup_4\":0,\"nose_4\":8,\"beard_3\":0,\"hair_1\":76,\"bracelets_1\":-1,\"age_2\":0,\"sun_1\":0,\"arms_2\":0,\"bproof_2\":0,\"decals_2\":0,\"bags_2\":0,\"beard_2\":10,\"chain_2\":2,\"lip_thickness\":-2,\"mom\":43,\"pants_2\":3,\"age_1\":0,\"cheeks_3\":6,\"tshirt_1\":4,\"blush_1\":0,\"watches_1\":-1,\"eye_color\":0,\"pants_1\":28,\"helmet_1\":-1,\"bodyb_2\":0,\"face_md_weight\":61,\"nose_6\":0,\"hair_color_1\":61,\"neck_thickness\":0,\"moles_2\":0,\"bodyb_3\":-1,\"chest_2\":0,\"helmet_2\":0,\"eyebrows_5\":0,\"makeup_2\":0,\"bodyb_4\":0,\"tshirt_2\":2,\"bproof_1\":0,\"chin_3\":0,\"lipstick_2\":0,\"beard_4\":0,\"bracelets_2\":0,\"sex\":0,\"beard_1\":11,\"shoes_2\":2,\"jaw_1\":0,\"torso_2\":2,\"makeup_3\":0,\"sun_2\":0,\"eyebrows_4\":0,\"jaw_2\":0,\"chest_1\":0,\"hair_color_2\":29,\"moles_1\":0,\"mask_2\":0,\"nose_1\":-5,\"bags_1\":0,\"eyebrows_1\":0,\"chin_1\":0,\"shoes_1\":70,\"bodyb_1\":-1,\"chin_4\":0,\"blush_2\":0,\"torso_1\":23,\"eyebrows_3\":0,\"hair_2\":0,\"mask_1\":0,\"lipstick_3\":0,\"complexion_1\":0,\"blemishes_1\":0,\"chest_3\":0,\"chin_13\":0,\"cheeks_2\":-10,\"chain_1\":22,\"complexion_2\":0,\"eye_squint\":0,\"ears_2\":0,\"blemishes_2\":0,\"makeup_1\":0,\"arms\":1,\"glasses_1\":0,\"ears_1\":-1,\"skin_md_weight\":27,\"nose_2\":6,\"glasses_2\":0,\"watches_2\":0,\"nose_5\":10,\"decals_1\":0,\"blush_3\":0,\"chin_2\":0,\"lipstick_4\":0},\"label\":\"osc\"}]}'),
(66, 'user_ears', 'char1:a0a122055d25c1810111bab7bd182013162d3adb', '{}'),
(67, 'user_glasses', 'char1:a0a122055d25c1810111bab7bd182013162d3adb', '{}'),
(68, 'property', NULL, '{}'),
(69, 'property', NULL, '{}'),
(70, 'property', NULL, '{}'),
(71, 'property', NULL, '{}'),
(72, 'property', NULL, '{}'),
(73, 'property', NULL, '{}'),
(74, 'property', NULL, '{}'),
(75, 'property', NULL, '{}'),
(76, 'property', NULL, '{}'),
(77, 'property', NULL, '{}'),
(78, 'property', NULL, '{}'),
(79, 'property', NULL, '{}'),
(80, 'property', NULL, '{}'),
(81, 'property', NULL, '{}'),
(82, 'property', NULL, '{}'),
(83, 'property', NULL, '{}'),
(84, 'property', NULL, '{}'),
(85, 'property', NULL, '{}'),
(86, 'property', NULL, '{}'),
(87, 'property', NULL, '{}'),
(88, 'property', NULL, '{}'),
(89, 'property', NULL, '{}'),
(90, 'property', NULL, '{}'),
(91, 'property', NULL, '{}'),
(92, 'property', NULL, '{}'),
(93, 'property', NULL, '{}'),
(94, 'property', NULL, '{}'),
(95, 'property', NULL, '{}'),
(96, 'property', NULL, '{}'),
(97, 'property', NULL, '{}'),
(98, 'property', NULL, '{}'),
(99, 'property', NULL, '{}'),
(100, 'property', NULL, '{}'),
(101, 'property', NULL, '{}'),
(102, 'property', NULL, '{}'),
(103, 'property', NULL, '{}'),
(104, 'property', NULL, '{}'),
(105, 'property', NULL, '{}'),
(106, 'property', NULL, '{}'),
(107, 'property', NULL, '{}'),
(108, 'property', NULL, '{}'),
(109, 'property', NULL, '{}'),
(110, 'property', NULL, '{}'),
(111, 'property', NULL, '{}'),
(112, 'property', NULL, '{}'),
(113, 'property', NULL, '{}'),
(114, 'property', NULL, '{}'),
(115, 'property', NULL, '{}'),
(116, 'property', NULL, '{}'),
(117, 'property', NULL, '{}'),
(118, 'property', NULL, '{}'),
(119, 'property', NULL, '{}'),
(120, 'property', NULL, '{}'),
(121, 'property', NULL, '{}'),
(122, 'property', NULL, '{}'),
(123, 'property', NULL, '{}'),
(124, 'property', NULL, '{}'),
(125, 'property', NULL, '{}'),
(126, 'property', NULL, '{}'),
(127, 'property', NULL, '{}'),
(128, 'property', NULL, '{}'),
(129, 'property', NULL, '{}'),
(130, 'property', NULL, '{}'),
(131, 'property', NULL, '{}'),
(132, 'property', NULL, '{}'),
(133, 'property', NULL, '{}'),
(134, 'property', NULL, '{}'),
(135, 'property', NULL, '{}'),
(136, 'property', NULL, '{}'),
(137, 'property', NULL, '{}'),
(138, 'property', NULL, '{}'),
(139, 'property', NULL, '{}'),
(140, 'property', NULL, '{}'),
(141, 'property', NULL, '{}'),
(142, 'property', NULL, '{}'),
(143, 'property', NULL, '{}'),
(144, 'property', NULL, '{}'),
(145, 'property', NULL, '{}'),
(146, 'property', NULL, '{}'),
(147, 'property', NULL, '{}'),
(148, 'property', 'char1:ed923ad8b5d281ef46f305b44a0f532178fe882b', '{}'),
(149, 'user_ears', 'char1:ed923ad8b5d281ef46f305b44a0f532178fe882b', '{}'),
(150, 'user_glasses', 'char1:ed923ad8b5d281ef46f305b44a0f532178fe882b', '{}'),
(151, 'user_mask', 'char1:ed923ad8b5d281ef46f305b44a0f532178fe882b', '{}'),
(152, 'user_helmet', 'char1:ed923ad8b5d281ef46f305b44a0f532178fe882b', '{}'),
(153, 'property', NULL, '{}'),
(154, 'property', NULL, '{}'),
(155, 'property', NULL, '{}'),
(156, 'property', NULL, '{}'),
(157, 'property', NULL, '{}'),
(158, 'property', NULL, '{}'),
(159, 'property', NULL, '{}'),
(160, 'property', NULL, '{}'),
(161, 'property', NULL, '{}'),
(162, 'property', NULL, '{}'),
(163, 'property', NULL, '{}'),
(164, 'property', NULL, '{}'),
(165, 'property', NULL, '{}'),
(166, 'property', NULL, '{}');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `weight` int(11) NOT NULL DEFAULT 1,
  `rare` tinyint(4) NOT NULL DEFAULT 0,
  `can_remove` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
('alive_chicken', 'Living chicken', 1, 0, 1),
('bandage', 'Bandage', 2, 0, 1),
('blowpipe', 'Blowtorch', 2, 0, 1),
('bread', 'Bread', 1, 0, 1),
('cannabis', 'Cannabis', 3, 0, 1),
('carokit', 'Body Kit', 3, 0, 1),
('carotool', 'Tools', 2, 0, 1),
('clothe', 'Cloth', 1, 0, 1),
('copper', 'Copper', 1, 0, 1),
('cutted_wood', 'Cut wood', 1, 0, 1),
('diamond', 'Diamond', 1, 0, 1),
('essence', 'Gas', 1, 0, 1),
('fabric', 'Fabric', 1, 0, 1),
('fish', 'Fish', 1, 0, 1),
('fixkit', 'Repair Kit', 3, 0, 1),
('fixtool', 'Repair Tools', 2, 0, 1),
('gazbottle', 'Gas Bottle', 2, 0, 1),
('gold', 'Gold', 1, 0, 1),
('iron', 'Iron', 1, 0, 1),
('marijuana', 'Marijuana', 2, 0, 1),
('medikit', 'Medikit', 2, 0, 1),
('packaged_chicken', 'Chicken fillet', 1, 0, 1),
('packaged_plank', 'Packaged wood', 1, 0, 1),
('petrol', 'Oil', 1, 0, 1),
('petrol_raffin', 'Processed oil', 1, 0, 1),
('phone', 'Phone', 1, 0, 1),
('radio', 'Radio', 1, 0, 1),
('slaughtered_chicken', 'Slaughtered chicken', 1, 0, 1),
('stone', 'Stone', 1, 0, 1),
('washed_stone', 'Washed stone', 1, 0, 1),
('water', 'Water', 1, 0, 1),
('wood', 'Wood', 1, 0, 1),
('wool', 'Wool', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `job2_grades`
--

CREATE TABLE `job2_grades` (
  `id` int(11) NOT NULL,
  `job2_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) DEFAULT 0,
  `skin_male` longtext DEFAULT '{}',
  `skin_female` longtext DEFAULT '{}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job2_grades`
--

INSERT INTO `job2_grades` (`id`, `job2_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'nojob2', 0, 'nojob2', 'Sans job2', 0, '{}', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('unemployed', 'Unemployed', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jobs2`
--

CREATE TABLE `jobs2` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs2`
--

INSERT INTO `jobs2` (`name`, `label`) VALUES
('nojob2', 'NoGang');

-- --------------------------------------------------------

--
-- Table structure for table `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'unemployed', 'Unemployed', 200, '{}', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `licenses`
--

CREATE TABLE `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('boat', 'Boat License'),
('dmv', 'Driving Permit'),
('drive', 'Drivers License'),
('drive_bike', 'Motorcycle License'),
('drive_truck', 'Commercial Drivers License'),
('weapon', 'Weapon License'),
('weed_processing', 'Weed Processing License');

-- --------------------------------------------------------

--
-- Table structure for table `multicharacter_slots`
--

CREATE TABLE `multicharacter_slots` (
  `identifier` varchar(46) NOT NULL,
  `slots` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `owner` varchar(46) DEFAULT NULL,
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `job` varchar(20) DEFAULT NULL,
  `stored` tinyint(1) NOT NULL DEFAULT 0,
  `mileage` float DEFAULT 0,
  `glovebox` longtext DEFAULT NULL,
  `trunk` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ox_inventory`
--

CREATE TABLE `ox_inventory` (
  `owner` varchar(46) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `data` longtext DEFAULT NULL,
  `lastupdated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ox_inventory`
--

INSERT INTO `ox_inventory` (`owner`, `name`, `data`, `lastupdated`) VALUES
('', 'society_cardealer', NULL, '2023-11-27 02:25:00');

-- --------------------------------------------------------

--
-- Table structure for table `rented_vehicles`
--

CREATE TABLE `rented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(46) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `society_moneywash`
--

CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `identifier` varchar(46) NOT NULL,
  `accounts` longtext DEFAULT NULL,
  `group` varchar(50) DEFAULT 'user',
  `inventory` longtext DEFAULT NULL,
  `job` varchar(20) DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `job2` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT 'nojob2',
  `job2_grade` int(11) NOT NULL DEFAULT 0,
  `loadout` longtext DEFAULT NULL,
  `metadata` longtext DEFAULT NULL,
  `position` longtext DEFAULT NULL,
  `firstname` varchar(16) DEFAULT NULL,
  `lastname` varchar(16) DEFAULT NULL,
  `dateofbirth` varchar(10) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `skin` longtext DEFAULT NULL,
  `status` longtext DEFAULT NULL,
  `is_dead` tinyint(1) DEFAULT 0,
  `id` int(11) NOT NULL,
  `disabled` tinyint(1) DEFAULT 0,
  `last_property` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `last_seen` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `phone_number` varchar(20) DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `tattoos` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`identifier`, `accounts`, `group`, `inventory`, `job`, `job_grade`, `job2`, `job2_grade`, `loadout`, `metadata`, `position`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `skin`, `status`, `is_dead`, `id`, `disabled`, `last_property`, `created_at`, `last_seen`, `phone_number`, `pincode`, `tattoos`) VALUES
('char1:a0a122055d25c1810111bab7bd182013162d3adb', '{\"money\":99855,\"bank\":49750,\"black_money\":0}', 'admin', '[{\"count\":99855,\"name\":\"money\",\"slot\":1},{\"count\":1,\"metadata\":{\"dateofbirth\":\"04/02/2000\",\"name\":\"Osc Osc\"},\"name\":\"id_card\",\"slot\":2},{\"count\":1,\"name\":\"ammo-9\",\"slot\":5}]', 'unemployed', 0, 'nojob2', 0, '[]', '{\"armor\":0,\"health\":200}', '{\"y\":-1494.5933837890626,\"z\":3.145751953125,\"x\":-771.5604248046875}', 'Osc', 'Osc', '04/02/2000', 'm', 150, '{\"nose_3\":5,\"lipstick_1\":0,\"bracelets_2\":0,\"cheeks_1\":2,\"eyebrows_6\":0,\"dad\":29,\"makeup_4\":0,\"nose_4\":8,\"beard_3\":0,\"hair_1\":76,\"bracelets_1\":-1,\"age_2\":0,\"sun_1\":0,\"arms_2\":0,\"bproof_2\":0,\"decals_2\":0,\"bags_2\":0,\"beard_2\":10,\"chain_2\":2,\"lip_thickness\":-2,\"mom\":43,\"chest_1\":0,\"age_1\":0,\"cheeks_3\":6,\"tshirt_1\":4,\"blush_1\":0,\"watches_1\":-1,\"eye_color\":0,\"ears_1\":-1,\"helmet_1\":-1,\"bodyb_2\":0,\"face_md_weight\":61,\"nose_6\":0,\"hair_color_1\":61,\"makeup_1\":0,\"blush_2\":0,\"bodyb_3\":-1,\"lipstick_2\":0,\"eye_squint\":0,\"torso_1\":23,\"makeup_2\":0,\"eyebrows_2\":0,\"moles_2\":0,\"chain_1\":22,\"chin_3\":0,\"tshirt_2\":2,\"beard_4\":0,\"skin_md_weight\":27,\"eyebrows_5\":0,\"beard_1\":11,\"shoes_2\":2,\"jaw_1\":0,\"torso_2\":2,\"eyebrows_3\":0,\"neck_thickness\":0,\"eyebrows_4\":0,\"jaw_2\":0,\"sun_2\":0,\"pants_1\":28,\"moles_1\":0,\"mask_2\":0,\"bodyb_1\":-1,\"bags_1\":0,\"eyebrows_1\":0,\"lipstick_3\":0,\"shoes_1\":70,\"decals_1\":0,\"chin_4\":0,\"helmet_2\":0,\"hair_color_2\":29,\"chin_1\":0,\"hair_2\":0,\"mask_1\":0,\"nose_2\":6,\"complexion_1\":0,\"blemishes_1\":0,\"chest_3\":0,\"blush_3\":0,\"bodyb_4\":0,\"nose_1\":-5,\"bproof_1\":0,\"complexion_2\":0,\"ears_2\":0,\"sex\":0,\"makeup_3\":0,\"arms\":1,\"glasses_1\":0,\"watches_2\":0,\"chin_13\":0,\"blemishes_2\":0,\"glasses_2\":0,\"pants_2\":3,\"nose_5\":10,\"cheeks_2\":-10,\"chest_2\":0,\"chin_2\":0,\"lipstick_4\":0}', '[{\"name\":\"hunger\",\"val\":978300,\"percent\":97.83},{\"name\":\"thirst\",\"val\":983725,\"percent\":98.3725}]', 0, 14, 0, NULL, '2023-12-18 01:59:12', '2023-12-18 02:03:05', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(60) NOT NULL,
  `owner` varchar(46) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user_licenses`
--

INSERT INTO `user_licenses` (`id`, `type`, `owner`) VALUES
(6, 'dmv', 'char1:a0a122055d25c1810111bab7bd182013162d3adb'),
(7, 'boat', 'char1:a0a122055d25c1810111bab7bd182013162d3adb');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
('Adder', 'adder', 900000, 'super'),
('Akuma', 'AKUMA', 7500, 'motorcycles'),
('Alpha', 'alpha', 60000, 'sports'),
('Ardent', 'ardent', 1150000, 'sportsclassics'),
('Asea', 'asea', 5500, 'sedans'),
('Autarch', 'autarch', 1955000, 'super'),
('Avarus', 'avarus', 18000, 'motorcycles'),
('Bagger', 'bagger', 13500, 'motorcycles'),
('Baller', 'baller2', 40000, 'suvs'),
('Baller Sport', 'baller3', 60000, 'suvs'),
('Banshee', 'banshee', 70000, 'sports'),
('Banshee 900R', 'banshee2', 255000, 'super'),
('Bati 801', 'bati', 12000, 'motorcycles'),
('Bati 801RR', 'bati2', 19000, 'motorcycles'),
('Bestia GTS', 'bestiagts', 55000, 'sports'),
('BF400', 'bf400', 6500, 'motorcycles'),
('Bf Injection', 'bfinjection', 16000, 'offroad'),
('Bifta', 'bifta', 12000, 'offroad'),
('Bison', 'bison', 45000, 'vans'),
('Blade', 'blade', 15000, 'muscle'),
('Blazer', 'blazer', 6500, 'offroad'),
('Blazer Sport', 'blazer4', 8500, 'offroad'),
('blazer5', 'blazer5', 1755600, 'offroad'),
('Blista', 'blista', 8000, 'compacts'),
('BMX (velo)', 'bmx', 160, 'motorcycles'),
('Bobcat XL', 'bobcatxl', 32000, 'vans'),
('Brawler', 'brawler', 45000, 'offroad'),
('Brioso R/A', 'brioso', 18000, 'compacts'),
('Btype', 'btype', 62000, 'sportsclassics'),
('Btype Hotroad', 'btype2', 155000, 'sportsclassics'),
('Btype Luxe', 'btype3', 85000, 'sportsclassics'),
('Buccaneer', 'buccaneer', 18000, 'muscle'),
('Buccaneer Rider', 'buccaneer2', 24000, 'muscle'),
('Buffalo', 'buffalo', 12000, 'sports'),
('Buffalo S', 'buffalo2', 20000, 'sports'),
('Bullet', 'bullet', 90000, 'super'),
('Burrito', 'burrito3', 19000, 'vans'),
('Camper', 'camper', 42000, 'vans'),
('Carbonizzare', 'carbonizzare', 75000, 'sports'),
('Carbon RS', 'carbonrs', 18000, 'motorcycles'),
('Casco', 'casco', 30000, 'sportsclassics'),
('Cavalcade', 'cavalcade2', 55000, 'suvs'),
('Cheetah', 'cheetah', 375000, 'super'),
('Chimera', 'chimera', 38000, 'motorcycles'),
('Chino', 'chino', 15000, 'muscle'),
('Chino Luxe', 'chino2', 19000, 'muscle'),
('Cliffhanger', 'cliffhanger', 9500, 'motorcycles'),
('Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes'),
('Cognoscenti', 'cognoscenti', 55000, 'sedans'),
('Comet', 'comet2', 65000, 'sports'),
('Comet 5', 'comet5', 1145000, 'sports'),
('Contender', 'contender', 70000, 'suvs'),
('Coquette', 'coquette', 65000, 'sports'),
('Coquette Classic', 'coquette2', 40000, 'sportsclassics'),
('Coquette BlackFin', 'coquette3', 55000, 'muscle'),
('Cruiser (velo)', 'cruiser', 510, 'motorcycles'),
('Cyclone', 'cyclone', 1890000, 'super'),
('Daemon', 'daemon', 11500, 'motorcycles'),
('Daemon High', 'daemon2', 13500, 'motorcycles'),
('Defiler', 'defiler', 9800, 'motorcycles'),
('Deluxo', 'deluxo', 4721500, 'sportsclassics'),
('Dominator', 'dominator', 35000, 'muscle'),
('Double T', 'double', 28000, 'motorcycles'),
('Dubsta', 'dubsta', 45000, 'suvs'),
('Dubsta Luxuary', 'dubsta2', 60000, 'suvs'),
('Bubsta 6x6', 'dubsta3', 120000, 'offroad'),
('Dukes', 'dukes', 28000, 'muscle'),
('Dune Buggy', 'dune', 8000, 'offroad'),
('Elegy', 'elegy2', 38500, 'sports'),
('Emperor', 'emperor', 8500, 'sedans'),
('Enduro', 'enduro', 5500, 'motorcycles'),
('Entity XF', 'entityxf', 425000, 'super'),
('Esskey', 'esskey', 4200, 'motorcycles'),
('Exemplar', 'exemplar', 32000, 'coupes'),
('F620', 'f620', 40000, 'coupes'),
('Faction', 'faction', 20000, 'muscle'),
('Faction Rider', 'faction2', 30000, 'muscle'),
('Faction XL', 'faction3', 40000, 'muscle'),
('Faggio', 'faggio', 1900, 'motorcycles'),
('Vespa', 'faggio2', 2800, 'motorcycles'),
('Felon', 'felon', 42000, 'coupes'),
('Felon GT', 'felon2', 55000, 'coupes'),
('Feltzer', 'feltzer2', 55000, 'sports'),
('Stirling GT', 'feltzer3', 65000, 'sportsclassics'),
('Fixter (velo)', 'fixter', 225, 'motorcycles'),
('FMJ', 'fmj', 185000, 'super'),
('Fhantom', 'fq2', 17000, 'suvs'),
('Fugitive', 'fugitive', 12000, 'sedans'),
('Furore GT', 'furoregt', 45000, 'sports'),
('Fusilade', 'fusilade', 40000, 'sports'),
('Gargoyle', 'gargoyle', 16500, 'motorcycles'),
('Gauntlet', 'gauntlet', 30000, 'muscle'),
('Gang Burrito', 'gburrito', 45000, 'vans'),
('Burrito', 'gburrito2', 29000, 'vans'),
('Glendale', 'glendale', 6500, 'sedans'),
('Grabger', 'granger', 50000, 'suvs'),
('Gresley', 'gresley', 47500, 'suvs'),
('GT 500', 'gt500', 785000, 'sportsclassics'),
('Guardian', 'guardian', 45000, 'offroad'),
('Hakuchou', 'hakuchou', 31000, 'motorcycles'),
('Hakuchou Sport', 'hakuchou2', 55000, 'motorcycles'),
('Hermes', 'hermes', 535000, 'muscle'),
('Hexer', 'hexer', 12000, 'motorcycles'),
('Hotknife', 'hotknife', 125000, 'muscle'),
('Huntley S', 'huntley', 40000, 'suvs'),
('Hustler', 'hustler', 625000, 'muscle'),
('Infernus', 'infernus', 180000, 'super'),
('Innovation', 'innovation', 23500, 'motorcycles'),
('Intruder', 'intruder', 7500, 'sedans'),
('Issi', 'issi2', 10000, 'compacts'),
('Jackal', 'jackal', 38000, 'coupes'),
('Jester', 'jester', 65000, 'sports'),
('Jester(Racecar)', 'jester2', 135000, 'sports'),
('Journey', 'journey', 6500, 'vans'),
('Kamacho', 'kamacho', 345000, 'offroad'),
('Khamelion', 'khamelion', 38000, 'sports'),
('Kuruma', 'kuruma', 30000, 'sports'),
('Landstalker', 'landstalker', 35000, 'suvs'),
('RE-7B', 'le7b', 325000, 'super'),
('Lynx', 'lynx', 40000, 'sports'),
('Mamba', 'mamba', 70000, 'sports'),
('Manana', 'manana', 12800, 'sportsclassics'),
('Manchez', 'manchez', 5300, 'motorcycles'),
('Massacro', 'massacro', 65000, 'sports'),
('Massacro(Racecar)', 'massacro2', 130000, 'sports'),
('Mesa', 'mesa', 16000, 'suvs'),
('Mesa Trail', 'mesa3', 40000, 'suvs'),
('Minivan', 'minivan', 13000, 'vans'),
('Monroe', 'monroe', 55000, 'sportsclassics'),
('The Liberator', 'monster', 210000, 'offroad'),
('Moonbeam', 'moonbeam', 18000, 'vans'),
('Moonbeam Rider', 'moonbeam2', 35000, 'vans'),
('Nemesis', 'nemesis', 5800, 'motorcycles'),
('Neon', 'neon', 1500000, 'sports'),
('Nightblade', 'nightblade', 35000, 'motorcycles'),
('Nightshade', 'nightshade', 65000, 'muscle'),
('9F', 'ninef', 65000, 'sports'),
('9F Cabrio', 'ninef2', 80000, 'sports'),
('Omnis', 'omnis', 35000, 'sports'),
('Oppressor', 'oppressor', 3524500, 'super'),
('Oracle XS', 'oracle2', 35000, 'coupes'),
('Osiris', 'osiris', 160000, 'super'),
('Panto', 'panto', 10000, 'compacts'),
('Paradise', 'paradise', 19000, 'vans'),
('Pariah', 'pariah', 1420000, 'sports'),
('Patriot', 'patriot', 55000, 'suvs'),
('PCJ-600', 'pcj', 6200, 'motorcycles'),
('Penumbra', 'penumbra', 28000, 'sports'),
('Pfister', 'pfister811', 85000, 'super'),
('Phoenix', 'phoenix', 12500, 'muscle'),
('Picador', 'picador', 18000, 'muscle'),
('Pigalle', 'pigalle', 20000, 'sportsclassics'),
('Prairie', 'prairie', 12000, 'compacts'),
('Premier', 'premier', 8000, 'sedans'),
('Primo Custom', 'primo2', 14000, 'sedans'),
('X80 Proto', 'prototipo', 2500000, 'super'),
('Radius', 'radi', 29000, 'suvs'),
('raiden', 'raiden', 1375000, 'sports'),
('Rapid GT', 'rapidgt', 35000, 'sports'),
('Rapid GT Convertible', 'rapidgt2', 45000, 'sports'),
('Rapid GT3', 'rapidgt3', 885000, 'sportsclassics'),
('Reaper', 'reaper', 150000, 'super'),
('Rebel', 'rebel2', 35000, 'offroad'),
('Regina', 'regina', 5000, 'sedans'),
('Retinue', 'retinue', 615000, 'sportsclassics'),
('Revolter', 'revolter', 1610000, 'sports'),
('riata', 'riata', 380000, 'offroad'),
('Rocoto', 'rocoto', 45000, 'suvs'),
('Ruffian', 'ruffian', 6800, 'motorcycles'),
('Ruiner 2', 'ruiner2', 5745600, 'muscle'),
('Rumpo', 'rumpo', 15000, 'vans'),
('Rumpo Trail', 'rumpo3', 19500, 'vans'),
('Sabre Turbo', 'sabregt', 20000, 'muscle'),
('Sabre GT', 'sabregt2', 25000, 'muscle'),
('Sanchez', 'sanchez', 5300, 'motorcycles'),
('Sanchez Sport', 'sanchez2', 5300, 'motorcycles'),
('Sanctus', 'sanctus', 25000, 'motorcycles'),
('Sandking', 'sandking', 55000, 'offroad'),
('Savestra', 'savestra', 990000, 'sportsclassics'),
('SC 1', 'sc1', 1603000, 'super'),
('Schafter', 'schafter2', 25000, 'sedans'),
('Schafter V12', 'schafter3', 50000, 'sports'),
('Scorcher (velo)', 'scorcher', 280, 'motorcycles'),
('Seminole', 'seminole', 25000, 'suvs'),
('Sentinel', 'sentinel', 32000, 'coupes'),
('Sentinel XS', 'sentinel2', 40000, 'coupes'),
('Sentinel3', 'sentinel3', 650000, 'sports'),
('Seven 70', 'seven70', 39500, 'sports'),
('ETR1', 'sheava', 220000, 'super'),
('Shotaro Concept', 'shotaro', 320000, 'motorcycles'),
('Slam Van', 'slamvan3', 11500, 'muscle'),
('Sovereign', 'sovereign', 22000, 'motorcycles'),
('Stinger', 'stinger', 80000, 'sportsclassics'),
('Stinger GT', 'stingergt', 75000, 'sportsclassics'),
('Streiter', 'streiter', 500000, 'sports'),
('Stretch', 'stretch', 90000, 'sedans'),
('Stromberg', 'stromberg', 3185350, 'sports'),
('Sultan', 'sultan', 15000, 'sports'),
('Sultan RS', 'sultanrs', 65000, 'super'),
('Super Diamond', 'superd', 130000, 'sedans'),
('Surano', 'surano', 50000, 'sports'),
('Surfer', 'surfer', 12000, 'vans'),
('T20', 't20', 300000, 'super'),
('Tailgater', 'tailgater', 30000, 'sedans'),
('Tampa', 'tampa', 16000, 'muscle'),
('Drift Tampa', 'tampa2', 80000, 'sports'),
('Thrust', 'thrust', 24000, 'motorcycles'),
('Tri bike (velo)', 'tribike3', 520, 'motorcycles'),
('Trophy Truck', 'trophytruck', 60000, 'offroad'),
('Trophy Truck Limited', 'trophytruck2', 80000, 'offroad'),
('Tropos', 'tropos', 40000, 'sports'),
('Turismo R', 'turismor', 350000, 'super'),
('Tyrus', 'tyrus', 600000, 'super'),
('Vacca', 'vacca', 120000, 'super'),
('Vader', 'vader', 7200, 'motorcycles'),
('Verlierer', 'verlierer2', 70000, 'sports'),
('Vigero', 'vigero', 12500, 'muscle'),
('Virgo', 'virgo', 14000, 'muscle'),
('Viseris', 'viseris', 875000, 'sportsclassics'),
('Visione', 'visione', 2250000, 'super'),
('Voltic', 'voltic', 90000, 'super'),
('Voltic 2', 'voltic2', 3830400, 'super'),
('Voodoo', 'voodoo', 7200, 'muscle'),
('Vortex', 'vortex', 9800, 'motorcycles'),
('Warrener', 'warrener', 4000, 'sedans'),
('Washington', 'washington', 9000, 'sedans'),
('Windsor', 'windsor', 95000, 'coupes'),
('Windsor Drop', 'windsor2', 125000, 'coupes'),
('Woflsbane', 'wolfsbane', 9000, 'motorcycles'),
('XLS', 'xls', 32000, 'suvs'),
('Yosemite', 'yosemite', 485000, 'muscle'),
('Youga', 'youga', 10800, 'vans'),
('Youga Luxuary', 'youga2', 14500, 'vans'),
('Z190', 'z190', 900000, 'sportsclassics'),
('Zentorno', 'zentorno', 1500000, 'super'),
('Zion', 'zion', 36000, 'coupes'),
('Zion Cabrio', 'zion2', 45000, 'coupes'),
('Zombie', 'zombiea', 9500, 'motorcycles'),
('Zombie Luxuary', 'zombieb', 12000, 'motorcycles'),
('Z-Type', 'ztype', 220000, 'sportsclassics');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
('compacts', 'Compacts'),
('coupes', 'Coupés'),
('motorcycles', 'Motos'),
('muscle', 'Muscle'),
('offroad', 'Off Road'),
('sedans', 'Sedans'),
('sports', 'Sports'),
('sportsclassics', 'Sports Classics'),
('super', 'Super'),
('suvs', 'SUVs'),
('vans', 'Vans');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_sold`
--

CREATE TABLE `vehicle_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  ADD KEY `index_addon_account_data_account_name` (`account_name`);

--
-- Indexes for table `addon_inventory`
--
ALTER TABLE `addon_inventory`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
  ADD KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
  ADD KEY `index_addon_inventory_inventory_name` (`inventory_name`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datastore`
--
ALTER TABLE `datastore`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `datastore_data`
--
ALTER TABLE `datastore_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  ADD KEY `index_datastore_data_name` (`name`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `job2_grades`
--
ALTER TABLE `job2_grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `jobs2`
--
ALTER TABLE `jobs2`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`type`);

--
-- Indexes for table `multicharacter_slots`
--
ALTER TABLE `multicharacter_slots`
  ADD PRIMARY KEY (`identifier`) USING BTREE,
  ADD KEY `slots` (`slots`) USING BTREE;

--
-- Indexes for table `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Indexes for table `ox_inventory`
--
ALTER TABLE `ox_inventory`
  ADD UNIQUE KEY `owner` (`owner`,`name`);

--
-- Indexes for table `rented_vehicles`
--
ALTER TABLE `rented_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Indexes for table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`identifier`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`model`);

--
-- Indexes for table `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `vehicle_sold`
--
ALTER TABLE `vehicle_sold`
  ADD PRIMARY KEY (`plate`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `datastore_data`
--
ALTER TABLE `datastore_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;