-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 08, 2022 at 03:50 AM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_tables`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `num` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `productDesc` varchar(255) NOT NULL,
  `review` varchar(10) NOT NULL,
  `listPrice` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`num`, `productName`, `productDesc`, `review`, `listPrice`) VALUES
(1, 'Corn Nuts Corn Kernels Crunchy Original - 7 Oz', 'Corn Nuts Corn Kernels Crunchy Original - 7 Oz - Albertsons', '4.7', '2.49'),
(2, 'Nesquik Chocolate Powder Drink Mix - 20.1 Oz', 'Nesquik Chocolate Powder Drink Mix - 20.1 Oz - Albertsons', '5.0', '7.29'),
(3, 'Signature SELECT Drinking Water - 24-16.9 Fl. Oz.', 'Signature SELECT Drinking Water - 24-16.9 Fl. Oz. - Albertsons', '4.8', '3.50'),
(4, 'Dove Promises Individually Wrapped Milk Chocolate Candy Bag - 8.46 Oz', 'Dove Promises Individually Wrapped Milk Chocolate Candy Bag - 8.46 Oz - Albertsons', '4.6', '4.99'),
(5, 'Spa Canes Peppermint R&w - 5.3 OZ', 'Spa Canes Peppermint R&w - 5.3 OZ - Albertsons', '0.0', '1.49'),
(6, 'Jack Link\'s Original Beef Jerky Family Size - 8 Oz', 'Jack Link\'s Original Beef Jerky Family Size - 8 Oz - Albertsons', '5.0', '12.99'),
(7, 'Life Savers Candy Gummies 5 Flavors Family Size - 26 Oz', 'Life Savers Candy Gummies 5 Flavors Family Size - 26 Oz - Albertsons', '4.7', '6.99'),
(8, 'Signature SELECT Beef Corned Beef Brisket Flat Cut - 3.50 Lb', 'Signature SELECT Beef Corned Beef Brisket Flat Cut - 3.50 Lb - Albertsons', '0.0', '22.72'),
(9, 'Signature Cafe Chicken Noodle Soup - 24 Oz.', 'Signature Cafe Chicken Noodle Soup - 24 Oz. - Albertsons', '4.0', '7.99'),
(10, 'Heinz Simply Tomato Ketchup with No Artificial Sweeteners Bottle - 31 Oz', 'Heinz Simply Tomato Ketchup with No Artificial Sweeteners Bottle - 31 Oz - Albertsons', '4.9', '8.49'),
(11, 'Kraft Original Macaroni & Cheese Dinner Box - 7.25 Oz', 'Kraft Original Macaroni & Cheese Dinner Box - 7.25 Oz - Albertsons', '4.6', '1.29'),
(12, 'Bradshaws Spun Honey Premium - 12 Oz', 'Bradshaws Spun Honey Premium - 12 Oz - Albertsons', '0.0', '7.49'),
(13, 'Quaker Chewy Granola Bars Choc Chip 30ct - 25.3 OZ', 'Quaker Chewy Granola Bars Choc Chip 30ct - 25.3 OZ - Albertsons', '0.0', '10.49'),
(14, 'Lawry\'s Economy Size Seasoned Salt - 16 Oz', 'Lawry\'s Economy Size Seasoned Salt - 16 Oz - Albertsons', '2.9', '6.79'),
(15, 'Signature Farms Apricots Fancy Dried - 6 Oz', 'Signature Farms Apricots Fancy Dried - 6 Oz - Albertsons', '5.0', '3.99'),
(16, 'O Organics Syrup Chocolate - 15.8 OZ', 'O Organics Syrup Chocolate - 15.8 OZ - Albertsons', '4.0', '4.49'),
(17, 'Smuckers Jam Strawberry Seedless - 18 Oz', 'Smuckers Jam Strawberry Seedless - 18 Oz - Albertsons', '4.7', '3.99'),
(18, 'Signature SELECT Relish Sweet - 10 Fl. Oz.', 'Signature SELECT Relish Sweet - 10 Fl. Oz. - Albertsons', '4.8', '1.79'),
(19, 'Lucerne Milk Whole 1 Gallon - 128 Fl. Oz.', 'Lucerne Milk Whole 1 Gallon - 128 Fl. Oz. - Albertsons', '4.9', '3.49'),
(20, 'Signature Farms Cranberries Prepacked Bag Fresh - 12 Oz', 'Signature Farms Cranberries Prepacked Bag Fresh - 12 Oz - Albertsons', '4.0', '2.99'),
(21, 'Signature SELECT Vinegar Distilled White - 128 Fl. Oz.', 'Signature SELECT Vinegar Distilled White - 128 Fl. Oz. - Albertsons', '4.9', '3.29'),
(22, 'Signature SELECT Sugar Fine Granulated - 4 Lb', 'Signature SELECT Sugar Fine Granulated - 4 Lb - Albertsons', '4.8', '3.49'),
(23, 'O Organics Organic Broth Low Sodium Vegetable - 32 Oz', 'O Organics Organic Broth Low Sodium Vegetable - 32 Oz - Albertsons', '4.8', '2.99'),
(24, 'Signature Select Facial Tissue Softly 4 Pack Cube - 4-74 CT', 'Signature Select Facial Tissue Softly 4 Pack Cube - 4-74 CT - Albertsons', '4.8', '4.99'),
(25, 'Reynolds Wrap Aluminum Foil - 75 Sq. Ft.', 'Reynolds Wrap Aluminum Foil - 75 Sq. Ft. - Albertsons', '0.0', '4.49'),
(26, 'Popcorn Indiana Black & White Drizzlecorn - 6 oz', '3', 'N/A', '4.29'),
(27, 'Swiss Miss Milk Chocolate Flavor Hot Cocoa Mix - 8 ct', '3', 'N/A', '0.00'),
(28, 'Poland Spring 100% Natural Spring Water Plastic Bottle - 700 ml', '3', 'N/A', '1.69'),
(29, 'Hershey Kisses, The Grinch Milk Chocolate - 7.4 oz', '3', 'N/A', '3.99'),
(30, 'Hello Kitty with Peppermint Candy - 0.42 oz', '3', 'N/A', '5.99'),
(31, 'Big Win Beef Jerky Original Flavor - 3 oz', '3', 'N/A', '4.79'),
(32, 'Fruit-Tella Gummies Strawberry and Raspberry 3.2 oz', '3', 'N/A', '1.50'),
(33, 'Hormel Corned Beef - 12 oz', '3', 'N/A', '5.69'),
(34, 'Progresso Soup, Minestrone 19 oz (1 lb 3 oz) 538 g', '3', 'N/A', '3.99'),
(35, 'Heinz Yellow Mustard - 14 oz', '3', 'N/A', '3.79'),
(36, 'Cracker Barrel Macaroni & Cheese, Sharp Cheddar Cups, 2.39 oz - 4 pk', '3', 'N/A', '10.49'),
(37, 'Sue Bee Clover Honey Bear - 12 oz', '3', 'N/A', '4.69'),
(38, 'Kind Dipped Clusters - Dark Chocolate Vanilla Cashew, 4 oz', '3', 'N/A', '4.59'),
(39, 'Ortega Taco Seasoning - 6.5 oz', '3', 'N/A', '4.39'),
(40, 'Sunsweet Amazin Pitted Prunes Canister - 16 oz', '3', 'N/A', '6.99'),
(41, 'Hersheys Syrup, Chocolate Flavor 24 oz (1 lb 8 oz) 680 g', '3', 'N/A', '3.49'),
(42, 'Jif Peanut Butter, Extra Crunchy 16 oz (1 lb) 454 g', '3', 'N/A', '3.49'),
(43, 'Hellmann\'s Squeeze Light Mayonnaise - 11.5 oz', '3', 'N/A', '4.69'),
(44, 'Carnation Sweetened Condensed Milk - 14 oz', '3', 'N/A', '4.09'),
(45, 'Big Win Cranberry Cocktail - 16 fl oz', '3', 'N/A', '1.00'),
(46, 'Heinz Apple Cider Vinegar, Bottle - 16 fl oz', '3', 'N/A', '3.29'),
(47, 'RxSugar Delicious Plant Based Organic Liquid Sugar - 16 oz', '3', 'N/A', '8.99'),
(48, 'College Inn Chicken Bone Broth - 32 oz', '3', 'N/A', '5.29'),
(49, 'Navage Nasal Care Kit', '3', 'N/A', '99.99'),
(50, 'Pam Cooking Spray, No-Stick, Original 6 oz (170 g)', '3', 'N/A', '5.99');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
