-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 03 2023 г., 00:24
-- Версия сервера: 10.8.4-MariaDB
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `museim`
--

-- --------------------------------------------------------

--
-- Структура таблицы `collection`
--

CREATE TABLE `collection` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `collection`
--

INSERT INTO `collection` (`id`, `name`, `description`) VALUES
(1, 'Коллекция оружия', 'Коллекция оружия всех эпох и народов'),
(2, 'Коллекция минералов', 'Коллекция минералов со всего мира'),
(3, 'Коллекция живописи', 'Коллекция живописи разных эпох и стилей');

-- --------------------------------------------------------

--
-- Структура таблицы `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `position` text DEFAULT NULL,
  `museum_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `employee`
--

INSERT INTO `employee` (`id`, `name`, `position`, `museum_id`) VALUES
(1, 'Иванов Иван Иванович', 'Куратор', 1),
(2, 'Петров Петр Петрович', 'Директор', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `exhibition_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `event`
--

INSERT INTO `event` (`id`, `name`, `date`, `exhibition_id`) VALUES
(1, 'Встреча с автором', '2022-05-01', 2),
(2, 'Круглый стол', '2022-06-01', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `exhibit`
--

CREATE TABLE `exhibit` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `collection_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `exhibit`
--

INSERT INTO `exhibit` (`id`, `name`, `description`, `collection_id`) VALUES
(1, 'Клинок самурая', 'Клинок самурая эпохи Эдо', 1),
(2, 'Аметист', 'Аметист из Южной Африки', 2),
(3, 'Закат', 'Картина Клода Моне', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `exhibition`
--

CREATE TABLE `exhibition` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `museum_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `exhibition`
--

INSERT INTO `exhibition` (`id`, `name`, `description`, `museum_id`) VALUES
(1, 'Выставка ретро автомобилей', 'Выставка ретро автомобилей 20-го века', 1),
(2, 'Выставка современного искусства', 'Выставка современного искусства современных художников', 2);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `four`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `four` (
`id` int(11)
,`name` text
,`date` date
,`exhibition_id` int(11)
);

-- --------------------------------------------------------

--
-- Структура таблицы `museum`
--

CREATE TABLE `museum` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `history` text DEFAULT NULL,
  `author` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `museum`
--

INSERT INTO `museum` (`id`, `name`, `history`, `author`) VALUES
(1, 'Государственный музей истории', 'Музей был основан в 1957 году', 'Гоголь'),
(2, 'Государственный музей изобразительных искусств', 'Музей был основан в 1917 году', 'Пушкин');

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `seven`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `seven` (
`id` int(11)
,`name` text
,`date` date
,`exhibition_id` int(11)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `six`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `six` (
`COUNT(*)` bigint(21)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `three`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `three` (
`id` int(11)
,`name` text
,`description` text
,`collection_id` int(11)
);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(5, '1', '1', '1'),
(6, 'zxc', 'zxc@zxc.zxc', 'zxczxc'),
(7, 'asd', 'asd@asd.asd', 'a8f5f167f44f4964e6c998dee827110c'),
(8, 'qwe', 'qwe@qwe.qwe', 'efe6398127928f1b2e9ef3207fb82663'),
(9, 'entry', 'e@e.e', 'e10adc3949ba59abbe56e057f20f883e'),
(10, '123', 'r@r.r', '96e79218965eb72c92a549dd5a330112');

-- --------------------------------------------------------

--
-- Структура таблицы `visitor`
--

CREATE TABLE `visitor` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `ticket_number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `visitor`
--

INSERT INTO `visitor` (`id`, `name`, `ticket_number`) VALUES
(1, 'Сидоров Иван Петрович', 123456),
(2, 'Кузнецова Анна Сергеевна', 234567);

-- --------------------------------------------------------

--
-- Структура для представления `four`
--
DROP TABLE IF EXISTS `four`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `four`  AS SELECT `event`.`id` AS `id`, `event`.`name` AS `name`, `event`.`date` AS `date`, `event`.`exhibition_id` AS `exhibition_id` FROM `event` WHERE `event`.`date` between '2022-05-01' and '2022-06-01''2022-06-01'  ;

-- --------------------------------------------------------

--
-- Структура для представления `seven`
--
DROP TABLE IF EXISTS `seven`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `seven`  AS SELECT `event`.`id` AS `id`, `event`.`name` AS `name`, `event`.`date` AS `date`, `event`.`exhibition_id` AS `exhibition_id` FROM `event` WHERE `event`.`date` between '2022-01-01' and '2022-12-31''2022-12-31'  ;

-- --------------------------------------------------------

--
-- Структура для представления `six`
--
DROP TABLE IF EXISTS `six`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `six`  AS SELECT count(0) AS `COUNT(*)` FROM `visitor` WHERE `visitor`.`ticket_number` is not null AND `visitor`.`ticket_number` <> 0 AND `visitor`.`id` in (select `visitor`.`id` from `event` where `event`.`date` between '2022-05-01' and '2022-06-01')  ;

-- --------------------------------------------------------

--
-- Структура для представления `three`
--
DROP TABLE IF EXISTS `three`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `three`  AS SELECT `exhibit`.`id` AS `id`, `exhibit`.`name` AS `name`, `exhibit`.`description` AS `description`, `exhibit`.`collection_id` AS `collection_id` FROM `exhibit` WHERE `exhibit`.`collection_id` = 3 AND `exhibit`.`name` = 'Закат''Закат'  ;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `museum_id` (`museum_id`);

--
-- Индексы таблицы `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exhibition_id` (`exhibition_id`);

--
-- Индексы таблицы `exhibit`
--
ALTER TABLE `exhibit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `collection_id` (`collection_id`);

--
-- Индексы таблицы `exhibition`
--
ALTER TABLE `exhibition`
  ADD PRIMARY KEY (`id`),
  ADD KEY `museum_id` (`museum_id`);

--
-- Индексы таблицы `museum`
--
ALTER TABLE `museum`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
