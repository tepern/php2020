-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 26 2020 г., 01:55
-- Версия сервера: 5.6.38
-- Версия PHP: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `words`
--

-- --------------------------------------------------------

--
-- Структура таблицы `uploaded_text`
--

CREATE TABLE `uploaded_text` (
  `id` int(11) NOT NULL,
  `content` text,
  `date` date DEFAULT NULL,
  `words_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `uploaded_text`
--

INSERT INTO `uploaded_text` (`id`, `content`, `date`, `words_count`) VALUES
(5, '\'resdfhh fgg\'', '2020-03-25', 2),
(6, '\'sdf hjkl\\r\\ndfgj\'', '2020-03-25', 3),
(7, '\'wer hjk\\r\\nghj\'', '2020-03-25', 3),
(8, '\'qwe hjk   bbn\\r\\nfgj\'', '2020-03-25', 4),
(9, '\'Строка (тип string) - это набор символов, где символ - это то же самое, что и байт. Это значит, что PHP поддерживает ровно 256 различных символов, а также то, что в PHP нет встроенной поддержки Unicode.\\\\n \\r\\nСмотрите также подробности реализации строкового типа.\\\\n\\r\\nВ PHP 7.0.0 на 64-битных платформах нет каких-либо достижимых ограничений для длины строки, в 32-битных системах и в более ранних версиях PHP, строки не могут быть более 2 ГБ (2147483647 байт).\\\\n\\r\\nСтрока может быть определена четырьмя различными способами.\\\\n\\r\\n1.Одинарные кавычки\\\\n\\r\\nПростейший способ определить строку - это заключить ее в одинарные кавычки (символ \\\').\\\\n\\r\\nЧтобы использовать одинарную кавычку внутри строки, проэкранируйте ее обратным слешем (\\\\). Если необходимо написать сам обратный слеш, продублируйте его (\\\\\\\\). Все остальные случаи применения обратного слеша будут интерпретированы как обычные символы: это означает, что если вы попытаетесь использовать другие управляющие последовательности, такие как \\\\\\\\r или \\\\\\\\n, они будут выведены как есть вместо какого-либо особого поведения.\\\\n\\r\\n2.Двойные кавычки\\\\n\\r\\nЕсли строка заключена в двойные кавычки (\\\\\\\"), PHP распознает управляющие последовательности специальных символов.\\\\n\\r\\nНо самым важным свойством строк в двойных кавычках является обработка переменных.\'', '2020-03-25', 140);

-- --------------------------------------------------------

--
-- Структура таблицы `word`
--

CREATE TABLE `word` (
  `id` int(11) NOT NULL,
  `text_id` int(11) DEFAULT NULL,
  `word` text,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `word`
--

INSERT INTO `word` (`id`, `text_id`, `word`, `count`) VALUES
(1, 8, '\'qwe\'', 1),
(2, 8, '\'hjk\'', 1),
(3, 8, '\'bbn\'', 1),
(4, 8, '\'fgj\'', 1),
(5, 9, '\'Строка\'', 2),
(6, 9, '\'тип\'', 2),
(7, 9, '\'string\'', 1),
(8, 9, '\'это\'', 4),
(9, 9, '\'набор\'', 1),
(10, 9, '\'символов\'', 3),
(11, 9, '\'где\'', 1),
(12, 9, '\'символ\'', 6),
(13, 9, '\'то\'', 13),
(14, 9, '\'же\'', 4),
(15, 9, '\'самое\'', 1),
(16, 9, '\'что\'', 4),
(17, 9, '\'и\'', 74),
(18, 9, '\'байт\'', 2),
(19, 9, '\'Это\'', 1),
(20, 9, '\'значит\'', 1),
(21, 9, '\'PHP\'', 5),
(22, 9, '\'поддерживает\'', 1),
(23, 9, '\'ровно\'', 1),
(24, 9, '\'256\'', 1),
(25, 9, '\'различных\'', 1),
(26, 9, '\'а\'', 71),
(27, 9, '\'также\'', 2),
(28, 9, '\'в\'', 46),
(29, 9, '\'нет\'', 2),
(30, 9, '\'встроенной\'', 1),
(31, 9, '\'поддержки\'', 1),
(32, 9, '\'Unicode\'', 1),
(33, 9, '\'\\\\n\'', 10),
(34, 9, '\'Смотрите\'', 1),
(35, 9, '\'подробности\'', 1),
(36, 9, '\'реализации\'', 1),
(37, 9, '\'строкового\'', 1),
(38, 9, '\'типа\'', 1),
(39, 9, '\'В\'', 2),
(40, 9, '\'7\'', 3),
(41, 9, '\'0\'', 2),
(42, 9, '\'на\'', 11),
(43, 9, '\'64\'', 2),
(44, 9, '\'битных\'', 2),
(45, 9, '\'платформах\'', 1),
(46, 9, '\'каких\'', 1),
(47, 9, '\'либо\'', 2),
(48, 9, '\'достижимых\'', 1),
(49, 9, '\'ограничений\'', 1),
(50, 9, '\'для\'', 1),
(51, 9, '\'длины\'', 1),
(52, 9, '\'строки\'', 3),
(53, 9, '\'32\'', 1),
(54, 9, '\'системах\'', 1),
(55, 9, '\'более\'', 2),
(56, 9, '\'ранних\'', 1),
(57, 9, '\'версиях\'', 1),
(58, 9, '\'не\'', 5),
(59, 9, '\'могут\'', 1),
(60, 9, '\'быть\'', 2),
(61, 9, '\'2\'', 5),
(62, 9, '\'ГБ\'', 1),
(63, 9, '\'2147483647\'', 1),
(64, 9, '\'может\'', 1),
(65, 9, '\'определена\'', 1),
(66, 9, '\'четырьмя\'', 1),
(67, 9, '\'различными\'', 1),
(68, 9, '\'способами\'', 1),
(69, 9, '\'1\'', 2),
(70, 9, '\'Одинарные\'', 1),
(71, 9, '\'кавычки\\\\n\'', 2),
(72, 9, '\'Простейший\'', 1),
(73, 9, '\'способ\'', 2),
(74, 9, '\'определить\'', 1),
(75, 9, '\'строку\'', 1),
(76, 9, '\'заключить\'', 1),
(77, 9, '\'ее\'', 4),
(78, 9, '\'одинарные\'', 1),
(79, 9, '\'кавычки\'', 4),
(80, 9, '\'\\\'\'', 1),
(81, 9, '\'Чтобы\'', 1),
(82, 9, '\'использовать\'', 2),
(83, 9, '\'одинарную\'', 1),
(84, 9, '\'кавычку\'', 1),
(85, 9, '\'внутри\'', 1),
(86, 9, '\'проэкранируйте\'', 1),
(87, 9, '\'обратным\'', 1),
(88, 9, '\'слешем\'', 1),
(89, 9, '\'\\\\\'', 17),
(90, 9, '\'Если\'', 2),
(91, 9, '\'необходимо\'', 1),
(92, 9, '\'написать\'', 1),
(93, 9, '\'сам\'', 3),
(94, 9, '\'обратный\'', 1),
(95, 9, '\'слеш\'', 3),
(96, 9, '\'продублируйте\'', 1),
(97, 9, '\'его\'', 1),
(98, 9, '\'\\\\\\\\\'', 3),
(99, 9, '\'Все\'', 1),
(100, 9, '\'остальные\'', 1),
(101, 9, '\'случаи\'', 1),
(102, 9, '\'применения\'', 1),
(103, 9, '\'обратного\'', 1),
(104, 9, '\'слеша\'', 1),
(105, 9, '\'будут\'', 2),
(106, 9, '\'интерпретированы\'', 1),
(107, 9, '\'как\'', 5),
(108, 9, '\'обычные\'', 1),
(109, 9, '\'символы\'', 1),
(110, 9, '\'означает\'', 1),
(111, 9, '\'если\'', 1),
(112, 9, '\'вы\'', 8),
(113, 9, '\'попытаетесь\'', 1),
(114, 9, '\'другие\'', 1),
(115, 9, '\'управляющие\'', 2),
(116, 9, '\'последовательности\'', 2),
(117, 9, '\'такие\'', 1),
(118, 9, '\'\\\\\\\\r\'', 1),
(119, 9, '\'или\'', 1),
(120, 9, '\'\\\\\\\\n\'', 1),
(121, 9, '\'они\'', 1),
(122, 9, '\'выведены\'', 1),
(123, 9, '\'есть\'', 1),
(124, 9, '\'вместо\'', 1),
(125, 9, '\'какого\'', 1),
(126, 9, '\'особого\'', 1),
(127, 9, '\'поведения\'', 1),
(128, 9, '\'Двойные\'', 1),
(129, 9, '\'строка\'', 1),
(130, 9, '\'заключена\'', 1),
(131, 9, '\'двойные\'', 1),
(132, 9, '\'\\\\\\\"\'', 1),
(133, 9, '\'распознает\'', 1),
(134, 9, '\'специальных\'', 1),
(135, 9, '\'Но\'', 1),
(136, 9, '\'самым\'', 1),
(137, 9, '\'важным\'', 1),
(138, 9, '\'свойством\'', 1),
(139, 9, '\'строк\'', 7),
(140, 9, '\'двойных\'', 1),
(141, 9, '\'кавычках\'', 1),
(142, 9, '\'является\'', 1),
(143, 9, '\'обработка\'', 1),
(144, 9, '\'переменных\'', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `uploaded_text`
--
ALTER TABLE `uploaded_text`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `word`
--
ALTER TABLE `word`
  ADD PRIMARY KEY (`id`),
  ADD KEY `word_ibfk_1` (`text_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `uploaded_text`
--
ALTER TABLE `uploaded_text`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `word`
--
ALTER TABLE `word`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `word`
--
ALTER TABLE `word`
  ADD CONSTRAINT `word_ibfk_1` FOREIGN KEY (`text_id`) REFERENCES `uploaded_text` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
