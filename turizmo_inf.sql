-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2019 at 08:39 AM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `turizmo_inf`
--

-- --------------------------------------------------------

--
-- Table structure for table `ist_ivykiai`
--

CREATE TABLE `ist_ivykiai` (
  `id` int(10) UNSIGNED NOT NULL,
  `data` date NOT NULL,
  `pav` varchar(256) COLLATE utf8_lithuanian_ci NOT NULL,
  `aprasymas` text COLLATE utf8_lithuanian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lankyt_vietos`
--

CREATE TABLE `lankyt_vietos` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_miesto` int(10) UNSIGNED NOT NULL,
  `tipas` enum('piliakalniai','muziejai','ist_vietos','krastovaizdis','architektura','baznycios') COLLATE utf8_lithuanian_ci NOT NULL,
  `pav` varchar(256) COLLATE utf8_lithuanian_ci NOT NULL,
  `aprasymas` text COLLATE utf8_lithuanian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `lankyt_vietos`
--

INSERT INTO `lankyt_vietos` (`id`, `id_miesto`, `tipas`, `pav`, `aprasymas`) VALUES
(1, 10, 'baznycios', 'Ignalinos Švč. Mergelės Marijos Gimimo bažnyčia', 'pastatyta 1999 m.'),
(2, 10, 'architektura', 'geležinkelio stotis', 'aikštėje – 19 m aukščio paminklas tremtiniams, pastatytas 1989 m., autoriai Juozapas Jakštas ir Valdas Ozarinskas),'),
(4, 9, 'architektura', 'Druskininkų senamiestis ', 'urbanistikos paminklas'),
(5, 9, 'architektura', 'Lynų kelias.', '2015 m. virš Nemuno įrengtas'),
(6, 1, 'architektura', 'Kauno pilis', 'Santakos gyvenvietės teritorijoje XIV a. viduryje buvo pastatyta mūrinė Kauno pilis'),
(7, 2, 'architektura', 'Vilniaus senamiestis', 'vienas didžiausių Rytų Europoje ir 1994 m. įtrauktas į UNESCO Pasaulio paveldo sąrašą'),
(8, 3, 'muziejai', 'Lietuvos jūrų muziejus', 'nuo 1979 metų veikiantis muziejus Kuršių nerijos šiauriausiame taške, Kopgalyje, Smiltynės g. 3 (Klaipėda). Nuo 1994 metų veikia Delfinariumas. Muziejaus rinkiniuose saugomi 60.062 eksponatų vienetai. Didžiausias rinkinys – jūrų faunos preparatai (moliuskų kriauklės, koralai, vėžiagyviai, dygiaodžiai, jūrų paukščiai, žuvys ir žinduoliai). Jame yra 19 787 vienetai. Muziejaus rinkiniuose yra ir geologijos, archeologijos, etnografijos, numizmatikos, kartografijos, laivų technikos, raštijos, filatelijos eksponatų. Gyvų eksponatų – 957 gyvūnai. Muziejus užima ~ 33.000 m² plotą.[1] 2008 m. dirbo apie 100 darbuotojų.[2] Per 20 metų muziejaus gyvavimo laikotarpį jį aplankė 9 mln. lankytojų.[3] Iki 2008 m. muziejų kasmet aplankydavo ~ 500 tūkst. lankytojų, vėliau ~ 300 tūkst., uždarius delfinariumą jų dar sumažėjo, 2011 m. muziejų aplankė ~ 100 tūkst. lankytojų.[4][5] Muziejus pavaldus Kultūros ministerijai.[6] Be muziejaus rinkinių eksponavimo muziejuje aktyviai vykdomos ir įvairios edukacinės programos'),
(9, 3, 'architektura', 'Klaipėdos pilis', 'Klaipėdos pilis arba Mėmelburgas (vok. Memelburg) – pilis Klaipėdoje, pirmą kartą minima 1252 m. liepos 29 d. dokumente, kuriame Livonijos ordino didysis magistras Eberhardas fon Zeinė ir Kuršo vyskupas Heinrichas sutaria dėl pilies statybos tarp Nemuno ir Dangės. Tais pačiais metais prie Dangės žiočių pastatyta medinė pilis. Vėliau daug kartų perstatyta, kol XIX a., praradusi savo strateginę reikšmę, buvo nugriauta.\r\n\r\nŠiuo metu išlikusiuose pilies bastionuose veikia muziejus'),
(10, 5, 'krastovaizdis', 'Rėkyvos ežeras', 'Rėkyvà (Rėkijavas) – ežeras šiaurės Lietuvoje, Šiaulių miesto savivaldybėje, apie 7 km į pietus nuo Šiaulių. Ežero rytinėje pakrantėje išsidėstę Bačiūnai, o po Antrojo pasaulinio karo išaugo energetikų gyvenvietė Rėkyva. Rėkyvos ežeras – didžiausias Lietuvoje vandenskyrinis ir vienintelis tokio dydžio aukštapelkinis ežeras. Jo plotas – 11,8 km²; maitinančio baseino plotas – 7,3 km²; didžiausias gylis – 4,8 m, vidutinis – 2,0 m. Ežeras neturi intakų, tačiau turi du dirbtinai reguliuojamus ištakus. Rėkyvos ežeras yra svarbus šiais požiūriais'),
(11, 6, 'architektura', 'Alytaus Šv. Liudviko bažnyčia', 'Lietuvos maršalka ir Trakų vaivada, Alytaus dvaro savininkas Jonas Zaberezinskis iki 1520 m. pastatydino bažnyčią. 1524 m. įkurta parapija. Kurį laiką bažnyčią lankė abiejų miesto dalių katalikai. Pagal fundacijos aktą bažnyčios vikaras privalėjo mokėti lietuvių kalbą. 1658 m. bažnyčia atstatyta. 1763 m. pastatyta nauja medinė bažnyčia. 1773 m. įsteigta parapinė mokykla. 1810 m. bažnyčia, mieste kilus gaisrui, sudegė.\r\n\r\n1818–1820 m. klebonas Liudvikas Kaminskas su parapijiečiais pastatė dabartinę bažnyčią. Iki 1842 m. klebonijai priklausė Skraičionių kaimas. 1910 m. paskirtas klebonas Konstantinas Paulavičius 1930 m. bažnyčią išplėtė ir suremontavo. Buvo pristatytas bokštelis, šventoriaus tvora sumūryta iš akmenų.\r\n\r\n1941 m. birželio 24 d. hitlerininkai sušaudė kleboną K. Paulavičių ir vikarą Vincentą Mazurkevičių. Jie palaidoti šventoriuje; pastatytas Rūpintojėlis. Per Antrąjį pasaulinį karą apgriauta bažnyčia ir bokštas kunigo Leono Jakubausko rūpesčiu apie 1957 m. atstatyti.'),
(12, 6, 'krastovaizdis', 'Jaunimo parkas', 'miesto parkas Pietų Lietuvoje, Alytuje. Įveistas 1982 m. Plotas – 36,6 ha. Nuo 1993 m. vietinės reikšmės dailės paminklas. Anksčiau stovėję atrakcionai nebeveikia arba yra demontuoti. Nedidelė „vasaros estrada“ paversta riedutininkų parku. Populiari kaip jaunimo traukos ir gyventojų rekreacijos vieta. Didelės erdvės prižiūrimos ir tvarkomos. Yra miškeliai, vaikų žaidimų ir šachmatų aikštelės, dviračių takai.\r\n\r\n1984 m. grupė jaunų skulptorių, minėdama 50-ąsias skulptoriaus Kosto Valaičio metines, visuomeniniais pagrindais Jaunimo parkui sukūrė pirmąją Tarybų Lietuvoje metalo – plastiko skulptūrų kompoziciją, kuri tuomet buvo ir vienintelė tokia Sovietų Sąjungoje. Skulptoriams vadovavo Naglis Nasvytis, prie darbų prisidėjo ir tuometinis miesto dailininkas Albertas Stankevičius. Skulptūros parke stovi iki šiol.'),
(13, 6, 'piliakalniai', 'Alytaus piliakalnis', 'Alytaus piliakalnis su gyvenviete, Vienuolyno kalnas, Švento Jono kalnas, Joninių kalnas – piliakalnis (registro kodas iki 2005 m. balandžio 19 d. A66KP, unikalus objekto MC kodas 1827, Lietuvos Respublikos kultūros paminklų sąrašo Nr. AR36) ir senovinė gyvenvietė Alytaus rytinėje dalyje, Nemuno dešiniajame krante, Alytupio ir Nemuno santakoje. Pasiekiamas iš Nemuno dešiniajame krante esančio senojo (pirmojo) Alytaus centrinės A. Juozapavičiaus gatvės pasukus į Merkinės gatvę, iš jos – į Piliakalnio gatvę, važiuojant laikytis arčiau dešiniojo Nemuno kranto – iš viso 1,1 km, yra kairėje. Pastačius pėsčiųjų ir dviračių tiltą bus ypač patogu pasiekti piliakalnį iš miesto.\r\n                                                                                     Piliakalnį iš vakarų ir šiaurės vakarų juosia Alytupio slėnis, iš pietų – Nemunas, iš rytų ir Šiaurės rytų – daubos. Šlaitai statūs, 20–25 m, tik rytiniai 5–6 m aukščio. Aikštelė keturkampė, 25 x 15 m dydžio. Jos rytinį pakraštį puslankiu juosia 40 m ilgio, 2,5 m aukščio pylimas. Nenaudota kalvos pietvakarių dalis nuo piliakalnio atskirta giliu grioviu.\r\n\r\nIšoriniu šlaitu aikštelės pakraščiais tęsiasi pusiau užslinkę apkasai, o pietuose, ties pylimo galu, yra neaiški įduba, primenanti sviedinio sprogimo išrausą. Aikštelės pietinėje ir vakarinėje pusėje yra 2 m pločio ir 1 m gylio Pirmojo pasaulinio karo apkasai.[1] Piliakalnis datuojamas I tūkstantmečio viduriu – XIV a.');

-- --------------------------------------------------------

--
-- Table structure for table `miestai`
--

CREATE TABLE `miestai` (
  `id` int(10) UNSIGNED NOT NULL,
  `pav` varchar(256) COLLATE utf8_lithuanian_ci NOT NULL,
  `gyv_sk` bigint(20) NOT NULL,
  `plotas` decimal(12,2) UNSIGNED NOT NULL,
  `platuma` decimal(10,7) NOT NULL,
  `ilguma` decimal(10,7) NOT NULL,
  `valstybe` char(3) COLLATE utf8_lithuanian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `miestai`
--

INSERT INTO `miestai` (`id`, `pav`, `gyv_sk`, `plotas`, `platuma`, `ilguma`, `valstybe`) VALUES
(1, 'Kaunas', 286763, '157.00', '54.8968700', '23.8924290', 'LTU'),
(2, 'Vilnius', 536692, '401.00', '54.6871570', '25.2796520', 'LTU'),
(3, 'Klaipėda', 149015, '98.00', '55.7108000', '21.1318090', 'LTU'),
(4, 'Panevėžys', 98258, '54.00', '55.7374380', '24.3703310', 'LTU'),
(5, 'Šiauliai', 100618, '81.00', '55.9320790', '23.3142200', 'LTU'),
(6, 'Alytus', 51561, '48.00', '54.3954320', '24.0467800', 'LTU'),
(7, 'Ukmergė', 20591, '64.00', '55.2499500', '24.7649900', 'LTU'),
(8, 'Marijampolė', 40678, '35.00', '54.5578120', '23.3498100', 'LTU'),
(9, 'Druskininkai', 5053, '24.00', '54.0153390', '23.9784110', 'LTU'),
(10, 'Ignalina', 5053, '6.90', '55.3428000', '26.1647800', 'LTU'),
(11, 'Utena', 10000, '10.00', '56.0000000', '26.0000000', 'LTU');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ist_ivykiai`
--
ALTER TABLE `ist_ivykiai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lankyt_vietos`
--
ALTER TABLE `lankyt_vietos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_miesto` (`id_miesto`);

--
-- Indexes for table `miestai`
--
ALTER TABLE `miestai`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lankyt_vietos`
--
ALTER TABLE `lankyt_vietos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `miestai`
--
ALTER TABLE `miestai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lankyt_vietos`
--
ALTER TABLE `lankyt_vietos`
  ADD CONSTRAINT `lankyt_vietos_ibfk_1` FOREIGN KEY (`id_miesto`) REFERENCES `miestai` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
