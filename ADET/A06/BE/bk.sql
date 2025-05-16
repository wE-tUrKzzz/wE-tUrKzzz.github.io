-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2025 at 06:24 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bk`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Beverage'),
(2, 'Meals'),
(3, 'Whopper'),
(4, 'Flame-grilled'),
(5, 'Delicious Sides'),
(6, 'Chicken Burgers'),
(7, 'King Breakfast'),
(8, 'Plant-Based'),
(9, 'King Specials'),
(10, 'Group Meals');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `categoryID` int(25) DEFAULT NULL,
  `name` text NOT NULL,
  `code` text NOT NULL,
  `price` int(11) DEFAULT NULL,
  `color` text DEFAULT NULL,
  `isAvailable` tinyint(1) DEFAULT NULL,
  `size_name` text DEFAULT NULL,
  `size_code` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `categoryID`, `name`, `code`, `price`, `color`, `isAvailable`, `size_name`, `size_code`) VALUES
(1, 1, 'Mug Root Beer', 'MRB', 99, '#D1B090', 1, 'medium', 'MD'),
(2, 1, 'Mug Root Beer', 'MRB', 115, '#D1B090', 1, 'large', 'LG'),
(3, 1, 'Mug Root Beer Float', 'MRBFLT', 66, '#E4D3A2', 1, 'normal', 'N'),
(4, 1, 'Coke Zero', 'CZ', 115, '#808080', 1, 'medium', 'MD'),
(5, 1, 'Coke Zero', 'CZ', 99, '#808080', 1, 'large', 'LG'),
(6, 1, 'Orange Juice', 'OJ', 102, '#FFB84D', 1, 'medium', 'MD'),
(7, 1, 'Orange Juice', 'OJ', 111, '#FFB84D', 1, 'large', 'LG'),
(8, 1, 'Apple Juice', 'AJ', 102, '#C8E4B1', 1, 'medium', 'MD'),
(9, 1, 'Apple Juice', 'AJ', 112, '#C8E4B1', 1, 'large', 'LG'),
(10, 1, 'Sarsi Float', 'SARSFLT', 62, '#C84C4C', 1, 'normal', 'N'),
(11, 1, 'Regular Sarsi', 'SARS', 113, '#C84C4C', 1, 'normal', 'N'),
(12, 1, 'Coke Float', 'COKEFLT', 67, '#E55A47', 1, 'normal', 'N'),
(13, 1, 'Lipton Ice Tea', 'LIPT', 98, '#F4E58A', 1, 'normal', 'N'),
(14, 1, 'Lipton Ice Tea', 'LIPT', 112, '#F4E58A', 1, 'large', 'LG'),
(15, 1, 'Iced Black Coffee', 'IBC', 84, '#7F5F75', 1, 'medium', 'MD'),
(16, 1, 'Iced Black Coffee', 'IBC', 109, '#7F5F75', 1, 'large', 'LG'),
(17, 1, 'Iced Vanilla Coffee', 'IVC', 99, '#D4C4B7', 1, 'medium', 'MD'),
(18, 1, 'Iced Vanilla Coffee', 'IVC', 120, '#D4C4B7', 1, 'large', 'LG'),
(19, 1, 'Ice Mocha Coffee', 'IMC', 99, '#7F4B76', 1, 'medium', 'MD'),
(20, 1, 'Ice Mocha Coffee', 'IMC', 120, '#7F4B76', 1, 'large', 'LG'),
(21, 1, 'Roast Coffee', 'RC', 65, '#6F4F2F', 1, 'cup', 'CP'),
(22, 2, 'BLT Chicken King (spicy flavor) Meal', 'BLTCKSPCYML', 322, '#FFCCCC', 1, NULL, NULL),
(23, 2, 'BLT Chicken King (spicy flavor) Solo', 'BLTCKSPCYSOLO', 253, '#FFCCCC', 1, NULL, NULL),
(24, 2, 'Truffle Whopper (Junior) Combo', 'TRFLJRCMB', 265, '#FFF9CC', 1, NULL, NULL),
(25, 2, 'Truffle Whopper (Junior) Solo', 'TRFLJRSOLO', 179, '#FFF9CC', 1, NULL, NULL),
(26, 2, 'Truffle Whopper Combo', 'TRFLCMB', 391, '#FFF9CC', 1, NULL, NULL),
(27, 2, 'Truffle Whopper Solo', 'TRFLSOLO', 314, '#FFF9CC', 1, NULL, NULL),
(28, 2, '1PC Chunky Chicken Fillet Creamy Parm Combo', '1CKPARMCMB', 125, '#FFF9CC', 1, NULL, NULL),
(29, 2, '1PC Chunky Chicken Fillet Creamy Parm Solo', '1CKPARMSOLO', 105, '#FFF9CC', 1, NULL, NULL),
(30, 2, '2PCS Chunky Chicken Fillet Creamy Parm Combo', '2CKPARMCMB', 175, '#FFF9CC', 1, NULL, NULL),
(31, 2, '2PCS Chunky Chicken Fillet Creamy Parm Solo', '2CKPARMSOLO', 155, '#FFF9CC', 1, NULL, NULL),
(32, 2, 'Chicken Chunky Fillet (1 PC) with Rice', 'CK1WRC', 105, '#ed7902', 1, NULL, NULL),
(33, 2, 'Chicken Chunky Fillet (2 PCS) with Rice', 'CK2WRC', 170, '#ed7902', 1, NULL, NULL),
(34, 2, 'Chicken Chunky Fillet (2 PCS) with Rice + Drink', 'CK2CMBRC', 172, '#ed7902', 1, NULL, NULL),
(35, 2, '4 piece Nuggets with Rice (value deal)', '4PCNUGRC', 181, '#F4C542', 1, NULL, NULL),
(36, 2, '6-pc Nuggets with special sauces + Drink', '6PCNUGSAUCEDRINK', 249, '#F4C542', 1, NULL, NULL),
(37, 2, '6-pc Nuggets combo with Rice', '6PCNUGRC', 249, '#F4C542', 1, NULL, NULL),
(38, 2, '1-piece Chicken Thigh with Rice', '1PCTHWRICE', 280, '#B57B57', 1, NULL, NULL),
(39, 2, '2-pieces of Chicken Thigh with Rice meal', '2PCTHWRICEML', 397, '#B57B57', 1, NULL, NULL),
(40, 2, '2 pieces chicken leg piece with Rice', '2PCLWRICE', 368, '#B57B57', 1, NULL, NULL),
(41, 3, 'Pepperoni Bacon Whopper – Jr Solo', 'PBWJRNSOLO', 261, '#ed7902', 1, NULL, NULL),
(42, 3, 'Pepperoni Bacon Whopper Jr Meal', 'PBWJRNCMB', 333, '#ed7902', 1, NULL, NULL),
(43, 3, 'Pepperoni Bacon Whopper Solo', 'PBWLGSOLO', 428, '#ed7902', 1, NULL, NULL),
(44, 3, 'Pepperoni Bacon Whopper Meal', 'PBWLGCMB', 499, '#ed7902', 1, NULL, NULL),
(45, 3, 'Whopper Junior', 'WHJRNR', 93, '#ed7902', 1, NULL, NULL),
(46, 3, 'Whopper Junior Combo', 'WHJRNRCMB', 205, '#ed7902', 1, NULL, NULL),
(47, 3, 'Whopper Meal', 'WHMRL', 314, '#ed7902', 1, NULL, NULL),
(48, 3, 'Whopper Solo', 'WHWPRSOLO', 246, '#ed7902', 1, NULL, NULL),
(49, 3, '4 Layered Cheese Whopper', '4LCW', 312, '#FFF9B3', 1, NULL, NULL),
(50, 3, '4 Layered Cheese Whopper Meal Combo', '4LCWMC', 370, '#FFF9B3', 1, NULL, NULL),
(51, 3, '4 Layers of Cheese – Whopper Junior', '4LCWJ', 136, '#FFF9B3', 1, NULL, NULL),
(52, 3, '4 Layers of Cheese – Whopper Junior Meal', '4LCWJM', 214, '#FFF9B3', 1, NULL, NULL),
(53, 3, 'Bacon 4-Cheese Whopper', 'B4CW', 449, '#FFF9B3', 1, NULL, NULL),
(54, 3, 'Bacon 4-Cheese Whopper Meal Combo', 'B4CWMC', 518, '#FFF9B3', 1, NULL, NULL),
(55, 3, 'Junior Bacon 4-Cheese Whopper', 'JB4CW', 281, '#FFF9B3', 1, NULL, NULL),
(56, 3, 'Junior Bacon 4-Cheese Whopper Combo', 'JB4CWCOMBO', 359, '#FFF9B3', 1, NULL, NULL),
(57, 4, 'BBQ Bacon Cheese Burger Solo', 'BBQBCHEESEBURGER1', 249, '#FF6F00', 1, NULL, NULL),
(58, 4, 'BBQ Bacon Cheese Burger Combo', 'BBQBCHEESEBURGERCMB', 329, '#FF6F00', 1, NULL, NULL),
(59, 4, 'Double BBQ Bacon cheeseburger Combo', 'DBBQBCHEESEBURGERCMB', 440, '#FF6F00', 1, NULL, NULL),
(60, 4, 'Double BBQ Bacon cheeseburger Solo', 'DBBQBCHEESEBURGERSOLO', 374, '#FF6F00', 1, NULL, NULL),
(61, 4, 'Hamburger Meal', 'HAMBRGRMEAL', 170, '#D14B2E', 1, NULL, NULL),
(62, 4, 'Solo Hamburger', 'SOLOHAMBRGR', 101, '#D14B2E', 1, NULL, NULL),
(63, 4, 'Barbeque Hamburger Meal', 'BBQHAMBRGRMEAL', 150, '#D14B2E', 1, NULL, NULL),
(64, 4, 'Solo Barbeque Hamburger', 'SOLOBBQHAMBRGR', 89, '#D14B2E', 1, NULL, NULL),
(65, 4, 'Quarter Pound King Meal Combo', 'QTRPNDKINGMEALCMB', 398, '#D14B2E', 1, NULL, NULL),
(66, 4, 'Quarter Pound King Solo', 'QTRPNDKINGSOLO', 330, '#D14B2E', 1, NULL, NULL),
(67, 4, 'Double Quarter Pound King Meal Combo', 'DQTRPNDKINGMEALCMB', 551, '#D14B2E', 1, NULL, NULL),
(68, 4, 'Double Quarter Pound King Meal', 'DQTRPNDKINGMEAL1', 483, '#D14B2E', 1, NULL, NULL),
(69, 4, 'Regular Cheese Burger Flame Grilled Meal', 'REGCHEESEBURGERFLAMECMB', 165, '#FFD700', 1, NULL, NULL),
(70, 4, 'Regular Cheese Burger Flame Grilled Solo', 'REGCHEESEBURGERFLAMESOLO', 89, '#FFD700', 1, NULL, NULL),
(71, 4, 'Double Cheese Burger Flame Grilled Meal', 'DBLRCHEESEBURGERFLAMECMB', 404, '#FFD700', 1, NULL, NULL),
(72, 4, 'Double Cheese Burger Flame Grilled Solo', 'DBLRCHEESEBURGERFLAMESOLO', 350, '#FFD700', 1, NULL, NULL),
(73, 4, 'Triple Cheese Burger Flame Grilled Combo', 'TRIPLECHEESEBURGERFLAMECMB', 422, '#FFD700', 1, NULL, NULL),
(74, 4, 'Triple Cheese Burger Flame Grilled Solo', 'TRIPLECHEESEBURGERFLAMESOLO', 381, '#FFD700', 1, NULL, NULL),
(75, 4, 'Flame Grilled Quadrupled Cheese Burger Solo', 'FLAMEGRILLEDQUADCHEESEBURGER1', 477, '#FFD700', 1, NULL, NULL),
(76, 4, 'Flame Grilled Quadrupled Cheese Burger Combo', 'FLAMEGRILLEDQUADCHEESEBURGERCMB', 545, '#FFD700', 1, NULL, NULL),
(77, 5, '10 piece Crunchy Chicken Nuggets', '10PCNUGGETS', 273, '#F4C542', 1, NULL, NULL),
(78, 5, 'Chicken Nuggets (4 pieces) with Drink', '4PCNUGWITHDRINK', 147, '#F4C542', 1, NULL, NULL),
(79, 5, 'Chicken Nuggets (4 pieces)', '4PCNUGGETS', 120, '#F4C542', 1, NULL, NULL),
(80, 5, '4 piece Nuggets with side meal (choose any sauce)', '4PCNUGWITHSAUCEMEAL', 181, '#F4C542', 1, NULL, NULL),
(81, 5, 'Cheese Bites (6 pieces)', 'CHEESEBITES6', 143, '#FFCC00', 1, NULL, NULL),
(82, 5, 'Cheese Bites (10 pieces)', 'CHEESEBITES10', 211, '#FFCC00', 1, NULL, NULL),
(83, 5, 'Onion Rings (King’s Bucket)', 'ONIONRINGSKB', 268, '#FF8C00', 1, NULL, NULL),
(84, 5, 'King’s Bucket French Fries', 'FRENCHFRIESKB', 233, '#FF8C00', 1, NULL, NULL),
(85, 5, 'Hash Bites', 'HASHBITES', 233, '#FF8C00', 1, NULL, NULL),
(86, 5, 'BK French Fries – Regular size', 'BKFRIESREGULAR', 65, '#FF8C00', 1, NULL, NULL),
(87, 5, 'BK French Fries – Medium', 'BKFRIESMEDIUM', 108, '#FF8C00', 1, NULL, NULL),
(88, 5, 'BK French Fries – Large', 'BKFRIESLARGE', 137, '#FF8C00', 1, NULL, NULL),
(89, 5, 'BK Onion Rings, Medium size', 'BKONIONRINGSMEDIUM', 83, '#FF8C00', 1, NULL, NULL),
(90, 5, 'BK Onion Rings, Regular', 'BKONIONRINGSREGULAR', 125, '#FF8C00', 1, NULL, NULL),
(91, 5, 'Onion Rings, large', 'ONIONRINGSLARGE', 152, '#FF8C00', 1, NULL, NULL),
(92, 6, 'BLT Chicken Burger Spicy Solo', 'BLTSPICY', 253, '#D14B2E', 1, NULL, NULL),
(93, 6, 'BLT Chicken Burger Spicy Meal', 'BLTSPICYSET', 323, '#D14B2E', 1, NULL, NULL),
(94, 6, 'Crunchy Chicken Burger Solo', 'CRCHKN', 245, '#FF6F00', 1, NULL, NULL),
(95, 6, 'Crunchy Chicken Burger Meal', 'CRCHKNSET', 312, '#FF6F00', 1, NULL, NULL),
(96, 6, 'Spicy Chicken King Burger Solo', 'SPCKNG', 261, '#D14B2E', 1, NULL, NULL),
(97, 6, 'Spicy Chicken King Burger Meal', 'SPCKNGSET', 326, '#D14B2E', 1, NULL, NULL),
(98, 6, 'X-tra Long Chicken Sandwich Solo (Large)', 'XLCHKSOLLG', 167, '#FF6F00', 1, NULL, NULL),
(99, 6, 'X-tra Long Chicken Sandwich Combo Deal (Large)', 'XLCHKCMBO', 233, '#FF6F00', 1, NULL, NULL),
(100, 6, 'Junior X-tra Long Chicken Sandwich Solo', 'JXLCHKSOL', 74, '#FF6F00', 1, NULL, NULL),
(101, 6, 'Junior X-tra Long Chicken Sandwich Combo Deal', 'JXLCHKCMBO', 169, '#FF6F00', 1, NULL, NULL),
(102, 7, 'Sausage Waffle with Cheese Solo', 'SWCHS', 211, '#F4A261', 1, NULL, NULL),
(103, 7, 'Sausage Waffle with Egg Combo Meal', 'SWEGGCM', 296, '#F4A261', 1, NULL, NULL),
(104, 7, 'Sausage Waffle with Egg Solo Meal', 'SWEGGSOLO', 224, '#F4A261', 1, NULL, NULL),
(105, 7, '2-pc Waffle with Maple Combo', '2WFLMAPCM', 204, '#F4A261', 1, NULL, NULL),
(106, 7, '2-pc Waffle with Maple + Sausage Solo', '2WFLMAPS', 211, '#F4A261', 1, NULL, NULL),
(107, 7, '2-pc Waffle with Maple + Sausage Combo Meal', '2WFLMAPSCM', 284, '#F4A261', 1, NULL, NULL),
(108, 7, '2-pc Waffle with Maple Solo', '2WFLMAPSOLO', 131, '#F4A261', 1, NULL, NULL),
(109, 7, 'Waffle Sausage and Cheese Combo Feast', 'WSCHSCF', 284, '#F4A261', 1, NULL, NULL),
(110, 8, 'Organic Plant Based Whopper Solo (Large)', 'PBWHSOLOLG', 340, '#4CAF50', 1, NULL, NULL),
(111, 8, 'Organic Plant Based Whopper Combo Deal (Large)', 'PBWHCMBO', 404, '#4CAF50', 1, NULL, NULL),
(112, 8, 'Junior Organic Plant Based Whopper Solo', 'JPBWHSOLO', 141, '#4CAF50', 1, NULL, NULL),
(113, 8, 'Junior Organic Plant Based Whopper Combo Deal', 'JPBWHCMBO', 215, '#4CAF50', 1, NULL, NULL),
(114, 9, 'Barbecue Bacon Burger – Solo', 'BBQBAKINGBURGER', 470, '#FFB74D', 1, NULL, NULL),
(115, 9, 'Barbecue Bacon Burger – Meal', 'BBQBAKINGBURGERSET', 551, '#FFB74D', 1, NULL, NULL),
(116, 9, 'Bacon King Burger – Solo (junior size)', 'BKINGBURGERJUNIOR', 297, '#FF7043', 1, NULL, NULL),
(117, 9, 'Bacon King Burger – Meal (junior size)', 'BKINGBURGERJUNIORSET', 368, '#FF7043', 1, NULL, NULL),
(118, 9, 'Bacon King Burger – Solo (large size)', 'BKINGBURGERLARGE', 470, '#FF7043', 1, NULL, NULL),
(119, 9, 'Bacon King Burger – Meal (large size)', 'BKINGBURGERLARGESET', 540, '#FF7043', 1, NULL, NULL),
(120, 9, 'Junior Double Bacon Burger – Solo', 'JUNIORDBB', 374, '#FF5722', 1, NULL, NULL),
(121, 9, 'Junior Double Bacon Burger – Meal', 'JUNIORDBBSET', 449, '#FF5722', 1, NULL, NULL),
(122, 9, 'Double Bacon Burger – Solo (large)', 'DBBXLARGE', 606, '#FF5722', 1, NULL, NULL),
(123, 9, 'Double Bacon Burger – Meal (large)', 'DBBXLARGEBUNDLE', 674, '#FF5722', 1, NULL, NULL),
(124, 9, 'Double BBQ Bacon Jr. – Solo', 'DBBQBJUNIOR', 374, '#FF7043', 1, NULL, NULL),
(125, 9, 'Double BBQ Bacon Jr. – Meal', 'DBBQBJUNIORSET', 443, '#FF7043', 1, NULL, NULL),
(126, 9, 'Double BBQ Bacon – Solo (single classic)', 'DBBQBLARGEC', 605, '#FF7043', 1, NULL, NULL),
(127, 9, 'Double BBQ Bacon – Meal (large)', 'DBBQBLARGEMEAL', 675, '#FF7043', 1, NULL, NULL),
(128, 9, 'Swiss Mushroom Jr. – Solo', 'SWISSHROOMJUNIOR', 272, '#8D6E63', 1, NULL, NULL),
(129, 9, 'Swiss Mushroom Jr. – Meal', 'SWISSHROOMJUNIORSET', 347, '#8D6E63', 1, NULL, NULL),
(130, 9, 'Double Swiss Mushroom Jr. – Solo', 'DBLSWISSHROOMJUNIOR', 363, '#8D6E63', 1, NULL, NULL),
(131, 9, 'Double Swiss Mushroom Jr. – Meal', 'DBLSWISSHROOMJUNIORSET', 438, '#8D6E63', 1, NULL, NULL),
(132, 10, 'Mix n feast for 2 People <br> choose 2 mains of your choice, 2 sides, 2 drinks and 4 pieces of chicken nuggets', 'MNF2P', 448, '#FF6F00', 1, NULL, NULL),
(133, 10, 'Mix n feast for 3 People <br> choose 3 main of your choice, 3 side dishes, 3 drinks and 6 pieces of chicken nuggets', 'MNF3P', 658, '#FF6F00', 1, NULL, NULL),
(134, 10, 'Mix n feast for 4 People <br> choose 4 main dishes of your choice, 4 sides, 4 drinks & 10 pieces of chicken nuggets', 'MNF4P', 888, '#FF6F00', 1, NULL, NULL),
(135, 10, '2 X-Tra Long Chicken Jr. + 2 Flame Grilled cheese burgers + 2 King’s bucket + 4 Drinks', 'XTLG4P', 799, '#FFD700', 1, NULL, NULL),
(136, 10, '2 Junior Whopper + 2 x-tra long chicken sandwich Jr. + 2 King’s bucket + 4 Drinks', 'JWXT4P', 845, '#FF6F00', 1, NULL, NULL),
(137, 10, '2 plant based Junior Whopper, 1 King’s bucket and 2 Drinks', 'PBJW1K2D', 524, '#6B8E23', 1, NULL, NULL),
(138, 10, '2 long chicken sandwich Jr., 1 King’s bucket & 2 Drinks', 'LCSJ1K2D', 418, '#FF6F00', 1, NULL, NULL),
(139, 10, '2, 4-Cheese Junior Whopper plus 1 King’s bucket & 2 Drinks', '4CJW1K2D', 485, '#FFD700', 1, NULL, NULL),
(140, 10, 'Flame grilled cheese burger, Junior Whopper, 1 King’s bucket & 2 Drinks', 'FGCBJW1K2D', 435, '#FFD700', 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
