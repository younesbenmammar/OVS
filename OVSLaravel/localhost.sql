-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mar 20 Mars 2018 à 13:35
-- Version du serveur :  5.7.21-0ubuntu0.16.04.1
-- Version de PHP :  7.0.25-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `OVSLARAVEL`
--
CREATE DATABASE IF NOT EXISTS `OVSLARAVEL` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `OVSLARAVEL`;

-- --------------------------------------------------------

--
-- Structure de la table `activite_colibri`
--

CREATE TABLE `activite_colibri` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statut` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date` date DEFAULT NULL,
  `hour` int(11) NOT NULL,
  `lieu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activité_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `activite_colibri`
--

INSERT INTO `activite_colibri` (`id`, `title`, `content`, `statut`, `created_at`, `updated_at`, `date`, `hour`, `lieu`, `activité_id`) VALUES
(2, 'Pétanque', 'A 18 H AU PARC DE LA COTONNE', 'Admin', '2018-03-19 14:23:32', '2018-03-19 14:23:32', '2018-03-21', 0, '', 0),
(3, 'Pétanque', 'A 18 H AU PARC DE LA COTONNE', 'Admin', '2018-03-19 14:24:10', '2018-03-19 14:24:10', '2018-03-21', 0, '', 0),
(4, 'Bowling', 'RDV AU COLIBRI', 'Admin', '2018-03-19 15:32:08', '2018-03-19 15:32:08', '2018-03-31', 24, '', 0),
(5, 'Sortie a la Piscine', 'Sortie a la piscine Plaine Achille', 'Admin', '2018-03-20 08:58:07', '2018-03-20 08:58:07', '2018-05-10', 14, '', 0),
(6, 'Sortie piscine', 'RDV AU COLIBRI', 'Admin', '2018-03-20 09:03:10', '2018-03-20 09:03:10', '2018-04-19', 15, 'Plaine Achille', 0);

-- --------------------------------------------------------

--
-- Structure de la table `activite_habitant`
--

CREATE TABLE `activite_habitant` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statut` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Contenu de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_03_19_095130_create_post_users_table', 2),
(4, '2018_03_19_125101_create_users_admin_table', 3),
(5, '2018_03_19_125241_create_users_sortie_table', 4),
(6, '2018_03_19_142207_create_users_vote_table', 5),
(7, '2018_03_19_142227_create_users_participe_table', 5),
(8, '2018_03_19_142302_create_users_habitant_table', 5),
(9, '2018_03_19_142320_create_users_colibri_table', 5);

-- --------------------------------------------------------

--
-- Structure de la table `participe`
--

CREATE TABLE `participe` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Structure de la table `sortie`
--

CREATE TABLE `sortie` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `place` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `colibri_habitant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numberphone` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `lastname`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `firstname`, `numberphone`) VALUES
(1, 'Benmammar', 'younescomptepro@gmail.com', '$2y$10$E2DVHWK0wtXnMWmSkgh7FOz8nezKTvKx0YZ.1fZFOjcNckPgYzYIG', 'Ir7I5j9UfHp1TzhOOXw3NgEUKjv6b9nPXtAroVd6Bt7YyVSZuRYuci3cCqge', '2018-03-19 20:10:26', '2018-03-19 20:10:26', '', 0),
(2, 'Benmammar', 'younesbenmammar@gmail.com', '$2y$10$AoMopPQqf1oPITT4w5yqFOAIh65vuBx0xUnEr2yLuDZIaZPvwFmdq', 'upHNpGhUOVmBt0Ul3xOHsCCHxOL1fZDn0xrUzemxp5r4Iwv9tae028aG32Vf', '2018-03-19 20:34:01', '2018-03-19 20:34:01', 'younes', 10),
(3, 'Girodon', 'rgirodon@gmail.com', '$2y$10$sqgLhOFlC6psSG.FI6WcSuDbvRWqhUTGbZkQYw56OkWbpwTyhGuPW', 'DAPloiSftxz5La3xHI8RyfZdKrZq6IxpuALoopn5uqka5GtG4zgwBr1lYmVv', '2018-03-19 20:38:44', '2018-03-19 20:38:44', 'RémyGirodon', 785861061),
(4, 'DtaSaint', 'dta@yopmail.com', '$2y$10$MEloxM0UxyE/Ta3sdYzttOfK8Yil1Oy6UrP/xZEweNIqaVD.qvyu2', 'OgyY0biYybGBTDONG25YjdCYMwFnzk8ZkSCTTdtRITTS2jcV2TL3ii9OcL3N', '2018-03-19 20:42:25', '2018-03-19 20:42:25', 'DtaSaint', 785869854),
(5, 'Mayor', 'brendon.mayor@hotmail.fr', '$2y$10$ZaRw5aLnGVn1h2nf5kSODefC7HcW.q4VT1CuHhNA.rQ8XdUuK9Iue', 'lx82L91FfQ7jtfzCuilyi0gONDA4NAuA1UUTxch4EFG93rq4bs71YcwrCH8k', '2018-03-20 07:24:06', '2018-03-20 07:24:06', 'Brendon', 783589554),
(6, 'Benmammar', 'salua2@salut.com', '$2y$10$qbz67TAQRrE2ZINHGNiareLuewQ5hNNovJo7ZXfmMUUuVQ2a2I6dy', NULL, '2018-03-20 08:17:38', '2018-03-20 08:17:38', 'younes', 8);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(10) UNSIGNED NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `numberphone` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `lastname`, `firstname`, `email`, `password`, `created_at`, `updated_at`, `numberphone`) VALUES
(2, 'Benmammar', 'Younes', 'younescomptepro@gmail.com', 'Salut', '2018-03-19 11:42:59', '2018-03-19 12:54:50', '0785861061'),
(4, 'salut', 'salut', 'salua@salut.com', 'aaa', '2018-03-19 12:45:59', '2018-03-19 12:55:06', '0785869854'),
(6, 'Bz', 'd', 'younescomptespro@gmail.com', 's', '2018-03-19 13:02:48', '2018-03-19 13:02:48', 'ssd');

-- --------------------------------------------------------

--
-- Structure de la table `vote`
--

CREATE TABLE `vote` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `activite_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `vote`
--

INSERT INTO `vote` (`id`, `user_id`, `activite_id`) VALUES
(2, 2, 5),
(3, 4, 6),
(4, 6, 6);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `activite_colibri`
--
ALTER TABLE `activite_colibri`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activité_id` (`activité_id`);

--
-- Index pour la table `activite_habitant`
--
ALTER TABLE `activite_habitant`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `participe`
--
ALTER TABLE `participe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `participe_user_id_foreign` (`user_id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `sortie`
--
ALTER TABLE `sortie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Index pour la table `vote`
--
ALTER TABLE `vote`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `activite_id` (`activite_id`),
  ADD KEY `activite_id_2` (`activite_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `activite_colibri`
--
ALTER TABLE `activite_colibri`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `activite_habitant`
--
ALTER TABLE `activite_habitant`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `participe`
--
ALTER TABLE `participe`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `sortie`
--
ALTER TABLE `sortie`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `vote`
--
ALTER TABLE `vote`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `participe`
--
ALTER TABLE `participe`
  ADD CONSTRAINT `participe_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `utilisateur` (`id`);

--
-- Contraintes pour la table `vote`
--
ALTER TABLE `vote`
  ADD CONSTRAINT `vote_activite_colibri_id` FOREIGN KEY (`activite_id`) REFERENCES `activite_colibri` (`id`),
  ADD CONSTRAINT `vote_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `utilisateur` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
