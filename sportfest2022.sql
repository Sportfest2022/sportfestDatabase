-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 19. Jun 2022 um 21:49
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
  `nutzername` varchar(8) NOT NULL,
  `passwort` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(29, '9D', 5),
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
(3, 2, 35, 39, 10, 0, '2022-07-20 06:30:00');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `match_typ1ergebnis`
--
ALTER TABLE `match_typ1ergebnis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
