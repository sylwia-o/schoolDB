-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 25 Maj 2020, 19:50
-- Wersja serwera: 10.1.38-MariaDB
-- Wersja PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `szkola`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oceny`
--

CREATE TABLE `oceny` (
  `IdOceny` int(11) NOT NULL,
  `IdUcznia` int(11) DEFAULT NULL,
  `IdPrzedmiotu` int(11) DEFAULT NULL,
  `Ocena` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `oceny`
--

INSERT INTO `oceny` (`IdOceny`, `IdUcznia`, `IdPrzedmiotu`, `Ocena`) VALUES
(1, 1, 1, 5),
(2, 1, 2, 4),
(3, 1, 3, 2),
(4, 1, 4, 6),
(5, 1, 5, 3),
(6, 2, 1, 3),
(7, 2, 2, 3),
(8, 2, 3, 4),
(9, 2, 4, 3),
(10, 2, 5, 6),
(11, 3, 1, 4),
(12, 3, 2, 4),
(13, 3, 3, 2),
(14, 3, 4, 6),
(15, 3, 5, 3),
(16, 4, 1, 3),
(17, 4, 2, 3),
(18, 4, 3, 4),
(19, 4, 4, 3),
(20, 4, 5, 6),
(21, 5, 1, 6),
(22, 5, 2, 5),
(23, 5, 3, 1),
(24, 5, 4, 2),
(25, 5, 5, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przedmiot`
--

CREATE TABLE `przedmiot` (
  `IdPrzedmiotu` int(11) NOT NULL,
  `Nazwa_Przedmiotu` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `przedmiot`
--

INSERT INTO `przedmiot` (`IdPrzedmiotu`, `Nazwa_Przedmiotu`) VALUES
(1, 'matematyka'),
(2, 'fizyka'),
(3, 'chemia'),
(4, 'geografia'),
(5, 'biologia');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uczen`
--

CREATE TABLE `uczen` (
  `IdUcznia` int(11) NOT NULL,
  `Imie` varchar(60) DEFAULT NULL,
  `Nazisko` varchar(60) DEFAULT NULL,
  `Data_urodzenia` date DEFAULT NULL,
  `Miejsce_ur` varchar(80) DEFAULT NULL,
  `Plec` varchar(1) DEFAULT NULL,
  `Klasa` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `uczen`
--

INSERT INTO `uczen` (`IdUcznia`, `Imie`, `Nazisko`, `Data_urodzenia`, `Miejsce_ur`, `Plec`, `Klasa`) VALUES
(1, 'Sylwia', 'Osiadlo', '2001-12-30', 'Ozarow', 'k', '3TI'),
(2, 'Anna', 'Nowak', '2002-02-13', 'Londyn', 'k', '2TI'),
(3, 'Pawel', 'Nowak', '2003-04-23', 'Tokio', 'm', '1TI'),
(4, 'Json', 'Nowicki', '2003-10-03', 'Nowy Jork', 'm', '1LO'),
(5, 'Barbara', 'Opara', '2003-04-23', 'Szanghaj', 'k', '8SP'),
(6, 'Henryk', 'Pietrzak', NULL, 'Grudziadz', 'm', '1LO'),
(7, 'Dorian', 'Kubiak', NULL, 'Grudziadz', 'm', '1LO'),
(8, 'Albert', 'Marciniak', NULL, 'Grudziadz', 'm', '1LO'),
(9, 'Leszek', 'Andrzejewski', NULL, 'Grudziadz', 'm', '1LO'),
(10, 'Andrzej', 'Bak', NULL, 'Grudziadz', 'm', '1LO'),
(11, 'B?azej', 'Bak', NULL, 'Grudziadz', 'm', '1LO'),
(12, 'Kewin', 'Michalak', NULL, 'Grudziadz', 'm', '1LO'),
(13, 'Amir', 'Czarnecki', NULL, 'Grudziadz', 'm', '1LO'),
(14, 'Igor', 'Zawadzki', NULL, 'Grudziadz', 'm', '1LO'),
(15, 'Adrian', 'Jaworski', NULL, 'Grudziadz', 'm', '1LO'),
(16, 'Wanda', 'Bachleda', NULL, 'Grudziadz', 'k', '1LO'),
(17, 'Florencja', 'Bakula', NULL, 'Grudziadz', 'k', '1LO'),
(18, 'Elwira', 'Baj', NULL, 'Grudziadz', 'k', '1LO'),
(19, 'Klaudia', 'Niewiadomska', NULL, 'Grudziadz', 'k', '1LO'),
(20, 'Olga', 'Bak', NULL, 'Grudziadz', 'k', '1LO'),
(21, 'Czeslawa', 'Baginski', NULL, 'Grudziadz', 'k', '1LO'),
(22, 'Edyta', 'Nitka', NULL, 'Grudziadz', 'k', '1LO'),
(23, 'Julia', 'Nastula', NULL, 'Grudziadz', 'k', '1LO'),
(24, 'Felicja', 'Nalkowska', NULL, 'Grudziadz', 'k', '1LO'),
(25, 'Jowita', 'Nicpon', NULL, 'Grudziadz', 'k', '1LO');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `oceny`
--
ALTER TABLE `oceny`
  ADD PRIMARY KEY (`IdOceny`),
  ADD KEY `IdUcznia` (`IdUcznia`),
  ADD KEY `IdPrzedmiotu` (`IdPrzedmiotu`);

--
-- Indeksy dla tabeli `przedmiot`
--
ALTER TABLE `przedmiot`
  ADD PRIMARY KEY (`IdPrzedmiotu`);

--
-- Indeksy dla tabeli `uczen`
--
ALTER TABLE `uczen`
  ADD PRIMARY KEY (`IdUcznia`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `oceny`
--
ALTER TABLE `oceny`
  MODIFY `IdOceny` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT dla tabeli `przedmiot`
--
ALTER TABLE `przedmiot`
  MODIFY `IdPrzedmiotu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `uczen`
--
ALTER TABLE `uczen`
  MODIFY `IdUcznia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `oceny`
--
ALTER TABLE `oceny`
  ADD CONSTRAINT `oceny_ibfk_1` FOREIGN KEY (`IdUcznia`) REFERENCES `uczen` (`IdUcznia`),
  ADD CONSTRAINT `oceny_ibfk_2` FOREIGN KEY (`IdPrzedmiotu`) REFERENCES `przedmiot` (`IdPrzedmiotu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
