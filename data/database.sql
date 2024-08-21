-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Июн 01 2021 г., 22:06
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `work`
--

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `ampam`
--
CREATE TABLE IF NOT EXISTS `ampam` (
`din_vendor` varchar(15)
,`model_din` varchar(30)
,`disk_size` int(11)
);
-- --------------------------------------------------------

--
-- Дублирующая структура для представления `din_table`
--
CREATE TABLE IF NOT EXISTS `din_table` (
`din_vendor` varchar(15)
,`model_din` varchar(30)
,`disk_size` int(11)
);
-- --------------------------------------------------------

--
-- Дублирующая структура для представления `din_table_18`
--
CREATE TABLE IF NOT EXISTS `din_table_18` (
`vendor` varchar(15)
,`model_name` varchar(30)
,`avg(PC.ram)` decimal(14,4)
,`min(pc.ram)` int(11)
);
-- --------------------------------------------------------

--
-- Дублирующая структура для представления `mxds`
--
CREATE TABLE IF NOT EXISTS `mxds` (
`din_vendor` varchar(15)
,`model_din` varchar(30)
,`disk_size` int(11)
);
-- --------------------------------------------------------

--
-- Структура таблицы `notebook`
--

CREATE TABLE IF NOT EXISTS `notebook` (
  `model_name` varchar(30) DEFAULT NULL,
  `cpu_core` int(11) DEFAULT NULL,
  `spu_speed_Ghz` float DEFAULT NULL,
  `ram` int(11) DEFAULT NULL,
  `disk_type` varchar(5) DEFAULT NULL,
  `disk_size` int(11) DEFAULT NULL,
  `screen_size` float DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `notebook`
--

INSERT INTO `notebook` (`model_name`, `cpu_core`, `spu_speed_Ghz`, `ram`, `disk_type`, `disk_size`, `screen_size`, `price`) VALUES
('XPS 15 7590', 6, 2.6, 16, 'SSD', 512, 15.6, 124000),
('Predator Helios 300', 6, 2.5, 8, 'SSD', 512, 15.6, 85886),
('GP76 10UE-443RU', 8, 3.6, 16, 'SSD', 1024, 17.3, 176990),
('GE66 (10SE-673X) Raider', 8, 2.6, 8, 'SSD', 512, 15.6, 127430),
('Legion Y530-15ICH', 6, 2.6, 8, 'HDD', 1024, 15.6, 48330);

-- --------------------------------------------------------

--
-- Структура таблицы `pc`
--

CREATE TABLE IF NOT EXISTS `pc` (
  `model_name` varchar(30) DEFAULT NULL,
  `cpu_core` int(11) DEFAULT NULL,
  `cpu_speed_Ghz` float DEFAULT NULL,
  `RAM` int(11) DEFAULT NULL,
  `disk_type` varchar(5) DEFAULT NULL,
  `disk_size` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pc`
--

INSERT INTO `pc` (`model_name`, `cpu_core`, `cpu_speed_Ghz`, `RAM`, `disk_type`, `disk_size`, `price`) VALUES
('CYBER', 10, 3.7, 32, 'SSD', 1024, 280000),
('G5 5000 MT 5000-4910', 8, 2.9, 16, 'SSD', 1024, 139490),
('Legion R5 28IMB05', 6, 2.9, 16, 'SSD', 512, 89990),
('Alienware Aurora (R11-7991)', 8, 2.9, 32, 'SSD', 512, 155410),
('GL10CS-RU027D', 6, 2.9, 8, 'SSD', 256, 57329);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `vendor` varchar(15) DEFAULT NULL,
  `model_name` varchar(30) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`vendor`, `model_name`, `type`) VALUES
('hyperpc', 'CYBER', 'PC'),
('DELL', 'G5 5000 MT 5000-4910', 'PC'),
('Lenovo', 'Legion R5 28IMB05', 'PC'),
('DELL', 'Alienware Aurora (R11-7991)', 'PC'),
('ASUS', 'GL10CS-RU027D', 'PC'),
('DELL', 'XPS 15 7590', 'Notebook'),
('ACER', 'Predator Helios 300', 'Notebook'),
('MSI', 'GP76 10UE-443RU', 'Notebook'),
('MSI', 'GE66 (10SE-673X) Raider', 'Notebook'),
('Lenovo', 'Legion Y530-15ICH', 'Notebook'),
('APPLE', 'iPhone 12 Pro', 'Smartphone'),
('SAMSUNG', 'Galaxy S10', 'Smartphone'),
('honor', '20S', 'Smartphone'),
('Huawei', 'Mate 40 Pro', 'Smartphone'),
('vivo', 'Y20', 'Smartphone');

-- --------------------------------------------------------

--
-- Структура таблицы `smartphone`
--

CREATE TABLE IF NOT EXISTS `smartphone` (
  `model_name` varchar(30) DEFAULT NULL,
  `cpu_core` int(11) DEFAULT NULL,
  `cpu_speed_Ghz` float DEFAULT NULL,
  `flash_size` int(11) DEFAULT NULL,
  `OS` varchar(10) DEFAULT NULL,
  `lte` varchar(5) DEFAULT NULL,
  `screen_size` float DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `smartphone`
--

INSERT INTO `smartphone` (`model_name`, `cpu_core`, `cpu_speed_Ghz`, `flash_size`, `OS`, `lte`, `screen_size`, `price`) VALUES
('iPhone 12 Pro', 6, 2.99, 512, 'IOS', '5G', 6.1, 129800),
('Galaxy S10', 8, 2.7, 128, 'Android 9', '4G', 6.1, 63971),
('20S', 8, 1.7, 128, 'Android 9', '4G', 6.15, 18456),
('Mate 40 Pro', 8, 2.05, 256, 'Android 10', '5G', 6.76, 89990),
('Y20', 8, 1.6, 64, 'Android 10', '4G', 6.51, 14567);

-- --------------------------------------------------------

--
-- Структура для представления `ampam`
--
DROP TABLE IF EXISTS `ampam`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ampam` AS select `product`.`vendor` AS `din_vendor`,`product`.`model_name` AS `model_din`,`notebook`.`disk_size` AS `disk_size` from (`product` join `notebook`) where ((`product`.`model_name` = `notebook`.`model_name`) and (`notebook`.`disk_size` = (select max(`notebook`.`disk_size`) from `notebook`)));

-- --------------------------------------------------------

--
-- Структура для представления `din_table`
--
DROP TABLE IF EXISTS `din_table`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `din_table` AS select `product`.`vendor` AS `din_vendor`,`product`.`model_name` AS `model_din`,`notebook`.`disk_size` AS `disk_size` from (`product` join `notebook`) where ((`product`.`model_name` = `notebook`.`model_name`) and (`notebook`.`disk_size` = (select max(`notebook`.`disk_size`) from `notebook`)));

-- --------------------------------------------------------

--
-- Структура для представления `din_table_18`
--
DROP TABLE IF EXISTS `din_table_18`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `din_table_18` AS select `product`.`vendor` AS `vendor`,`product`.`model_name` AS `model_name`,avg(`pc`.`RAM`) AS `avg(PC.ram)`,min(`pc`.`RAM`) AS `min(pc.ram)` from (`product` join `pc`) where (`product`.`model_name` = `pc`.`model_name`) group by `product`.`vendor`;

-- --------------------------------------------------------

--
-- Структура для представления `mxds`
--
DROP TABLE IF EXISTS `mxds`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mxds` AS select `product`.`vendor` AS `din_vendor`,`product`.`model_name` AS `model_din`,`notebook`.`disk_size` AS `disk_size` from (`product` join `notebook`) where ((`product`.`model_name` = `notebook`.`model_name`) and (`notebook`.`disk_size` = (select max(`notebook`.`disk_size`) from `notebook`)));

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
