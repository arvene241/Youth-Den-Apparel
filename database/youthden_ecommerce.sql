-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2021 at 03:32 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `youthden_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_accounts`
--

CREATE TABLE `tbl_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_accounts`
--

INSERT INTO `tbl_accounts` (`id`, `first_name`, `last_name`, `email`, `password`) VALUES
(1, 'midoriya', 'izuku', 'midoriya.izuku@gmail.com', '12345'),
(2, 'ichigo', 'kurosaki', 'ichigo.kurosaki@gmail.com', '12222'),
(3, 'mike', 'izuku', 'mike@gmail.com', '234');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_custinfo`
--

CREATE TABLE `tbl_custinfo` (
  `id` int(255) NOT NULL,
  `cust_name` varchar(255) NOT NULL,
  `cust_email` varchar(255) NOT NULL,
  `cust_address` varchar(255) NOT NULL,
  `cust_phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_custinfo`
--

INSERT INTO `tbl_custinfo` (`id`, `cust_name`, `cust_email`, `cust_address`, `cust_phone`) VALUES
(1, 'Katherine D. Moore', '\r\n    KatherineDMoore@dayrep.com ', '4656 Davisson Street\r\nKokomo, IN 46902 ', '765-864-8244'),
(2, 'Brittany J. Nock', '\r\n    BrittanyJNock@teleworm.us  ', '43947 Hall Street\r\nLas Vegas, NV 89101', '702-548-8458'),
(3, 'Lonnie K. Booker', '\r\n    LonnieKBooker@rhyta.com', '2316 School House Road\r\nCollins, MS 39428 ', '601-765-9397'),
(4, 'Joshua C. Bassettr', '\r\n    JoshuaCBassett@rhyta.com ', '23725 New York Avenue\r\nGlendale, CA 91204', '818-240-8827'),
(5, 'Carol W. Carlsen', '\r\n    CarolWCarlsen@jourrapide.com ', '3163 Lake Forest Drive\r\nNew York, NY 10013 ', '914-259-5197');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` float NOT NULL,
  `description` longtext NOT NULL,
  `img_name` varchar(150) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`id`, `product_name`, `product_price`, `description`, `img_name`, `stock`) VALUES
(1, 'Coffee Club', 450, 'Now you can wait for your morning coffee wearing this t-shirt! Don\'t wait! Oh, wait...\r\n\r\nMade of 100% combed cotton\r\n*Machine wash cold\r\n*Dry cleanable\r\n*Do not iron on print\r\n*Do not bleach\r\n*Do not wring\r\n*Do not tumble dry\r\n', '6198cb60cdf414.69797380.png', 20),
(2, 'No Fear', 600, 'No Fear! No Worry! No Control!\r\n\r\nMade of 100% combed cotton\r\n*Machine wash cold\r\n*Dry cleanable\r\n*Do not iron on print\r\n*Do not bleach\r\n*Do not wring\r\n*Do not tumble dry\r\n', '6198cdad0d6375.56007800.png', 30),
(3, 'Euphoria', 700, 'eu·pho·ri·a - a feeling or state of intense excitement and happiness.\r\n\r\n*Machine wash cold\r\n*Dry cleanable\r\n*Do not iron on print\r\n*Do not bleach\r\n*Do not wring\r\n*Do not tumble dry\r\n', '6198ceceb940b4.25893407.png', 50),
(4, 'Too High', 700, 'I’m too high to sleep.\r\n\r\n100% Combed Cotton\r\nCOLD WASH ONLY\r\n*Machine wash cold\r\n*Dry cleanable\r\n*Do not iron on print\r\n*Do not bleach\r\n*Do not wring\r\n*Do not tumble dry\r\n', '6198cf004d3357.87151959.png', 45),
(5, 'Plants Like Music Too', 450, 'Plants thrive when they listen to music that sits between 115Hz and 250Hz.\r\n\r\nMade of 100% combed cotton\r\n*Machine wash cold\r\n*Dry cleanable\r\n*Do not iron on print\r\n*Do not bleach\r\n*Do not wring\r\n*Do not tumble dry\r\n', '6198cf27b66551.49623927.png', 43),
(6, 'Manifestation', 600, 'Manifestation - the action or fact of showing an abstract idea.\r\n*Machine wash cold\r\n*Dry cleanable\r\n*Do not iron on print\r\n*Do not bleach\r\n*Do not wring\r\n*Do not tumble dry\r\n', '61a05c950cec12.64504695.png', 50),
(8, 'Placebo', 600, 'pla·ce·bo - a measure designed merely to calm or please someone.\r\n\r\n*Machine wash cold\r\n*Dry cleanable\r\n*Do not iron on print\r\n*Do not bleach\r\n*Do not wring\r\n*Do not tumble dry\r\n', '61a0f99c56ae03.94378719.png', 70),
(9, 'Vice Cigarette', 450, 'A cigarette a day keeps the doctor in pay.\r\n\r\nMade of 100% combed cotton\r\n*Machine wash cold\r\n*Dry cleanable\r\n*Do not iron on print\r\n*Do not bleach\r\n*Do not wring\r\n*Do not tumble dry\r\n', '61ae206ee4c9a7.52225897.png', 250),
(11, 'Vinyl Junkie', 650, 'Nothing sounds sweeter than the crackle of vinyl.\r\n\r\n100% Combed Cotton\r\nCOLD WASH ONLY\r\n*Machine wash cold\r\n*Dry cleanable\r\n*Do not iron on print\r\n*Do not bleach\r\n*Do not wring\r\n*Do not tumble dry\r\n', '61ae3f195e8d46.85787570.png', 155),
(12, 'Good Boys Club', 650, 'Come join the hottest club in town!\r\n\r\nMade of 100% combed cotton\r\n*Machine wash cold\r\n*Dry cleanable\r\n*Do not iron on print\r\n*Do not bleach\r\n*Do not wring\r\n*Do not tumble dry\r\n', '61b055fe3d6d80.31816983.png', 300),
(13, 'Ethernal Hell', 700, 'Is Hell real? Is Hell eternal?\r\n\r\nMade of 100% combed cotton\r\n*Machine wash cold\r\n*Dry cleanable\r\n*Do not iron on print\r\n*Do not bleach\r\n*Do not wring\r\n*Do not tumble dry\r\n', '61b43114016a26.71909231.png', 150),
(14, 'Let\'s Dance', 450, 'Come on! Join us and dance the night away.\r\n\r\n100% Combed Cotton\r\n\r\n*Machine wash cold\r\n*Dry cleanable\r\n*Do not iron on print\r\n*Do not bleach\r\n*Do not wring\r\n*Do not tumble dry\r\n', '61b43321977601.93003832.png', 155),
(15, 'Summer Intern', 550, 'Keep calm and be a summer intern. \r\n\r\nMade of 100% combed cotton\r\n*Machine wash cold\r\n*Dry cleanable\r\n*Do not iron on print\r\n*Do not bleach\r\n*Do not wring\r\n*Do not tumble dry\r\n', '61b4334ee1e7b9.06208100.png', 200),
(16, 'Nankinmushi', 900, 'Japanese Influential Design in Black Tee. Shipping Worldwide.\r\n\r\n\r\n*Machine wash cold\r\n*Dry cleanable\r\n*Do not iron on print\r\n*Do not bleach\r\n*Do not wring\r\n*Do not tumble dry\r\n', '61b4337fb8f1e2.17810637.png', 70),
(17, 'Hotdog Club', 550, 'Either you love hotdogs or you’re wrong.\r\n\r\nMade of 100% combed cotton\r\n*Machine wash cold\r\n*Dry cleanable\r\n*Do not iron on print\r\n*Do not bleach\r\n*Do not wring\r\n*Do not tumble dry\r\n', '61b433a3089633.67506914.png', 155),
(18, 'Palawan Hot', 550, 'It’s always hot in Palawan.\r\n*Machine wash cold\r\n*Dry cleanable\r\n*Do not iron on print\r\n*Do not bleach\r\n*Do not wring\r\n*Do not tumble dry \r\n', '61b433c4bec319.70134614.png', 200),
(19, 'Allergic Club', 550, 'What doesn’t kill you makes you feel worse.\r\n\r\nMade of 100% combed cotton\r\n*Machine wash cold\r\n*Dry cleanable\r\n*Do not iron on print\r\n*Do not bleach\r\n*Do not wring\r\n*Do not tumble dry\r\n', '61b4343921a415.29825113.png', 150),
(20, 'Badass Baller', 650, 'Become a badass baller to win the game.\r\n\r\n Made of 100% combed cotton\r\n*Machine wash cold\r\n*Dry cleanable\r\n*Do not iron on print\r\n*Do not bleach\r\n*Do not wring\r\n*Do not tumble dry. \r\n', '61b4345c236e84.70487039.png', 70),
(21, 'Create Art', 600, 'Just keep creating art. \r\n\r\n*Machine wash cold\r\n*Dry cleanable\r\n*Do not iron on print\r\n*Do not bleach\r\n*Do not wring\r\n*Do not tumble dry\r\n', '61b4346ea54d68.00778497.png', 150),
(22, 'Disconnected', 600, 'Disconnect with the world, reconnect with yourself.\r\n\r\nMade of 100% combed cotton\r\n*Machine wash cold\r\n*Dry cleanable\r\n*Do not iron on print\r\n*Do not bleach\r\n*Do not wring\r\n*Do not tumble dry\r\n', '61b4348bdc1b10.25826565.png', 20),
(23, 'Good Ol\' Spooks', 600, 'If there\'s something strange\r\nIn your neighborhood\r\nWho you gonna call?\r\n\r\nMade of 100% combed cotton\r\n*Machine wash cold\r\n*Dry cleanable\r\n*Do not iron on print\r\n*Do not bleach\r\n*Do not wring\r\n*Do not tumble dry\r\n', '61b434cbcf1f88.49122792.png', 200),
(24, 'Leaning Tower of Pizza', 550, 'You can’t buy happiness but you can buy a leaning tower of pizza thou.\r\n\r\n*Machine wash cold\r\n*Dry cleanable\r\n*Do not iron on print\r\n*Do not bleach\r\n*Do not wring\r\n*Do not tumble dry\r\n', '61b434e3a7d139.26555866.png', 150),
(25, 'Magical Mystery Drops', 550, 'Lost in love? One drop, fixes all!\r\n\r\nMade of 100% combed cotton\r\n*Machine wash cold\r\n*Dry cleanable\r\n*Do not iron on print\r\n*Do not bleach\r\n*Do not wring\r\n*Do not tumble dry\r\n', '61b434fb1e4016.07634443.png', 266),
(26, 'No Sea', 600, 'e sea isn’t real.\r\n\r\n\r\nMade of 100% combed cotton\r\n*Machine wash cold\r\n*Dry cleanable\r\n*Do not iron on print\r\n*Do not bleach\r\n*Do not wring\r\n*Do not tumble dry\r\n', '61b43512a8b0b2.17237779.png', 200),
(27, 'Plant Bass', 500, 'A compassionate lifestyle through vegan food, music, art and community\r\n\r\n\r\n100% Combed Cotton\r\nCOLD WASH ONLY\r\n*Machine wash cold\r\n*Dry cleanable\r\n*Do not iron on print\r\n*Do not bleach\r\n*Do not wring\r\n*Do not tumble dry\r\n', '61b43529187270.65520575.png', 242),
(28, 'The Pool Club', 600, 'Home is where the pool is. Join the pool club to feel at home.\r\n\r\n\r\n\r\n100% Combed Cotton\r\nCOLD WASH ONLY\r\n*Machine wash cold\r\n*Dry cleanable\r\n*Do not iron on print\r\n*Do not bleach\r\n*Do not wring\r\n*Do not tumble dry\r\n', '61b43543ad0eb0.45085503.png', 241),
(29, 'No Plans', 550, 'No plans. No goals. No disappointments.\r\n\r\n100% Combed Cotton\r\nCOLD WASH ONLY\r\n*Machine wash cold\r\n*Dry cleanable\r\n*Do not iron on print\r\n*Do not bleach\r\n*Do not wring\r\n*Do not tumble dry\r\n', '61b43556e4dcb2.28331791.png', 135);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_staff`
--

CREATE TABLE `tbl_staff` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_staff`
--

INSERT INTO `tbl_staff` (`id`, `name`, `email`, `date`, `role`) VALUES
(1, 'Mike Arvene Lantin', 'mikearvene.lantin@g.batstate-u.edu.ph', '2021-10-28', 'admin'),
(2, 'Pauline Mae Ona', 'paulinemae.ona@g.batstate-u.edu.ph', '2021-10-28', 'admin'),
(3, 'Kristia Isabelle Samson', 'kristiaisabelle.samson@g.batstate-u.edu.ph', '2021-11-26', 'admin'),
(4, 'Shainne Amurao', 'shainne.amurao@g.batstate-u.edu.ph', '2021-11-26', 'admin'),
(5, 'Jhun Gutierrez', 'jhun.gutierrez@g.batstate-u.edu.ph', '2021-11-30', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_accounts`
--
ALTER TABLE `tbl_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_custinfo`
--
ALTER TABLE `tbl_custinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_staff`
--
ALTER TABLE `tbl_staff`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_accounts`
--
ALTER TABLE `tbl_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_custinfo`
--
ALTER TABLE `tbl_custinfo`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_staff`
--
ALTER TABLE `tbl_staff`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
