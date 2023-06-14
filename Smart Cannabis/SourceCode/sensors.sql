-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 21, 2022 at 06:48 AM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sensors`
--

-- --------------------------------------------------------

--
-- Table structure for table `dht`
--

CREATE TABLE `dht` (
  `id` int(6) NOT NULL,
  `temp` varchar(100) NOT NULL,
  `humi` varchar(100) NOT NULL,
  `timerecord` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dht`
--

INSERT INTO `dht` (`id`, `temp`, `humi`) VALUES
(1, '27.10', '77.00'),
(2, '27.10', '74.00'),
(3, '28.50', '79.00'),
(4, '28.90', '81.00'),
(5, '31.30', '86.00'),
(6, '30.80', '86.00'),
(7, '29.80', '85.00'),
(8, '29.30', '84.00'),
(9, '28.50', '83.00'),
(10, '28.00', '81.00'),
(11, '28.00', '80.00'),
(12, '27.60', '78.00'),
(13, '27.10', '76.00'),
(14, '27.10', '73.00'),
(15, '27.10', '71.00'),
(16, '27.10', '69.00'),
(17, '27.10', '66.00'),
(18, '27.10', '63.00'),
(19, '23.80', '69.00'),
(20, '23.80', '69.00'),
(21, '23.80', '69.00'),
(22, '23.80', '69.00'),
(23, '23.80', '69.00'),
(24, '23.80', '69.00'),
(25, '23.80', '69.00'),
(26, '23.80', '68.00'),
(27, '23.80', '69.00'),
(28, '24.10', '69.00'),
(29, '24.10', '69.00'),
(30, '24.10', '69.00'),
(31, '24.10', '69.00'),
(32, '24.10', '68.00'),
(33, '24.10', '68.00'),
(34, '24.10', '68.00'),
(35, '24.10', '67.00'),
(36, '24.10', '67.00'),
(37, '24.10', '67.00'),
(38, '24.10', '66.00'),
(39, '24.10', '66.00'),
(40, '24.10', '66.00'),
(41, '24.10', '66.00'),
(42, '24.10', '66.00'),
(43, '24.10', '66.00'),
(44, '24.10', '66.00'),
(45, '24.10', '66.00'),
(46, '24.10', '66.00'),
(47, '24.10', '67.00'),
(48, '24.10', '67.00'),
(49, '24.10', '67.00'),
(50, '24.10', '66.00'),
(51, '24.10', '65.00'),
(52, '24.10', '65.00'),
(53, '24.10', '65.00'),
(54, '24.10', '65.00'),
(55, '24.10', '65.00'),
(56, '24.10', '65.00'),
(57, '30.80', '94.00'),
(58, '30.80', '94.00'),
(59, '28.50', '94.00'),
(60, '27.60', '95.00'),
(61, '27.10', '93.00'),
(62, '26.70', '93.00'),
(63, '26.70', '92.00'),
(64, '26.20', '92.00'),
(65, '25.80', '90.00'),
(66, '25.80', '89.00'),
(67, '25.30', '88.00'),
(68, '25.30', '86.00'),
(69, '25.30', '85.00'),
(70, '24.80', '85.00'),
(71, '24.80', '84.00'),
(72, '24.80', '83.00'),
(73, '24.80', '83.00'),
(74, '24.80', '82.00'),
(75, '24.50', '81.00'),
(76, '24.50', '81.00'),
(77, '24.50', '81.00'),
(78, '24.50', '80.00'),
(79, '24.50', '79.00'),
(80, '24.50', '78.00'),
(81, '24.50', '78.00'),
(82, '24.50', '77.00'),
(83, '24.50', '77.00'),
(84, '24.50', '77.00'),
(85, '24.20', '77.00'),
(86, '24.10', '76.00'),
(87, '24.10', '75.00'),
(88, '24.10', '75.00'),
(89, '24.10', '74.00'),
(90, '24.10', '74.00'),
(91, '30.00', '90.00'),
(92, '29.30', '92.00'),
(93, '28.50', '92.00'),
(94, '27.60', '93.00'),
(95, '27.10', '92.00'),
(96, '26.70', '91.00'),
(97, '26.20', '90.00'),
(98, '25.80', '89.00'),
(99, '25.30', '87.00'),
(100, '25.30', '85.00'),
(101, '24.90', '84.00'),
(102, '24.80', '82.00'),
(103, '24.80', '81.00'),
(104, '24.50', '81.00'),
(105, '24.50', '79.00'),
(106, '24.50', '78.00'),
(107, '24.50', '77.00'),
(108, '24.10', '77.00'),
(109, '24.10', '76.00'),
(110, '24.10', '76.00'),
(111, '24.10', '75.00'),
(112, '24.10', '75.00'),
(113, '24.10', '74.00'),
(114, '24.10', '74.00'),
(115, '24.10', '74.00'),
(116, '24.10', '73.00'),
(117, '24.10', '73.00'),
(118, '24.10', '73.00'),
(119, '24.10', '73.00'),
(120, '24.10', '72.00'),
(121, '24.10', '72.00'),
(122, '24.10', '72.00'),
(123, '23.80', '72.00'),
(124, '23.80', '71.00'),
(125, '23.80', '71.00'),
(126, '23.80', '71.00'),
(127, '23.80', '71.00'),
(128, '23.80', '71.00'),
(129, '23.80', '71.00'),
(130, '23.80', '70.00'),
(131, '23.80', '70.00'),
(132, '23.80', '70.00'),
(133, '23.80', '71.00'),
(134, '23.80', '71.00'),
(135, '23.80', '71.00'),
(136, '23.80', '71.00'),
(137, '23.80', '71.00'),
(138, '23.80', '70.00'),
(139, '23.80', '69.00'),
(140, '23.80', '69.00'),
(141, '23.80', '69.00'),
(142, '23.80', '70.00'),
(143, '23.80', '70.00'),
(144, '23.80', '70.00'),
(145, '24.10', '70.00'),
(146, '24.10', '70.00'),
(147, '24.10', '70.00'),
(148, '24.10', '69.00'),
(149, '24.10', '69.00'),
(150, '24.10', '69.00'),
(151, '24.10', '69.00'),
(152, '24.10', '69.00'),
(153, '24.10', '69.00'),
(154, '24.10', '69.00'),
(155, '24.10', '69.00'),
(156, '24.10', '69.00'),
(157, '24.10', '69.00'),
(158, '24.10', '69.00'),
(159, '24.10', '69.00'),
(160, '24.10', '69.00'),
(161, '24.10', '69.00'),
(162, '24.10', '69.00'),
(163, '24.10', '69.00'),
(164, '24.20', '69.00'),
(165, '24.50', '69.00'),
(166, '24.50', '69.00'),
(167, '24.50', '68.00'),
(168, '24.50', '68.00'),
(169, '24.50', '68.00'),
(170, '24.50', '68.00'),
(171, '24.50', '67.00'),
(172, '24.50', '67.00'),
(173, '24.50', '67.00'),
(174, '24.50', '66.00'),
(175, '24.50', '66.00'),
(176, '24.50', '66.00'),
(177, '24.50', '66.00'),
(178, '24.50', '66.00'),
(179, '24.50', '66.00'),
(180, '24.50', '66.00'),
(181, '24.50', '66.00'),
(182, '24.50', '66.00'),
(183, '24.50', '66.00'),
(184, '24.50', '66.00'),
(185, '24.50', '66.00'),
(186, '24.50', '66.00'),
(187, '24.50', '65.00'),
(188, '24.50', '65.00'),
(189, '24.50', '65.00'),
(190, '24.50', '65.00'),
(191, '24.50', '65.00'),
(192, '24.50', '65.00'),
(193, '24.50', '65.00'),
(194, '24.50', '66.00'),
(195, '24.50', '66.00'),
(196, '24.50', '66.00'),
(197, '24.50', '66.00'),
(198, '24.50', '66.00'),
(199, '24.50', '66.00'),
(200, '24.50', '66.00'),
(201, '24.50', '66.00'),
(202, '24.50', '66.00'),
(203, '24.50', '66.00'),
(204, '24.50', '65.00'),
(205, '24.50', '65.00'),
(206, '24.50', '65.00'),
(207, '24.20', '65.00'),
(208, '24.10', '66.00'),
(209, '24.10', '66.00'),
(210, '24.20', '67.00'),
(211, '24.90', '62.00'),
(212, '24.80', '62.00'),
(213, '24.80', '62.00'),
(214, '24.80', '62.00'),
(215, '24.90', '63.00'),
(216, '25.80', '70.00'),
(217, '34.20', '94.00'),
(218, '32.80', '95.00'),
(219, '31.80', '95.00'),
(220, '28.50', '91.00'),
(221, '27.60', '89.00'),
(222, '27.10', '89.00'),
(223, '26.70', '86.00'),
(224, '26.20', '85.00'),
(225, '25.80', '82.00'),
(226, '25.80', '81.00'),
(227, '25.30', '81.00'),
(228, '25.30', '80.00'),
(229, '24.80', '79.00'),
(230, '24.80', '78.00'),
(231, '24.50', '78.00'),
(232, '24.50', '78.00'),
(233, '24.10', '77.00'),
(234, '24.10', '77.00'),
(235, '24.10', '77.00'),
(236, '23.80', '77.00'),
(237, '23.80', '77.00'),
(238, '23.80', '76.00'),
(239, '23.80', '77.00'),
(240, '23.80', '76.00'),
(241, '23.80', '75.00'),
(242, '23.80', '74.00'),
(243, '23.80', '75.00'),
(244, '23.80', '74.00'),
(245, '23.80', '73.00'),
(246, '23.80', '73.00'),
(247, '23.80', '73.00'),
(248, '23.80', '73.00'),
(249, '23.80', '73.00'),
(250, '23.80', '73.00'),
(251, '23.80', '73.00'),
(252, '23.80', '72.00'),
(253, '23.80', '72.00'),
(254, '23.80', '72.00'),
(255, '23.80', '72.00'),
(256, '24.10', '72.00'),
(257, '24.10', '72.00'),
(258, '23.80', '71.00'),
(259, '23.80', '71.00'),
(260, '23.80', '71.00'),
(261, '24.10', '71.00'),
(262, '24.10', '70.00'),
(263, '24.10', '69.00'),
(264, '24.10', '69.00'),
(265, '24.10', '69.00'),
(266, '24.10', '69.00'),
(267, '24.20', '69.00'),
(268, '24.50', '69.00'),
(269, '24.50', '69.00'),
(270, '24.50', '69.00'),
(271, '24.50', '69.00'),
(272, '24.40', '69.00'),
(273, '24.10', '69.00'),
(274, '24.10', '68.00'),
(275, '24.10', '68.00'),
(276, '24.10', '68.00'),
(277, '24.10', '68.00'),
(278, '24.10', '68.00'),
(279, '24.10', '68.00'),
(280, '24.10', '68.00'),
(281, '24.10', '68.00'),
(282, '24.10', '68.00'),
(283, '24.10', '67.00'),
(284, '24.10', '67.00'),
(285, '24.10', '67.00'),
(286, '24.10', '67.00'),
(287, '24.10', '67.00'),
(288, '24.10', '68.00'),
(289, '24.10', '68.00'),
(290, '24.10', '68.00'),
(291, '24.10', '68.00'),
(292, '24.10', '68.00'),
(293, '24.10', '68.00'),
(294, '27.60', '79.00'),
(295, '32.80', '92.00'),
(296, '34.20', '93.00'),
(297, '32.80', '94.00'),
(298, '31.30', '94.00'),
(299, '30.20', '93.00'),
(300, '29.30', '93.00'),
(301, '28.50', '93.00'),
(302, '28.00', '93.00'),
(303, '27.60', '94.00'),
(304, '27.10', '94.00'),
(305, '26.20', '94.00'),
(306, '25.80', '93.00'),
(307, '31.40', '94.00'),
(308, '34.20', '94.00'),
(309, '32.80', '95.00'),
(310, '31.30', '94.00'),
(311, '29.80', '95.00'),
(312, '28.50', '94.00'),
(313, '28.00', '93.00'),
(314, '25.80', '93.00'),
(315, '25.30', '92.00'),
(316, '25.30', '90.00'),
(317, '24.80', '89.00'),
(318, '25.30', '72.00'),
(319, '25.30', '72.00'),
(320, '25.80', '72.00'),
(321, '25.80', '72.00'),
(322, '30.80', '87.00'),
(323, '34.70', '91.00'),
(324, '33.80', '92.00'),
(325, '32.80', '92.00'),
(326, '31.80', '92.00'),
(327, '30.80', '91.00'),
(328, '30.20', '91.00'),
(329, '29.80', '91.00'),
(330, '29.30', '90.00'),
(331, '28.90', '89.00'),
(332, '28.00', '88.00'),
(333, '27.60', '85.00'),
(334, '26.70', '79.00'),
(335, '26.20', '80.00'),
(336, '26.20', '80.00'),
(337, '26.20', '80.00'),
(338, '26.20', '81.00'),
(339, '26.20', '81.00'),
(340, '26.20', '81.00'),
(341, '26.20', '81.00'),
(342, '26.20', '81.00'),
(343, '26.70', '80.00'),
(344, '26.70', '78.00'),
(345, '26.70', '77.00'),
(346, '26.70', '76.00'),
(347, '26.70', '75.00'),
(348, '26.70', '74.00'),
(349, '26.70', '74.00'),
(350, '26.70', '73.00'),
(351, '26.70', '73.00'),
(352, '26.70', '72.00'),
(353, '26.70', '72.00'),
(354, '26.70', '72.00'),
(355, '26.70', '71.00'),
(356, '26.70', '71.00'),
(357, '26.70', '71.00'),
(358, '26.70', '71.00'),
(359, '26.70', '71.00'),
(360, '26.70', '71.00'),
(361, '26.70', '71.00'),
(362, '26.70', '71.00'),
(363, '26.70', '70.00'),
(364, '26.70', '70.00'),
(365, '26.70', '70.00'),
(366, '26.70', '70.00'),
(367, '26.70', '70.00'),
(368, '26.70', '70.00'),
(369, '26.70', '70.00'),
(370, '26.70', '70.00'),
(371, '26.70', '70.00'),
(372, '26.70', '70.00'),
(373, '26.70', '70.00'),
(374, '26.70', '70.00'),
(375, '26.70', '70.00'),
(376, '26.70', '70.00'),
(377, '26.70', '70.00'),
(378, '26.70', '70.00'),
(379, '26.70', '70.00'),
(380, '26.70', '70.00'),
(381, '26.70', '70.00'),
(382, '26.70', '70.00'),
(383, '26.70', '70.00'),
(384, '26.70', '70.00'),
(385, '26.70', '70.00'),
(386, '26.70', '70.00'),
(387, '26.70', '70.00'),
(388, '26.70', '70.00'),
(389, '26.70', '70.00'),
(390, '26.70', '71.00'),
(391, '26.70', '72.00'),
(392, '26.70', '71.00'),
(393, '26.70', '71.00'),
(394, '26.70', '70.00'),
(395, '26.70', '70.00'),
(396, '26.70', '70.00'),
(397, '26.70', '70.00'),
(398, '26.70', '70.00'),
(399, '26.70', '70.00'),
(400, '26.70', '70.00'),
(401, '26.70', '69.00'),
(402, '26.70', '69.00'),
(403, '26.70', '69.00'),
(404, '26.70', '69.00'),
(405, '26.70', '69.00'),
(406, '26.70', '70.00'),
(407, '26.70', '69.00'),
(408, '26.70', '69.00'),
(409, '26.70', '69.00'),
(410, '26.70', '69.00'),
(411, '26.70', '69.00'),
(412, '26.70', '69.00'),
(413, '26.70', '69.00'),
(414, '26.70', '69.00'),
(415, '26.70', '69.00'),
(416, '26.70', '69.00'),
(417, '26.70', '69.00'),
(418, '26.70', '69.00'),
(419, '26.70', '69.00'),
(420, '26.70', '69.00'),
(421, '26.70', '69.00'),
(422, '26.70', '69.00'),
(423, '26.70', '69.00'),
(424, '26.70', '69.00'),
(425, '26.70', '69.00'),
(426, '26.70', '69.00'),
(427, '26.70', '69.00'),
(428, '26.70', '69.00'),
(429, '26.70', '69.00'),
(430, '26.70', '69.00'),
(431, '26.70', '69.00'),
(432, '26.70', '69.00'),
(433, '26.70', '69.00'),
(434, '26.70', '69.00'),
(435, '26.70', '69.00'),
(436, '26.70', '69.00'),
(437, '26.70', '69.00'),
(438, '26.70', '69.00'),
(439, '26.70', '69.00'),
(440, '26.70', '69.00'),
(441, '26.70', '69.00'),
(442, '26.70', '26.70'),
(443, '69.00', '26.70'),
(444, '69.00', '26.70'),
(445, '69.00', '26.70'),
(446, '69.00', '26.70'),
(447, '69.00', '26.70'),
(448, '69.00', '26.70'),
(449, '69.00', '26.70'),
(450, '69.00', '26.70'),
(451, '69.00', '26.70'),
(452, '69.00', '26.70'),
(453, '69.00', '28.50'),
(454, '76.00', '28.00'),
(455, '79.00', '28.00'),
(456, '80.00', '27.60'),
(457, '82.00', '27.60'),
(458, '83.00', '31.30'),
(459, '90.00', '28.50'),
(460, '91.00', '28.00'),
(461, '91.00', '28.00'),
(462, '91.00', '27.60'),
(463, '91.00', '27.60'),
(464, '88.00', '33.80'),
(465, '93.00', '32.30'),
(466, '94.00', '30.80'),
(467, '93.00', '29.80'),
(468, '93.00', '29.30'),
(469, '92.00', '29.20'),
(470, '92.00', '28.90'),
(471, '92.00', '28.50'),
(472, '91.00', '28.50'),
(473, '90.00', '28.00'),
(474, '89.00', '28.00'),
(475, '88.00', '27.60'),
(476, '88.00', '27.60'),
(477, '86.00', '27.60'),
(478, '85.00', '27.10'),
(479, '85.00', '27.10'),
(480, '84.00', '34.20'),
(481, '93.00', '33.80'),
(482, '93.00', '32.80'),
(483, '94.00', '31.80'),
(484, '94.00', '30.80'),
(485, '94.00', '30.20'),
(486, '93.00', '29.80'),
(487, '94.00', '29.30'),
(488, '93.00', '28.90'),
(489, '93.00', '28.90'),
(490, '93.00', '28.50'),
(491, '27.10', '69.00'),
(492, '27.10', '69.00'),
(493, '32.30', '82.00'),
(494, '34.70', '92.00'),
(495, '34.70', '92.00'),
(496, '34.70', '92.00'),
(497, '33.70', '91.00'),
(498, '32.30', '92.00'),
(499, '31.30', '91.00'),
(500, '30.20', '91.00'),
(501, '29.80', '91.00'),
(502, '27.60', '84.00'),
(503, '27.60', '82.00'),
(504, '27.10', '81.00'),
(505, '27.10', '81.00'),
(506, '27.00', '81.00'),
(507, '33.80', '91.00'),
(508, '33.80', '93.00'),
(509, '33.80', '93.00'),
(510, '32.80', '93.00'),
(511, '31.30', '92.00'),
(512, '30.20', '90.00'),
(513, '29.60', '88.00'),
(514, '28.90', '86.00'),
(515, '26.70', '71.00'),
(516, '26.70', '71.00'),
(517, '26.70', '71.00'),
(518, '26.70', '71.00'),
(519, '26.70', '71.00'),
(520, '26.70', '70.00'),
(521, '28.00', '88.00'),
(522, '28.90', '89.00'),
(523, '28.00', '89.00'),
(524, '27.60', '88.00'),
(525, '27.60', '86.00'),
(526, '27.10', '83.00'),
(527, '27.10', '81.00'),
(528, '27.10', '78.00'),
(529, '27.10', '77.00'),
(530, '27.10', '74.00'),
(531, '27.10', '73.00'),
(532, '27.10', '72.00'),
(533, '27.10', '73.00'),
(534, '30.80', '89.00'),
(535, '33.20', '91.00'),
(536, '33.30', '92.00'),
(537, '31.80', '92.00'),
(538, '30.80', '91.00'),
(539, '29.80', '89.00'),
(540, '29.30', '87.00'),
(541, '28.90', '82.00'),
(542, '28.50', '80.00'),
(543, '28.10', '77.00'),
(544, '28.00', '76.00'),
(545, '27.60', '75.00'),
(546, '27.60', '76.00'),
(547, '27.10', '75.00'),
(548, '26.70', '73.00'),
(549, '27.10', '72.00'),
(550, '27.10', '71.00'),
(551, '27.10', '71.00'),
(552, '27.10', '70.00'),
(553, '29.80', '80.00'),
(554, '31.80', '88.00'),
(555, '31.80', '91.00'),
(556, '30.80', '87.00'),
(557, '29.80', '85.00'),
(558, '28.90', '79.00'),
(559, '28.50', '77.00'),
(560, '28.00', '74.00'),
(561, '28.00', '73.00'),
(562, '27.60', '73.00'),
(563, '27.60', '73.00'),
(564, '27.10', '73.00'),
(565, '30.20', '86.00'),
(566, '32.80', '91.00'),
(567, '32.30', '91.00'),
(568, '30.80', '88.00'),
(569, '29.80', '84.00'),
(570, '28.90', '83.00'),
(571, '28.50', '79.00'),
(572, '28.10', '78.00'),
(573, '28.00', '75.00'),
(574, '27.60', '77.00'),
(575, '27.60', '74.00'),
(576, '27.60', '75.00'),
(577, '27.10', '73.00'),
(578, '29.30', '85.00'),
(579, '32.30', '91.00'),
(580, '31.30', '91.00'),
(581, '30.20', '89.00'),
(582, '29.80', '88.00'),
(583, '28.90', '84.00'),
(584, '28.50', '83.00'),
(585, '28.50', '78.00'),
(586, '28.00', '77.00'),
(587, '27.60', '75.00'),
(588, '27.60', '76.00'),
(589, '27.60', '74.00'),
(590, '27.10', '75.00'),
(591, '27.10', '74.00'),
(592, '27.10', '74.00'),
(593, '27.10', '73.00'),
(594, '26.70', '73.00'),
(595, '26.70', '73.00'),
(596, '26.70', '73.00'),
(597, '26.70', '75.00'),
(598, '30.80', '88.00'),
(599, '32.30', '91.00'),
(600, '31.80', '91.00'),
(601, '32.30', '92.00'),
(602, '31.30', '90.00'),
(603, '30.20', '87.00'),
(604, '29.40', '84.00'),
(605, '28.90', '83.00'),
(606, '28.50', '79.00'),
(607, '28.50', '78.00'),
(608, '28.00', '76.00'),
(609, '27.60', '77.00'),
(610, '27.60', '76.00'),
(611, '27.60', '77.00'),
(612, '27.60', '75.00'),
(613, '27.10', '76.00'),
(614, '27.10', '74.00'),
(615, '27.10', '75.00'),
(616, '27.10', '75.00'),
(617, '27.10', '75.00'),
(618, '27.10', '74.00'),
(619, '26.90', '75.00'),
(620, '26.70', '74.00'),
(621, '26.70', '73.00'),
(622, '26.70', '73.00'),
(623, '26.70', '73.00'),
(624, '26.70', '74.00'),
(625, '26.70', '73.00'),
(626, '26.70', '73.00'),
(627, '26.70', '73.00'),
(628, '26.70', '73.00'),
(629, '26.70', '73.00'),
(630, '26.70', '73.00'),
(631, '27.10', '72.00'),
(632, '27.10', '72.00'),
(633, '27.10', '71.00'),
(634, '27.10', '71.00'),
(635, '27.10', '70.00'),
(636, '27.10', '70.00'),
(637, '27.10', '70.00'),
(638, '27.10', '69.00'),
(639, '27.10', '69.00'),
(640, '27.10', '69.00'),
(641, '27.10', '69.00'),
(642, '27.10', '69.00'),
(643, '27.10', '69.00'),
(644, '27.10', '69.00'),
(645, '27.10', '69.00'),
(646, '27.10', '69.00'),
(647, '27.10', '69.00'),
(648, '27.10', '69.00'),
(649, '27.20', '68.00'),
(650, '27.60', '68.00'),
(651, '27.60', '67.00'),
(652, '28.00', '67.00'),
(653, '28.00', '69.00'),
(654, '28.00', '69.00'),
(655, '28.00', '68.00'),
(656, '28.00', '67.00'),
(657, '28.00', '65.00'),
(658, '28.00', '63.00'),
(659, '28.00', '63.00'),
(660, '28.00', '64.00'),
(661, '28.00', '64.00'),
(662, '29.20', '80.00'),
(663, '31.30', '88.00'),
(664, '31.80', '89.00'),
(665, '27.10', '75.00'),
(666, '27.10', '75.00'),
(667, '27.10', '75.00'),
(668, '27.10', '75.00'),
(669, '27.10', '75.00'),
(670, '27.10', '75.00'),
(671, '27.10', '75.00'),
(672, '27.10', '75.00'),
(673, '27.10', '75.00'),
(674, '27.10', '75.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dht`
--
ALTER TABLE `dht`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dht`
--
ALTER TABLE `dht`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=675;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;