-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2020 at 10:07 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kitch`
--

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `title` text NOT NULL,
  `total_time` int(11) NOT NULL,
  `yields` text NOT NULL,
  `ingredients` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`ingredients`)),
  `instructions` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`title`, `total_time`, `yields`, `ingredients`, `instructions`, `image`) VALUES
('Spinach and Feta Turkey Burgers', 35, '8 turkey burgers', '[\"2 eggs, beaten\", \"2 cloves garlic, minced\", \"4 ounces feta cheese\", \"1 (10 ounce) box frozen chopped spinach, thawed and squeezed dry\", \"2 pounds ground turkey\"]', 'Preheat an outdoor grill for medium-high heat and lightly oil grate.\nWhile the grill is preheating, mix together eggs, garlic, feta cheese, spinach, and turkey in a large bowl until well combined; form into 8 patties.\nCook on preheated grill until no longer pink in the center, 15 to 20 minutes.', 'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F1360550.jpg'),
('Best Chocolate Chip Cookies', 60, '4 dozen', '[\"1 cup butter, softened\", \"1 cup white sugar\", \"1 cup packed brown sugar\", \"2 eggs\", \"2 teaspoons vanilla extract\", \"1 teaspoon baking soda\", \"2 teaspoons hot water\", \"\\u00bd teaspoon salt\", \"3 cups all-purpose flour\", \"2 cups semisweet chocolate chips\", \"1 cup chopped walnuts\"]', 'Preheat oven to 350 degrees F (175 degrees C).\nCream together the butter, white sugar, and brown sugar until smooth. Beat in the eggs one at a time, then stir in the vanilla. Dissolve baking soda in hot water.  Add to batter along with salt. Stir in flour, chocolate chips, and nuts. Drop by large spoonfuls onto ungreased pans.\nBake for about 10 minutes in the preheated oven, or until edges are nicely browned.', 'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F4462051.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
