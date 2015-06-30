-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 17. Januar 2012 um 22:04
-- Server Version: 5.5.8
-- PHP-Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `mafia`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `belag`
--

CREATE TABLE IF NOT EXISTS `belag` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kat_ID` int(10) unsigned NOT NULL,
  `value` tinyint(1) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `kat_ID` (`kat_ID`),
  KEY `value` (`value`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Daten für Tabelle `belag`
--

INSERT INTO `belag` (`ID`, `kat_ID`, `value`, `name`) VALUES
(12, 8, 1, 'Bacon'),
(13, 8, 1, 'Ei'),
(14, 8, 2, 'Hänchenbrustfilet'),
(15, 9, 1, 'Ananas'),
(16, 10, 3, 'Gorgonzola'),
(17, 8, 2, 'Schinken'),
(18, 12, 0, 'Chili'),
(19, 9, 1, 'Mais'),
(20, 9, 1, 'Oliven'),
(21, 9, 1, 'Zwiebeln'),
(22, 10, 3, 'Extra Käse'),
(23, 10, 3, 'Mozzarella'),
(24, 11, 1, 'Asia-Sauce (süß-sauer)'),
(25, 11, 1, 'Honig-Senf-sauce'),
(26, 13, 1, 'Italian Dressing'),
(27, 13, 1, 'American Dressing'),
(28, 14, 0, 'Eisbergsalat'),
(29, 14, 0, 'Tomate'),
(30, 14, 0, 'Gurke'),
(31, 8, 3, 'Beef'),
(32, 11, 1, 'Barbecue-Sauce'),
(34, 9, 1, 'Spargel'),
(35, 9, 1, 'Broccoli'),
(36, 11, 1, 'Sauce Hollandaise'),
(37, 15, 0, ''),
(38, 8, 2, 'Sardellen'),
(39, 11, 1, 'Bärlauchsauce');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `belagkat`
--

CREATE TABLE IF NOT EXISTS `belagkat` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Daten für Tabelle `belagkat`
--

INSERT INTO `belagkat` (`ID`, `name`) VALUES
(8, 'Fisch & Fleisch'),
(9, 'Obst & Gemüse'),
(10, 'Käse'),
(11, 'Saucen'),
(12, 'Gewürze'),
(13, 'Dressings'),
(14, 'Salat'),
(15, 'Schmetterlinge');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `belagkatzuproduktkat`
--

CREATE TABLE IF NOT EXISTS `belagkatzuproduktkat` (
  `produktkat_ID` int(10) unsigned NOT NULL,
  `belagkat_ID` int(10) unsigned NOT NULL,
  KEY `produktkat_ID` (`produktkat_ID`,`belagkat_ID`),
  KEY `belagkat_ID` (`belagkat_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `belagkatzuproduktkat`
--

INSERT INTO `belagkatzuproduktkat` (`produktkat_ID`, `belagkat_ID`) VALUES
(43, 8),
(43, 9),
(43, 10),
(43, 11),
(43, 12),
(45, 13),
(45, 14),
(52, 8),
(52, 9),
(52, 10),
(52, 11),
(52, 12),
(52, 13),
(52, 14),
(52, 15),
(53, 8),
(53, 9),
(53, 10),
(53, 11),
(53, 12),
(53, 13),
(53, 14),
(53, 15);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `belagpreis`
--

CREATE TABLE IF NOT EXISTS `belagpreis` (
  `size` int(10) unsigned NOT NULL,
  `value` tinyint(4) NOT NULL,
  `preis` float(3,2) NOT NULL,
  KEY `size` (`size`),
  KEY `value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `belagpreis`
--

INSERT INTO `belagpreis` (`size`, `value`, `preis`) VALUES
(72, 1, 0.85),
(72, 2, 1.40),
(72, 3, 1.90),
(73, 1, 1.05),
(73, 2, 1.65),
(73, 3, 2.20),
(74, 1, 1.40),
(74, 2, 2.50),
(74, 3, 3.05),
(72, 0, 0.00),
(73, 0, 0.00),
(74, 0, 0.00),
(78, 1, 1.70),
(78, 2, 2.80),
(78, 3, 3.40),
(78, 0, 0.00);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `belagzubestellung`
--

CREATE TABLE IF NOT EXISTS `belagzubestellung` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `produktzubestell_ID` int(10) unsigned NOT NULL,
  `belag_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `produktzubestell_ID` (`produktzubestell_ID`,`belag_ID`),
  KEY `belag_ID` (`belag_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=72 ;

--
-- Daten für Tabelle `belagzubestellung`
--

INSERT INTO `belagzubestellung` (`ID`, `produktzubestell_ID`, `belag_ID`) VALUES
(36, 262, 12),
(37, 262, 12),
(38, 262, 12),
(39, 262, 12),
(40, 262, 12),
(41, 262, 12),
(42, 262, 12),
(45, 262, 12),
(44, 262, 13),
(8, 262, 14),
(10, 262, 15),
(11, 262, 15),
(19, 262, 15),
(43, 262, 31),
(16, 266, 12),
(14, 266, 14),
(17, 267, 12),
(48, 284, 14),
(49, 291, 39),
(61, 308, 12),
(60, 308, 13),
(65, 308, 18),
(63, 308, 24),
(62, 308, 38),
(66, 309, 15),
(67, 309, 21),
(68, 313, 31),
(69, 314, 13),
(70, 316, 13),
(71, 319, 14);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `belagzuprodukt`
--

CREATE TABLE IF NOT EXISTS `belagzuprodukt` (
  `belag_ID` int(10) unsigned NOT NULL,
  `produkt_ID` int(10) unsigned NOT NULL,
  KEY `belag_ID` (`belag_ID`),
  KEY `produkt_ID` (`produkt_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `belagzuprodukt`
--

INSERT INTO `belagzuprodukt` (`belag_ID`, `produkt_ID`) VALUES
(35, 44),
(36, 44),
(37, 42),
(13, 43),
(12, 43),
(36, 43),
(31, 44),
(16, 44),
(38, 46),
(20, 46),
(21, 46),
(23, 46),
(12, 47),
(17, 47),
(31, 47),
(32, 47),
(18, 47),
(26, 48),
(28, 48),
(29, 48),
(30, 48),
(13, 53),
(14, 53),
(39, 53),
(18, 53);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bestellung`
--

CREATE TABLE IF NOT EXISTS `bestellung` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kunde_ID` int(11) unsigned NOT NULL,
  `datum` date NOT NULL,
  `wish` varchar(100) DEFAULT NULL,
  `done` tinyint(1) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`ID`),
  KEY `kunde_ID` (`kunde_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Daten für Tabelle `bestellung`
--

INSERT INTO `bestellung` (`ID`, `kunde_ID`, `datum`, `wish`, `done`) VALUES
(1, 1, '2011-08-24', NULL, 1),
(2, 3, '0000-00-00', NULL, -1),
(3, 4, '0000-00-00', NULL, -1),
(4, 5, '2011-08-27', NULL, -1),
(5, 6, '2011-08-28', NULL, 1),
(6, 6, '2011-08-28', NULL, -1),
(7, 9, '2011-08-29', NULL, -1),
(8, 10, '2011-08-29', NULL, -1),
(9, 11, '2011-08-29', NULL, 1),
(10, 11, '2011-08-29', NULL, 1),
(11, 12, '2011-08-29', 'mein wunsch sieht so aus:', 1),
(12, 12, '2011-08-29', 'Bitte schneiden!', 1),
(13, 12, '2011-08-29', '', 1),
(14, 12, '2011-08-29', '', 1),
(15, 12, '2011-08-29', NULL, -1),
(16, 12, '2011-08-29', '', 1),
(17, 12, '2011-08-29', NULL, -1),
(18, 12, '2011-08-31', 'wunsch wunsch wunsch wunsch schneiden Pizza', 1),
(19, 12, '2011-08-31', 'NULL', 1),
(20, 12, '2011-08-31', NULL, 1),
(21, 12, '2011-08-31', '', 1),
(22, 12, '2011-11-15', NULL, -1),
(23, 12, '2011-11-16', NULL, -1),
(24, 12, '2012-01-07', 'blubbb', 1),
(25, 12, '2012-01-07', NULL, -1),
(26, 12, '2012-01-10', 'Junge muss sse sein!', 1),
(27, 12, '2012-01-10', '', 1),
(28, 12, '2012-01-10', '', 1),
(29, 12, '2012-01-10', '', 1),
(30, 12, '2012-01-10', 'sdfsdfsdf', 1),
(31, 12, '2012-01-10', '', 1),
(32, 12, '2012-01-10', '', 1),
(33, 12, '2012-01-10', '', 1),
(34, 12, '2012-01-10', '', 1),
(35, 12, '2012-01-10', '', 1),
(36, 12, '2012-01-10', 'wunsch', 1),
(37, 12, '2012-01-10', '', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `kunde`
--

CREATE TABLE IF NOT EXISTS `kunde` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `anrede` varchar(10) NOT NULL,
  `vorname` varchar(50) NOT NULL,
  `nachname` varchar(50) NOT NULL,
  `strasse` varchar(100) NOT NULL,
  `hausnummer` varchar(10) NOT NULL,
  `plz` varchar(5) NOT NULL,
  `stadt` varchar(50) NOT NULL,
  `telefon` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Daten für Tabelle `kunde`
--

INSERT INTO `kunde` (`ID`, `anrede`, `vorname`, `nachname`, `strasse`, `hausnummer`, `plz`, `stadt`, `telefon`) VALUES
(1, 'Herr', 'Max', 'Muster', '', '', '0', '', '0'),
(2, '', '', '', '', '', '0', '', '0'),
(3, '', '', '', '', '', '0', '', '0'),
(4, '', '', '', '', '', '0', '', '0'),
(5, '', '', '', '', '', '0', '', '0'),
(6, 'dsfsdfsdf', '', '', '', '', '0', '', '0'),
(7, 'Herr', 'Martin', 'Trapp', 'Juluis', '107', '27878', 'Hamburg', '4076545'),
(8, '', '', '', '', '', '0', '', '0'),
(9, '', '', '', '', '', '0', '', '0'),
(10, '', '', '', '', '', '0', '', '0'),
(11, 'anrede', 'vorname', 'nachname', 'strasse', '56', '23213', 'Hamburg', '78234234'),
(12, '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `produkt`
--

CREATE TABLE IF NOT EXISTS `produkt` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kat_ID` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `comment` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `kat_ID` (`kat_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=58 ;

--
-- Daten für Tabelle `produkt`
--

INSERT INTO `produkt` (`ID`, `kat_ID`, `name`, `comment`) VALUES
(42, 43, 'Grundtorte', 'Das Minimum an Sicherheit'),
(43, 43, 'Chicago', 'In Chicago gibt es keine faulen Eier'),
(44, 43, 'New York', 'Nichts fuer leichte Mädchen'),
(46, 43, 'Sizilien', 'Home sweet Home'),
(47, 43, 'Blutiges Geschäft', 'Der Männerteller'),
(48, 45, 'A lá Mama', 'Besser als bei der eigenen Mutter'),
(49, 52, 'Pferd im Schlafrock', 'Die letzte Warnung (Chicken Chips)'),
(50, 52, 'Hot Don', 'we MEAN it! (Hot Dog nach Art des Hauses)'),
(51, 53, 'Fritten', 'Piss die Wand an'),
(52, 52, 'Böse Überraschung', 'Trau dich! (Tortenbrötchen)'),
(53, 43, 'Bärlausconi', 'Garantiert volljährig'),
(54, 50, 'Fanta', 'Piss die Wand an'),
(55, 50, 'KokserCola', 'Drink only'),
(56, 54, 'Vino', 'Hausmarke!'),
(57, 54, 'Whisky', 'What else');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `produktkat`
--

CREATE TABLE IF NOT EXISTS `produktkat` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `top_ID` int(10) unsigned DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=55 ;

--
-- Daten für Tabelle `produktkat`
--

INSERT INTO `produktkat` (`ID`, `top_ID`, `name`) VALUES
(43, NULL, 'Torte'),
(45, NULL, 'Salat'),
(46, NULL, 'Extras'),
(47, NULL, 'Getränke'),
(49, 48, 'Bier'),
(50, 47, 'Softdrinks'),
(52, 46, 'Snacks'),
(53, 46, 'Beilagen'),
(54, 47, 'No Prohibition!');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `produktpreis`
--

CREATE TABLE IF NOT EXISTS `produktpreis` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `produkt_ID` int(10) unsigned NOT NULL,
  `size` int(10) unsigned NOT NULL,
  `preis` float(4,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`),
  KEY `produkt_ID` (`produkt_ID`),
  KEY `size` (`size`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=135 ;

--
-- Daten für Tabelle `produktpreis`
--

INSERT INTO `produktpreis` (`ID`, `produkt_ID`, `size`, `preis`) VALUES
(122, 49, 79, 3.50),
(123, 50, 79, 4.00),
(124, 51, 80, 2.00),
(125, 51, 81, 3.00),
(126, 52, 79, 4.50),
(127, 48, 82, 90.00),
(128, 54, 83, 2.20),
(129, 54, 84, 3.20),
(130, 55, 83, 2.20),
(131, 55, 84, 3.20),
(132, 56, 85, 8.00),
(134, 57, 86, 9.99);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `produktzubestellung`
--

CREATE TABLE IF NOT EXISTS `produktzubestellung` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bestell_ID` int(10) unsigned NOT NULL,
  `produkt_ID` int(10) unsigned NOT NULL,
  `size` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `bestell_ID` (`bestell_ID`),
  KEY `produkt_ID` (`produkt_ID`),
  KEY `size` (`size`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=320 ;

--
-- Daten für Tabelle `produktzubestellung`
--

INSERT INTO `produktzubestellung` (`ID`, `bestell_ID`, `produkt_ID`, `size`) VALUES
(262, 25, 43, 72),
(263, 25, 42, 72),
(264, 25, 42, 72),
(265, 25, 42, 72),
(266, 25, 42, 72),
(267, 25, 42, 72),
(268, 25, 42, 72),
(284, 26, 53, 74),
(286, 26, 55, 84),
(289, 28, 49, 79),
(290, 28, 49, 79),
(291, 29, 43, 78),
(305, 30, 49, 79),
(306, 30, 52, 79),
(307, 30, 50, 79),
(308, 30, 42, 72),
(309, 31, 42, 73),
(310, 32, 48, 82),
(311, 32, 42, 72),
(312, 32, 50, 79),
(313, 33, 42, 72),
(314, 34, 42, 73),
(315, 34, 49, 79),
(316, 35, 42, 72),
(317, 36, 48, 82),
(318, 36, 49, 79),
(319, 37, 42, 72);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `size`
--

CREATE TABLE IF NOT EXISTS `size` (
  `size` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `produktkat_ID` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `comment` varchar(50) DEFAULT NULL,
  `def_preis` float(3,2) unsigned DEFAULT NULL,
  PRIMARY KEY (`size`),
  KEY `produktkat_ID` (`produktkat_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=87 ;

--
-- Daten für Tabelle `size`
--

INSERT INTO `size` (`size`, `produktkat_ID`, `name`, `comment`, `def_preis`) VALUES
(72, 43, 'Tellerwäscher', 'cal. 24', 4.65),
(73, 43, 'Fluchtfahrer', 'cal. 32', 6.20),
(74, 43, 'Don', 'cal. 38', 8.75),
(76, 46, '4 Stück', '', NULL),
(77, 46, '6 Stück', '', NULL),
(78, 43, 'Famile', 'cal. 45', 9.90),
(79, 52, '', '', NULL),
(80, 53, 'Small Business', '', NULL),
(81, 53, 'Big Business', '', NULL),
(82, 45, '', '', NULL),
(83, 50, '0.5L', '', NULL),
(84, 50, '1L', '', NULL),
(85, 54, '0.75L', '', NULL),
(86, 54, '0.5L', '', NULL);

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `belag`
--
ALTER TABLE `belag`
  ADD CONSTRAINT `belag_ibfk_1` FOREIGN KEY (`kat_ID`) REFERENCES `belagkat` (`ID`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `belagkatzuproduktkat`
--
ALTER TABLE `belagkatzuproduktkat`
  ADD CONSTRAINT `belagkatzuproduktkat_ibfk_1` FOREIGN KEY (`produktkat_ID`) REFERENCES `produktkat` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `belagkatzuproduktkat_ibfk_2` FOREIGN KEY (`belagkat_ID`) REFERENCES `belagkat` (`ID`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `belagpreis`
--
ALTER TABLE `belagpreis`
  ADD CONSTRAINT `belagpreis_ibfk_1` FOREIGN KEY (`size`) REFERENCES `size` (`size`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `belagzubestellung`
--
ALTER TABLE `belagzubestellung`
  ADD CONSTRAINT `belagzubestellung_ibfk_1` FOREIGN KEY (`produktzubestell_ID`) REFERENCES `produktzubestellung` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `belagzubestellung_ibfk_2` FOREIGN KEY (`belag_ID`) REFERENCES `belag` (`ID`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `belagzuprodukt`
--
ALTER TABLE `belagzuprodukt`
  ADD CONSTRAINT `belagzuprodukt_ibfk_1` FOREIGN KEY (`produkt_ID`) REFERENCES `produkt` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `belagzuprodukt_ibfk_2` FOREIGN KEY (`belag_ID`) REFERENCES `belag` (`ID`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `bestellung`
--
ALTER TABLE `bestellung`
  ADD CONSTRAINT `bestellung_ibfk_1` FOREIGN KEY (`kunde_ID`) REFERENCES `kunde` (`ID`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `produkt`
--
ALTER TABLE `produkt`
  ADD CONSTRAINT `produkt_ibfk_1` FOREIGN KEY (`kat_ID`) REFERENCES `produktkat` (`ID`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `produktpreis`
--
ALTER TABLE `produktpreis`
  ADD CONSTRAINT `produktpreis_ibfk_1` FOREIGN KEY (`produkt_ID`) REFERENCES `produkt` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `produktpreis_ibfk_2` FOREIGN KEY (`size`) REFERENCES `size` (`size`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `produktzubestellung`
--
ALTER TABLE `produktzubestellung`
  ADD CONSTRAINT `produktzubestellung_ibfk_1` FOREIGN KEY (`bestell_ID`) REFERENCES `bestellung` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `produktzubestellung_ibfk_2` FOREIGN KEY (`produkt_ID`) REFERENCES `produkt` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `produktzubestellung_ibfk_3` FOREIGN KEY (`size`) REFERENCES `size` (`size`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `size`
--
ALTER TABLE `size`
  ADD CONSTRAINT `size_ibfk_1` FOREIGN KEY (`produktkat_ID`) REFERENCES `produktkat` (`ID`) ON DELETE CASCADE;
