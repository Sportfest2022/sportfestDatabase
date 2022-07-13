-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 13. Jul 2022 um 23:34
-- Server-Version: 10.4.19-MariaDB
-- PHP-Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `sportfest2022`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `betreuer`
--

CREATE TABLE `betreuer` (
  `id` int(11) NOT NULL,
  `name` varchar(16) NOT NULL,
  `nachname` varchar(16) NOT NULL,
  `station_id` int(11) NOT NULL,
  `nutzername` varchar(100) NOT NULL,
  `passwort` varchar(6) NOT NULL,
  `admin` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `betreuer`
--

INSERT INTO `betreuer` (`id`, `name`, `nachname`, `station_id`, `nutzername`, `passwort`, `admin`) VALUES
(10, 'Liam', 'Schuler', 2, 'liam.schuler', '0052', b'0'),
(11, 'Fabio', 'Russo', 2, 'fabio.russo', '1657', b'0'),
(12, 'Luca', 'Spanier', 2, 'luca.spanier', '5037', b'0'),
(13, 'Laila', 'Maximini', 3, 'laila.maximini', '2207', b'0'),
(14, 'Laila', 'Philipps', 3, 'laila.philipps', '0616', b'0'),
(15, 'Laura', 'Britten', 3, 'laura.britten', '4563', b'0'),
(16, 'Lisa', 'Vogl', 4, 'lisa.vogl', '4142', b'0'),
(17, 'Hannah', 'Bidon', 4, 'hannah.bidon', '3024', b'0'),
(18, 'Emily', 'Görgen', 4, 'emily.görgen', '0429', b'0'),
(19, 'Elyse', 'Scholl', 5, 'elyse.scholl', '2207', b'0'),
(20, 'Allegra', 'Castronovo', 5, 'allegra.castronovo', '6217', b'0'),
(21, 'Paula', 'Ehlscheid', 5, 'paula.ehlscheid', '4220', b'0'),
(22, 'Léo', 'Vandevenne', 6, 'léo.vandevenne', '2210', b'0'),
(23, 'Moritz', 'Mutschler', 6, 'moritz.mutschler', '4271', b'0'),
(24, 'Philippe', 'Heinzius', 6, 'philippe.heinzius', '3652', b'0'),
(25, 'Lena', 'Klostermeier', 7, 'lena.klostermeier', '0405', b'0'),
(26, 'Janine', 'Vößing', 7, 'janine.vößing', '6722', b'0'),
(27, 'Murielle', 'Bamberg', 7, 'murielle.bamberg', '9190', b'0'),
(28, 'Hanna', 'Krier', 8, 'hanna.krier', '9108', b'0'),
(29, 'Anna', 'Bösen', 8, 'anna.bösen', '7074', b'0'),
(30, 'Nelly', 'Wolter', 8, 'nelly.wolter', '1502', b'0'),
(31, 'Mali', 'Kepper', 9, 'mali.kepper', '7574', b'0'),
(32, 'Johannes', 'Schu', 9, 'johannes.schu', '6785', b'0'),
(33, 'Jana', 'Schuhmacher', 9, 'jana.schuchmacher', '5660', b'0'),
(34, 'Lotti', 'Wildanger', 10, 'lotti.wildanger', '9412', b'0'),
(35, 'Luzia', 'Zehren', 10, 'luzia.zehren', '6209', b'0'),
(36, 'Hanna', 'Koch', 10, 'hanna.koch', '4029', b'0'),
(37, 'Jonas', 'Leibold', 11, 'jonas.leibold', '0602', b'0'),
(38, 'Finn', 'Deepen', 11, 'finn.deepen', '6969', b'0'),
(39, 'Moritz', 'Knödgen', 11, 'moritz.knödgen', '69420', b'0');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `klasse`
--

CREATE TABLE `klasse` (
  `id` int(11) NOT NULL,
  `name` varchar(3) NOT NULL,
  `klassenstufe_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `klasse`
--

INSERT INTO `klasse` (`id`, `name`, `klassenstufe_id`) VALUES
(3, '5A', 1),
(4, '5B', 1),
(5, '5C', 1),
(6, '5D', 1),
(7, '5E', 1),
(8, '5F', 1),
(9, '6A', 2),
(10, '6B', 2),
(11, '6C', 2),
(12, '6D', 2),
(13, '6E', 2),
(14, '6F', 2),
(15, '7A', 3),
(16, '7B', 3),
(17, '7C', 3),
(18, '7D', 3),
(19, '7E', 3),
(20, '7F', 3),
(21, '8A', 4),
(22, '8B', 4),
(23, '8C', 4),
(24, '8D', 4),
(25, '8E', 4),
(26, '9A', 5),
(27, '9B', 5),
(28, '9C', 5),
(29, '9E', 5),
(35, '10A', 6),
(36, '10B', 6),
(37, '10C', 6),
(38, '10E', 6),
(39, '10F', 6);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `klassenstufe`
--

CREATE TABLE `klassenstufe` (
  `id` int(11) NOT NULL,
  `stufe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `klassenstufe`
--

INSERT INTO `klassenstufe` (`id`, `stufe`) VALUES
(1, 5),
(2, 6),
(3, 7),
(4, 8),
(5, 9),
(6, 10);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `match`
--

CREATE TABLE `match` (
  `id` int(11) NOT NULL,
  `station_id` int(11) NOT NULL,
  `klasse1_id` int(11) NOT NULL,
  `klasse2_id` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `public` tinyint(1) NOT NULL,
  `start` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `match`
--

INSERT INTO `match` (`id`, `station_id`, `klasse1_id`, `klasse2_id`, `duration`, `public`, `start`) VALUES
(16, 2, 35, 39, 10, 0, '2022-07-20 06:30:00'),
(17, 2, 5, 6, 10, 0, '2022-07-20 07:00:00'),
(18, 2, 9, 12, 10, 0, '2022-07-20 07:15:00'),
(19, 2, 13, 14, 10, 0, '2022-07-20 07:30:00'),
(20, 2, 16, 18, 10, 0, '2022-07-20 07:45:00'),
(21, 2, 21, 22, 10, 0, '2022-07-20 08:00:00'),
(22, 2, 25, 21, 10, 0, '2022-07-20 08:15:00'),
(23, 2, 27, 29, 10, 0, '2022-07-20 08:30:00'),
(24, 3, 36, 37, 10, 0, '2022-07-20 06:30:00'),
(25, 3, 3, 4, 10, 0, '2022-07-20 06:45:00'),
(26, 3, 7, 8, 10, 0, '2022-07-20 07:00:00'),
(27, 3, 10, 11, 10, 0, '2022-07-20 07:15:00'),
(28, 3, 15, 19, 10, 0, '2022-07-20 07:30:00'),
(29, 3, 17, 20, 10, 0, '2022-07-20 07:45:00'),
(30, 3, 23, 24, 10, 0, '2022-07-20 08:00:00'),
(31, 3, 26, 28, 10, 0, '2022-07-20 08:15:00'),
(32, 3, 38, 36, 10, 0, '2022-07-20 08:45:00'),
(33, 4, 35, 37, 10, 0, '2022-07-20 06:45:00'),
(34, 4, 9, 12, 10, 0, '2022-07-20 07:00:00'),
(35, 4, 5, 6, 10, 0, '2022-07-20 07:15:00'),
(36, 4, 18, 20, 10, 0, '2022-07-20 07:30:00'),
(37, 4, 13, 14, 10, 0, '2022-07-20 07:45:00'),
(38, 4, 15, 17, 10, 0, '2022-07-20 08:00:00'),
(39, 4, 25, 23, 10, 0, '2022-07-20 08:30:00'),
(40, 4, 26, 29, 10, 0, '2022-07-20 08:45:00'),
(41, 4, 38, 39, 10, 0, '2022-07-20 09:00:00'),
(42, 5, 3, 4, 10, 0, '2022-07-20 06:30:00'),
(43, 5, 36, 39, 10, 0, '2022-07-20 06:45:00'),
(44, 5, 10, 11, 10, 0, '2022-07-20 07:00:00'),
(45, 5, 7, 8, 10, 0, '2022-07-20 07:15:00'),
(46, 5, 21, 24, 10, 0, '2022-07-20 07:30:00'),
(47, 5, 22, 23, 10, 0, '2022-07-20 07:45:00'),
(48, 5, 16, 19, 10, 0, '2022-07-20 08:00:00'),
(49, 5, 27, 28, 10, 0, '2022-07-20 08:45:00'),
(50, 6, 5, 6, 10, 0, '2022-07-20 06:30:00'),
(51, 6, 10, 14, 10, 0, '2022-07-20 06:45:00'),
(52, 6, 35, 36, 10, 0, '2022-07-20 07:00:00'),
(53, 6, 3, 7, 10, 0, '2022-07-20 07:30:00'),
(54, 6, 24, 25, 10, 0, '2022-07-20 07:45:00'),
(55, 6, 27, 29, 10, 0, '2022-07-20 08:00:00'),
(56, 6, 16, 20, 10, 0, '2022-07-20 08:15:00'),
(57, 6, 21, 22, 10, 0, '2022-07-20 08:30:00'),
(58, 6, 23, 24, 10, 0, '2022-07-20 08:45:00'),
(59, 7, 9, 13, 10, 0, '2022-07-20 06:30:00'),
(60, 7, 11, 12, 10, 0, '2022-07-20 06:45:00'),
(61, 7, 37, 38, 10, 0, '2022-07-20 07:00:00'),
(62, 7, 15, 19, 10, 0, '2022-07-20 07:15:00'),
(63, 7, 4, 8, 10, 0, '2022-07-20 07:30:00'),
(64, 7, 26, 28, 10, 0, '2022-07-20 07:45:00'),
(65, 7, 39, 38, 10, 0, '2022-07-20 08:00:00'),
(66, 7, 17, 18, 10, 0, '2022-07-20 08:15:00'),
(67, 8, 10, 11, 10, 0, '2022-07-20 06:30:00'),
(68, 8, 6, 7, 10, 0, '2022-07-20 06:45:00'),
(69, 8, 35, 38, 10, 0, '2022-07-20 07:15:00'),
(70, 8, 22, 23, 10, 0, '2022-07-20 07:30:00'),
(71, 8, 3, 8, 10, 0, '2022-07-20 07:45:00'),
(72, 8, 39, 37, 10, 0, '2022-07-20 08:15:00'),
(73, 8, 17, 18, 10, 0, '2022-07-20 08:30:00'),
(74, 8, 21, 25, 10, 0, '2022-07-20 08:45:00'),
(75, 8, 24, 25, 10, 0, '2022-07-20 09:00:00'),
(76, 9, 12, 14, 10, 0, '2022-07-20 06:30:00'),
(77, 9, 9, 13, 10, 0, '2022-07-20 06:45:00'),
(78, 9, 15, 16, 10, 0, '2022-07-20 07:00:00'),
(79, 9, 36, 37, 10, 0, '2022-07-20 07:15:00'),
(80, 9, 26, 29, 10, 0, '2022-07-20 07:30:00'),
(81, 9, 4, 5, 10, 0, '2022-07-20 07:45:00'),
(82, 9, 19, 20, 10, 0, '2022-07-20 08:30:00'),
(83, 9, 27, 28, 10, 0, '2022-07-20 09:00:00'),
(84, 10, 7, 8, 10, 0, '2022-07-20 06:30:00'),
(85, 10, 16, 19, 10, 0, '2022-07-20 06:45:00'),
(86, 10, 3, 4, 10, 0, '2022-07-20 07:00:00'),
(87, 10, 23, 24, 10, 0, '2022-07-20 07:15:00'),
(88, 10, 35, 36, 10, 0, '2022-07-20 07:30:00'),
(89, 10, 39, 35, 10, 0, '2022-07-20 07:45:00'),
(90, 10, 5, 6, 10, 0, '2022-07-20 08:00:00'),
(91, 10, 12, 13, 10, 0, '2022-07-20 08:15:00'),
(92, 10, 26, 28, 10, 0, '2022-07-20 08:30:00'),
(93, 11, 15, 17, 10, 0, '2022-07-20 06:30:00'),
(94, 11, 18, 20, 10, 0, '2022-07-20 06:45:00'),
(95, 11, 21, 22, 10, 0, '2022-07-20 07:00:00'),
(96, 11, 25, 22, 10, 0, '2022-07-20 07:15:00'),
(97, 11, 37, 38, 10, 0, '2022-07-20 07:30:00'),
(98, 11, 9, 11, 10, 0, '2022-07-20 07:45:00'),
(99, 11, 10, 14, 10, 0, '2022-07-20 08:00:00'),
(100, 11, 27, 29, 10, 0, '2022-07-20 08:15:00');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `match_typ1ergebnis`
--

CREATE TABLE `match_typ1ergebnis` (
  `id` int(11) NOT NULL,
  `gewinner_id` int(11) NOT NULL,
  `betreuer_id` int(11) NOT NULL,
  `match_id` int(11) NOT NULL,
  `entrytime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `match_typ2ergebnis`
--

CREATE TABLE `match_typ2ergebnis` (
  `id` int(11) NOT NULL,
  `gewinner_id` int(11) NOT NULL,
  `match_id` int(11) NOT NULL,
  `zeit_klasse1` int(11) NOT NULL,
  `zeit_klasse2` int(11) NOT NULL,
  `betreuer_id` int(11) NOT NULL,
  `entrytime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `match_typ3ergebnis`
--

CREATE TABLE `match_typ3ergebnis` (
  `id` int(11) NOT NULL,
  `zeit` int(11) NOT NULL,
  `klassen_id` int(11) NOT NULL,
  `betreuer_id` int(11) NOT NULL,
  `entrytime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `spiel`
--

CREATE TABLE `spiel` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `gametype` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `spiel`
--

INSERT INTO `spiel` (`id`, `name`, `gametype`) VALUES
(2, 'Sprintduell', 2),
(3, 'Tic Tac Toe', 1),
(4, 'Völkerball', 1),
(5, 'Eierlauf', 1),
(6, 'Arme verknoten', 1),
(7, 'Staffellauf', 3);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `station`
--

CREATE TABLE `station` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `spiel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `station`
--

INSERT INTO `station` (`id`, `name`, `spiel_id`) VALUES
(2, 'Sprintduell 1', 2),
(3, 'Sprintduell 2', 2),
(4, 'Tic Tac Toe 1', 3),
(5, 'Tic Tac Toe 2', 3),
(6, 'Völkerball 1', 4),
(7, 'Völkerball 2', 4),
(8, 'Eierlauf 1', 5),
(9, 'Eierlauf 2', 5),
(10, 'Arme verknoten 1', 6),
(11, 'Arme verknoten 2', 6);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `betreuer`
--
ALTER TABLE `betreuer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `station_id` (`station_id`),
  ADD KEY `station_id_2` (`station_id`);

--
-- Indizes für die Tabelle `klasse`
--
ALTER TABLE `klasse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk` (`klassenstufe_id`);

--
-- Indizes für die Tabelle `klassenstufe`
--
ALTER TABLE `klassenstufe`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `match`
--
ALTER TABLE `match`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_station` (`station_id`),
  ADD KEY `fk_klasse2` (`klasse2_id`),
  ADD KEY `fk_klasse1` (`klasse1_id`);

--
-- Indizes für die Tabelle `match_typ1ergebnis`
--
ALTER TABLE `match_typ1ergebnis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_gewinner` (`gewinner_id`),
  ADD KEY `fk_betreuer` (`betreuer_id`),
  ADD KEY `fk_match` (`match_id`);

--
-- Indizes für die Tabelle `match_typ2ergebnis`
--
ALTER TABLE `match_typ2ergebnis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gewinner_id` (`gewinner_id`),
  ADD KEY `match_id` (`match_id`),
  ADD KEY `betreuer_id` (`betreuer_id`);

--
-- Indizes für die Tabelle `match_typ3ergebnis`
--
ALTER TABLE `match_typ3ergebnis`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `spiel`
--
ALTER TABLE `spiel`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `spiel_id` (`spiel_id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `betreuer`
--
ALTER TABLE `betreuer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT für Tabelle `klasse`
--
ALTER TABLE `klasse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT für Tabelle `klassenstufe`
--
ALTER TABLE `klassenstufe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `match`
--
ALTER TABLE `match`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT für Tabelle `match_typ1ergebnis`
--
ALTER TABLE `match_typ1ergebnis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `match_typ3ergebnis`
--
ALTER TABLE `match_typ3ergebnis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `spiel`
--
ALTER TABLE `spiel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT für Tabelle `station`
--
ALTER TABLE `station`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `betreuer`
--
ALTER TABLE `betreuer`
  ADD CONSTRAINT `betreuer_ibfk_1` FOREIGN KEY (`station_id`) REFERENCES `station` (`id`);

--
-- Constraints der Tabelle `klasse`
--
ALTER TABLE `klasse`
  ADD CONSTRAINT `fk` FOREIGN KEY (`klassenstufe_id`) REFERENCES `klassenstufe` (`id`);

--
-- Constraints der Tabelle `match`
--
ALTER TABLE `match`
  ADD CONSTRAINT `fk_klasse1` FOREIGN KEY (`klasse1_id`) REFERENCES `klasse` (`id`),
  ADD CONSTRAINT `fk_klasse2` FOREIGN KEY (`klasse2_id`) REFERENCES `klasse` (`id`),
  ADD CONSTRAINT `fk_station` FOREIGN KEY (`station_id`) REFERENCES `station` (`id`);

--
-- Constraints der Tabelle `match_typ1ergebnis`
--
ALTER TABLE `match_typ1ergebnis`
  ADD CONSTRAINT `fk_betreuer` FOREIGN KEY (`betreuer_id`) REFERENCES `betreuer` (`id`),
  ADD CONSTRAINT `fk_gewinner` FOREIGN KEY (`gewinner_id`) REFERENCES `klasse` (`id`),
  ADD CONSTRAINT `fk_match` FOREIGN KEY (`match_id`) REFERENCES `match` (`id`);

--
-- Constraints der Tabelle `station`
--
ALTER TABLE `station`
  ADD CONSTRAINT `station_ibfk_1` FOREIGN KEY (`spiel_id`) REFERENCES `spiel` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
