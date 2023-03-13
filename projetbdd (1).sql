-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  lun. 13 mars 2023 à 14:44
-- Version du serveur :  5.7.17
-- Version de PHP :  5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projetbdd`
--

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `product-id` int(11) NOT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `Color_of_Kanban` varchar(10) DEFAULT NULL,
  `Color_of_Font_Kanban` varchar(7) NOT NULL,
  `Supplier` varchar(50) DEFAULT NULL,
  `Date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`product-id`, `product_name`, `Quantity`, `Price`, `Color_of_Kanban`, `Color_of_Font_Kanban`, `Supplier`, `Date`) VALUES
(1, 'Canapé Angersby', 10, '299.00', '#0000FF', '#FFFFFF', 'IKEA', '2018-09-24 22:21:20'),
(2, 'Billy', 15, '49.99', '#00FF00', '#000000', 'IKEA', '2018-09-24 22:21:20'),
(3, 'Ektorp', 20, '499.00', '#FF0000', '#000000', 'IKEA', '2018-09-24 22:21:20'),
(4, 'Lack', 5, '9.99', '#FFFF00', '#000000', 'IKEA', '2018-09-24 22:21:20'),
(5, 'Poäng', 8, '99.00', '#0000FF', '#FFFFFF', 'IKEA', '2018-09-24 22:21:20'),
(6, 'Raskog', 12, '39.99', '#00FF00', '#000000', 'IKEA', '2018-09-24 22:21:20'),
(7, 'Alex', 7, '79.00', '#FF0000', '#000000', 'IKEA', '2018-09-24 22:21:20'),
(8, 'Samsung Galaxy S21', 3, '799.99', '#FF00FF', '#000000', 'Amazon', '2023-03-10 20:47:00'),
(9, 'Kindle Paperwhite', 10, '129.99', '#008000', '#FFFFFF', 'Amazon', '2023-03-10 20:47:00'),
(10, 'Fire TV Stick', 15, '39.99', '#000000', '#FFFFFF', 'Amazon', '2023-03-10 20:47:00'),
(11, 'Echo Dot', 20, '49.99', '#FFFFFF', '#000000', 'Amazon', '2023-03-10 20:47:00'),
(12, 'Philips Sonicare', 5, '99.99', '#00FFFF', '#000000', 'Amazon', '2023-03-10 20:47:00'),
(13, 'SanDisk Ultra', 8, '29.99', '#FFFF00', '#000000', 'Amazon', '2023-03-10 20:47:00'),
(14, 'Apple AirPods Pro', 12, '249.99', '#FFA500', '#000000', 'Amazon', '2023-03-10 20:47:00'),
(15, 'Ryzen 5 5600X', 7, '299.99', '#800080', '#FFFFFF', 'Amazon', '2023-03-10 20:47:00'),
(16, 'Xbox Series X', 11, '499.99', '#008080', '#FFFFFF', 'Amazon', '2023-03-10 20:47:00'),
(17, 'PlayStation 5', 17, '499.99', '#FF0000', '#000000', 'Amazon', '2023-03-10 20:47:00'),
(18, 'MacBook Pro', 9, '1499.00', '#0000FF', '#FFFFFF', 'Amazon', '2023-03-10 20:47:00'),
(19, 'Nike Air Force 1', 14, '89.99', '#FFFFFF', '#000000', 'Nike', '2023-03-10 20:46:40'),
(20, 'Jordan 1 Mid', 6, '129.99', '#FF0000', '#000000', 'Nike', '2023-03-10 20:46:40'),
(21, 'SB Zoom Blazer Mid', 19, '84.99', '#000000', '#FFFFFF', 'Nike', '2023-03-10 20:46:40'),
(22, 'Tech Fleece Hoodie', 10, '120.00', '#00FF00', '#000000', 'Nike', '2023-03-10 20:46:40'),
(23, 'Dri-FIT Running Shorts', 15, '34.99', '#FFFF00', '#000000', 'Nike', '2023-03-10 20:46:40'),
(24, 'Therma Full Zip Hoodie', 20, '70.00', '#0000FF', '#FFFFFF', 'Nike', '2023-03-10 20:46:40'),
(25, 'Element Hoodie', 5, '85.00', '#008000', '#FFFFFF', 'Nike', '2023-03-10 20:46:40'),
(26, 'UltraBoost', 8, '180.00', '#FF00FF', '#000000', 'Adidas', '2023-02-27 20:46:40'),
(27, 'Stan Smith', 12, '80.00', '#FFFFFF', '#000000', 'Adidas', '2023-02-27 20:46:40'),
(28, 'Tiro 19 Training Pants', 7, '45.00', '#FFA500', '#000000', 'Adidas', '2023-02-27 20:46:40'),
(29, 'Alphaskin Sport Tights', 11, '50.00', '#800080', '#FFFFFF', 'Adidas', '2023-02-27 20:46:40'),
(30, 'Ultimate365 Golf Polo', 17, '65.00', '#000000', '#FFFFFF', 'Adidas', '2023-02-27 20:46:40'),
(31, 'NMD_R1 Shoes', 3, '140.00', '#008080', '#FFFFFF', 'Adidas', '2023-02-27 20:46:40'),
(32, 'Essentials 3-Stripes Hoodie', 9, '55.00', '#FFFF00', '#000000', 'Adidas', '2023-02-27 20:46:40'),
(33, 'Duramo Slides', 14, '20.00', '#00FFFF', '#000000', 'Adidas', '2023-02-27 20:46:40'),
(34, 'Predator Freak.1 Firm Ground Cleats', 6, '250.00', '#FF0000', '#000000', 'Adidas', '2023-02-27 20:46:40'),
(35, 'Mercurial Vapor 14 Elite FG', 5, '250.00', '#0000FF', '#FFFFFF', 'Nike', '2023-03-10 20:46:40'),
(36, 'Phantom GT Elite Dynamic Fit FG', 10, '250.00', '#00FF00', '#000000', 'Nike', '2023-03-10 20:46:40'),
(37, 'Yoga Mat', 15, '39.99', '#000000', '#FFFFFF', 'Lululemon', '2023-03-10 20:47:00'),
(38, 'Wunder Under High-Rise Tight', 20, '98.00', '#800080', '#FFFFFF', 'Lululemon', '2023-03-10 20:47:00'),
(39, 'The Reversible Mat 5mm', 8, '78.00', '#FF00FF', '#000000', 'Lululemon', '2023-03-10 20:47:00'),
(40, 'Define Jacket', 11, '118.00', '#FFFF00', '#000000', 'Lululemon', '2023-03-10 20:47:00'),
(41, 'Power Y Tank', 16, '52.00', '#FFFFFF', '#000000', 'Lululemon', '2023-03-10 20:47:00'),
(42, 'Align Pant', 7, '98.00', '#00FF00', '#000000', 'Lululemon', '2023-03-10 20:47:00'),
(43, 'Metal Vent Tech Short Sleeve', 12, '78.00', '#FFA500', '#000000', 'Lululemon', '2023-03-10 20:47:00'),
(44, 'Foam Roller', 5, '39.99', '#008000', '#000000', 'Lululemon', '2023-03-10 20:47:00'),
(45, 'Clifton 8', 14, '130.00', '#0000FF', '#FFFFFF', 'Hoka One One', '2023-03-10 20:47:00'),
(46, 'Arahi 5', 7, '130.00', '#00FFFF', '#000000', 'Hoka One One', '2023-03-10 20:47:00'),
(47, 'Mach 4', 9, '200.00', '#FF0000', '#000000', 'Hoka One One', '2023-03-10 20:47:00'),
(48, 'Bondi 7', 15, '150.00', '#FFFFFF', '#000000', 'Hoka One One', '2023-03-10 20:47:00'),
(49, 'Speedgoat 4', 20, '145.00', '#800080', '#FFFFFF', 'Hoka One One', '2023-03-10 20:47:00'),
(50, 'Elevon 2', 4, '160.00', '#FFFF00', '#000000', 'Hoka One One', '2023-03-10 20:47:00'),
(51, 'Clifton Edge', 6, '170.00', '#008080', '#FFFFFF', 'Hoka One One', '2023-03-10 20:47:00'),
(52, 'Treadwell Bike', 12, '899.00', '#FF00FF', '#000000', 'Specialized', '2023-03-10 20:47:00'),
(53, 'Stumpjumper EVO', 5, '4099.00', '#008000', '#FFFFFF', 'Specialized', '2023-03-10 20:47:00'),
(54, 'Sirrus X 5.0', 17, '1099.00', '#000000', '#FFFFFF', 'Specialized', '2023-03-10 20:47:00'),
(55, 'Turbo Como 4.0 650B', 11, '3199.00', '#FFFFFF', '#000000', 'Specialized', '2023-03-10 20:47:00'),
(56, 'Levo SL', 3, '9999.00', '#00FFFF', '#000000', 'Specialized', '2023-03-10 20:47:00'),
(57, 'Allez Elite', 8, '1700.00', '#800080', '#FFFFFF', 'Specialized', '2023-03-10 20:47:00');

-- --------------------------------------------------------

--
-- Structure de la table `stocks`
--

CREATE TABLE `stocks` (
  `date` date NOT NULL,
  `stock` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `stocks`
--

INSERT INTO `stocks` (`date`, `stock`, `product_id`) VALUES
('2023-03-11', 32, 1),
('2023-03-01', 6, 1),
('2023-03-02', 11, 1),
('2023-03-03', 63, 1),
('2023-03-04', 61, 1),
('2023-03-05', 74, 1),
('2023-03-06', 51, 1),
('2023-03-07', 14, 1),
('2023-03-08', 96, 1),
('2023-03-09', 8, 1),
('2023-03-10', 58, 1),
('2023-03-11', 2, 2),
('2023-03-10', 33, 2),
('2023-03-09', 61, 2),
('2023-03-08', 5, 2),
('2023-03-07', 44, 2),
('2023-03-06', 4, 2),
('2023-03-05', 89, 2),
('2023-03-04', 29, 2),
('2023-03-03', 80, 2),
('2023-03-02', 13, 2),
('2023-03-01', 25, 2),
('2023-03-11', 96, 3),
('2023-03-10', 31, 3),
('2023-03-09', 67, 3),
('2023-03-08', 43, 3),
('2023-03-07', 13, 3),
('2023-03-06', 38, 3),
('2023-03-05', 50, 3),
('2023-03-04', 37, 3),
('2023-03-03', 36, 3),
('2023-03-02', 69, 3),
('2023-03-01', 36, 3),
('2023-03-11', 55, 4),
('2023-03-10', 31, 4),
('2023-03-09', 93, 4),
('2023-03-08', 71, 4),
('2023-03-07', 76, 4),
('2023-03-06', 67, 4),
('2023-03-05', 5, 4),
('2023-03-04', 26, 4),
('2023-03-03', 14, 4),
('2023-03-02', 95, 4),
('2023-03-01', 31, 4),
('2023-03-11', 71, 5),
('2023-03-10', 59, 5),
('2023-03-09', 83, 5),
('2023-03-08', 38, 5),
('2023-03-07', 43, 5),
('2023-03-06', 100, 5),
('2023-03-05', 68, 5),
('2023-03-04', 40, 5),
('2023-03-03', 99, 5),
('2023-03-02', 71, 5),
('2023-03-01', 59, 5),
('2023-03-11', 81, 6),
('2023-03-10', 29, 6),
('2023-03-09', 4, 6),
('2023-03-08', 33, 6),
('2023-03-07', 51, 6),
('2023-03-06', 59, 6),
('2023-03-05', 38, 6),
('2023-03-04', 14, 6),
('2023-03-03', 60, 6),
('2023-03-02', 54, 6),
('2023-03-01', 93, 6);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`) VALUES
(1, 'Greg', '1234');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product-id`);

--
-- Index pour la table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`date`,`product_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `product-id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
