-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Окт 30 2020 г., 12:09
-- Версия сервера: 5.5.65-MariaDB
-- Версия PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `admin_default`
--

-- --------------------------------------------------------

--
-- Структура таблицы `lots`
--

CREATE TABLE `lots` (
  `id` int(11) NOT NULL,
  `procedure_id` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lots`
--

INSERT INTO `lots` (`id`, `procedure_id`, `price`) VALUES
(1, 2, 1000),
(2, 2, 1200),
(3, 5, 500),
(4, 6, 8000),
(5, 2, 6000),
(6, 3, 9000),
(7, 2, 100),
(8, 9, 5000),
(9, 9, 5000),
(10, 2, 6000);

-- --------------------------------------------------------

--
-- Структура таблицы `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `lot_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `positions`
--

INSERT INTO `positions` (`id`, `lot_id`, `quantity`) VALUES
(1, 2, 20),
(2, 3, 17),
(3, 1, 1),
(4, 9, 80),
(5, 6, 5),
(6, 3, 90),
(7, 2, 17),
(8, 3, 600),
(9, 5, 8000);

-- --------------------------------------------------------

--
-- Структура таблицы `procedurs`
--

CREATE TABLE `procedurs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `procedurs`
--

INSERT INTO `procedurs` (`id`, `name`) VALUES
(1, 'procedur#1'),
(2, 'procedur#2'),
(3, 'procedur#3'),
(4, 'procedur#4'),
(5, 'procedur#5'),
(6, 'procedur#6'),
(7, 'procedur#7'),
(8, 'procedur#8'),
(9, 'procedur#9');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `lots`
--
ALTER TABLE `lots`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `procedurs`
--
ALTER TABLE `procedurs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `lots`
--
ALTER TABLE `lots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `procedurs`
--
ALTER TABLE `procedurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
