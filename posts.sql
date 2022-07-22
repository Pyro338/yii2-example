-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Июл 22 2022 г., 12:13
-- Версия сервера: 8.0.29-0ubuntu0.20.04.3
-- Версия PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `yii2_example`
--

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8_general_ci,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `timestamp`) VALUES
(1, 'foo', 'bar', '2022-07-22 11:54:36'),
(2, 'lorem', 'ipsum', '2022-07-22 11:56:22'),
(3, 'ghwhgrhrwh', 'rthtrhwthr', '2022-07-22 12:08:50'),
(4, 'ergwergerg', 'ergqergregweg', '2022-07-22 12:09:25'),
(5, 'уцкпкупукп', 'уцкпцукпцукп', '2022-07-22 12:11:03'),
(6, 'уцкпуцкпуцкп', 'уцкпукпцукп', '2022-07-22 12:11:09'),
(7, 'уцкпукцпцукп', 'цукпцукпцукп', '2022-07-22 12:11:18'),
(8, 'цукпукпцукп', 'уцкпцукпуцкп', '2022-07-22 12:11:23'),
(9, 'цукпукпцукп', 'уцкпцукпцукп', '2022-07-22 12:11:28'),
(10, 'цукпуцкпуцкп', 'цукпцукпцупк', '2022-07-22 12:11:34'),
(11, 'уцкпцукпуцп', 'цукпцукпцукп', '2022-07-22 12:11:38');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
