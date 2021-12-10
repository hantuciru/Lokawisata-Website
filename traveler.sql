-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2021 at 03:43 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `traveler`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminID` char(4) NOT NULL,
  `adminNAMA` varchar(30) NOT NULL,
  `adminEMAIL` varchar(60) NOT NULL,
  `adminPASSWORD` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminID`, `adminNAMA`, `adminEMAIL`, `adminPASSWORD`) VALUES
('A001', 'Widyanto', 'widi@yahoo.com', '1234'),
('A002', 'Alex', 'alex@yahoo.com', 'd93591bdf7860e1e4ee2fca799911215');

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `areaID` char(4) NOT NULL,
  `areanama` char(35) NOT NULL,
  `areawilayah` char(35) NOT NULL,
  `areaketerangan` varchar(600) NOT NULL,
  `provinsiID` char(4) NOT NULL,
  `kabupatenID` char(4) NOT NULL,
  `kecamatanID` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`areaID`, `areanama`, `areawilayah`, `areaketerangan`, `provinsiID`, `kabupatenID`, `kecamatanID`) VALUES
('A001', 'Kepulauan Misool', 'Sabang', 'Di sini ada banyak tempat wisata menarik yang wajib Anda kunjungi, salah satunya adalah Pantai Sumurtiga yang terletak di Kota Sabang, Provinsi DI Aceh. Pantai berpasir putih ini memiliki garis pantai yang panjang dengan air lautnya yang berwarna biru muda, lengkap dengan pepohonan kelapa yang tersebar di sepanjang bibir pantai.', 'P001', 'KB01', 'KC01'),
('A002', 'Kepulauan Wayag', 'Sumatera Utara', 'Tidak hanya wisata danaunya yang menarik, di sini pengunjung juga bisa menjelajah kawasan hutan pinus di sekitar danau, menikmati pemandian air hangat, dan bermain-main di sekitar air terjun.', 'P002', 'KB02', 'KC02'),
('A003', 'Pulau Kri', 'Bukittinggi', 'Kota dengan relief alam berbukit-bukit ini memang memiliki banyak tempat wisata cantik yang sayang untuk dilewatkan, salah satunya adalah Ngarai Sianok. Bagi yang belum tahu, Ngarai Sianok merupakan sebuah lembah sempit dengan bukit-bukit bertebing curam di sekelilingnya. Di tengah lembah ini mengalirlah sungai kecil yang membuat pemandangan semakin menakjubkan.', 'P003', 'KB03', 'KC03'),
('A004', 'Pulau Salawati', 'Riau', 'Terkenal dengan ombak Bono-nya yang bisa mencapai tinggi 6 meter, sungai yang terletak di Teluk Meranti, Kabupaten Palalawan, Riau, ini merupakan destinasi yang cocok untuk memuaskan hasrat berselancar Anda.', 'P004', 'KB04', 'KC04'),
('A005', 'Kepulauan Pianemo', 'Kepulauan Riau', 'Begitu banyak keindahan yang belum tersentuh tangan manusia. Laut biru dengan pasir putihnya yang lembut serta terumbu karang yang cantik dijamin akan menyihir siapa saja yang berkunjung ke sini.', 'P005', 'KB05', 'KC05'),
('A006', 'Waigeo', 'Jambi', 'Tempatnya yang menarik dan kaya akan nilai sejarah membuat Candi Muaro Jambi diresmikan sebagai Kawasan Wisata Sejarah Terpadu (KWST) pada 2012 silam oleh mantan Presiden Susilo Bambang Yudhoyono.', 'P006', 'KB06', 'KC06');

-- --------------------------------------------------------

--
-- Table structure for table `destinasi`
--

CREATE TABLE `destinasi` (
  `destinasiID` char(5) NOT NULL,
  `destinasinama` varchar(35) NOT NULL,
  `destinasialamat` varchar(225) NOT NULL,
  `kategoriID` char(4) NOT NULL,
  `areaID` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `destinasi`
--

INSERT INTO `destinasi` (`destinasiID`, `destinasinama`, `destinasialamat`, `kategoriID`, `areaID`) VALUES
('WS01', 'Kepulauan Misool', 'Berada di empat bagian yaitu, Misool Timur, Misool Selatan, Misool Barat dan Misool Utara.', 'WK01', 'A001'),
('WS02', 'Kepulauan Wayag', 'Berada di Waigeo Barat.', 'WK02', 'A002'),
('WS03', 'Pulau Kri', 'Berada di Yenbuba, Meos Mansar, Kabupaten Raja Ampat, Papua Barat.', 'WK03', 'A003'),
('WS04', 'Pulau Salawati', 'Berada di Pulau Salawati.', 'WK04', 'A004'),
('WS05', 'Kepulauan Pianemo', 'Berada di Distrik Waigeo Barat.', 'WK05', 'A005'),
('WS06', 'Waigeo', 'Berada di stasiun Pencucian Pari Manta.', 'WK06', 'A006');

-- --------------------------------------------------------

--
-- Table structure for table `fotodestinasi`
--

CREATE TABLE `fotodestinasi` (
  `fotoID` char(5) NOT NULL,
  `fotonama` char(60) NOT NULL,
  `destinasiID` char(4) NOT NULL,
  `fotofile` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fotodestinasi`
--

INSERT INTO `fotodestinasi` (`fotoID`, `fotonama`, `destinasiID`, `fotofile`) VALUES
('F001', 'Kepulauan Misool', 'WS01', 'misool.jpg'),
('F002', 'Kepulauan Wayag', 'WS02', 'wayag.jpg'),
('F003', 'Pulau Kri', 'WS03', 'kri.jpg'),
('F004', 'Pulau Salawati', 'WS04', 'salawati.jpg'),
('F005', 'Kepulauan Pianemo', 'WS04', 'pianemo.jpg'),
('F006', 'Waigeo', 'WS04', 'waigeo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `fotohotel`
--

CREATE TABLE `fotohotel` (
  `fotoID` char(6) NOT NULL,
  `fotonama` varchar(40) NOT NULL,
  `hotelID` char(6) NOT NULL,
  `fotofile` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fotohotel`
--

INSERT INTO `fotohotel` (`fotoID`, `fotonama`, `hotelID`, `fotofile`) VALUES
('FH001', 'Hotel Indonesia Kempinski', 'H001', 'kempinski.jpg'),
('FH002', 'Hotel Majapahit', 'H002', 'majapahit.jpeg'),
('FH003', 'Royal Ambarrukmo Yogyakarta', 'H003', 'rotal.jpg'),
('FH004', 'Hotel Savoy Homann', 'H004', 'savoy.jpeg'),
('FH005', 'Grand Inna Medan', 'H005', 'inna.jpg'),
('FH006', 'Inna Bali Heritage Hotel', 'H006', 'inna bali.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `fotorestaurant`
--

CREATE TABLE `fotorestaurant` (
  `fotoID` char(6) NOT NULL,
  `fotonama` varchar(40) NOT NULL,
  `restaurantID` char(6) NOT NULL,
  `fotofile` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fotorestaurant`
--

INSERT INTO `fotorestaurant` (`fotoID`, `fotonama`, `restaurantID`, `fotofile`) VALUES
('FS001', 'Tugu Kunstkring', 'R001', 'tugu.jpg'),
('FS002', 'Plataran Menteng', 'R002', 'plataran.jpg'),
('FS003', 'Sriwijaya Restaurant', 'R003', 'sriwijaya.jpg'),
('FS004', 'Lara Djonggrang', 'R004', 'lara.jpg'),
('FS005', 'Nusa Gastronomy', 'R005', 'nusa.jpg'),
('FS006', 'Seribu Rasa', 'R006', 'seribu.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `hotelID` char(4) NOT NULL,
  `hotelnama` varchar(60) NOT NULL,
  `hotellokasi` varchar(225) NOT NULL,
  `restaurantID` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`hotelID`, `hotelnama`, `hotellokasi`, `restaurantID`) VALUES
('H001', 'Hotel Indonesia Kempinski', 'Jalan MH Thamrin No. 1, Thamrin, Jakarta Pusat, Jakarta, Indonesia, 10310', 'R001'),
('H002', 'Hotel Majapahit', '65, Jl Tunjungan, Genteng, Surabaya, Jawa Timur, Indonesia, 60275', 'R002'),
('H003', 'Royal Ambarrukmo Yogyakarta, Yogyakarta', 'Jalan Laksda Adisucipto No.81, Depok, Yogyakarta, Provinsi Yogyakarta, Indonesia, 55281', 'R003'),
('H004', 'Hotel Savoy Homann, Bandung', 'Jl. Asia Afrika No. 112, Asia Afrika, Bandung, Jawa Barat, Indonesia, 40261', 'R004'),
('H005', 'Grand Inna Medan', 'Jalan Balai Kota No.2, Pusat Kota Medan, Medan, Sumatera Utara, Indonesia, 20111', 'R005'),
('H006', 'Inna Bali Heritage Hotel', 'Jalan Veteran No 3 Dauh Puri Kaja Denpasar, Denpasar Utara, Denpasar, Bali, Indonesia, 80111', 'R006');

-- --------------------------------------------------------

--
-- Table structure for table `kabupaten`
--

CREATE TABLE `kabupaten` (
  `kabupatenID` char(4) NOT NULL,
  `kabupatennama` varchar(40) NOT NULL,
  `kabupatenluas` char(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kabupaten`
--

INSERT INTO `kabupaten` (`kabupatenID`, `kabupatennama`, `kabupatenluas`) VALUES
('KB01', 'Kabupaten Asahan', '3.702,21'),
('KB02', 'Kabupaten Lima Puluh Koto', '3.571,14'),
('KB03', 'Kabupaten Bengkulu Utara', '4.324,60'),
('KB04', 'Kabupaten Indragiri Hulu', '7.723,80'),
('KB05', 'Kabupaten Bintan', '1.318,21'),
('KB06', 'Kabupaten Muara Enim', '7.383,90');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategoriID` char(4) NOT NULL,
  `kategorinama` varchar(35) NOT NULL,
  `kategoriketerangan` varchar(600) NOT NULL,
  `kategorireferensi` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategoriID`, `kategorinama`, `kategoriketerangan`, `kategorireferensi`) VALUES
('WK01', 'Alam', 'Misool bagian selatan terdapat laut lepas yang memiliki fauna laut yang besar seperti lumba-lumba, paus, dan pari manta. Jika kamu berkesempatan berlibur ke pulau Misool, jangan lewatkan juga Puncak Harfat yang terkenal dengan pemandangan yang sangat indah.', 'Website'),
('WK02', 'Budaya', 'Di sini kalian akan disuguhan dengan pemandangan gugusan pulau karang kecil yang juga ditumbuhi pepohonan yang akan memanjakan mata kalian. Untuk dapat menyaksikan keseluruhan pemandangan ini, kamu harus menaiki kapal kecil terlebih dulu.', 'Website'),
('WK03', 'Pantai', 'Di sini wisatawan dapat menemukan 374 spesiel ikan dalam satu penyelaman saja. Di sini ada banyak barakuda, jacks, batfish dan kakap yang hidup berdampingan dengan ikan kecil karang kecil, hiu, ikan kerapu, hingga kura-kura.', 'Website'),
('WK04', 'Alam', 'Pulau Salawati, pulau ini menyimpan sejarah dunia. Pulau Salawati menjadi saksi sejarah terjadinya Perang Dunia II. Di dasar laut, kamu akan menemukan bangkai kapal laut seperti Kapal Shinwa, juga bangkai pesawat seperti P40. Bangkai-bangkai kendaraan tempur ini kini telah berubah menjadi rumah ikan.', 'Website'),
('WK05', 'Budaya', 'Pulau ini adalah miniaturnya Pulau Wayag. Sebab, pandangan di pulau ini memang sangat mirip dengan Pulau Wayag, hanya saja di sini para wisatawan harus berjuang naik ke pulau kecil untuk bisa melihat keindahan kepulauan Pianemo.', 'Website'),
('WK06', 'Alam', 'Waigeo sebenarnya memiliki beberapa tempat menarik dikunjungi. Dari sekian tempat, yang paling menarik adalah Stasiun Pencucian Pari Manta. Ada banyak pari manta berenang bebas di kawasan ini. Mereka akan menghabiskan waktu berjam-jam untuk membersihkan diri di Stasiun Pencucian Pari Manta ini.', 'Website');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `kecamatanID` char(4) NOT NULL,
  `kecamatannama` varchar(40) NOT NULL,
  `kecamatandesa` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`kecamatanID`, `kecamatannama`, `kecamatandesa`) VALUES
('KC01', 'Bukit Batu', '9'),
('KC02', 'Mandah', '16'),
('KC03', 'Bangkinang', '11'),
('KC04', 'Rupat Utara', '9'),
('KC05', 'Teluk Belengkong', '9'),
('KC06', 'Batang Cenaku', '16');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `eventKODE` char(10) NOT NULL,
  `eventnama` varchar(255) NOT NULL,
  `kabupatenID` char(5) NOT NULL,
  `eventKET` text NOT NULL,
  `eventMULAI` date NOT NULL,
  `eventSELESAI` date NOT NULL,
  `eventPOSTER` varchar(120) NOT NULL,
  `eventSUMBER` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kegiatan`
--

INSERT INTO `kegiatan` (`eventKODE`, `eventnama`, `kabupatenID`, `eventKET`, `eventMULAI`, `eventSELESAI`, `eventPOSTER`, `eventSUMBER`) VALUES
('E001', 'Music Festival', 'KB01', 'Sebuah festival musik adalah acara komunitas berorientasi kepada penampilan langsung menyanyi dan instrumen yang biasanya dibeda-bedakan dengan tema seperti jenis musik, kebangsaan penampil atau lokasi atau waktu tertentu.', '2021-11-25', '2021-11-30', 'music.jpg', 'Music Festival'),
('E002', 'Elegant Event', 'KB02', 'Untuk mengenal profesi disk jockey ( DJ ) dan tipe-tipenya, terlebih dulu Anda harus tahu pengertian DJ. Seorang disc jockey atau DJ adalah orang yang sangat piawai dan mahir dalam memilih serta memutar rekaman musik untuk para pendengar yang meminta diputarkan musik tersebut.', '2021-11-27', '2021-12-15', 'dj.jpg', 'Dj Festival');

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `provinsiID` char(4) NOT NULL,
  `provinsinama` char(35) NOT NULL,
  `provinsitglbediri` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`provinsiID`, `provinsinama`, `provinsitglbediri`) VALUES
('P001', 'Riau', '1952-11-17'),
('P002', 'Lampung', '1964-03-18'),
('P003', 'Aceh', '1956-12-07'),
('P004', 'Kalimantan', '2021-07-03');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `restaurantID` char(4) NOT NULL,
  `restaurantnama` varchar(40) NOT NULL,
  `restaurantketerangan` varchar(600) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`restaurantID`, `restaurantnama`, `restaurantketerangan`) VALUES
('R001', 'Tugu Kunstkring', 'Sejarah penjajahan tak hanya meninggalkan cerita bagi kita, generasi masa kini. Budaya, seni, bangunan, dan lain-lain juga diwariskan. Tempat paling indah untuk menikmati semua itu adalah di Restoran Tugu Kunstkring Paleis. Makanan istimewa, karya seni, dan desain interior yang tak lekang oleh waktu di setiap jengkal ruangan “bertutur” memberikan ekstase imajinasi zaman kolonial dahulu kala pada setiap pengunjungnya.'),
('R002', 'Plataran Menteng', 'Terletak di distrik utama Menteng di jantung kota Jakarta, Plataran Menteng adalah tempat paling populer bagi pengunjung Jakarta yang paling cerdas, serta kunjungan wajib bagi wisatawan yang menginap di salah satu dari banyak hotel bintang lima di sekitarnya. Sejarah dan warisan yang bersatu di Plataran Menteng menciptakan pengalaman bersantap tak tertandingi yang indahnya tiada dua, dibuat bagi orang-orang yang menghargai sejarah Indonesia yang kaya dan ingin merasakan masakan Indonesia yang benar-benar elegan.'),
('R003', 'Sriwijaya Restaurant', 'Selama bertahun-tahun, Sriwijaya telah menyajikan perpaduan sempurna antara hidangan tradisional Indonesia yang disajikan dengan cara yang elegan menggunakan teknik Prancis. Sriwijaya dengan senang hati memperkenalkan rasa baru dengan menyajikan masakan Nouvelle yang menekankan kesegaran serta cita rasa luar biasa, disajikan dalam platter dan a la carte.'),
('R004', 'Lara Djonggrang', 'Lara Djonggrang menyajikan beragam menu kuliner Nusantara, \"Ada 125 jenis menu makanan di restoran (Lara Djonggrang) ini,\" ucapnya. Ia menambahkan berbagai menu kuliner Nusantara itu juga termasuk menu vegetarian, serta lauk-pauk dari sari laut (sea food).'),
('R005', 'Nusa Gastronomy', 'Nusa, kependekan dari Nusantara, berarti Kepulauan. Tanah air Indonesia terdiri lebih dari 17.000 pulau dan 300 suku bangsa. Dengan bentang alam yang sangat luas, negara ini mencerminkan keragamannya melalui sumber daya, budaya, dan keahlian memasaknya. Gastronomi Indonesia NUSA mewakili bagian dari setiap daerah melalui setiap gigitan, dengan bahan-bahan yang dipilih dengan cermat dan presentasi yang sangat baik.'),
('R006', 'Seribu Rasa', 'Terinspirasi oleh kekayaan kuliner daerah, Seribu Rasa (Seribu Rasa) menawarkan hidangan lokal yang lezat dan makanan laut yang mewujudkan kekayaan cita rasa Asia Tenggara dan Indonesia. Setiap resep tradisional disiapkan dengan bahan-bahan segar dan disempurnakan oleh keahlian kuliner Chef kami, membawa pelanggan kami ke perjalanan gastronomi yang menakjubkan \"Seribu Rasa\".');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`areaID`);

--
-- Indexes for table `destinasi`
--
ALTER TABLE `destinasi`
  ADD PRIMARY KEY (`destinasiID`);

--
-- Indexes for table `fotodestinasi`
--
ALTER TABLE `fotodestinasi`
  ADD PRIMARY KEY (`fotoID`);

--
-- Indexes for table `fotohotel`
--
ALTER TABLE `fotohotel`
  ADD PRIMARY KEY (`fotoID`);

--
-- Indexes for table `fotorestaurant`
--
ALTER TABLE `fotorestaurant`
  ADD PRIMARY KEY (`fotoID`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`hotelID`);

--
-- Indexes for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`kabupatenID`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategoriID`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`kecamatanID`);

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`eventKODE`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`provinsiID`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`restaurantID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
