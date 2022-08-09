-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 09 Ağu 2022, 09:47:29
-- Sunucu sürümü: 10.4.22-MariaDB
-- PHP Sürümü: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `bwclothes`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_parent_id` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_img` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_des` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `category`
--

INSERT INTO `category` (`id`, `name`, `cat_parent_id`, `cat_img`, `cat_des`) VALUES
(1, 'Bot', NULL, NULL, '<div>dsadsada</div>');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220807131800', '2022-08-07 15:18:25', 939),
('DoctrineMigrations\\Version20220807173310', '2022-08-07 19:33:26', 65),
('DoctrineMigrations\\Version20220807182128', '2022-08-07 20:21:55', 44);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `order_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `order_adres` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `order`
--

INSERT INTO `order` (`id`, `order_name`, `user_name`, `order_id`, `order_adres`) VALUES
(1, 'Converse Siyah Ayakkabı', 'olgun@gmail.com', 2, NULL),
(2, 'Converse Siyah Ayakkabı', 'olgun@gmail.com', 2, NULL),
(3, 'Converse Siyah Ayakkabı', 'olgun2@gmail.com', 2, NULL),
(4, 'Converse Siyah Ayakkabı', 'olgun2@gmail.com', 2, 'gül sokak bağlıcal');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `product_img` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_image_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `product`
--

INSERT INTO `product` (`id`, `product_name`, `product_description`, `product_price`, `parent_id`, `product_img`, `p_image_file`) VALUES
(2, 'Converse Siyah Ayakkabı', '<div>Converse Siyah Ayakkabı çok güzeldir, tavsiye ederim.</div>', 150, NULL, 'a2217898941b20d9eb684a45163710b423ac5b8e.[extensions]', NULL),
(3, 'Converse Kırmızı Ayakkabı', '<div>Converse Siyah Ayakkabı çok güzeldir, tavsiye ederim</div>', 190, NULL, 'a681f5b21243e4f84605878091f7f7d5ca6821a3.[extensions]', NULL),
(4, 'Sneaker Turuncu Ayakkabı', '<div>Sneaker Turuncu Ayakkabı çok güzeldir, tavsiye ederim</div>', 2560, NULL, '043e5aafbdd3e505a17b77750d1a5cb47535d6e5.[extensions]', NULL),
(5, 'Converse Beyaz Ayakkabı', '<div>Converse Beyaz Ayakkabı çok güzeldir, tavsiye ederim</div>', 1250, NULL, '0176ddb7579aa382a2fee80d4bf78a270b7a1415.[extensions]', NULL),
(6, 'Klasik Demon Ayakkabı', '<div>Klasik Demon Ayakkabı Ayakkabı çok güzeldir, tavsiye ederim</div>', 500, NULL, 'a94b3d88be3c74f4a6f628819bd2e7c5c7e2b5a9.[extensions]', NULL),
(7, 'Klasik Devil Ayakkabı', '<div>Klasik Devil Ayakkabı çok güzeldir, tavsiye ederim</div>', 6000, NULL, 'f84fbd85e776d4432d8b2198bbd0b488762a6a76.[extensions]', NULL),
(8, 'Converse Sarı Ayakkabı', '<div>Converse Sarı Ayakkabı</div>', 650, NULL, '5966c9ba34de610cc839470121ff24a290e4310a.[extensions]', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product_category`
--

CREATE TABLE `product_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_adress` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `user_adress`) VALUES
(1, 'olgun@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$3gk3hkESqwPpcoubrUlaqeJJSXqXKcELhtoMRQSL5CnmC7WSzgld.', NULL),
(2, 'olgun2@gmail.com', '[]', '$2y$13$YnPfi8HL/U3bAH1orLg1euRHKLaqANJdQS8/3a/QToM36t/k3LGuO', 'gül sokak bağlıcal'),
(3, 'olgun31@gmail.com', '[]', '$2y$13$//jkgu2U8DQiQYiVuxGNoOpO2xMxp747waJRlVk6MeXzRwoE93Nx2', 'dsadsa'),
(4, 'olgun61@gmail.com', '[]', '$2y$13$cKa3D4AdL7Z2766fSXwHY.Q.JLkbgqio1IsFJXYnGdr55i3MZkwui', 'gül sokak bağlıcal'),
(5, 'olgun62@gmail.com', '[]', '$2y$13$nv7C45Q2bIZyiyul3gM2j.4SbmVZaiEGAmsxXcTCmDRxYuag.7svu', 'gül sokak bağlıcal'),
(6, 'olgun622@gmail.com', '[]', '$2y$13$Pv7P35mvs7Y84In2sm3ImOC.LCzjkC/FIUqnhZ6VgQhj1t7jxxknS', 'gül sokak bağlıcal'),
(7, 'olgun6221@gmail.com', '[]', '$2y$13$LevNB3iXLmV3ToBRXL.l3OWENLDH2YOYsZwsr3cmQpQ.UatEshu1e', 'gül sokak bağlıcal'),
(8, 'dev@gmail.com', '[]', '$2y$13$mGf4H2PEHkfWurGCv7m/4.YSqi0DJPxPw5KI9gk6m5uQB8LoJ3ABu', 'gül sokak bağlıcal');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Tablo için indeksler `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Tablo için indeksler `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `IDX_CDFC73564584665A` (`product_id`),
  ADD KEY `IDX_CDFC735612469DE2` (`category_id`);

--
-- Tablo için indeksler `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `product_category`
--
ALTER TABLE `product_category`
  ADD CONSTRAINT `FK_CDFC735612469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_CDFC73564584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
