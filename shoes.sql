-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2024 at 12:43 AM
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
-- Database: `cis393finalproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `shoes`
--

CREATE TABLE `shoes` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(50) DEFAULT 'Unnamed',
  `price` decimal(10,2) DEFAULT 0.00,
  `image` varchar(255) DEFAULT 'shoePictures/no-image-icon.jpg',
  `seller` varchar(50) DEFAULT 'Shoe Store',
  `buyer` varchar(50) DEFAULT 'None',
  `bid` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shoes`
--

INSERT INTO `shoes` (`ID`, `NAME`, `price`, `image`, `seller`, `buyer`, `bid`) VALUES
(13, 'Nike Zoom Vomero 5', 160.00, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/fee53391-cec8-4218-9346-4c95fc01884c/zoom-vomero-5-mens-shoes-MgsTqZ.png', 'Shoe Store', '', 115.00),
(14, 'Nike Air Max Ishod', 110.00, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/f86c8595-fced-4bd2-9484-5cb1572a171e/air-max-ishod-mens-shoes-DwRtpQ.png', 'Shoe Store', 'None', 50.00),
(15, 'Nike Killshot 2', 90.00, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/313730b7-3cbf-40de-8c7f-3dfcb0ebd8f9/killshot-2-womens-shoes-3z3Nnb.png', 'Shoe Store', 'None', 80.00),
(16, 'Air Jordan 4 Retro', 215.00, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/73682086-2e6b-4ce1-b2be-ce0f97a27442/air-jordan-4-retro-mens-shoes.png', 'Shoe Store', 'None', 200.00),
(17, 'Nike Dunk Low Retro', 115.00, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/d6242443-257d-40af-8f4f-deba3d496eb5/dunk-low-retro-mens-shoes-21nLMl.png', 'Shoe Store', 'None', 0.00),
(18, 'Nike G.T. Cut Academy', 95.00, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/9e20ef9c-1718-4de6-85ac-bbbbbae02aa4/gt-cut-academy-basketball-shoes-VvkL4Q.png', 'Shoe Store', 'None', 68.00),
(19, 'Air Jordan 4 Retro', 150.00, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/a159e556-ebae-43f8-969f-44c5653d0364/air-jordan-4-retro-big-kids-shoes-RmLwMq.png', 'Shoe Store', 'None', 120.00),
(20, 'Nike Air Max Dn', 160.00, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/35c07f69-1d7a-4272-abe4-4adf4b9a9d2f/air-max-dn-shoes-27XkSQ.png', 'Shoe Store', 'None', 148.00),
(21, 'Nike Air Max Plus', 180.00, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/49b3c5b3-cfb7-4c70-bf51-29cdbb9fec30/air-max-plus-mens-shoes-x9G2xF.png', 'Shoe Store', 'None', 145.00),
(22, 'Nike ACG Moc', 90.00, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/6466bc0f-8d95-4292-9cd8-cdf35e5ed272/acg-moc-mens-shoes-CgdGCw.png', 'Shoe Store', 'None', 0.00),
(23, 'Nike ACG Rufus', 110.00, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/e664334e-052c-403c-990b-8c2e2dc070e1/acg-rufus-mens-shoes.png', 'Shoe Store', 'None', 0.00),
(24, 'Nike Dunk Low Retro', 115.00, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/26c4acd1-385f-48fe-b4c0-8e573671e530/dunk-low-retro-mens-shoes.png', 'Shoe Store', 'None', 105.00),
(25, 'Air Jordan 1 Low Method of Make', 135.00, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/5fd1e707-069a-4d6d-9ee1-63f850b1b8fc/air-jordan-1-low-method-of-make-womens-shoes-tq9cmG.png', 'Shoe Store', 'None', 125.00),
(26, 'Jordan Spizike Low', 160.00, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/1d7964ee-8017-4905-881b-07adbfdff95b/jordan-spizike-low-mens-shoes-LDT8cp.png', 'Shoe Store', 'None', 154.00),
(27, 'Air Jordan 5 Retro SE', 210.00, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/9ec049c5-af9d-4cfc-af3a-e5ed34c3e397/air-jordan-5-retro-se-mens-shoes-gKlWtk.png', 'Shoe Store', 'None', 200.00),
(28, 'Nike Dunk Low Next Nature SE', 120.00, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/21962806-88c4-4ff4-a385-d147cba19d1a/dunk-low-next-nature-se-womens-shoes-8Dk7Jr.png', 'Shoe Store', 'None', 110.00),
(29, 'Air Jordan 4 Retro', 160.00, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/e82a1901-e45f-46f7-b065-b019b0351837/air-jordan-4-retro-big-kids-shoes.png', 'Shoe Store', 'None', 0.00),
(30, 'Nike Dunk Low LX', 135.00, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/5f1e7dab-a82b-44ac-90fa-ad118af83e52/dunk-low-lx-womens-shoes-16c9ld.png', 'Shoe Store', 'None', 95.00),
(31, 'Nike Dunk Low', 135.00, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/882b7fd1-2ebd-47c3-9e03-300e22bafa40/dunk-low-womens-shoes-9WJtmn.png', 'Shoe Store', 'None', 127.00),
(32, 'Jordan Roam', 60.00, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/99a6ad76-2202-4a24-84d7-18bfdd816e85/jordan-roam-slides-0nD8Dq.png', 'Shoe Store', 'None', 0.00),
(33, 'Nike Dunk Low Retro SE', 125.00, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/32f819db-2d97-40ae-9a4a-e4d20f99bebf/dunk-low-retro-se-mens-shoes-qTZ3Jk.png', 'Shoe Store', 'None', 119.00),
(34, 'Jordan 2/3', 160.00, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/7c22d573-34a6-4ca4-9836-456d132fbc3b/jordan-2-3-mens-shoes-rSwGJD.png', 'Shoe Store', 'None', 146.56),
(35, 'Nike Dunk Low', 100.00, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/cc5e6eb6-b5a9-4402-b015-fa0519b4f7c8/dunk-low-big-kids-shoes-PKW4kS.png', 'Shoe Store', 'None', 98.00),
(36, 'LeBron XXI', 200.00, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/42494f76-0dfb-4d8e-b7d3-92eb96f7bbfa/lebron-xxi-basketball-shoes-DjB9tK.png', 'Shoe Store', 'None', 0.00),
(37, 'Nike Dunk Low', 90.00, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/d81bda98-63f3-44fb-9436-9391c9b06807/dunk-low-big-kids-shoes-l6Jxh2.png', 'Shoe Store', 'None', 76.00),
(38, 'Air Jordan 1 Low SE', 110.00, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/c6f62b53-3636-4b33-91b7-60dc4ad9ecf9/air-jordan-1-low-se-big-kids-shoes-c53hZ6.png', 'Shoe Store', 'None', 101.75),
(39, 'Jumpman MVP', 165.00, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/7eb6b8df-4cf1-4428-81e4-56da4829ca90/jumpman-mvp-womens-shoes-v92HlS.png', 'Shoe Store', 'None', 0.00),
(40, 'Air Jordan 1 Low SE Craft', 125.00, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/b2e8f89f-7725-40e8-8616-4e35415f66e8/air-jordan-1-low-se-craft-mens-shoes-h5JdjM.png', 'Shoe Store', 'None', 120.20),
(41, 'Jordan Rings 6', 170.00, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/1fb22078-0354-42a4-9299-893c98d46abd/jordan-6-rings-mens-shoes-2VAD3Y.png', 'Shoe Store', 'None', 145.00),
(42, 'Air Jordan 1 Low', 115.00, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/7d8ca40f-a751-464a-98e9-b82f0e20be0c/air-jordan-1-low-mens-shoes-0LXhbn.png', 'Shoe Store', 'John Doe', 112.21);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `shoes`
--
ALTER TABLE `shoes`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `shoes`
--
ALTER TABLE `shoes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
