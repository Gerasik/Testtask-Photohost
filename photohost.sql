-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 20 2017 г., 00:11
-- Версия сервера: 5.5.50
-- Версия PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `photohost`
--

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id_image` int(11) NOT NULL,
  `name` varchar(32) CHARACTER SET cp1251 NOT NULL,
  `description` text CHARACTER SET cp1251 NOT NULL,
  `full_name` varchar(32) CHARACTER SET cp1251 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `images`
--

INSERT INTO `images` (`id_image`, `name`, `description`, `full_name`) VALUES
(17, 'Blade runner', 'Poster blade runner', '49ff92c48eda.jpg'),
(18, 'My cat', 'Miy miy ', 'f305e16f338a.jpg'),
(19, 'Red car in smoke', '', 'b06ed6cc1b34.jpg'),
(20, '2 dogs', '2 dogs', 'a382c25242ce.jpg'),
(21, 'Wolf', '', 'f8c0b2a62ca2.jpg'),
(22, 'Purple car', 'Purple car', 'c47c1ac2d4c6.jpg'),
(23, 'Cat', 'cat', '7a3c47d05441.jpg'),
(24, 'Dog', 'Gogs', 'c7a431c63006.jpg'),
(25, 'Porshe', 'Porshe car\n', 'f2caa5d3c449.jpg'),
(26, 'Mersedes', 'Mersedes in snow', '6986518fee7e.jpg'),
(27, 'Corgi', 'My little corgi', '2674a81333d5.jpg'),
(28, 'Blonde', '', '462d25a43095.jpg'),
(29, 'Black cat', '', 'b949c45f8e07.jpg'),
(30, 'Funny dog', '', '47bbd4e004b6.jpg'),
(31, 'Cat', '', '0773d1aa4128.jpg'),
(32, 'Mustang', '', 'addba3abd485.jpg'),
(33, 'Dog', '', 'ce2a2345de32.jpg'),
(34, 'Wolf or dog', 'Wolf or dog?', '314f290608a7.jpg'),
(35, 'Snow cat', 'Snow cat', 'dd7c8af53668.jpg'),
(36, 'Funny dog', '', 'd0d9d00320df.jpg'),
(37, 'Boat', '', '113c4c7e8538.jpg'),
(38, 'Puppies', 'Puppies', '55855419bade.jpg'),
(39, 'Dog', 'small img', '13f8fed31b72.jpg'),
(40, 'Dog ', 'small img\n', '95bed06e984f.jpg'),
(41, 'Dog', 'bad pikture', 'a47bfde8faad.jpg'),
(42, 'Dog in flovers', 'Dog in flovers', '494aeb746e06.jpg'),
(43, '2 dogs ', '', '01084acf8d78.jpg'),
(44, 'Dog play', 'Dog play', '8fd8a62657c1.jpg'),
(45, 'Dog', 'Dog', '9fc0e5188cc3.jpg'),
(46, 'Hatiko', '', 'e7fe69b5cdd3.jpg'),
(47, 'Sad dog', '', '025dfe912972.jpg'),
(48, 'Dog in flowers', '', '4e5dbe443804.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id_tag` int(10) NOT NULL,
  `tag_name` varchar(32) CHARACTER SET cp1251 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id_tag`, `tag_name`) VALUES
(14, 'poster'),
(15, 'blade'),
(16, 'runner'),
(17, 'cat'),
(18, 'car'),
(19, 'smoke'),
(20, 'red'),
(21, 'dogs'),
(22, 'Wolf'),
(23, 'Purple'),
(24, 'dog'),
(25, 'sun'),
(26, 'Porshe'),
(27, 'night'),
(28, 'Mersedes'),
(29, 'snow'),
(30, 'corgi'),
(31, 'blonde'),
(32, 'girl'),
(33, 'black'),
(34, 'flowers'),
(35, 'Funny'),
(36, 'new'),
(37, 'year'),
(38, 'art'),
(39, 'Mustang'),
(40, 'Boat'),
(41, 'sea'),
(42, 'Puppies'),
(43, 'Small'),
(44, 'img'),
(45, 'bad'),
(46, 'pikture'),
(47, 'flovers'),
(48, 'boll'),
(49, 'Sad');

-- --------------------------------------------------------

--
-- Структура таблицы `tag_image`
--

CREATE TABLE IF NOT EXISTS `tag_image` (
  `id` int(11) NOT NULL,
  `id_tag` int(10) NOT NULL,
  `id_image` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tag_image`
--

INSERT INTO `tag_image` (`id`, `id_tag`, `id_image`) VALUES
(34, 14, 17),
(35, 15, 17),
(36, 16, 17),
(37, 17, 18),
(38, 18, 19),
(39, 19, 19),
(40, 20, 19),
(41, 21, 20),
(42, 22, 21),
(43, 23, 22),
(44, 18, 22),
(45, 17, 23),
(46, 24, 24),
(47, 25, 24),
(48, 26, 25),
(49, 18, 25),
(50, 27, 25),
(51, 28, 26),
(52, 18, 26),
(53, 29, 26),
(54, 30, 27),
(55, 24, 27),
(56, 31, 28),
(57, 32, 28),
(58, 18, 28),
(59, 33, 29),
(60, 17, 29),
(61, 34, 29),
(62, 35, 30),
(63, 24, 30),
(64, 36, 30),
(65, 37, 30),
(66, 17, 31),
(67, 34, 31),
(68, 38, 32),
(69, 39, 32),
(70, 32, 32),
(71, 24, 33),
(72, 24, 34),
(73, 22, 34),
(74, 29, 35),
(75, 17, 35),
(76, 35, 36),
(77, 24, 36),
(78, 40, 37),
(79, 41, 37),
(80, 24, 38),
(81, 42, 38),
(82, 43, 39),
(83, 24, 39),
(84, 44, 39),
(85, 24, 41),
(86, 45, 41),
(87, 46, 41),
(88, 24, 42),
(89, 47, 42),
(90, 24, 43),
(91, 24, 44),
(92, 48, 44),
(93, 24, 45),
(94, 49, 47),
(95, 24, 47),
(96, 24, 48),
(97, 34, 48);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `login` varchar(25) CHARACTER SET cp1251 NOT NULL,
  `password` varchar(32) CHARACTER SET cp1251 NOT NULL,
  `salt` varchar(3) CHARACTER SET cp1251 NOT NULL,
  `mail_reg` varchar(50) CHARACTER SET cp1251 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `salt`, `mail_reg`) VALUES
(1, 'Gerasik', 'c3e2b4647cb487b9fa2e86dc505a6df4', '669', 'gerasik1992@gmail.com');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id_image`),
  ADD KEY `id_image` (`id_image`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id_tag`),
  ADD KEY `id_tag` (`id_tag`),
  ADD KEY `id_tag_2` (`id_tag`);

--
-- Индексы таблицы `tag_image`
--
ALTER TABLE `tag_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tag` (`id_tag`),
  ADD KEY `id_image` (`id_image`),
  ADD KEY `id_tag_2` (`id_tag`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `images`
--
ALTER TABLE `images`
  MODIFY `id_image` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id_tag` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT для таблицы `tag_image`
--
ALTER TABLE `tag_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `tag_image`
--
ALTER TABLE `tag_image`
  ADD CONSTRAINT `tag_image_ibfk_1` FOREIGN KEY (`id_image`) REFERENCES `images` (`id_image`) ON DELETE CASCADE,
  ADD CONSTRAINT `tag_image_ibfk_2` FOREIGN KEY (`id_tag`) REFERENCES `tags` (`id_tag`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
