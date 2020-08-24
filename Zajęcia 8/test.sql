-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 25 Sie 2020, 01:54
-- Wersja serwera: 10.1.37-MariaDB
-- Wersja PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `test`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `samochody`
--

CREATE TABLE `samochody` (
  `id` int(11) NOT NULL,
  `marka` varchar(50) NOT NULL,
  `model` varchar(100) NOT NULL,
  `rok` int(11) NOT NULL,
  `pojemnosc` float NOT NULL,
  `typ_silnika` enum('benzyna','diesel') NOT NULL,
  `liczba_poduszek` int(11) NOT NULL,
  `abs` enum('tak','nie') NOT NULL,
  `esp` enum('tak','nie') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `samochody`
--

INSERT INTO `samochody` (`id`, `marka`, `model`, `rok`, `pojemnosc`, `typ_silnika`, `liczba_poduszek`, `abs`, `esp`) VALUES
(6, 'Nissan', 'Micra', 1997, 0, 'benzyna', 0, 'tak', 'tak'),
(2, 'Volkswagen', 'Passat', 2002, 1.9, 'diesel', 4, 'tak', 'tak'),
(3, 'Mazda', '626', 1997, 2, 'diesel', 1, 'tak', 'nie'),
(4, 'Skoda', 'Fabia', 2000, 1.4, 'benzyna', 2, 'tak', 'nie'),
(8, 'Alfa Romeo', 'test', 2000, 0, 'benzyna', 0, 'tak', 'tak'),
(9, 'Ferrari', 'Enzo', 2010, 0, 'benzyna', 0, 'tak', 'tak'),
(10, 'test', 'test', 1234, 0, 'benzyna', 0, 'tak', 'tak'),
(30, 'abc', 'de', 0, 0, 'benzyna', 0, 'tak', 'tak'),
(25, 'abc', 'abc', 2000, 2, 'benzyna', 4, 'tak', 'tak'),
(21, 'Nissan', 'test', 2000, 2, 'benzyna', 1, 'tak', 'nie');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `id` int(11) NOT NULL,
  `login` varchar(20) NOT NULL,
  `haslo` varchar(255) NOT NULL,
  `errorlog` int(4) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`id`, `login`, `haslo`, `errorlog`) VALUES
(1, 'test', 'test', 0);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `samochody`
--
ALTER TABLE `samochody`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `samochody`
--
ALTER TABLE `samochody`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
