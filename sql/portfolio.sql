-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 24 mrt 2022 om 22:13
-- Serverversie: 10.4.21-MariaDB
-- PHP-versie: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `opdrachten`
--

CREATE TABLE `opdrachten` (
  `id` int(11) NOT NULL,
  `opdracht_naam` varchar(255) NOT NULL,
  `vak` varchar(255) NOT NULL,
  `data` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `opdrachten`
--

INSERT INTO `opdrachten` (`id`, `opdracht_naam`, `vak`, `data`) VALUES
(1, 'login', 'Het Bureau', '{\r\n    \"login_systeem\": {\r\n        \"titel\": \"Login Systeem\",\r\n        \"vak\": \"Het Bureau\",\r\n        \"content\": [\r\n            {\r\n                \"data\": [\r\n                    {\r\n                        \"intro\": \"Dit is een inlog systeem dat ik heb gemaakt voor een opdracht van Het Bureau (hier maak je opdrachten voor echte klanten of docenten). Ik heb het met PHP(in OOP) geschreven. Het inlog systeem werk maar het staat nog niet online omdat de rest van de opdracht nog niet af is.<br><br> Wat ik hier heb gedaan? Ik kijk met de checkInput() functie of alle velden zijn ingevuld, zo ja? Dan wordt er met de verifyUser gekeken of de gebruiker bestaat, en zodra alles klopt word je doorgestuurd naar de volgende pagina.\",\r\n                        \"foto\": \"foto.png\"\r\n                    }\r\n                ]\r\n            }\r\n        ],\r\n        \"content2\": [\r\n            {\r\n                \"data\": [\r\n                    {\r\n                        \"tekst\": \"Met deze functie haal ik de gegevens van de gebruiker op.\",\r\n                        \"foto\": \"getaccfunc.png\"\r\n                    }\r\n                ]\r\n            }\r\n        ]\r\n    }\r\n}'),
(2, 'ecommerce', 'keuzedeel', '{\r\n    \"login_systeem\": {\r\n        \"titel\": \"Ecommerce/Webshop\",\r\n        \"vak\": \"Keuzedeel\",\r\n        \"url\":\"http://u533187.gluweb.nl/ecommerce/\",\r\n        \"content\": [\r\n            {\r\n                \"data\": [\r\n                    {\r\n                        \"intro\": \"Dit is webshop voor een ecommerce(keuzedeel). Ik heb daarom een game webshop gebouwd dat alleen nog niet af is. Het HTML/CSS gedeelte is 80% af, verder van de back-end is de detail pagina dynamisch en je kunt een bestelling plaatsen die dan in de database terecht komt\",\r\n                        \"foto\": \"ecommerce.png\"\r\n                        \r\n                    }\r\n                ]\r\n            }\r\n        ],\r\n        \"content2\": [\r\n            {\r\n                \"data\": [\r\n                    {\r\n                        \"tekst\": \"Hier is te zien hoe ik de detail pagina dynamish heb gemaakt(geen OOP). Ik haal eerst productID die ik mee stuur via de URL op met een $_GET, en dan koppel ik de data van dat product aan variabels.\",\r\n                        \"foto\": \"getproduct.png\"\r\n                        \r\n                    }\r\n                ]\r\n            }\r\n        ],\r\n        \"content3\": [\r\n            {\r\n                \"data\": [\r\n                    {\r\n                        \"tekst\": \"Hier pas ik de variabelen toe in de HTML.\",\r\n                        \"foto\": \"dynamisch.png\"\r\n                    }\r\n                ]\r\n            }\r\n        ]\r\n    }\r\n}');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vragen`
--

CREATE TABLE `vragen` (
  `id` int(11) NOT NULL,
  `naam` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `bericht` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `vragen`
--

INSERT INTO `vragen` (`id`, `naam`, `email`, `bericht`) VALUES
(1, 'dwd', 'wdwd', 'wd'),
(2, 'Gavin', '@@', 'Gay ass nigga'),
(3, 'ss', 'ss', 'ss'),
(4, 'ss', 'ss', 'ss'),
(5, 'dwdw', 'dwdw', 'dwdw'),
(6, 'dd', 'dd', 'dd'),
(7, 'dd', 'dd', 'dd'),
(8, 'HH', 'dd', 'dd'),
(9, 'HH', 'dd', 'dd'),
(10, 'dd', 'dd', 'dd'),
(11, 'dd', 'dd', 'dd');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `opdrachten`
--
ALTER TABLE `opdrachten`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `vragen`
--
ALTER TABLE `vragen`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `opdrachten`
--
ALTER TABLE `opdrachten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `vragen`
--
ALTER TABLE `vragen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
