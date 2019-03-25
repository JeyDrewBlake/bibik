-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.1.53-community - MySQL Community Server (GPL)
-- Операционная система:         Win32
-- HeidiSQL Версия:              9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Дамп структуры базы данных bibi
CREATE DATABASE IF NOT EXISTS `bibi` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `bibi`;

-- Дамп структуры для таблица bibi.avtor
CREATE TABLE IF NOT EXISTS `avtor` (
  `id_avtor` int(11) NOT NULL AUTO_INCREMENT,
  `Фамилия` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Имя` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Отчество` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id_avtor`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Дамп данных таблицы bibi.avtor: ~8 rows (приблизительно)
/*!40000 ALTER TABLE `avtor` DISABLE KEYS */;
INSERT INTO `avtor` (`id_avtor`, `Фамилия`, `Имя`, `Отчество`) VALUES
	(2, 'Гоголь', 'Николай', 'Васильевич'),
	(3, 'Толстой ', 'Лев', 'Николаевич'),
	(4, 'Пушкин', 'Александр', 'Сергеевич'),
	(5, 'Денисенко', 'Ольга', NULL),
	(6, 'Виленкин', 'Наум', 'Яковлевич'),
	(7, 'Белый', 'Андрей', ''),
	(9, 'Габриелян', 'Олег', 'Сергеевич'),
	(10, 'Алексеев', 'Филипп', 'Сергеевич');
/*!40000 ALTER TABLE `avtor` ENABLE KEYS */;

-- Дамп структуры для таблица bibi.avtorbook
CREATE TABLE IF NOT EXISTS `avtorbook` (
  `id_avtor_book` int(11) NOT NULL,
  `id_avtor` int(11) NOT NULL,
  `id_book` int(11) NOT NULL,
  PRIMARY KEY (`id_avtor_book`),
  KEY `FK_avtorbook_avtor` (`id_avtor`),
  KEY `FK_avtorbook_book` (`id_book`),
  CONSTRAINT `FK_avtorbook_avtor` FOREIGN KEY (`id_avtor`) REFERENCES `avtor` (`id_avtor`),
  CONSTRAINT `FK_avtorbook_book` FOREIGN KEY (`id_book`) REFERENCES `book` (`id_book`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Дамп данных таблицы bibi.avtorbook: ~10 rows (приблизительно)
/*!40000 ALTER TABLE `avtorbook` DISABLE KEYS */;
INSERT INTO `avtorbook` (`id_avtor_book`, `id_avtor`, `id_book`) VALUES
	(13, 4, 4),
	(14, 2, 7),
	(15, 7, 3),
	(16, 6, 2),
	(17, 10, 10),
	(18, 9, 11),
	(19, 5, 1),
	(20, 7, 8),
	(21, 7, 9),
	(22, 3, 12);
/*!40000 ALTER TABLE `avtorbook` ENABLE KEYS */;

-- Дамп структуры для таблица bibi.book
CREATE TABLE IF NOT EXISTS `book` (
  `id_book` int(11) NOT NULL AUTO_INCREMENT,
  `Название` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Раздел` int(11) NOT NULL,
  `ГодИздания` year(4) DEFAULT NULL,
  `Кол-во стр` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_book`),
  KEY `FK_book_razdel` (`Раздел`),
  CONSTRAINT `FK_book_razdel` FOREIGN KEY (`Раздел`) REFERENCES `razdel` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Дамп данных таблицы bibi.book: ~10 rows (приблизительно)
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` (`id_book`, `Название`, `Раздел`, `ГодИздания`, `Кол-во стр`) VALUES
	(1, 'Enjoy English 5 / Английский язык. 5 класс', 5, '2016', 208),
	(2, 'Математика 5 класс', 1, '2016', 280),
	(3, 'Московский чудак', 2, '2018', 274),
	(4, 'Капитанская дочка', 2, '1969', 410),
	(7, 'Вий', 2, '2017', 160),
	(8, 'Вечный зов. Том 1', 2, '2018', 512),
	(9, 'Вечный зов. Том 2', 2, '2018', 624),
	(10, 'Вся грамматика русского языка в схемах и таблицах', 3, '2017', 640),
	(11, 'Химия. 8 класс. Учебник', 4, '2018', 288),
	(12, 'Исповедь', 2, '2015', 288);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;

-- Дамп структуры для таблица bibi.razdel
CREATE TABLE IF NOT EXISTS `razdel` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Разделы` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Дамп данных таблицы bibi.razdel: ~5 rows (приблизительно)
/*!40000 ALTER TABLE `razdel` DISABLE KEYS */;
INSERT INTO `razdel` (`ID`, `Разделы`) VALUES
	(1, 'Математика'),
	(2, 'Литература'),
	(3, 'Русский язык'),
	(4, 'Химия'),
	(5, 'Английский язык');
/*!40000 ALTER TABLE `razdel` ENABLE KEYS */;

-- Дамп структуры для таблица bibi.users
CREATE TABLE IF NOT EXISTS `users` (
  `номер_чит_билета` int(11) NOT NULL,
  `Фамилия` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Имя` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Отчество` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `номер_телефона` char(50) DEFAULT NULL,
  `Адрес` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`номер_чит_билета`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Дамп данных таблицы bibi.users: ~6 rows (приблизительно)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`номер_чит_билета`, `Фамилия`, `Имя`, `Отчество`, `номер_телефона`, `Адрес`) VALUES
	(211, 'Кайсина', 'Юлия', 'Витальевна', '8(912)567-81-23', 'ул. Кирова д. 11, кв. 27'),
	(302, 'Целоусова', 'Анастасия', NULL, '8(912)569-74-58', 'ул. Ленина д. 8, кв. 75'),
	(345, 'Вершинина', 'Полина', 'Андреевна', '8(965)235-74-12', 'ул. Первомайская д. 27, кв. 6\r\n'),
	(546, 'Петров', 'Василий', NULL, '8(965)152-48-98', 'ул. Карла Маркса д. 45, кв. 76'),
	(596, 'Иванов', 'Иван', 'Иванович', '8(963)265-78-92', 'ул. Кирова д. 73, кв. 43'),
	(797, 'Вольская', 'Кристина', 'Михайловна', '8(912)658-45-12', 'ул. Кирова д. 7, кв. 8');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Дамп структуры для таблица bibi.vidacha
CREATE TABLE IF NOT EXISTS `vidacha` (
  `Номер_выдачи` int(11) NOT NULL,
  `id_book` int(11) NOT NULL,
  `Номер_чит_билета` int(11) NOT NULL,
  `ДатаВыдачи` date NOT NULL,
  `ДатаВозврата` date NOT NULL,
  PRIMARY KEY (`Номер_выдачи`),
  KEY `FK_vidacha_users` (`Номер_чит_билета`),
  KEY `FK_vidacha_book` (`id_book`),
  CONSTRAINT `FK_vidacha_book` FOREIGN KEY (`id_book`) REFERENCES `book` (`id_book`),
  CONSTRAINT `FK_vidacha_users` FOREIGN KEY (`Номер_чит_билета`) REFERENCES `users` (`номер_чит_билета`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Дамп данных таблицы bibi.vidacha: ~6 rows (приблизительно)
/*!40000 ALTER TABLE `vidacha` DISABLE KEYS */;
INSERT INTO `vidacha` (`Номер_выдачи`, `id_book`, `Номер_чит_билета`, `ДатаВыдачи`, `ДатаВозврата`) VALUES
	(258, 1, 345, '2018-11-02', '2018-11-20'),
	(544, 1, 345, '2018-11-22', '2018-11-26'),
	(545, 10, 596, '2018-10-20', '2018-11-10'),
	(567, 7, 211, '2018-09-15', '2018-10-01'),
	(787, 9, 797, '2018-08-26', '2018-09-26'),
	(982, 4, 302, '2018-06-26', '2018-07-26');
/*!40000 ALTER TABLE `vidacha` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
