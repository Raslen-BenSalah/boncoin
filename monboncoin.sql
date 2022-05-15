-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 15 mai 2022 à 22:55
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `monboncoin`
--

-- --------------------------------------------------------

--
-- Structure de la table `ads`
--

CREATE TABLE `ads` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `localisation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ads`
--

INSERT INTO `ads` (`id`, `title`, `description`, `localisation`, `price`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'kia rio 2020', 'jdida neuf', 'Manouba, Tunis, Tunisie', 30000.00, 1, '2022-05-06 22:04:57', '2022-05-06 22:04:57'),
(2, 'berlingo hamra', 'behya w bonne occasion', 'Manouba, Tunis, Tunisie', 555.00, 2, '2022-05-06 23:00:57', '2022-05-06 23:00:57'),
(3, 'clio clssique', 'Moteur Renault Clio II 1.2 16v (2001-2005). Type du moteur. Energie, Essence. Disposition, Transversal avant. Alimentation, Gestion intégrale.', 'La marsa, Tunis, Tunisie', 15000.00, 3, '2022-05-07 01:11:03', '2022-05-07 01:11:03'),
(4, 'Renault - Clio', 'je mets en vente ma voiture clio classique année\r\nPrix : 17500 Dinars', 'paris, France', 17000.00, 4, '2022-05-07 08:32:54', '2022-05-07 08:32:54'),
(5, '👉RANGE ROVER SPORT💎HSE. SDV6', 'Voiture visible dans notre Show-Room HBIB AUTO route de la Marsa en face carrefour pour visite heure travail de 09.00 H jusqu’à 19:00H .\r\nTEL : 98 214 267 // 53 402 770', 'Manouba, Tunis, Tunisie', 308000.00, 4, '2022-05-07 08:37:31', '2022-05-07 08:37:31'),
(6, 'fgfgfgfg', 'test', 'test', 123.00, 5, '2022-05-07 08:58:04', '2022-05-07 08:58:04'),
(7, 'test', 'test', 'test', 2123.00, 6, '2022-05-15 01:29:51', '2022-05-15 01:29:51');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2022_05_06_192838_create_ads_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Raslen', 'raslen@gmail.com', NULL, '$2y$10$HJ0n93J75uNMH0E8lTD25.7qT/TEBGeSicTjYNSDBDIYICUOYpluW', 'kzGBZLHzVb3gaP0f7fnsTPhfRiSTMTe05uLpVw1bilaPq5BsgrAbQqwpZJNH', '2022-05-06 22:00:02', '2022-05-06 22:00:02'),
(2, 'test', 'test@gmail.com', NULL, '$2y$10$sYW9WdvK/exjjwgIZOXT5.VLl4kx1RMeSDzwnbshh5CNtPw81ADTq', 'EAxgrsqbpK1SUT50n7Ou2q4qBINCdNAAztSv493tXNIqS844D8sBkbIJmhuR', '2022-05-06 23:00:57', '2022-05-06 23:00:57'),
(3, 'Raslen Ben Salah', 'bensalah.medraslen@gmail.com', NULL, '$2y$10$ghuc1BD57ZGpdZ3/giGBIOk2zHRGCYQnRWAmWjESGIEVnipOgg8Ri', NULL, '2022-05-07 01:08:39', '2022-05-07 01:08:39'),
(4, 'Russ', 'russ@gmail.com', NULL, '$2y$10$pIMOLFyM2fo6ZfzEP2E3deHcTkP7Eb.wlruQ9059myzqIfOV1istK', 'BGBG4HOQgUYUSCu8tlncq5T0VfkDxwnreFBERe75Va3KuEUK6H1NCXTJARGf', '2022-05-07 08:31:30', '2022-05-07 08:31:30'),
(5, 'Raslen Ben Salah', 'medraslen@gmail.com', NULL, '$2y$10$ZmNtdpSlow7Z8F/ol2I95.NeLFArqRFPvtpJ9cHtdYeBr2hESx.3W', NULL, '2022-05-07 08:57:44', '2022-05-07 08:57:44'),
(6, 'oueslati mohamed', 'ouslatimohamed@gmail.com', NULL, '$2y$10$G.Y.4wM9vRzNFF8ywzty1O1QTkifpnaMh9wic26D1f4h8c6nOOH1O', 'NUrdwwIdLectRorjUaWzS3yNFBm3z8mlWMxnk6IpV1ssEGm0MzyK7TWH2OUD', '2022-05-15 01:24:24', '2022-05-15 01:24:24');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ads_user_id_foreign` (`user_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `ads`
--
ALTER TABLE `ads`
  ADD CONSTRAINT `ads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
