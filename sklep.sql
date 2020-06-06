-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 05 Cze 2020, 11:42
-- Wersja serwera: 10.1.26-MariaDB
-- Wersja PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
CREATE DATABASE Sklep;
USE Sklep;
--
-- Baza danych: `sklep`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `asortyment`
--

CREATE TABLE `asortyment` (
  `id_produktu` int(11) NOT NULL,
  `Cena` float NOT NULL,
  `dostepnosc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `asortyment`
--

INSERT INTO `asortyment` (`id_produktu`, `Cena`, `dostepnosc`) VALUES
(16, 1549.99, 7),
(17, 7.98, 4),
(18, 236.86, 6),
(19, 299, 3),
(20, 24.99, 17),
(21, 32.34, 3),
(22, 89.9, 2),
(23, 62, 4),
(24, 189.9, 2),
(25, 2899.99, 1),
(26, 2028, 2),
(27, 39.9, 5),
(28, 129.9, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kategorie`
--

CREATE TABLE `kategorie` (
  `id_kategorii` int(11) NOT NULL,
  `Nazwa_Kategorii` varchar(60) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `kategorie`
--

INSERT INTO `kategorie` (`id_kategorii`, `Nazwa_Kategorii`) VALUES
(1, 'Akcesoria'),
(2, 'Chłodzenie CPU'),
(3, 'Karty graficzne'),
(4, 'Klawiatury'),
(5, 'Kości RAM'),
(6, 'Monitory'),
(7, 'Myszki'),
(8, 'Obudowy'),
(9, 'Płyty główne'),
(10, 'Procesory'),
(11, 'Zasilacze');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE `klienci` (
  `id_klienta` int(11) NOT NULL,
  `Imie` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `Nazwisko` varchar(60) COLLATE utf8_polish_ci NOT NULL,
  `Login` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `e-mail` text COLLATE utf8_polish_ci NOT NULL,
  `Haslo` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `Uprawnienia` varchar(30) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `klienci`
--

INSERT INTO `klienci` (`id_klienta`, `Imie`, `Nazwisko`, `Login`, `e-mail`, `Haslo`, `Uprawnienia`) VALUES
(1, 'Jan', 'Kowalski', 'Admin', 'przykładowymail@somemail.com', 'Admin1@', 'Administrator'),
(2, 'Joanna', 'Mazurek', 'JMaz', 'JoMaz@wp.pl', 'Qwerty1@', 'Klient');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produkty`
--

CREATE TABLE `produkty` (
  `id_produktu` int(11) NOT NULL,
  `Nazwa` text COLLATE utf8_polish_ci NOT NULL,
  `Marka` text COLLATE utf8_polish_ci NOT NULL,
  `Opis` text COLLATE utf8_polish_ci NOT NULL,
  `Zdjecie` text COLLATE utf8_polish_ci NOT NULL COMMENT 'Ścieżka',
  `Kategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `produkty`
--

INSERT INTO `produkty` (`id_produktu`, `Nazwa`, `Marka`, `Opis`, `Zdjecie`, `Kategoria`) VALUES
(16, 'AMD RYZEN 7', 'AMD', 'Procesor z serii AMD RYZEN', 'zdj_aso/10/16/16.png', 10),
(17, 'Mysz Esperanza Extreme', 'Inne', 'Przewodowa mysz do komputera. DPI 1000', 'zdj_aso/7/17/17.jpg', 7),
(18, 'Razer Deathadder Elite Czarna', 'RAZER', 'Razer DeathAdder Elite wyposaÅ¼ona jest w nowej jakoÅ›ci czujnik optyczny, przystosowany do eSportu, posiadajÄ…cy niewiarygodnie dokÅ‚adnÄ… rozdzielczoÅ›Ä‡ 16,000 dpi oraz idealne Å›ledzenie do 450 cali na sekundÄ™ (IPS), dziÄ™ki czemu daje Ci absolutnÄ… przewagÄ™ w rozgrywce. Ten niesamowicie dokÅ‚adny czujnik zostaÅ‚ zaprojektowany od zera, co pozwoliÅ‚o uzyskaÄ‡ odwzorowanie rozdzielczoÅ›ci na poziomie 99,4%.', 'zdj_aso/7/18/18.jpg', 7),
(19, 'SteelSeries Sensei Ten', 'SteelSeries', 'ZmieÅ„ oblicze rozgrywki, majÄ…c wszystkie technologie w zasiÄ™gu rÄ™ki. Kultowy ksztaÅ‚t myszy pozwala na komfortowe granie zarÃ³wno osobom prawo- jak i leworÄ™cznym. Pewny i stabilny chwyt nie zawiedzie CiÄ™ nawet podczas najbardziej dynamicznej rozgrywki.', 'zdj_aso/7/19/19.jpg', 7),
(20, 'Wentylator komputerowy SilentiumPC ', 'SilentiumPC', 'Wentylator o Å›rednicy 120mm. ZÅ‚Ä…cze 4PIN do pÅ‚yty gÅ‚Ã³wnej. SilentiumPC jest PolskÄ… firmÄ… i tworzy Å›wietnej jakoÅ›ci sprzÄ™t w przystÄ™pnej cenie.', 'zdj_aso/1/20/20.jpg', 1),
(21, 'PodkÅ‚adka pod mysz Genesis', 'Genesis', 'PodkÅ‚adka wyposaÅ¼ona w Å›wietnej jakoÅ›ci materiaÅ‚ pozwalajÄ…cy zapobiec bÅ‚Ä™dom sensora myszki. DziÄ™ki czemu moÅ¼esz cieszyÄ‡ siÄ™ grÄ… z najwyÅ¼szÄ… precyzjÄ… ruchÃ³w.', 'zdj_aso/1/21/21.jpg', 1),
(22, 'PodkÅ‚adka pod mysz RGB', 'CoolerMaster', 'PodkÅ‚adka zapewniajÄ…ca niebywaÅ‚Ä… precyzjÄ™ ruchÃ³w, posiada wbudowane paski LED na kraÅ„cach, co pozwoli Ci na odpicowanie swojego stanowiska.', 'zdj_aso/1/22/22.jpg', 1),
(23, 'AMD Cooler', 'AMD', 'ChÅ‚odzenie przeznaczone dla procesorÃ³w firmy AMD z serii RYZEN. DoÅ‚Ä…czona pasta termoprzewodzÄ…ca.', 'zdj_aso/2/23/23.jpg', 2),
(24, 'Be Qiuet Dark Rock PRO 4', 'Be Quiet', 'PotÄ™Å¼ne chÅ‚odzenie od firmy BeQuiet przeznaczone dla wymagajÄ…cych uÅ¼ytkownikÃ³w komputerÃ³w PC, dziÄ™ki dwÃ³m wentylatorom 140mm chÅ‚odnica odbiera potÄ™Å¼nÄ… dawkÄ™ ciepÅ‚a od procesora, stabilizujÄ…c jego pracÄ™ wysokoÅ›Ä‡ chÅ‚odzenia to 169mm', 'zdj_aso/2/24/24.jpg', 2),
(25, 'Asus RTX 2070 8GB SUPER OC', 'Asus', 'Karty graficzne ASUS GeForceÂ® RTX sÄ… oparte o architekturÄ™ ukÅ‚adÃ³w GPU Turing oraz najnowszÄ… platformÄ™ RTX. Te ukÅ‚ady grafiki zapewniajÄ… nawet szeÅ›ciokrotnie wyÅ¼szÄ… wydajnoÅ›Ä‡ niÅ¼ w przypadku GPU poprzedniej generacji, a dodatkowo wnoszÄ… do rozgrywki moc technologii Real-Time Ray Tracing oraz sztucznej inteligencji.', 'zdj_aso/3/25/25.jpg', 3),
(26, 'Gigabyte GTX 1070 G1 OC 8GB', 'Gigabyte', 'Stworzenie tak zaawansowanej karty graficznej, wymagaÅ‚o zaprojektowania unikatowej architektury GPU. Poznaj wiÄ™c architekturÄ™ NVIDIA Pascal, bÄ™dÄ…cÄ… odpowiedziÄ… na potrzeby najbardziej wymagajÄ…cych graczy. Jej doskonaÅ‚a wydajnoÅ›Ä‡, znakomita energooszczÄ™dnoÅ›Ä‡, a takÅ¼e innowacyjne technologie na zawsze odmieniÄ… oblicze gamingu.', 'zdj_aso/3/26/26.png', 3),
(27, 'ChÅ‚odzenie procesora Intel Cooler', 'Intel', 'ChÅ‚odzenie Intel Cooler przeznaczone jest do procesorÃ³w intel core wszelkich generacji. Sprawdzi siÄ™ Å›wietnie w przypadku pracy biurowej. MoÅ¼e byÄ‡ nie wystarczajÄ…ce przy duÅ¼ym obciÄ…Å¼eniu zwÅ‚aszcza nowej generacji procesorÃ³w i7 i i9', 'zdj_aso/2/27/27.jpg', 2),
(28, 'SilentiumPC Fortis 3 HE', 'SilentiumPc', 'CHÅ‚odzenie Fortis 3 jest Å›wietnym wyborem dla niÅ¼szych obudÃ³w. WysokoÅ›Ä‡ to tylko 149mm. Zamontowany wentylator firmy Silentium Å›wietnie odprowadza ciepÅ‚o i cicho pracuje.', 'zdj_aso/2/28/28.jpg', 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `nr_zamowienia` int(10) UNSIGNED NOT NULL,
  `Klient` int(11) NOT NULL,
  `Cena_do_zaplaty` float UNSIGNED NOT NULL,
  `Data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` tinyint(1) NOT NULL COMMENT '0-6',
  `Ulica_i_numer` text COLLATE utf8_polish_ci NOT NULL,
  `Kod_pocztowy` text COLLATE utf8_polish_ci NOT NULL,
  `Miasto` text COLLATE utf8_polish_ci NOT NULL,
  `Telefon` text COLLATE utf8_polish_ci NOT NULL,
  `dostawa` text COLLATE utf8_polish_ci NOT NULL,
  `Imie` text COLLATE utf8_polish_ci NOT NULL,
  `Nazwisko` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia_produkty`
--

CREATE TABLE `zamowienia_produkty` (
  `id` int(10) UNSIGNED NOT NULL,
  `Produkt_id` int(11) NOT NULL,
  `Cena_produktu` float NOT NULL,
  `Ilosc` int(11) NOT NULL,
  `nr_zamowienia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `asortyment`
--
ALTER TABLE `asortyment`
  ADD KEY `polaczenie id z tabela produkty` (`id_produktu`);

--
-- Indexes for table `kategorie`
--
ALTER TABLE `kategorie`
  ADD PRIMARY KEY (`id_kategorii`);

--
-- Indexes for table `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`id_klienta`);

--
-- Indexes for table `produkty`
--
ALTER TABLE `produkty`
  ADD PRIMARY KEY (`id_produktu`),
  ADD KEY `Kategorie` (`Kategoria`);

--
-- Indexes for table `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`nr_zamowienia`);

--
-- Indexes for table `zamowienia_produkty`
--
ALTER TABLE `zamowienia_produkty`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `kategorie`
--
ALTER TABLE `kategorie`
  MODIFY `id_kategorii` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT dla tabeli `klienci`
--
ALTER TABLE `klienci`
  MODIFY `id_klienta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT dla tabeli `produkty`
--
ALTER TABLE `produkty`
  MODIFY `id_produktu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `nr_zamowienia` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=752202;
--
-- AUTO_INCREMENT dla tabeli `zamowienia_produkty`
--
ALTER TABLE `zamowienia_produkty`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `asortyment`
--
ALTER TABLE `asortyment`
  ADD CONSTRAINT `polaczenie id z tabela produkty` FOREIGN KEY (`id_produktu`) REFERENCES `produkty` (`id_produktu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `produkty`
--
ALTER TABLE `produkty`
  ADD CONSTRAINT `Kategorie` FOREIGN KEY (`Kategoria`) REFERENCES `kategorie` (`id_kategorii`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
