-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 05 Lis 2023, 23:26
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `advertising_website`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `courses_certificates`
--

CREATE TABLE `courses_certificates` (
  `courses_certificates_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `organizer` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `current_wokrplace`
--

CREATE TABLE `current_wokrplace` (
  `current_workplace_id` int(11) NOT NULL,
  `current_workplace` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `education`
--

CREATE TABLE `education` (
  `education_id` int(11) NOT NULL,
  `collage_name` varchar(50) NOT NULL,
  `locality` varchar(50) NOT NULL,
  `education_level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `current_workplace_id` int(11) NOT NULL,
  `professional_summary_id` int(11) NOT NULL,
  `work_experience_id` int(11) NOT NULL,
  `education_id` int(11) NOT NULL,
  `languages_knowledge_id` int(11) NOT NULL,
  `skills_id` int(11) NOT NULL,
  `courses_certificates_id` int(11) NOT NULL,
  `links_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `languages_knowledge`
--

CREATE TABLE `languages_knowledge` (
  `languages_kownledge_id` int(11) NOT NULL,
  `language` varchar(50) NOT NULL,
  `knowledge_level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `links`
--

CREATE TABLE `links` (
  `links_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `professional_summary`
--

CREATE TABLE `professional_summary` (
  `professional_summary_id` int(11) NOT NULL,
  `professional_summary` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `skills`
--

CREATE TABLE `skills` (
  `skills_id` int(11) NOT NULL,
  `skill` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  `e-mail` varchar(50) NOT NULL,
  `phone_number` int(9) NOT NULL,
  `profile_picture` varchar(255) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `work_experience`
--

CREATE TABLE `work_experience` (
  `work_experience_id` int(11) NOT NULL,
  `position` varchar(50) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `work_period` varchar(50) NOT NULL,
  `duties` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `courses_certificates`
--
ALTER TABLE `courses_certificates`
  ADD PRIMARY KEY (`courses_certificates_id`);

--
-- Indeksy dla tabeli `current_wokrplace`
--
ALTER TABLE `current_wokrplace`
  ADD PRIMARY KEY (`current_workplace_id`);

--
-- Indeksy dla tabeli `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`education_id`);

--
-- Indeksy dla tabeli `employee`
--
ALTER TABLE `employee`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `current_workplace_id` (`current_workplace_id`),
  ADD KEY `professional_summary_id` (`professional_summary_id`),
  ADD KEY `work_experience_id` (`work_experience_id`),
  ADD KEY `education_id` (`education_id`),
  ADD KEY `languages_knowledge_id` (`languages_knowledge_id`),
  ADD KEY `skills_id` (`skills_id`),
  ADD KEY `courses_certificates_id` (`courses_certificates_id`),
  ADD KEY `links_id` (`links_id`);

--
-- Indeksy dla tabeli `languages_knowledge`
--
ALTER TABLE `languages_knowledge`
  ADD PRIMARY KEY (`languages_kownledge_id`);

--
-- Indeksy dla tabeli `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`links_id`);

--
-- Indeksy dla tabeli `professional_summary`
--
ALTER TABLE `professional_summary`
  ADD PRIMARY KEY (`professional_summary_id`);

--
-- Indeksy dla tabeli `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`skills_id`);

--
-- Indeksy dla tabeli `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeksy dla tabeli `work_experience`
--
ALTER TABLE `work_experience`
  ADD PRIMARY KEY (`work_experience_id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `courses_certificates`
--
ALTER TABLE `courses_certificates`
  MODIFY `courses_certificates_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `current_wokrplace`
--
ALTER TABLE `current_wokrplace`
  MODIFY `current_workplace_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `education`
--
ALTER TABLE `education`
  MODIFY `education_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `languages_knowledge`
--
ALTER TABLE `languages_knowledge`
  MODIFY `languages_kownledge_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `links`
--
ALTER TABLE `links`
  MODIFY `links_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `professional_summary`
--
ALTER TABLE `professional_summary`
  MODIFY `professional_summary_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `skills`
--
ALTER TABLE `skills`
  MODIFY `skills_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `work_experience`
--
ALTER TABLE `work_experience`
  MODIFY `work_experience_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `courses_certificates`
--
ALTER TABLE `courses_certificates`
  ADD CONSTRAINT `courses_certificates_ibfk_1` FOREIGN KEY (`courses_certificates_id`) REFERENCES `employee` (`courses_certificates_id`);

--
-- Ograniczenia dla tabeli `current_wokrplace`
--
ALTER TABLE `current_wokrplace`
  ADD CONSTRAINT `current_wokrplace_ibfk_1` FOREIGN KEY (`current_workplace_id`) REFERENCES `employee` (`current_workplace_id`);

--
-- Ograniczenia dla tabeli `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `education_ibfk_1` FOREIGN KEY (`education_id`) REFERENCES `employee` (`education_id`);

--
-- Ograniczenia dla tabeli `languages_knowledge`
--
ALTER TABLE `languages_knowledge`
  ADD CONSTRAINT `languages_knowledge_ibfk_1` FOREIGN KEY (`languages_kownledge_id`) REFERENCES `employee` (`languages_knowledge_id`);

--
-- Ograniczenia dla tabeli `links`
--
ALTER TABLE `links`
  ADD CONSTRAINT `links_ibfk_1` FOREIGN KEY (`links_id`) REFERENCES `employee` (`links_id`);

--
-- Ograniczenia dla tabeli `professional_summary`
--
ALTER TABLE `professional_summary`
  ADD CONSTRAINT `professional_summary_ibfk_1` FOREIGN KEY (`professional_summary_id`) REFERENCES `employee` (`professional_summary_id`);

--
-- Ograniczenia dla tabeli `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `skills_ibfk_1` FOREIGN KEY (`skills_id`) REFERENCES `employee` (`skills_id`);

--
-- Ograniczenia dla tabeli `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `employee` (`user_id`);

--
-- Ograniczenia dla tabeli `work_experience`
--
ALTER TABLE `work_experience`
  ADD CONSTRAINT `work_experience_ibfk_1` FOREIGN KEY (`work_experience_id`) REFERENCES `employee` (`work_experience_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
