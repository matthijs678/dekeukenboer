-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: mysql:3306
-- Gegenereerd op: 21 jun 2021 om 13:14
-- Serverversie: 8.0.23
-- PHP-versie: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `keukenboer`
--
CREATE DATABASE IF NOT EXISTS `keukenboer` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `keukenboer`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `message`
--

CREATE TABLE `message` (
                           `idmessage` int NOT NULL,
                           `name` varchar(100) NOT NULL,
                           `email` varchar(200) NOT NULL,
                           `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `message`
--
ALTER TABLE `message`
    ADD PRIMARY KEY (`idmessage`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `message`
--
ALTER TABLE `message`
    MODIFY `idmessage` int NOT NULL AUTO_INCREMENT;
COMMIT;
