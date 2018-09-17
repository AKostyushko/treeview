-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 17 2018 г., 09:58
-- Версия сервера: 5.7.21
-- Версия PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `artur`
--

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passport` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referral_full_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referred_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affiliate_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_affiliate_id_unique` (`affiliate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `mname`, `phone`, `passport`, `inn`, `region`, `email`, `password`, `referral_full_name`, `referred_by`, `affiliate_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'NA', 'NA', 'NA', '+1 2 345 678-91-00', '12', '34________', 'г. КИЕВ', 'old.alcoholic@gmail.com', '$2y$10$ErrflQm.F3A/zhnNQmB6LuD15bvGn0VdJMNVm.3m0QXsuZntwgfCO', 'NA', NULL, 'faMEN0kZtsZ3BzehTnubrPGk9aGSEyRV07GOGfC92gFwlcYhz6zI2HUg', NULL, '2018-08-15 16:56:11', '2018-08-15 16:56:11'),
(2, 'NA', 'NA', 'NA', '+1 1 111 111-11-11', '11', '22', 'г. КИЕВ', 'old.alcoholic+1@gmail.com', '$2y$10$YRSXKJIuSq7lwaAscpGK5elVtiQ7iuqCKWSbE3xXFVeqQ.gQowQFi', 'NA', NULL, 'hDaMVbfOa08cQCKh4YH6fqTrVbJ9flNlaGA98f5eWUc5RErXSUdA0TnQ', NULL, '2018-08-15 17:02:25', '2018-08-15 17:02:25'),
(3, 'Yuriy', 'Ilchenko', 's', '+9 7 952 382-4_-', 's', '111', 'г. КИЕВ', 'yurkoi83@gmail.com', '$2y$10$DsFLF9LG.xgSYnEkUTegUOk8OUw0/sl1vJeCp0uz1XtXUbOA/Czh6', 'Yuriy Ilchenko', NULL, 'JbyA1jCYlLkED43G8bdrF1WOmXYlTl7VXcP7MRPq0uDZ9OpkyMkS6WjO', NULL, '2018-08-15 17:05:52', '2018-08-15 17:05:52'),
(4, 'na', 'na', 'na', '+1 1 111 111-11-11', '12', '12', 'г. КИЕВ', 'old.alcoholic+2@gmail.com', '$2y$10$2b26.ELbObU6jupvHV.DkuK/oG3wr0Af4.m8HrEs0ly1t6McUTfti', 'na', NULL, '8kbKcwnSR6lzomSqv35dcDMj9J6HgzkZ2uKhmEpwMY7xhDpNMcpYrdRR', NULL, '2018-08-15 17:06:08', '2018-08-15 17:06:08'),
(5, 'wsds', 'Костюшко', 'dsd', '+3 1 ___ ___-__-', 'dsds', '1233323', 'ХАРЬКОВСКАЯ', 'wdewdr3e@p.com', '$2y$10$UFKX.z9uCIbbhux/9Bbm/eYx46qkBmlXzbl654.qkusLvGlsrpoke', 'Ilchenko Yuriy s', 'JbyA1jCYlLkED43G8bdrF1WOmXYlTl7VXcP7MRPq0uDZ9OpkyMkS6WjO', 'kWaOOHBNNp3siv7PAjCgIpgcx7KEEdm74I5uvE6SPygC8JHil6Xohu0k', NULL, '2018-08-15 17:06:57', '2018-08-15 17:06:57'),
(6, 'na', 'NA', 'na', '+1 1 111 111-11-11', '11', '11', 'г. КИЕВ', 'old.alcoholic+3@gmail.com', '$2y$10$01Y82UZg5xLDPcJ1X.5u4OZuBuC6Pf.ad6wq.1pM3bfe57Kjm44Li', 'NA', NULL, 'IjUB6TSsnWIIH0rG9SEImrPXnVtMa9q9tdc2tzbl3dKGnnM7Fpqf0Yqs', NULL, '2018-08-15 17:10:54', '2018-08-15 17:10:54'),
(7, 'na', 'na', 'na', '+1 1 111 111-11-11', 'na', '111', 'г. КИЕВ', 'old.alcoholic+4@gmail.com', '$2y$10$2.jXuAMPUHRuiTKKQftBveeAfjAbdnzOnYJp/oPucA83Us9NDVUDa', 'na', NULL, 'fGsZIOroYSj02ozcF9ODOmFnU0io3elm8WezdK1FIkA723DaQTtLbipK', NULL, '2018-08-15 17:13:29', '2018-08-15 17:13:29'),
(8, 'na', 'na', 'na', '+1 1 111 111-11-11', 'na', '11', 'г. КИЕВ', 'old.alcoholic+5@gmail.com', '$2y$10$u0jngmhJ1U1xYMiX0eElUOnGk0XhfG2lIVXlYf8BxuZ2squ9qlyoq', 'na', NULL, '5ruu0UZYuAMqK2Jz5XHu3ek9LQRlXhwCvWyET1uRkpcxfXXOJS4TGzx2', NULL, '2018-08-15 17:18:05', '2018-08-15 17:18:05'),
(9, 'Pupkin', 'Vasya', 'Olegovich', '+3 8 012 323-23-23', 'Nifigasebe', '0202020202', 'г. КИЕВ', '123vasyapupkin@mailinator.com', '$2y$10$HYHeWIFRM7ZodVHBEDHaxuUyZeuRvmcu7bgC.5ZTPlKIrnDobDoCe', 'Vasya Pupkin', NULL, '3OPovyTeihApolvmZEspxj9nAnW7s3kcEPMkpPQw951o9cJFkYEvRABe', NULL, '2018-08-15 23:39:15', '2018-08-15 23:39:15'),
(10, 'Rodriges', 'Sanchos', 'Gomes', '+3 4 923 423-42-34', 'RE234234234', '2342342342', 'г. КИЕВ', '321vasyapupkin@mailinator.com', '$2y$10$AUMRDUvdrs0rb.zVupvVOO4R4hqaUzbiVc2MxeK8987FQ.4y5HIKO', 'Vasiliy Pupkin', NULL, 'vCQK3yVysWY1y0TIHiybKFRVhgvr9zzRhpQjuHzNPBztLIRoJuvHqYEX', NULL, '2018-08-16 00:09:35', '2018-08-16 00:09:35'),
(11, 'фы', 'фы', 'фы', '+3 8 067 658-05-06', 'пр999999', '9999999999', 'г. КИЕВ', 'havrysho@ukr.net', '$2y$10$fV4OzMGk0IAcl9TJ59LLQu7/iogP39S.RxtJolh/Ivobotm3AY03.', 'то тот тот', NULL, 'myWEb0hZViHMtttMcvxRPURvIboxW0ZPgwAL6PoaeR0xXvYfBszEVqhp', NULL, '2018-08-16 06:20:56', '2018-08-16 06:20:56'),
(12, 'Каренина', 'АннаКаренина', 'Иоанновна', '+2 1 456 897-43-21', 'ваппиееукуукук12234qase', '1234567899', 'КИЕВСКАЯ', 'roggg8690@gmail.com', '$2y$10$txYQryhVqGulETx3jJckuOtWt1OIZKGbm5aYHlYK36JO4UJJsZRhK', 'Юра 1', NULL, 'K8pgPaHX7NC7dOx4bHNYy33KHfZmrQLsRCXKpb8CmcUw8ug1JBaMZDJm', NULL, '2018-08-16 06:26:21', '2018-08-16 06:26:21'),
(13, 'АннаМария', 'Макаревич', 'Семеновна', '+1 2 344 444-44-44', 'SD09123234444444444444444444444444444', '1111111111', 'г. КИЕВ', 'ruschadze@gmail.com', '$2y$10$Byg5GARNq7j4.Hfpxnatze3wfu6wYVoKHH0fSgvWYLN3LkUsBpcCW', 'АннаКаренина Каренина Иоанновна', 'K8pgPaHX7NC7dOx4bHNYy33KHfZmrQLsRCXKpb8CmcUw8ug1JBaMZDJm', 'leoCMOlzgvpbsuAcgIXLipn4aLXO3D0NFHAx5EM39rlZumPdglBgL8Hv', NULL, '2018-08-16 06:28:59', '2018-08-16 06:28:59'),
(14, 'L', 'GaRavan', 'U', '+1 2 346 656-98-47', 'fgggggggggggggggggggggggggggggggggg', '1111111111', 'г. КИЕВ', 'fgfgfg@gbgbm.com', '$2y$10$atYJL9XKWWFdEIatC3hWsOOL7Bnx/u5QSWPWs1xOCmi4qzeHthQPy', 'Кто-то', 'leoCMOlzgvpbsuAcgIXLipn4aLXO3D0NFHAx5EM39rlZumPdglBgL8Hv', 'sgrPfk7MO5n5cmcFpGDruOjc0eoqXYybI2jZEwfDChUrF9tDkU6n6xqz', NULL, '2018-08-16 06:30:35', '2018-08-16 06:30:35'),
(15, 'укукук', 'увававаЫфsaasSasASsdsdsd', 'wdededf', '+9 6 312 888-88-88', 'всчс345677уккккккккккккккккккккккк', '1234567890', 'ДНЕПРОПЕТРОВСКАЯ', 'wer@gmsil.com', '$2y$10$rhBONE3p/n3qihttj20twuLghmZ2qoCmNnO0cOS0tp3KClY5Yiq8K', 'Юра 1', NULL, 'b9K4EuxEIIEJqG7aki08RM3R8i6BwjuPTOPad1fs9RWb51fEHjsWAnh6', NULL, '2018-08-16 07:16:07', '2018-08-16 07:16:07'),
(16, 'cdsc', 'ssc', 'cdsc', '+7 3 434 353-45-45', 'cdcd', '1211313131', 'г. КИЕВ', 'ilchenko.it@gmail.com', '$2y$10$g6Gu/V9zi/qUisqkBmqIKukb7UjbYqEhTcFWsQmzwCE46AXnCEW4K', 'Ilchenko Yuriy s', 'JbyA1jCYlLkED43G8bdrF1WOmXYlTl7VXcP7MRPq0uDZ9OpkyMkS6WjO', 'LFAmu2uG8EA3EA4WbVCWJdCheNbRXyNSE6Rm9rgDLmSgt8LqUogeBvMr', NULL, '2018-08-16 07:49:20', '2018-08-16 07:49:20'),
(17, 'Yuriy', 'Ilchenko', 'w', '+9 7 952 382-4_-', '1', '1', 'г. КИЕВ', 'yurkoi83+8@gmail.com', '$2y$10$H2WRBXhKt937cDH63NxGSOj1Rk8OOm4KXWO0mWGLG/u22iW0p6pey', 'Yuriy Ilchenko', NULL, 'TRPtMPk1DrWk7Navt5rGxVcrQCzihSmdj2n3Rfv04THJHe4t8jt8jjXx', NULL, '2018-08-16 08:18:32', '2018-08-16 08:18:32'),
(18, 'Yuriy', 'Ilchenko', 'd', '+9 7 952 382-4_-', '1', '1', 'г. КИЕВ', 'yurkoi83+7@gmail.com', '$2y$10$4ocQdD6wF54oAJXdTAQEjOgnYe5RaTtobEUQsV.sSedd2xPMSVFc2', 'Yuriy Ilchenko', NULL, 'u5svhtX32pIKegrhKHD5632wu2aeMDyMIGYBJW0s5Xfesq559Wf6NCcp', NULL, '2018-08-17 07:01:36', '2018-08-17 07:01:36'),
(19, 'Yuriy', 'Ilchenko', 's', '+97 952 382-4_-', 'QS 1212312112', '1111111111', 'г. КИЕВ', 'yurkoi83+951@gmail.com', '$2y$10$3rOIsPWRO20X4cXzQ9YAy.y2F3dygRZw9zwS0ZQd5of9gFZU4O/Qu', 'Yuriy Ilchenko', NULL, 'TJCtcRRh2DOaJwAdluRYX6YGLwEHXEq5ZrhUksGV3tvOzaV4EPDCOTB7', NULL, '2018-08-17 11:42:18', '2018-08-17 11:42:18'),
(20, 'rtrtrt', 'rtrtrt', 'rtrtrt', '+43 545 454-54-54', 'RT __________', '4545', 'г. КИЕВ', 'srtrstert@fgdfg.com', '$2y$10$8CNo1u/E7glczKli1SdjvOlaDtkobjtxGCf8RbgubJCNp2tPsSaPe', 'drtfertrt', NULL, '0HHtldNvW3FHGMe3DcZOa4f1kbhOAUsLma0JlOrbidblbdVIeLG40WYJ', NULL, '2018-08-17 11:54:38', '2018-08-17 11:54:38'),
(21, 'выавыава', 'erdfdfdфыфыфыввыука', 'вавава', '+23 233 434-34-34', 'ВА 4556777777', '1111111111', 'г. КИЕВ', 'dsfd@fgdfgfg.com', '$2y$10$QXMoVjgDWVtPcLyUys4muuMuXmoNurHOg0osOvjxjl05pbp.GJomK', 'rtrtrt rtrtrt rtrtrt', '0HHtldNvW3FHGMe3DcZOa4f1kbhOAUsLma0JlOrbidblbdVIeLG40WYJ', 'cWrmDYjDQYE2s4ZMIXusnWzSlf0voLOyNP3ix7xhjOZI4pJtx0OBzpJh', '4oanmiGuOmjKgstz5anitAb5uyPmxOlVrwog2g0pkvJHRmRADaf05dwVS5Zc', '2018-08-17 11:57:23', '2018-08-17 11:57:23'),
(22, 'Ан', 'Костб', 'Юдлорило', '+38 062 548-45-12', 'СП 3455566666', '1222222222', 'г. КИЕВ', 'skostiushko+1@gmail.com', '$2y$10$t2iooaqQgI3LVlC41FGCmuR5LxjOSqAHakwPe5QL2ZGyAqQglUNaa', 'Анна Каренина', 'K8pgPaHX7NC7dOx4bHNYy33KHfZmrQLsRCXKpb8CmcUw8ug1JBaMZDJm', 'E0tRFguQ727BIkgfu2jdnjN4dbeLXFH5DRHupBSD8p3IPfYP39AvXZis', 'Fu2HjnvaHUHQ4urdXXpNsmkNY69dVWfxaeAu0trWZr5VfdI8AyCFJ16IpvvQ', '2018-08-17 11:59:58', '2018-08-17 11:59:58'),
(23, 'Шамир', 'Арас', 'вава', '+03 651 215-48-48', 'ВА 0000000000', '1111111111', 'г. КИЕВ', 'lowlowqw@ukr.net', '$2y$10$2PU6Kcu58z.PoENRaa17X.U7nj3wZp3nogKV81nlhtPALb.w.oLgq', 'Анна Каренина', NULL, 'vttAoYyeffLAnq2QeERVfBLlaKu8Z32Mm608UqINwvEft5BtZCaW0SUR', NULL, '2018-08-17 12:04:01', '2018-08-17 12:04:01'),
(24, 'Каренина', 'Анна', 'Ивановна', '+03 265 545-41-51', 'СЩ 454545454_', '1111111111', 'г. КИЕВ', 'annakaren8789@gmail.com', '$2y$10$46tcJV52aBf5l8sSdveQz.YrnWWYkBjsdAKN7cZRPYEeX/xc.ZgaS', 'Арас Шамир вава', 'vttAoYyeffLAnq2QeERVfBLlaKu8Z32Mm608UqINwvEft5BtZCaW0SUR', 'sQHeq2k09wrCw1xbos3v00RKdoLOswjynnBdYvYN4VQTCN8wNEWkeZAi', '1Irs7BIu531URfbxDOr2AbolIfUKmLC5PsUnXCtgjfW0rtYo4MSkOAMh3EB5', '2018-08-17 12:07:04', '2018-08-17 12:07:04'),
(25, 'Test', 'TEst', 'Test', '+38 096 222-11-11', 'MB 5566653333', '1122233322', 'г. КИЕВ', 'test@gmail.com', '$2y$10$H.nmanIBhfCMWEo29Xz.9e2fyp75nmy1EuSahBKtgBSlYFNFOJOnK', 'Test test test', NULL, 'uCzmaF0g6bkc6mO1XGCORFo7Y8YMkuR3bIbToiPIo2MqIHHwgd2NB3at', NULL, '2018-08-17 16:40:08', '2018-08-17 16:40:08'),
(26, 'Толя', 'Толя', 'Иванович', '+23 213 521-51-65', 'СП 3434343434', '1111111111', 'г. КИЕВ', 'kostaqa@gmail.com', '$2y$10$.Z4lJilSp6pSz/aK0opHw.GgIdl8nKsUAFkFF7R75vEEI4faWleRC', 'Пользователь Иван', 'sQHeq2k09wrCw1xbos3v00RKdoLOswjynnBdYvYN4VQTCN8wNEWkeZAi', 'sZz6ZiIOh2qT0A58O4lQk8nRFrLzIdi8HpUtThSfqG8q86LpQS4Hf8wM', 'ixC1WsMte0UHNroyaUKUikESrnwQo1mpcjZQDNhtgaK116PpgbSYfktcM8FN', '2018-08-21 07:45:29', '2018-08-21 07:45:29'),
(27, 'Женя', 'Женя', 'Петрович', '+23 232 323-23-23', 'СА 4545454545', '4344545454', 'ХАРЬКОВСКАЯ', 'Skostiushko+3@gmail.com', '$2y$10$x4m7TnUkoEnT6KZ5I4zQqulMFF9jxK3VYRV5VTQReLNp03iTutoUa', 'Толя Толя Иванович', 'sZz6ZiIOh2qT0A58O4lQk8nRFrLzIdi8HpUtThSfqG8q86LpQS4Hf8wM', '8ejvWCDwfLOcRqoQ0CPit5QJWdrbdPZI2w2C7EkwsXGscwxqVxzBhLPM', 'OlPj6hDfaR5KXd2aqlmgUBbFyj2g6tE0yGHZiM8RfGkODFVs4S9tspF0iEkc', '2018-08-21 07:49:18', '2018-08-21 07:49:18'),
(28, 's', 's', 's', '+1_ ___ ___-__-', 'S_ __________', '21', 'г. КИЕВ', '1@1.com', '$2y$10$02Upp5QkRS2Mpcd1QxO4IuaHiJAlT2W9S0AHcNPuCNBlIh4GfbDye', 'Женя Женя Петрович', '8ejvWCDwfLOcRqoQ0CPit5QJWdrbdPZI2w2C7EkwsXGscwxqVxzBhLPM', '5kzXFQWDarOyxZYVRtMGN24RCt4ymDwbEsSBMLPMZF6Rc3GMnncJFoU8', 'xR7xNdRBjO2no93Y7OegFAhvu6IZ3Mvow018T2J0UyQ3DOO9s5U5d1yTikec', '2018-08-21 07:53:47', '2018-08-21 07:53:47');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
