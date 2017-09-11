-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 11 sep 2017 om 08:43
-- Serverversie: 5.7.14
-- PHP-versie: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blok1-am1a`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `acties`
--

CREATE TABLE `acties` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_code` varchar(60) NOT NULL,
  `product_name` varchar(60) NOT NULL,
  `product_desc` varchar(600) NOT NULL,
  `product_img_name` varchar(60) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `aantalKeerVerhuurd` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `acties`
--

INSERT INTO `acties` (`id`, `product_code`, `product_name`, `product_desc`, `product_img_name`, `price`, `aantalKeerVerhuurd`) VALUES
(1, 'PD1013', 'Carmona Macrophylla', 'Deze soort is erg gewild vanwege zijn prachtige kleine witte stervormige bloemen. De boom kan wel 9 maanden doorbloeien met steeds nieuwe bloemen. De blaadjes zijn klein, hebben een prachtige glans en de boom is zeer compact van groeiwijze.', 'CarmonaMacrophylla.jpg', '17', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `artikelvandedag`
--

CREATE TABLE `artikelvandedag` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_code` varchar(60) NOT NULL,
  `product_name` varchar(60) NOT NULL,
  `product_desc` varchar(600) NOT NULL,
  `product_img_name` varchar(60) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `discount` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `naam` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `vraag` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `contact`
--

INSERT INTO `contact` (`id`, `naam`, `email`, `vraag`) VALUES
(1, 'Faaraz', 'Faaraz_r@Live.nl', 'test'),
(2, 'Faaraz Rasolzadeh', 'Faarazfinaltest@live.nl', 'Jamanbroer');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `favorieten`
--

CREATE TABLE `favorieten` (
  `id` int(10) UNSIGNED NOT NULL,
  `klantid` int(11) NOT NULL,
  `ProductCode` varchar(50) NOT NULL,
  `ProductNaam` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `favorieten`
--

INSERT INTO `favorieten` (`id`, `klantid`, `ProductCode`, `ProductNaam`) VALUES
(3, 127, 'PD1013', 'Carmona Macrophylla'),
(2, 127, 'PD1015', 'Acer Palmatum'),
(4, 127, 'PD1014', 'Ulmus Chinensis'),
(5, 147, 'PD1013', 'Carmona Macrophylla'),
(6, 147, 'PD1014', 'Ulmus Chinensis'),
(7, 159, 'PD1013', 'Carmona Macrophylla'),
(8, 160, 'PD1013', 'Carmona Macrophylla'),
(9, 160, 'PD1014', 'Ulmus Chinensis'),
(10, 160, 'PD1015', 'Acer Palmatum'),
(11, 161, 'PD1013', 'Carmona Macrophylla'),
(12, 161, 'PD1014', 'Ulmus Chinensis'),
(13, 127, 'PD1013', 'Carmona Macrophylla'),
(14, 127, 'PD1014', 'Ulmus Chinensis');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `klachten`
--

CREATE TABLE `klachten` (
  `id` int(10) UNSIGNED NOT NULL,
  `naam` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `klantid` int(10) NOT NULL,
  `klachtreden` varchar(60) NOT NULL,
  `klacht` varchar(500) NOT NULL,
  `ordernummer` varchar(100) DEFAULT NULL,
  `klachtstatus` varchar(50) NOT NULL,
  `klachtbeoordeling` varchar(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `klachten`
--

INSERT INTO `klachten` (`id`, `naam`, `email`, `klantid`, `klachtreden`, `klacht`, `ordernummer`, `klachtstatus`, `klachtbeoordeling`) VALUES
(11, 'Faaraz', 'testlord1@live.nl', 159, 'Specific Product', 'mijn product is niet leuk', '', 'klaar', 'Zeurende klacht'),
(12, 'Faaraz Rasolzadeh', 'Faarazfinaltest@live.nl', 160, 'Order', 'Jamanbroer mn order is niet goed fix die shit dan a matsko', '41', 'klaar', 'Zeurende klacht'),
(13, 'Acceptatietest 2', 'Acceptatietest2@live.nl', 161, 'Your Account', 'It doesn\'t work', '', 'openstaand', ' '),
(6, 'Tester', 'Tester@tester.nl', 127, 'Your Account', 'Mijn account werkt niet goed ', '', 'klaar', 'Onterechte Klacht'),
(4, 'Faaraz', 'Faaraz_R@live.nl', 127, 'Your Account', 'Your account test', '', 'klaar', 'Klacht over de prijs'),
(5, 'Tester', 'Faaraz_r@live.nl', 127, 'Your Account', 'JSHDJKASDHJASKDHASJDHASKJD', '', 'in behandeling', '0'),
(9, 'kinggtest testkingg', 'kinggtest@live.nl', 147, 'Your Account', 'doet het niet', '', 'in behandeling', 'Klacht over de prijs'),
(10, 'jajsdakjdl', 'Faaraz_r@Live.nl', 127, 'Specific Product', 'sadsadasdaskdjaskldaskldatest', '', 'klaar', 'Zeurende klacht'),
(14, 'Faaraz', 'trst@test.nl', 127, 'Your Account', 'sdadasdadasd', '', 'openstaand', ' '),
(15, 'Faaraz Rasolzadeh', 'Faaraz_cgi@live.nl', 162, 'Website', 'Website werkt te goed', '', 'openstaand', ' '),
(16, 'Faaraz Rasolzadeh', 'Faaraz_r@cgi.nl', 162, 'Your Account', 'Mijn account werkt niet goed', '', 'klaar', 'Onterechte Klacht');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `klanten`
--

CREATE TABLE `klanten` (
  `id` int(10) UNSIGNED NOT NULL,
  `klantid` int(10) NOT NULL,
  `postcode` varchar(6) NOT NULL,
  `straathuisnummer` varchar(50) NOT NULL,
  `woonplaats` varchar(50) NOT NULL,
  `betaalwijze` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `klanten`
--

INSERT INTO `klanten` (`id`, `klantid`, `postcode`, `straathuisnummer`, `woonplaats`, `betaalwijze`) VALUES
(2, 140, '3962KN', 'Virgilius 20', 'Wijk bij Duurstede', ''),
(3, 141, '6666JA', 'virgilius 2', 'wijk bij duurstede', ''),
(4, 142, '3962KN', 'virgilius 20', 'wijk bij duurstede', ''),
(5, 143, '3962KN', 'virgilius 0', 'wijk bij duurstede', ''),
(6, 143, '3962KN', 'virgilius 20', 'wijk bij duurstede', ''),
(7, 145, '3962KN', 'Virgilius 20', 'Wijk bij Duurstede', ''),
(8, 146, '3962KN', 'Virgilius 20', 'Wijk bij Duurstede', ''),
(9, 147, '3962KN', 'Virgilius 20', 'wijk bij duurstede', ''),
(10, 148, '3962KN', 'virgilius 20', 'Wijk bij Duurstede', 'paypal'),
(11, 149, '3962KN', 'Virgilius 20', 'Wijk bij Duurstede', 'paypal'),
(12, 151, '1234AB', 'Finaltest 1', 'Finaltest', 'paypal'),
(13, 152, '1234AB', 'Acceptatielaan 20 ', 'Acceptatie', 'paypal'),
(14, 153, '3962KN', 'virgilius 20', 'wijk bij duurstede', 'paypal'),
(15, 159, '3962KN', 'Virgilius 20', 'wijk bij duurstede', 'paypal'),
(16, 160, '3962KN', 'Virgilius 20', 'Wijk bij Duurstede', 'paypal'),
(17, 161, '3962KN', 'Virgilius 20', 'Wijk bij Duurstede', 'paypal'),
(18, 162, '3962KN', 'Virgilius 20', 'Wijk bij Duurstede', 'paypal');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `login`
--

CREATE TABLE `login` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `userrole` enum('root','administrator','photographer','customer','developer','zaalbeheerder') NOT NULL DEFAULT 'customer',
  `activated` enum('yes','no') NOT NULL DEFAULT 'no',
  `activationdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `login`
--

INSERT INTO `login` (`id`, `email`, `password`, `userrole`, `activated`, `activationdate`) VALUES
(94, 'm@m.nl', 'e8636ea013e682faf61f56ce1cb1ab5c', 'customer', 'yes', '2015-01-12 09:13:01'),
(96, 'administrator@gmail.com', 'e8636ea013e682faf61f56ce1cb1ab5c', 'administrator', 'yes', '2015-01-16 10:09:10'),
(97, 'root@gmail.com', 'e8636ea013e682faf61f56ce1cb1ab5c', 'root', 'yes', '2015-01-16 10:09:44'),
(98, 'photographer@gmail.com', 'e8636ea013e682faf61f56ce1cb1ab5c', 'photographer', 'yes', '2015-01-16 10:10:14'),
(99, 'developer@gmail.com', 'e8636ea013e682faf61f56ce1cb1ab5c', 'developer', 'yes', '2015-01-16 10:12:19'),
(100, 'p@p.nl', '79f3bc8ff611b8a61db05159b419a3b1', 'customer', 'no', '2015-01-19 10:39:47'),
(101, 'peter@p.nl', 'e8636ea013e682faf61f56ce1cb1ab5c', 'customer', 'yes', '2015-01-19 10:40:12'),
(102, 'hvanderpley@gmail.com', 'e8636ea013e682faf61f56ce1cb1ab5c', 'customer', 'yes', '2015-01-23 13:39:46'),
(103, 'bertvanwagendonk@gmail.com', '772a412d385a889add7fc31cfece6d19', 'customer', 'no', '2015-01-26 10:10:52'),
(104, 'jdeb@gmail.com', 'e8636ea013e682faf61f56ce1cb1ab5c', 'customer', 'yes', '2015-01-26 10:19:55'),
(105, 'lvanl@gmail.com', '4e3f24dc03ba6c9b3806ef1a64e46a45', 'customer', 'no', '2015-01-26 10:45:48'),
(106, 'tvana@gmail.com', 'e8636ea013e682faf61f56ce1cb1ab5c', 'customer', 'yes', '2015-01-26 10:54:57'),
(107, 'DSADADASDA@DSADAS.NL', 'cf95b7920a9d2283278b4782733aba5b', 'customer', 'no', '2016-05-13 14:05:57'),
(108, 'DASDASD@DSADJSAKD.NL', 'b7b3d474487015b241b6eb80608845b9', 'customer', 'no', '2016-05-13 14:06:16'),
(109, 'sadada@sada', 'ca91704832e8031ceae56612ddd4614c', 'customer', 'yes', '2016-05-13 14:10:01'),
(110, 'adsad@sadasdsa.nl', 'dec3f317c2f4749bdf54cc2b8a59c7ff', 'customer', 'no', '2016-05-13 14:21:28'),
(111, 'sadas@dsadas.nl', 'd3da26ee7f076787e9eee3e1f6c86d78', 'customer', 'yes', '2016-05-13 14:54:19'),
(112, 'jhsakdja@jadsakd.nl', '098f6bcd4621d373cade4e832627b4f6', 'customer', 'yes', '2016-05-13 15:13:56'),
(113, 'TestLogin@test.nl', '68eacb97d86f0c4621fa2b0e17cabd8c', 'customer', 'yes', '2016-05-13 15:25:44'),
(114, 'TestLoginClass@test.nl', '917e9bfedcbbc14640673554c77fc9b6', 'customer', 'no', '2016-06-01 13:47:44'),
(115, 'dsadsd@email.nl', '2ca16174c32fff70db9936f0fc7b3a34', 'customer', 'no', '2016-06-01 13:56:32'),
(116, 'sssss@sssssss.nl', 'ca91704832e8031ceae56612ddd4614c', 'customer', 'yes', '2016-06-01 14:51:52'),
(117, 'Faaraz_r@Live.nl', 'ca91704832e8031ceae56612ddd4614c', 'customer', 'yes', '2016-06-01 15:12:50'),
(118, 'Faarazwow2@Hotmail.com', '4a8a3d14723e4c2f243cdcd6eb7992d6', 'customer', 'no', '2016-06-02 17:12:24'),
(119, 'Faarazwow@Live.nl', 'ca91704832e8031ceae56612ddd4614c', 'customer', 'yes', '2016-06-02 17:12:44'),
(120, 'testee@test.nl', '7d3278dd297f9c41c4227c6448336bef', 'customer', 'no', '2016-06-02 17:15:27'),
(121, 'Faaraz2@s.nl', '3999cc1c6c1d69423e885532b4a7c0b8', 'customer', 'no', '2016-06-02 18:31:43'),
(122, 'thing0954@Hotmail.com', '6be0f8c96bcc1f7375370e342e1bdfd7', 'customer', 'no', '2016-06-02 18:34:17'),
(123, 'Faarazaa@hotmail.com', '4b8fcc9a8a372fd4e9be3c49000d10ea', 'customer', 'no', '2016-06-02 18:40:22'),
(124, 'KA@mailc.nl', '4e0ad5d85c5da6cbbb9465dc7b3b9d54', 'customer', 'no', '2016-06-02 18:41:11'),
(125, 'asa@asa.nl', '4bc0044e9608e1e39fe3d20719567a01', 'customer', 'no', '2016-06-02 18:42:44'),
(126, 'aaaaaaa@aaaaa.nl', '049e29fe09cd7c42d3df797fb31b395f', 'customer', 'yes', '2016-06-02 18:45:13'),
(127, 'Faaraz_rr@live.nl', 'ca91704832e8031ceae56612ddd4614c', 'customer', 'yes', '2016-06-02 18:47:15'),
(128, 'testuser1@gmail.com', 'e0122d9dc14278ee7956e3e0ef9a6e15', 'customer', 'no', '2017-05-29 20:14:43'),
(129, 'testuserfaaraz@hotmail.com', 'ca91704832e8031ceae56612ddd4614c', 'customer', 'yes', '2017-05-29 20:16:21'),
(130, 'Faaraztestuser@gmail.com', 'ca91704832e8031ceae56612ddd4614c', 'customer', 'yes', '2017-05-29 21:13:00'),
(132, 'Verkoopleidster@hotmail.com', 'ca91704832e8031ceae56612ddd4614c', 'zaalbeheerder', 'yes', '2017-06-08 11:46:28'),
(133, 'Ivo@gmail.com', '20e04899c46cd16355f0f2ca77fa83b9', 'customer', 'yes', '2017-06-09 13:16:48'),
(134, 'pleasejustwork@hotmail.com', 'f15b13067d5fa130b16b240d8b2b5307', 'customer', 'no', '2017-06-11 20:29:44'),
(135, 'testkko@live.nl', '76374ba6961d9fbd463ec2ab5c972e41', 'customer', 'no', '2017-06-11 22:30:27'),
(136, 'faaraztestingtwo@live.nl', 'ca91704832e8031ceae56612ddd4614c', 'customer', 'yes', '2017-06-13 11:02:35'),
(137, 'frztesting@live.nl', 'e2e5d16c17c05dd2d9d5412626f31c7d', 'customer', 'no', '2017-06-13 11:13:47'),
(138, 'faaraztestingplswork@live.nl', 'ca91704832e8031ceae56612ddd4614c', 'customer', 'yes', '2017-06-13 11:57:34'),
(139, 'Rozay@live.nl', 'ca91704832e8031ceae56612ddd4614c', 'customer', 'yes', '2017-06-13 11:59:34'),
(140, 'Juniormafia@live.nl', 'ca91704832e8031ceae56612ddd4614c', 'customer', 'yes', '2017-06-13 12:01:48'),
(141, 'testfinal@live.nl', 'ca91704832e8031ceae56612ddd4614c', 'customer', 'yes', '2017-06-13 12:03:35'),
(142, 'testerkla@live.nl', 'ca91704832e8031ceae56612ddd4614c', 'customer', 'yes', '2017-06-13 12:27:47'),
(143, 'purpledrankx@live.nl', 'ca91704832e8031ceae56612ddd4614c', 'customer', 'yes', '2017-06-13 12:29:26'),
(145, 'test007@live.nl', 'ca91704832e8031ceae56612ddd4614c', 'customer', 'yes', '2017-06-13 12:34:53'),
(146, 'testking@live.nl', 'ca91704832e8031ceae56612ddd4614c', 'customer', 'yes', '2017-06-13 12:44:42'),
(147, 'kinggtest@live.nl', 'ca91704832e8031ceae56612ddd4614c', 'customer', 'yes', '2017-06-13 12:49:38'),
(148, 'emailadres123@live.nl', 'ca91704832e8031ceae56612ddd4614c', 'customer', 'yes', '2017-06-15 09:47:25'),
(149, 'Testuser50@Live.nl', 'ca91704832e8031ceae56612ddd4614c', 'customer', 'yes', '2017-06-15 10:18:33'),
(150, 'fjaklfjsk@Live.nl', '0d3d674491d6d5ed50b660a380aa8c79', 'customer', 'no', '2017-06-15 10:41:43'),
(151, 'finaltest@live.nl', 'e1b849f9631ffc1829b2e31402373e3c', 'customer', 'yes', '2017-06-15 11:18:30'),
(152, 'Acceptatietest@live.nl', 'e1b849f9631ffc1829b2e31402373e3c', 'customer', 'yes', '2017-06-15 11:31:08'),
(153, 'tester189@live.nl', 'ca91704832e8031ceae56612ddd4614c', 'customer', 'yes', '2017-06-18 15:22:20'),
(154, 'Faara@live.nl', 'b04eb0f2c69dfe48ccc0d91630e56167', 'customer', 'no', '2017-06-18 15:29:55'),
(155, 'namestest@live.nl', '4583f7d4e269fd29a0b14beeea53fa2b', 'customer', 'no', '2017-06-18 16:24:29'),
(156, 'usernametest@live.nl', 'f48e9a1bbc908c5d5536b8605ed7681f', 'customer', 'no', '2017-06-18 16:25:27'),
(157, 'namestesta@live.nl', '322bb3cc73864e7ae2b7196ffc163e7c', 'customer', 'no', '2017-06-18 16:26:46'),
(158, 'tlakjlatest@live.nl', '72f471260182894802f88a051df396bc', 'customer', 'no', '2017-06-18 16:27:08'),
(159, 'testlord1@live.nl', 'ca91704832e8031ceae56612ddd4614c', 'customer', 'yes', '2017-06-18 16:28:49'),
(160, 'Faarazfinaltest@live.nl', 'ca91704832e8031ceae56612ddd4614c', 'customer', 'yes', '2017-06-21 12:47:29'),
(161, 'Acceptatietest2@live.nl', 'ca91704832e8031ceae56612ddd4614c', 'customer', 'yes', '2017-06-22 09:36:45'),
(162, 'Faaraz_cgi@live.nl', 'ca91704832e8031ceae56612ddd4614c', 'customer', 'yes', '2017-09-06 19:55:16');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `optreden`
--

CREATE TABLE `optreden` (
  `id` int(10) UNSIGNED NOT NULL,
  `naam` varchar(100) NOT NULL,
  `beschrijving` varchar(100) NOT NULL,
  `aantalKaarten` int(11) NOT NULL DEFAULT '100'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `optreden`
--

INSERT INTO `optreden` (`id`, `naam`, `beschrijving`, `aantalKaarten`) VALUES
(1, 'OfMice&Men', 'Metal Band', 96),
(2, 'Asking Alexandria', 'Metal Band Asking Alexandria', 98),
(3, 'Bring me the Horizon', 'Metal Band Bring me the Horizon', 99),
(4, 'Crown the Empire', 'Metal band Crown the Empire', 99),
(5, 'Adept', 'Metal Band Adept', 99);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `klantid` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `bezorgdatum` varchar(50) NOT NULL,
  `bezorgtijd` varchar(50) NOT NULL,
  `productnaam` varchar(500) NOT NULL,
  `productcode` varchar(5000) NOT NULL,
  `price` varchar(50) NOT NULL,
  `usercomments` varchar(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `orders`
--

INSERT INTO `orders` (`id`, `klantid`, `createdAt`, `name`, `surname`, `bezorgdatum`, `bezorgtijd`, `productnaam`, `productcode`, `price`, `usercomments`) VALUES
(22, 147, '2017-06-13 10:56:37', 'faaraz', 'rasolzadeh', '2-07-2017', '15:00', 'Ulmus Chinensis, Azalea', 'PD1014, PD1006', '46.5', ''),
(21, 147, '2017-06-13 08:51:24', 'Kinggtest', 'Testkingg', '27-06-2017', '12:30', 'Carmona Macrophylla, Ulmus Chinensis', 'PD1013, PD1014', '36', ''),
(20, 127, '2017-06-13 08:23:48', 'Faaraz', 'Rasolzadeh', '21-06-2017', '15:30', 'Carmona Macrophylla, Acer Palmatum, Azalea', 'PD1013, PD1015, PD1006', '66', ''),
(23, 127, '2017-06-15 07:42:32', 'Faaraz', 'Rasolzadeh', '11:00', '20-06-2017', 'Carmona Macrophylla, Ulmus Chinensis', 'PD1013, PD1014', '36', ''),
(24, 127, '2017-06-15 07:43:21', 'Faaraz', 'Rasolzadeh', '14:00', '21-06-2017', 'Carmona Macrophylla', 'PD1013', '18.5', ''),
(25, 127, '2017-06-15 07:44:39', 'test', 'test', '22-06-2017', '9:00', 'Carmona Macrophylla', 'PD1013', '18.5', ''),
(26, 127, '2017-06-15 07:45:17', 'faaraz', 'rasolzadeh', '23-06-2017', '15:00', 'Carmona Macrophylla', 'PD1013', '18.5', 'Test                        '),
(27, 127, '2017-06-15 08:14:25', 'Faaraz', 'Rasolzadeh', '29-06-2017', '13:20', 'Carmona Macrophylla, Azalea', 'PD1013, PD1006', '46', ''),
(30, 149, '2017-06-15 08:28:18', 'Faaraz', 'Rasolzadeh', '24-06-2017', '10:20', 'Carmona Macrophylla, Ulmus Chinensis', 'PD1013, PD1014', '36', ''),
(31, 127, '2017-06-15 09:11:00', 'Faaraz', 'Rasolzadeh', '19-06-2017', '13:00', 'Carmona Macrophylla, Ulmus Chinensis', 'PD1013, PD1014', '36', ''),
(32, 151, '2017-06-15 09:19:46', 'Final', 'Test', '22-06-2017', '12:30', 'Carmona Macrophylla, Ulmus Chinensis', 'PD1013, PD1014', '36', ''),
(33, 152, '2017-06-15 09:36:14', 'Acceptatie', 'Test', '18-06-2017', '13:00', 'Carmona Macrophylla, Ulmus Chinensis', 'PD1013, PD1014', '36', ''),
(34, 127, '2017-06-18 13:51:17', 'Faaraz', 'Rasolzadeh', '1-07-2017', '14:00', 'Carmona Macrophylla, Ulmus Chinensis', 'PD1013, PD1014', '36', ''),
(35, 127, '2017-06-18 13:52:39', 'Faaraz', 'Rasolzadeh', '2-07-2017', '14:00', 'Carmona Macrophylla, Ulmus Chinensis, Acer Palmatum', 'PD1013, PD1014, PD1015', '56', ''),
(36, 127, '2017-06-18 13:53:48', 'Faaraz', 'Rasolzadeh', '07/03/2017', '14:00', 'Carmona Macrophylla, Ulmus Chinensis, Acer Palmatum', 'PD1013, PD1014, PD1015', '56', ''),
(37, 127, '2017-06-18 13:55:38', 'Faaraz', 'Rasolzadeh', '07/04/2017', '14:00', 'Carmona Macrophylla, Ulmus Chinensis', 'PD1013, PD1014', '36', ''),
(38, 127, '2017-06-18 14:04:25', 'Faaraz', 'Rasolzadeh', '07/05/2017', '14:00', 'Carmona Macrophylla, Ulmus Chinensis', 'PD1013, PD1014', '36', ''),
(39, 159, '2017-06-18 14:40:38', 'Faaraz', 'Rasolzadeh', '07/06/2017', '14:00', 'Carmona Macrophylla, Ulmus Chinensis, Acer Palmatum', 'PD1013, PD1014, PD1015', '56', ''),
(40, 127, '2017-06-18 15:03:48', 'Faaraz', 'Rasolzadeh', '07/10/2017', '14:00', 'Carmona Macrophylla, Ulmus Chinensis', 'PD1013, PD1014', '36', ''),
(41, 160, '2017-06-21 10:49:53', 'Faaraz', 'Rasolzadeh', '07/15/2017', '14:00', 'Carmona Macrophylla, Ulmus Chinensis, Acer Palmatum', 'PD1013, PD1014, PD1015', '56', ''),
(42, 161, '2017-06-22 07:38:54', 'Acceptatie', 'Test2', '07/17/2017', '14:00', 'Carmona Macrophylla, Ulmus Chinensis, Acer Palmatum', 'PD1013, PD1014, PD1015', '56', ''),
(43, 127, '2017-06-23 23:34:01', 'Faaraz', 'Rasolzadeh', '07/21/2017', '14:00', 'Carmona Macrophylla, Ulmus Chinensis', 'PD1013, PD1014', '36', ''),
(44, 127, '2017-09-03 15:40:53', 'Faaraz', 'Rasolzadeh', '09/29/2017', '14:00', 'Carmona Macrophylla, Ulmus Chinensis', 'PD1013, PD1014', '36', ''),
(45, 127, '2017-09-05 09:55:51', 'Faaraz', 'Rasolzadeh', '09/20/2017', '13:00', 'Carmona Macrophylla, Ulmus Chinensis', 'PD1013, PD1014', '36', ''),
(46, 162, '2017-09-06 17:57:20', 'Faaraz', 'Rasolzadeh', '09/25/2017', '13:00', 'Carmona Macrophylla, Ulmus Chinensis', 'PD1013, PD1014', '36', ''),
(47, 162, '2017-09-07 09:00:22', 'Faaraz', 'Rasolzadeh', '09/05/2017', '13:00', 'Carmona Macrophylla, Ulmus Chinensis', 'PD1013, PD1014', '36', ''),
(48, 162, '2017-09-07 09:01:03', 'Faaraz', 'Rasolzadeh', '09/28/2017', '15:00', 'Carmona Macrophylla, Ulmus Chinensis', 'PD1013, PD1014', '36', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_foto` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `foto_path` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `product`
--

INSERT INTO `product` (`id`, `name_foto`, `description`, `foto_path`) VALUES
(1, 'Koala', 'Een harige Koala', 'http://localhost/2014-2015/InlogRegistratieSysteem/Les 1/Images/Koala.jpg'),
(2, 'Desert', 'De woestijn', 'http://localhost/2014-2015/InlogRegistratieSysteem/Les 1/Images/Desert.jpg');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_code` varchar(60) NOT NULL,
  `product_name` varchar(60) NOT NULL,
  `product_desc` varchar(600) NOT NULL,
  `product_img_name` varchar(60) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `aantalKeerVerhuurd` int(2) DEFAULT NULL,
  `artikelvandedag` int(1) NOT NULL,
  `discountOpen` varchar(50) NOT NULL,
  `discountClose` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `products`
--

INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_desc`, `product_img_name`, `price`, `aantalKeerVerhuurd`, `artikelvandedag`, `discountOpen`, `discountClose`) VALUES
(1, 'PD1013', 'Carmona Macrophylla', 'Deze soort is erg gewild vanwege zijn prachtige kleine witte stervormige bloemen. De boom kan wel 9 maanden doorbloeien met steeds nieuwe bloemen. De blaadjes zijn klein, hebben een prachtige glans en de boom is zeer compact van groeiwijze.', 'CarmonaMacrophylla.jpg', '17.00', 17, 0, '2017-08-22 00:00:00', '2017-08-22 00:00:00'),
(2, 'PD1014', 'Ulmus Chinensis', 'De Chinese Iep is de meest verkochte bonsai variëteit voor binnen. Hij kan ook buiten tot -5 graden en zal dan bladverliezend worden in de herfst. Het is een relatief sterke soort, stoot makkelijk een blaadje af maar groeit daardoor ook weer snel aan. De foto is beeldvormend en representatief voor een kleine partij vergelijkbare bonsai waar u er één uit ontvangt.', 'UlmusChinensis.jpg', '17.50', 45, 0, '2017-08-22 00:00:00', '2017-08-22 00:00:00'),
(3, 'PD1015', 'Acer Palmatum', 'Deze boomsoort hoort buiten en heeft de loop van de seizoenen nodig voor zijn groei en rust ritme. In de winter valt deze soort kaal, na een prachtige herfstverkleuring. In het voorjaar zal de boom weer uitlopen met nieuw fris blad.', 'AcerPalmatum.jpg', '20.00', 7, 0, '2017-08-22 00:00:00', '2017-08-22 00:00:00'),
(4, 'PD1004', 'Podocarpus', 'De kamerden of ook wel Boudha den genoemd. Met zijn slanke lange blaadjes heeft de boom iets weg van een dennenboom. Een soort die zowel binnen als buiten kan met een grens rond de -5graden celcius. De foto is beeldvormend en representatief voor een kleine partij vergelijkbare bonsai waar u er één uit ontvangt.', 'Podocarpus.jpg', '16.50', 11, 0, '2017-08-22 00:00:00', '2017-08-22 00:00:00'),
(5, 'PD1005', 'Ligustrum Chinensis', 'De Ligustrum Chinensis is een zeer sterke soort, bladhoudend met mooi licht goren blad. Foto is representatief voor een kleine partij bonsai, het geleverde exemplaar kan iets afwijken. De geschatte leeftijd van deze Bonsai boom is 5-7 jaar.', 'LigustrumChinensis.jpg', '25.00', 9, 1, '2017-08-22 11:00:00', '2017-08-22 13:00:00'),
(6, 'PD1006', 'Azalea', 'Roze-paars bloemkleur, bloeit in april-mei. Winterhard. De foto is beeldvormend en representatief voor een kleine partij vergelijkbare bonsai waar u er één uit ontvangt.', 'Azalea.jpg', '27.50', 9, 0, '2017-08-22 00:00:00', '2017-08-22 00:00:00');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `shopping`
--

CREATE TABLE `shopping` (
  `id` int(10) UNSIGNED NOT NULL,
  `item` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `shopping`
--

INSERT INTO `shopping` (`id`, `item`) VALUES
(1, 'Kleren kopen'),
(2, 'Schoenen kopen'),
(3, 'Basketbalschoenen Kopen'),
(4, ''),
(5, ''),
(6, 'Zonnenbril kopen'),
(7, 'Zwembroek kopen'),
(8, 'iets anders kopen??'),
(9, ''),
(10, 'test'),
(11, 'ajax'),
(12, 'ajax'),
(13, 'test2'),
(14, 'test2'),
(15, 'test2'),
(16, ''),
(17, ''),
(18, 'piet');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tempusers`
--

CREATE TABLE `tempusers` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `tempusers`
--

INSERT INTO `tempusers` (`id`, `firstname`, `lastname`) VALUES
(1, 'Faaraz', 'Rasolzadeh'),
(2, 'Faaraz', 'Rasolzadeh'),
(3, 'Acceptatie', 'Test2'),
(4, 'Faaraz', 'Rasolzadeh');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `user`
--

CREATE TABLE `user` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `voornaam` varchar(50) NOT NULL,
  `tussenvoegsel` varchar(15) NOT NULL,
  `achternaam` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `user`
--

INSERT INTO `user` (`id`, `voornaam`, `tussenvoegsel`, `achternaam`) VALUES
(1, 'Peter R.', 'de', 'Vries'),
(4, 'Bertus', 'van', 'Marwijk'),
(5, 'Kees', 'de', 'Vries'),
(6, 'Joop', 'de', 'Echelenstein'),
(9, 'Johan', 'van', 'Echelenstein'),
(11, 'Bert ', 'de', 'Vries'),
(26, 'Bert', 'van', 'Randwijk');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `item` varchar(500) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `infix` varchar(50) NOT NULL,
  `lastname` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `item`, `firstname`, `infix`, `lastname`) VALUES
(0, 'randomitem1', '', '', ''),
(1, 'randomitem1', '', '', ''),
(2, 'randomitem2', '', '', ''),
(3, 'randomitem3', '', '', ''),
(4, 'randomitem4', '', '', ''),
(5, 'randomitem5', '', '', ''),
(6, 'randomitem6', '', '', ''),
(107, '', 'SDASDAS', 'SADADAS', 'ASDSADSA'),
(108, '', 'testET', 'EA', 'ASDAS'),
(109, '', 'tesa', 'adasd', 'ada'),
(110, '', 'asdad', 'adad', 'dada'),
(111, '', 'asdadsa', 'dsadada', 'dsadad'),
(112, '', 'hsdakjsdj', 'jhsdakdjadh', 'sjakhdahkjs'),
(113, '', 'Test123', 'Test1234', 'Test123456'),
(114, '', 'Tester12', '', 'Tester134'),
(115, '', 'asdadad', 'dadad', 'dsadsadad'),
(116, '', 'ssssss', 'sssssss', 'sssssssss'),
(117, '', 'Faaraz', '', 'Rasolzadeh'),
(118, '', 'Faaraz', '', 'Rasolzadeh'),
(119, '', 'Faaraz', '', 'Rasolzadeh'),
(120, '', 'Teste', '', 'test'),
(121, '', 'Faaraz', '', 'Rasolzadehh'),
(122, '', 'Faaraz', '', 'Rassolzzadehh'),
(123, '', 'Faaraz', '', 'Rasolzadeh'),
(124, '', 'Faaarazz', '', 'AAA'),
(125, '', 'Faraz', '', 'asa'),
(126, '', 'Faarazaa', 'aaa', 'aaaa'),
(127, '', 'Faaraz', '', 'Rasolzadeh'),
(128, '', 'Parvaneh', '', 'Ebrahim Malayeri'),
(132, '', 'Verkoopleidster', '', 'Verkoop'),
(133, '', 'Colin', '', 'Conimex'),
(147, ' ', 'testkingg', ' ', 'kinggtest'),
(148, ' ', 'faaraz', ' ', 'rasolzadeh'),
(149, ' ', 'Faaraz', ' ', 'Rasolzadeh'),
(151, ' ', 'final', ' ', 'test'),
(152, ' ', 'Acceptatie', ' ', 'Test'),
(153, ' ', 'faaraz', ' ', 'rasolzadeh'),
(159, ' ', 'Faaraz', ' ', 'Rasolzadeh'),
(160, ' ', 'Faaraz', ' ', 'Rasolzadeh'),
(161, ' ', 'Acceptatie', ' ', 'Test2'),
(162, ' ', 'Faaraz', ' ', 'Rasolzadeh');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `userstoetself`
--

CREATE TABLE `userstoetself` (
  `id` int(10) UNSIGNED NOT NULL,
  `item` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `userstoetself`
--

INSERT INTO `userstoetself` (`id`, `item`) VALUES
(1, 'Kleren kopen'),
(2, 'Schoenen kopen'),
(3, 'Eten kopen'),
(4, 'Broeken kopen'),
(5, 'Nieuwe zonnenbril kopen'),
(6, 'Basketbal schoenen kopen'),
(7, 'ajax'),
(27, 'monsterdenni'),
(28, '');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `artikelvandedag`
--
ALTER TABLE `artikelvandedag`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `favorieten`
--
ALTER TABLE `favorieten`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `klachten`
--
ALTER TABLE `klachten`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `klanten`
--
ALTER TABLE `klanten`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `optreden`
--
ALTER TABLE `optreden`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`product_code`);

--
-- Indexen voor tabel `shopping`
--
ALTER TABLE `shopping`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `tempusers`
--
ALTER TABLE `tempusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `userstoetself`
--
ALTER TABLE `userstoetself`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `artikelvandedag`
--
ALTER TABLE `artikelvandedag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT voor een tabel `favorieten`
--
ALTER TABLE `favorieten`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT voor een tabel `klachten`
--
ALTER TABLE `klachten`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT voor een tabel `klanten`
--
ALTER TABLE `klanten`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT voor een tabel `login`
--
ALTER TABLE `login`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;
--
-- AUTO_INCREMENT voor een tabel `optreden`
--
ALTER TABLE `optreden`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT voor een tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT voor een tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT voor een tabel `shopping`
--
ALTER TABLE `shopping`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT voor een tabel `tempusers`
--
ALTER TABLE `tempusers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT voor een tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT voor een tabel `userstoetself`
--
ALTER TABLE `userstoetself`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
