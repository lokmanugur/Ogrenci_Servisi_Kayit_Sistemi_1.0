-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 21 Eyl 2015, 20:08:40
-- Sunucu sürümü: 5.6.26
-- PHP Sürümü: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `student_service`
--
CREATE DATABASE IF NOT EXISTS `student_service` DEFAULT CHARACTER SET latin5 COLLATE latin5_turkish_ci;
USE `student_service`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `arac`
--

DROP TABLE IF EXISTS `arac`;
CREATE TABLE IF NOT EXISTS `arac` (
  `ID` int(11) NOT NULL,
  `PERSONEL_ID` int(11) NOT NULL DEFAULT '0',
  `BASLA_TARIH` date DEFAULT NULL,
  `PLAKA` varchar(10) COLLATE utf8_turkish_ci DEFAULT NULL,
  `MODEL` varchar(10) COLLATE utf8_turkish_ci DEFAULT NULL,
  `KOLTUK_SAYISI` int(11) DEFAULT NULL,
  `ARAC_TIP` varchar(20) COLLATE utf8_turkish_ci DEFAULT NULL,
  `IPTAL` bit(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `arac`
--

INSERT INTO `arac` (`ID`, `PERSONEL_ID`, `BASLA_TARIH`, `PLAKA`, `MODEL`, `KOLTUK_SAYISI`, `ARAC_TIP`, `IPTAL`) VALUES
(0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 1, '2015-09-15', 'YENİ', '2015', 17, 'CRAFTER', b'0'),
(2, 2, '2015-09-15', '72 S 0254', '2015', 17, 'CRAFTER', b'0'),
(3, 3, '2015-09-15', '72 S 0253', '2015', 17, 'CRAFTER', b'0'),
(4, 4, '2015-09-15', '72 S 0064', '2014', 17, 'CRAFTER', b'0'),
(5, 5, '2015-09-15', '72 S 0111', '2014', 17, 'CRAFTER', b'0'),
(6, 7, '2015-09-15', '72 S 300', '2014', 17, 'CRAFTER', b'0'),
(7, 8, '2015-09-15', '72 S 0062', '2013', 17, 'TRANSİT', b'0'),
(8, 9, '2015-09-15', '72 S 0168', '2014', 17, 'CRAFTER', b'0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `arac_gider`
--

DROP TABLE IF EXISTS `arac_gider`;
CREATE TABLE IF NOT EXISTS `arac_gider` (
  `ID` int(11) NOT NULL,
  `ARAC_ID` int(11) NOT NULL DEFAULT '0',
  `GIDER_MIKTAR` double DEFAULT NULL,
  `ACIKLAMA` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `TARIH` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `arac_kira`
--

DROP TABLE IF EXISTS `arac_kira`;
CREATE TABLE IF NOT EXISTS `arac_kira` (
  `ID` int(11) NOT NULL,
  `ARAC_ID` int(11) NOT NULL,
  `KIRA_MIKTAR` double NOT NULL,
  `ODENEN_TARIH` date NOT NULL,
  `IPTAL` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `arac_okul`
--

DROP TABLE IF EXISTS `arac_okul`;
CREATE TABLE IF NOT EXISTS `arac_okul` (
  `ID` int(11) NOT NULL,
  `ARAC_ID` int(11) NOT NULL DEFAULT '0',
  `OKUL_ID` int(11) NOT NULL DEFAULT '0',
  `IPTAL` bit(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `arac_okul`
--

INSERT INTO `arac_okul` (`ID`, `ARAC_ID`, `OKUL_ID`, `IPTAL`) VALUES
(10, 1, 3, b'0'),
(11, 1, 4, b'0'),
(12, 2, 3, b'0'),
(13, 4, 3, b'0'),
(14, 5, 3, b'0'),
(15, 5, 5, b'0'),
(16, 5, 7, b'0'),
(17, 5, 8, b'0'),
(18, 5, 9, b'0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `firma`
--

DROP TABLE IF EXISTS `firma`;
CREATE TABLE IF NOT EXISTS `firma` (
  `ID` int(11) NOT NULL,
  `ADI` varchar(35) COLLATE utf8_turkish_ci DEFAULT NULL,
  `TELEFON` varchar(20) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ADRES` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gorev`
--

DROP TABLE IF EXISTS `gorev`;
CREATE TABLE IF NOT EXISTS `gorev` (
  `ID` int(11) NOT NULL,
  `GOREVI` varchar(20) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `gorev`
--

INSERT INTO `gorev` (`ID`, `GOREVI`) VALUES
(0, NULL),
(3, 'HOSTES'),
(4, 'ŞÖFÖR'),
(5, 'MUHASEBE'),
(6, 'BİLGİ İŞLEM');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kasa`
--

DROP TABLE IF EXISTS `kasa`;
CREATE TABLE IF NOT EXISTS `kasa` (
  `ID` int(11) NOT NULL,
  `TAKSIT_ID` int(11) NOT NULL DEFAULT '0',
  `MAAS_ID` int(11) NOT NULL DEFAULT '0',
  `ARAC_KIRA_ID` int(11) NOT NULL DEFAULT '0',
  `ARAC_GIDER_ID` int(11) NOT NULL DEFAULT '0',
  `IPTAL` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kulanici`
--

DROP TABLE IF EXISTS `kulanici`;
CREATE TABLE IF NOT EXISTS `kulanici` (
  `ID` int(11) NOT NULL,
  `FIRMA_ID` int(11) NOT NULL DEFAULT '0',
  `PERSONEL_ID` int(11) NOT NULL DEFAULT '0',
  `KULANICI_ADI` varchar(35) COLLATE utf8_turkish_ci DEFAULT NULL,
  `SIFRE` varchar(20) COLLATE utf8_turkish_ci DEFAULT NULL,
  `IPTAL` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `maas`
--

DROP TABLE IF EXISTS `maas`;
CREATE TABLE IF NOT EXISTS `maas` (
  `ID` int(11) NOT NULL,
  `PERSONEL_ID` int(11) NOT NULL,
  `ODENEN_UCRET` double DEFAULT NULL,
  `ODENEN_TARIH` datetime DEFAULT NULL,
  `IPTAL` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ogrenci`
--

DROP TABLE IF EXISTS `ogrenci`;
CREATE TABLE IF NOT EXISTS `ogrenci` (
  `ID` int(11) NOT NULL,
  `ARAC_ID` int(11) NOT NULL DEFAULT '0',
  `OKUL_ID` int(11) NOT NULL DEFAULT '0',
  `KAYIT_TARIH` date DEFAULT NULL,
  `ADI` varchar(35) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `SOYADI` varchar(35) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `BABA_ADI` varchar(35) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `SINIF` varchar(13) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `ADRES` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `VELI_ADI` varchar(35) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `VELI_SOYADI` varchar(35) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `VELI_GSM` varchar(20) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `VELI_EV_TLF` varchar(20) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `IS_ADRES` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `IPTAL` bit(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=698 DEFAULT CHARSET=latin5;

--
-- Tablo döküm verisi `ogrenci`
--

INSERT INTO `ogrenci` (`ID`, `ARAC_ID`, `OKUL_ID`, `KAYIT_TARIH`, `ADI`, `SOYADI`, `BABA_ADI`, `SINIF`, `ADRES`, `VELI_ADI`, `VELI_SOYADI`, `VELI_GSM`, `VELI_EV_TLF`, `IS_ADRES`, `IPTAL`) VALUES
(1, 0, 3, '0000-00-00', 'ELİF JİYAN', 'VURAL', '', 'ANAOKULU', '', 'SELÇUK VURAL', '', '(505) 352-5301', '', '', b'1'),
(2, 0, 3, '0000-00-00', 'SELEN ', 'ZAMAN', '', 'ANAOKUL', 'BELDE MAH. 3246 SK ÜTOPYA SİTESİ\nB BLOK NO 14', 'AYŞEGÜL ZAMAN', '', '(506) 248-92 65', '0506 248 92 84', '', b'0'),
(3, 0, 3, '0000-00-00', 'MERYEM TUĞSEM ', 'KAYA', '', 'ANAOKULU ', '', 'HASAN KAYA', '', '(505) 445-4686', '', '', b'1'),
(4, 0, 3, '0000-00-00', 'MUHAMMED BARAN', 'KAHRAMAN', '', 'ANAOKULU', '', 'SAİT KAHRAMAN', '', '(532) 377-5038', '', '', b'1'),
(5, 0, 3, '0000-00-00', 'ADA ', 'DENİZ', '', 'ANAOKUL', 'GÜLTEPE MAHALLESİ GÜLKENT\n SİTESİ 24. BLOK KAT:2 NO:5', 'VEDAT DENİZ', '', '(532) 645-3500', '0505 800 49 27', '', b'0'),
(6, 0, 3, '0000-00-00', 'ECRİN', 'ÜNEY', '', 'ANAOKULU', '', 'VEYSİ ÜNEY', '', '(533) 500-5758', '', '', b'1'),
(7, 0, 3, '0000-00-00', 'CAN', 'ÖZERDEN', '', 'ANAOKUL', 'ÇAMLITEPE MAH .EYLÜL SİTESİ C BLOK NO:11', 'ERDEM ÖZERDEN', '', '(505) 872-7556', '0505 872 75 56', '', b'0'),
(8, 0, 3, '0000-00-00', 'BUĞLEM NEDA', 'KAYA', '', 'ANAOKUL', 'GÜLTEPE MAH. SASON CAD. YASİN APT\nKAT 4 NO 11', 'MURAT KAYA', '', '(505) 350-9894', '0507 399 59 33', '', b'0'),
(9, 0, 3, '0000-00-00', 'BERAT EREN ', 'AYDIN', '', 'ANAOKULU', '', 'MEHMET AYDIN', '', '(505) 347-6917', '', '', b'1'),
(10, 0, 3, '0000-00-00', 'SÜMEYYE ', 'OSMANOĞLU', '', 'ANAOKULU', '', 'EMRAH OSMANOĞLU', '', '(543) 633-3603', '', '', b'1'),
(11, 0, 3, '0000-00-00', 'ECEM NİSA ', 'GENÇ', '', 'ANAOKULU', '', 'MESUT GENÇ', '', '(505) 840-7656', '', '', b'1'),
(12, 0, 3, '0000-00-00', 'DİLA', 'TOPRAK', '', 'ANAOKUL', 'GÜLTEPE MAH. 4392 SK YEŞİL VADİ APT KAT 6 \nNO 5', 'YUSUF GÜRDAL', '', '(532) 458-2920', '0531 797 9291', '', b'0'),
(13, 0, 3, '0000-00-00', 'TUĞÇE', 'TERECE', '', 'ANAOKUL', '', 'TÜLAY ', 'TERECE', '(543) 233-3328', '0532 403 78 24', '', b'0'),
(14, 0, 3, '0000-00-00', 'EFLATUN ', 'AYAZ', '', 'ANAOKUL', 'KÜLTÜR MAH. 2629. SK ONUR APT NO:5 KAT/2', 'İSMAİL AYAZ', '', '(532) 132-0846', '0532 138 77 46', '', b'0'),
(15, 0, 3, '0000-00-00', 'ARIN DOĞA', 'ASAN', '', 'ANAOKULU', '', 'ÇAĞRI ASAN', '', '(532) 703-7768', '', '', b'1'),
(16, 0, 3, '0000-00-00', 'NAZLI', 'İŞLER', '', 'ANAOKUL', 'GÜLTEPE MAH. AŞIK VEYSEL BULVARI ADA KULE\nAPT KAT 8 NO 17', 'UĞUR İŞLER', '', '(506) 632-4909', '0532 227 65 41', '', b'0'),
(17, 0, 3, '0000-00-00', 'CEVDET ALİ ', 'BARUT', '', 'ANAOKULU', '', 'ÖZKAN BARUT', '', '(533) 138-5971', '', '', b'1'),
(18, 0, 3, '0000-00-00', 'ENES BERKE', 'TİLKAT', '', 'ANAOKULU', '', 'ENGİN TİLKAT', '', '(530) 226-9495', '', '', b'1'),
(19, 0, 3, '0000-00-00', 'HALİL İBRAHİM ', 'PLATİN', '', 'ANAOKUL', 'GAP MAH. 2513 SK İPEK SİTESİ F BLOK KAT 3\nNO 5', 'REMZİ PLATİN', '', '(555) 280-3285', '0543 798 47 13', '', b'0'),
(20, 0, 3, '0000-00-00', 'ÇINAR MELİH', 'KARAKAYA', '', 'ANAOKUL', 'GÜLTEPE MAH. EFLATUN CADDE YENİ ŞEHİR\n3 ETAP B BLOK KAT 6 NO 14', 'ESRA KARAKAYA', '', '(505) 253-6330', '0506 300 98 31', '', b'0'),
(21, 0, 3, '0000-00-00', 'ALYA ', 'ALOTAİBİ', '', 'ANAOKUL', 'GÜLTEPE MAH GÜLKENT SİTESİ 8.BLOK D 3', 'HİŞAM ALOTAİBİ', '', '(505) 746-1661', '0530 746 9090', '', b'0'),
(22, 0, 3, '0000-00-00', 'AHMET', 'EREN', '', 'ANAOKULU', '', 'İBRAHİM EREN', '', '(533) 204-0783', '', '', b'1'),
(23, 0, 3, '0000-00-00', 'NECATİ BULUT', 'YILMAZ', '', 'ANAOKULU', '', 'ERSİN YILMAZ', '', '(530) 490-0534', '', '', b'1'),
(24, 0, 3, '0000-00-00', 'HASAN  ', 'ÇAVUŞ', '', 'ANAOKULU', '', 'HAKAN ÇAVUŞ', '', '(544) 270-3982', '', '', b'1'),
(25, 0, 3, '0000-00-00', 'SERHAT', 'ATMACA', '', 'ANAOKULU', '', 'KADRİ ATMACA', '', '(505) 397-5465', '', '', b'1'),
(26, 0, 3, '0000-00-00', 'ÖMER ARZEN', 'GÜRBÜZ', '', 'ANAOKULU', '', 'SEDAT GÜRBÜZ', '', '(505) 590-5557', '', '', b'1'),
(27, 0, 3, '0000-00-00', 'MUHAMMED İBRAHİM', 'YUSUFOĞLU', '', 'ANAOKULU', '', 'SERDAR YUSUFOĞLU', '', '(532) 583-4040', '', '', b'1'),
(28, 0, 3, '0000-00-00', 'EYLÜL ', 'ATILGAN', '', 'ANAOKULU', '', 'FİKRET ATILGAN', '', '(533) 345-2260', '', '', b'1'),
(29, 0, 3, '0000-00-00', 'DİCLE', 'ER', '', 'ANAOKULU', '', 'SİNAN ER', '', '(532) 630-7661', '', '', b'1'),
(30, 0, 3, '0000-00-00', 'BİLAL UMUT', 'KARAKAYA', '', 'ANAOKULU', '', 'RECEP KARAKAYA', '', '(506) 599-4743', '', '', b'1'),
(31, 0, 3, '0000-00-00', 'BARAN', 'NAYMAN', '', 'ANAOKULU', '', 'VAHAP NAYMAN', '', '(532) 737-4884', '', '', b'1'),
(32, 0, 3, '0000-00-00', 'JEHAT', 'ÇELİK', '', 'ANAOKUL', 'BAHÇELİ EVLER MAH 1647 SK HUZUR 2 ST \nD BLOK NO 16', 'ŞAKİR ÇELİK', '', '(532) 635-6046', '0533 652 53 46', '', b'0'),
(33, 0, 3, '0000-00-00', 'TUĞRA', 'ÇETİN', '', 'ANAOKUL', 'MEMURSEN TOKİ KG 5 DAİRE 15', 'SERKAN ÇETİN', '', '(532) 764-7396', '0532 662 7711', '', b'0'),
(34, 0, 3, '0000-00-00', 'OĞUZ ', 'ORTAKAYA', '', 'ANAOKUL', 'GAP MAH. 1522 SK DALSA APT NO 25', 'ZELİHA ORTAKAYA', '', '(532) 724-1697', '0532 622 76 87', '', b'0'),
(35, 0, 3, '0000-00-00', 'MİRAÇ VEYSEL', 'GÖRDÜK', '', 'ANAOKULU', '', 'ONUR GÖRDÜK', '', '(505) 549-9695', '', '', b'1'),
(36, 0, 3, '0000-00-00', 'DİLA', 'ŞIKGENÇ', '', 'ANAOKULU', '', 'ESİN SEVİLMEZ ', '', '(506) 392-9980', '', '', b'1'),
(37, 0, 3, '0000-00-00', 'ELA NUR', 'GÜMÜŞTAŞ', '', 'ANAOKUL', 'BELDE MAH. BÖLGE HASTANE KARŞISI \nESEN KENT SİTESİ KAT 2 NO 8', 'ŞENOL GÜMÜŞTAŞ', '', '(532) 732-4033', '0532 583 2206', '', b'0'),
(38, 0, 3, '0000-00-00', 'EMİR MERT', 'EKMEN', '', 'ANAOKULU', '', 'ABDULCELİL EKMEN', '', '(542) 440-4256', '', '', b'1'),
(39, 0, 3, '0000-00-00', 'HEVİ JİYAN', 'ARSLAN', '', 'ANAOKULU', '', 'MÜRSEL ARSLAN', '', '(505) 477-3613', '', '', b'1'),
(40, 0, 3, '0000-00-00', 'ZEHRA ZERRİN', 'KARABAŞ', '', 'ANAOKULU', '', 'SERHAT KARABAŞ', '', '(537) 481-4940', '', '', b'1'),
(41, 0, 3, '0000-00-00', 'ALİ MERDAN', 'EKİNCİ', '', 'ANAOKULU', '', 'ŞEHMUS EKİNCİ', '', '(545) 244-7301', '', '', b'1'),
(42, 0, 3, '0000-00-00', 'JİR BORAN', 'EKMEN', '', 'ANAOKULU', '', 'İDRİS EKMEN', '', '(533) 743-7498', '', '', b'1'),
(43, 0, 3, '0000-00-00', 'ZİŞAN DURU', 'KAPLAN', '', 'ANAOKULU', '', 'TURAN KAPLAN', '', '(532) 496-3440', '', '', b'1'),
(44, 0, 3, '0000-00-00', 'ATAHAN ', 'SAPMAN', '', 'ANAOKULU', '', 'AHMET FATİH  SAPMAN', '', '(506) 356-9416', '', '', b'1'),
(45, 0, 3, '0000-00-00', 'AHMET HARİS', 'ÇİMEN', '', 'ANAOKULU', '', 'MAHMUT ÇİMEN', '', '(532) 120-0206', '', '', b'1'),
(46, 0, 3, '0000-00-00', 'RANA', 'ABA', '', 'ANAOKUL', 'GÜLTEPE MAH. ŞERPAK SİTESİ B BLOK KAT 3 \nDAİRE 14', 'KAMİL ABA', '', '(531) 793-8593', '', '', b'0'),
(47, 0, 3, '0000-00-00', 'ESMA DİLA', 'ABA', '', 'ANAOKUL', 'ÇAMLI TEPE MAH. 4009 SK DURAN 2 APT KAT 3\n NO 8', 'TANER', 'ABA', '(536) 791-8462', '', '', b'0'),
(48, 0, 3, '0000-00-00', 'AHMET ÖMÜR', 'AŞSIZ', '', 'ANAOKUL', 'ÖMER MUHTAR BULVARI HELİN SİTESİ A BLOK\n NO 4 ', 'MURAT AŞSIZ', '', '(532) 271-2490', '0542 420 55 45', '', b'0'),
(49, 0, 3, '0000-00-00', 'ELİF DEFNE', 'DİNÇ', '', 'ANAOKULU', '', 'FATMA DİNÇ', '', '(505) 262-6763', '', '', b'1'),
(50, 0, 3, '0000-00-00', 'ELİF ELA', 'BAYAV', '', 'ANAOKUL', 'BELDE MAH TPAO BULVARI NO 248 \nFURKAN APT NO 4', 'SECAHATTİN BAYAV', '', '(505) 386-7777', '0530 936 06 37', '', b'0'),
(51, 0, 3, '0000-00-00', 'İZZET ', 'ÖZDEMİR', '', 'ANAOKUL', 'BAHÇELİ EVLER MAH. MİMAR SİNAN CADDESİ \nDESEN APRT. KAT:2 NO:3', 'FIRAT ÖZDEMİR', '', '(533) 570-3263', '0533 393 19 57', '', b'0'),
(52, 0, 3, '0000-00-00', 'HASAN KAAN', 'TINMAZOL', '', 'ANAOKUL', 'KÜLTÜR MAH. POLİS\n LOJMANLARI B/4 BLOK KAT: 3 NO: 7', 'NURCAN TINMAZOL', '', '(505) 772-1410', '0505 772 14 09', '', b'0'),
(53, 0, 3, '0000-00-00', 'OĞUZ BARAN', 'BİCİCİ', '', 'ANAOKULU', '', 'BURAK BİCİCİ', '', '(544) 813-7884', '', '', b'1'),
(54, 0, 3, '0000-00-00', 'AHMET', 'ASLAN', '', 'ANAOKULU', '', 'HÜSEYİN ASLAN', '', '(534) 283-3260', '', '', b'1'),
(55, 0, 3, '0000-00-00', 'MUHAMMED EMRE', 'ERASLAN', '', 'ANAOKULU', '', 'TURGUT ERASLAN', '', '(505) 576-2073', '', '', b'1'),
(56, 0, 3, '0000-00-00', 'MUHAMMED HAMZA', 'BEBER', '', 'ANAOKUL', 'ŞİRİNEVLER MAH. TOPTANCILAR CADDESİ NO: 9', 'ÖMER BEBER', '', '(532) 581-8557', '0545 927 44 29', '', b'0'),
(57, 0, 3, '0000-00-00', 'MUHAMMED DORUK', 'TÜRK ', '', 'ANAOKULU', '', 'KUBİLAY TÜRK', '', '(505) 352-6528', '', '', b'1'),
(58, 0, 3, '0000-00-00', 'ELİF BEREN ', 'TERECE', '', 'ANAOKUL', 'GÜLTEPE MAH. ŞAPPAR SFİR SİTESİ A BLOK\nKAT 7 NO 4', 'FEREBİ TERECE', '', '(533) 744-2929', '0505 157 24 70', '', b'0'),
(59, 0, 3, '0000-00-00', 'ECENUR', 'GÜNDEM', '', 'ANAOKULU', '', 'AYŞE GÜNDEM', '', '(505) 779-2037', '', '', b'1'),
(60, 0, 3, '0000-00-00', 'ENSAR FIRAT', 'ERPOLAT', '', 'ANAOKUL', 'GÜLTEPE MAH. YEŞİL VADİ APART. KAT: 3 NO:15', 'NEŞE ERPOLAT', '', '(533) 220-5036', '0555 823 00 14', '', b'0'),
(61, 0, 3, '0000-00-00', 'MUHAMMED ALİ', 'KAYA', '', 'ANAOKULU', '', 'SAMİ KAYA', '', '(532) 454-9363', '', '', b'1'),
(62, 0, 3, '0000-00-00', 'MEHMET GİRAY', 'BURKAŞ', '', 'ANAOKUL', 'ZİYA GÖKALP MAH YAŞAR KEMAL CAD SARAY\nAPT KAT 4 NO 6', 'FIRAT BURKAŞ', '', '(533) 600-5635', '0506 581 91 97', '', b'0'),
(63, 0, 3, '0000-00-00', 'NEVA EYLÜL', 'ÖRS', '', 'ANAOKULU', '', 'AYŞEGÜL ÖRS', '', '(505) 654-4935', '', '', b'1'),
(64, 0, 3, '0000-00-00', 'EDA SU', 'ÇAPAR', '', 'ANAOKUL', 'BEŞİRİ MERKEZ JANDARMA LOJMANLARI', 'ÖZKAN ÇAPAR', '', '(544) 713-2273', '0544 816 62 65', '', b'0'),
(65, 0, 3, '0000-00-00', 'ÖYKÜ ALAR ', 'TİLEĞİ', '', 'ANAOKUL', 'ÇAMLICA MAH 4014 SK MİNA APT KAT 3 NO 9', 'NECMETTİN TİLEĞİ', '', '0505 489 72 53', '0505 489 72 54', '', b'0'),
(66, 0, 3, '0000-00-00', 'BEREN ZEYNEP', 'ARSLAN', '', 'ANAOKULU', '', 'BÜLENT ARSLAN', '', '(505) 270-3697', '', '', b'1'),
(67, 0, 3, '0000-00-00', 'RAMAZAN', 'ÖZALP', '', 'ANAOKULU', '', 'YAŞAR ÖZALP', '', '(532) 563-5732', '', '', b'1'),
(68, 0, 3, '0000-00-00', 'ARİA ŞEVVAL', 'İRAZ', '', 'ANAOKUL', 'SİTE PALL', 'ALATTİN İRAZ', '', '(506) 235-4241', '0530 363 78 56', '', b'0'),
(69, 0, 3, '0000-00-00', 'YAREN NAZLI', 'ULUÇAY', '', 'ANAOKULU', '', 'MEHMET ALİ ULUÇAY', '', '(530) 205-6090', '', '', b'1'),
(70, 0, 3, '0000-00-00', 'ALPEREN', 'EKMEKÇİ', '', 'ANAOKUL', 'MEMURSEN TKİ LOJMANLARI KG 6 NO 13', 'DERYA EKMEKÇİ', '', '0506 336 27 26', '0505 229 63 68', '', b'0'),
(71, 0, 3, '0000-00-00', 'AYŞE BEYZA ', 'ULAŞ', '', 'ANAOKULU', '', 'NURİYE ULAŞ', '', '(507) 213-9073', '', '', b'1'),
(72, 0, 3, '0000-00-00', 'ZEYNEP', 'BAŞÇI', '', 'ANAOKUL', 'GÜLTEPE MAH. SUPARKI KARŞISI YAVUZ SİTESİ\n A BLOK NO 10', 'BÜLENT BAŞÇI', '', '(537) 423-3372', '0532 062 62 72', '', b'0'),
(73, 0, 3, '0000-00-00', 'SÜLEYMAN ', 'BAŞÇI', '', 'ANAOKULU', '', 'BÜLENT BAŞÇI', '', '(537) 423-3372', '', '', b'1'),
(74, 0, 3, '0000-00-00', 'AHMET', 'HAVAS', '', 'ANAOKUL', 'GÜLTEPE MAH GÜLKENT SİTESİ B BLOK NO 18\nD 6', 'FADIL HAVAS', '', '(506) 751-5353', '0506 751 53 54', '', b'0'),
(75, 0, 3, '0000-00-00', 'METİN', 'ÖZDEMİR', '', 'ANAOKUL', 'GÜLTEPE MAH BATMAN SİTESİ A BLOK', 'RUKİYE ÖZDEMİR', '', '(505) 299-3515', '0533 770 99 66', '', b'0'),
(76, 0, 3, '0000-00-00', 'BEREN NAZ', 'GÖRNÜ', '', 'ANAOKULU', '', 'ŞÜKRAN GÖRNÜ', '', '(544) 603-6417', '', '', b'1'),
(77, 0, 3, '0000-00-00', 'EREN KAYRA', 'GÖKGÖZ', '', 'ANAOKULU', '', 'GÜRKAN GÖKGÖZ', '', '(533) 524-0528', '', '', b'1'),
(78, 0, 3, '0000-00-00', 'ALİ İSMET ', 'AĞIN', '', 'ANAOKULU', '', 'SEDAT AĞIN', '', '(531) 560-6484', '', '', b'1'),
(79, 0, 3, '0000-00-00', 'YAĞMUR', 'AÇIKBAŞ', '', 'ANAOKUL', 'BELDE MAH. 3201 SK YILDIZ APT KAT 4 NO 12', 'İBRAHİM AÇIKBAŞ', '', '(537) 766-6926', '0507 679 19 91', '', b'0'),
(80, 0, 3, '0000-00-00', 'MUHAMMED ENES', 'BULŞU', '', 'ANAOKUL', 'ŞAFAK MAH 3432 SK NO 6 BULŞU APT', 'ŞÜKRAN BULŞU', '', '(544) 629-2417', '0532 173 53 31', '', b'0'),
(81, 0, 3, '0000-00-00', 'AHMET HAMZA ', 'KALYONCU', '', 'ANAOKULU', '', 'MERVE KALYONCU', '', '(542) 448-3256', '', '', b'1'),
(82, 0, 3, '0000-00-00', 'HİVDA', 'CENGİZ', '', 'ANAOKULU', '', 'ZEKİ CENGİZ', '', '(505) 759-3144', '', '', b'1'),
(83, 0, 3, '0000-00-00', 'YİĞİT', 'ALAY', '', 'ANAOKULU', '', 'ÇİĞDEM ALAY', '', '(533) 654-7622', '', '', b'1'),
(84, 0, 3, '0000-00-00', 'AYŞEN ZEHRA', 'ÇAĞLAR', '', 'ANAOKUL', 'BEŞİRİ KAYMAKAMLIĞI EVİ', 'ŞENER ÇAĞLAR', '', '(505) 435-8579', '0506 476 83 22', '', b'0'),
(85, 0, 3, '0000-00-00', 'ZINAR ALİ ŞÜKRÜ', 'KAYA', '', 'ANAOKULU', '', 'RIZA KAYA', '', '(505) 426-0292', '', '', b'1'),
(86, 0, 3, '0000-00-00', 'MEHMET KAĞAN ', 'TOPUZ ', '', 'ANAOKULU', '', 'CEM ÜNAL', '', '(554) 875-2506', '', '', b'1'),
(87, 0, 3, '0000-00-00', 'YUSUF ', 'ÇELİK', '', 'ANAOKULU', '', 'EMİNE ÇELİK', '', '(543) 345-0909', '', '', b'1'),
(88, 0, 3, '0000-00-00', 'BERAT LORAN', 'CANPOLAT', '', 'ANAOKULU', '', 'POLAT CANPOLAT', '', '(506) 601-4777', '', '', b'1'),
(89, 0, 3, '0000-00-00', 'RONİ DARA', 'GÜNEŞ', '', 'ANAOKULU', '', 'MUHARREM GÜNEŞ', '', '(532) 340-7720', '', '', b'1'),
(90, 0, 3, '0000-00-00', 'MEHMET ALİ ARMAĞAN', 'GÜNEY', '', 'ANAOKULU', '', 'MURAT GÜNEY', '', '(539) 865-7314', '', '', b'1'),
(91, 0, 3, '0000-00-00', 'NAZ', 'ATABAY', '', 'ANAOKUL', 'BELDE MAH. ESENKEN SİTESİ B5 BLOK 5 NO 17', 'MİKAİL ATABAY', '', '(505) 540-5993', '0505 540 59 94', '', b'0'),
(92, 0, 3, '0000-00-00', 'ARAT', 'AK', '', 'ANAOKULU', '', 'BÜLENT AK', '', '(505) 517-4892', '', '', b'1'),
(93, 0, 3, '0000-00-00', 'MEHMET EFE', 'AVCI', '', 'ANAOKULU', '', 'ALİ AVCI', '', '(530) 346-4167', '', '', b'1'),
(94, 0, 3, '0000-00-00', 'MİRAY', 'YÜKSELTEN', '', 'ANAOKULU', '', 'M.EMİN TÜKSELTEN', '', '(505) 866-6066', '', '', b'1'),
(95, 0, 3, '0000-00-00', 'RUMET', 'ÜNGÜR', '', 'ANAOKULU', '', 'NACİ ÜNGÜR', '', '(505) 659-2669', '', '', b'1'),
(96, 0, 3, '0000-00-00', 'MUHAMMED TURAN', 'TOK', '', 'ANAOKUL', 'ÇAMLI TEPE MAHALESİ 4004 SK ÇAMLITEPE\n APT A BLOK KAT 3 NO 7', 'TURAN TOK', '', '(532) 463-6260', '0532 670 80 44', '', b'0'),
(97, 0, 3, '0000-00-00', 'HAZAL', 'ÇALAR', '', 'ANAOKUL', 'GÜLTEPE MAH DEMOKRASİ BULVARI ESEN\n PARK SİTESİ A BLOK KAT 7 NO 19 ', 'FERİT ÇALAR', '', '(532) 785-5491', '0532 568 06 45', '', b'0'),
(98, 0, 3, '0000-00-00', 'JİYAN CAN', 'ERKUN', '', 'ANAOKULU', '', 'HALİT ERKUN', '', '(505) 237-7472', '', '', b'1'),
(99, 0, 3, '0000-00-00', 'AŞİL ULAŞ', 'ÇELİK', '', 'ANAOKULU', '', 'ÜMİT ÇELİK', '', '(506) 585-7586', '', '', b'1'),
(100, 0, 3, '0000-00-00', 'ÖMER FARUK ', 'ŞEKER', '', 'ANAOKULU', '', 'FERHAT ŞEKER', '', '(532) 297-3188', '', '', b'1'),
(101, 0, 3, '0000-00-00', 'ZEHRA ESLEM', 'KAYA', '', 'ANAOKULU', '', 'CANAN KAYA', '', '(505) 224-5719', '', '', b'1'),
(102, 0, 3, '0000-00-00', 'ZEYNEP ZİŞAN', 'ÇAĞLAR', '', 'ANAOKUL', 'BEŞİRİ KAYMAKAMLIK EVİ', 'ŞENER ÇAĞLAR', '', '(505) 435-8579', '0505 476 83 22', '', b'0'),
(103, 0, 3, '0000-00-00', 'İREM ', 'KÜÇÜK', '', 'ANAOKULU', '', 'HARUN KÜÇÜK', '', '(533) 770-8796', '', '', b'1'),
(104, 0, 3, '0000-00-00', 'BERA NUH', 'KAYA', '', 'ANAOKUL', 'BASARAN KULE DOĞA YANI', 'VEYSİ KAYA', '', '(532) 364-7222', '0544 719 19 72', '', b'0'),
(105, 0, 3, '0000-00-00', 'RÜZGAR RENAS', 'ENEŞE', '', 'ANAOKULU', 'GÜLTEPE MAH ', 'FEYZİ ENEŞE', '', '(505) 600-4782', '', '', b'1'),
(106, 0, 3, '0000-00-00', 'MUHAMMED EMİR', 'BALOĞLU', '', 'ANAOKULU', 'GÜLTEPE MAH ÖMER HAYYAM CAD MERETO SİT A BLOK 7/24', 'ERTUĞRUL BALOĞLU', '', '(505) 492-8540', '', '', b'1'),
(107, 0, 3, '0000-00-00', 'ELA RENGİN', 'İPEK', '', 'ANAOKULU', 'ÇAMLITEPE MAH TPAO BULV MANSUROĞLU APT KAT 5 NO 15', 'MEHMET HAKKI İPEK', '', '(532) 735-0836', '', '', b'1'),
(108, 0, 3, '0000-00-00', 'NEHİR', 'ERTEKİN', '', 'ANAOKULU', 'GÜLTEPE MAH ŞATPARK SİT C BLOK NO 29', 'MAHMUT ERTEKİN', '', '(507) 984-5708', '', '', b'1'),
(109, 0, 3, '0000-00-00', 'MEHMET SELİM', 'GÜNEŞ', '', 'ANAOKUL', 'GÜLTEPE MAH ESEN KENT SİTESİ A BLOK KAT 2\n NO 3', 'SEDAT GÜNEŞ', '', '(507) 260-6060', '', '', b'0'),
(110, 0, 3, '0000-00-00', 'ADA', 'AYDOĞAN', '', 'ANAOKULU', 'GÜLTEPE MAH EFLATUN CAD BİLKENT SİT C BLOK NO 6', 'FİLİZ  AYDOĞAN', '', '(505) 824-0612', '', '', b'1'),
(111, 0, 3, '0000-00-00', 'SEFKAN', 'AKEL', '', 'ANAOKUL', 'GÜLTEPE MAH EFLATUN CAD BİLKENT SİT C BLOK NO 16', 'GÜLİSTAN AKEL', '', '(536) 211-7722', '', '', b'0'),
(112, 0, 3, '0000-00-00', 'MUHAMMED MİRAÇ', 'SÖNGÜL', '', 'ANAOKULU', '', 'CELAL  SÖNGÜL', '', '(532) 604-0121', '', '', b'1'),
(113, 0, 3, '0000-00-00', 'ENSAR  ', 'BULUT', '', 'ANAOKULU', 'BELDE MAH 3246 SK ÜTOPYA SİT B BLOK KAT 5 NO 15', 'EYÜP BULUT', '', '(532) 769-4488', '', '', b'1'),
(114, 0, 3, '0000-00-00', 'ERDEM ', 'ŞİMŞEK', '', 'ANAOKULU', '', 'ŞERİF ŞİMŞEK', '', '(537) 405-4205', '', '', b'1'),
(115, 0, 3, '0000-00-00', 'MUHAMMED BURAK', 'FAKİRULLAHOĞLU', '', 'ANAOKULU', 'BELDE MAH TPAO BULV RONYA PARK APT KAT 5 NO 15', 'ÖZLEM FAKİRULLAHOĞLU', '', '(505) 348-7882', '', '', b'1'),
(116, 0, 3, '0000-00-00', 'EYMEN ADAR', 'EKMEN', '', 'ANAOKULU', 'BAHÇELİEVLER MAH 1655 SK HUZUR SİT D BLOK KAT 4 NO 10', 'UMUT DOĞU EKMEN', '', '(533) 526-2140', '', '', b'1'),
(117, 0, 3, '0000-00-00', 'ZEKİYE ARMİN', 'CANPOLAT', '', 'ANAOKULU', 'GÜLTEPE MAH İBRAHİM HAKKI CAD BAHARKENT SİT MENEKŞE APT KAT 4 NO 7', 'CİHAN CANPOLAT', '', '(505) 572-1014', '', '', b'1'),
(118, 0, 3, '0000-00-00', 'BEYANUR SELVA', 'TURAN', '', 'ANAOKULU', 'MALITEPE MAH 4046 SK MELİK APT KAT 3 NO 5', 'EDİP TURAN', '', '(532) 243-9569', '', '', b'1'),
(119, 0, 3, '0000-00-00', 'ÜVEYS', 'İPEKYÜZ', '', 'ANAOKULU', '', 'EMRAH İPEKYÜZ', '', '(532) 404-4664', '', '', b'1'),
(120, 0, 3, '0000-00-00', 'MUHAMMED MUSTAFA', 'GÜNEŞ', '', 'ANAOKULU', 'ÇAMLITEPE MAH SOSUN CAD NO 18 ADİL YAPI', 'FIRAT GÜNEŞ', '', '(532) 768-4817', '', '', b'1'),
(121, 0, 3, '0000-00-00', 'VEYSEL', 'DANIŞ', '', 'ANAOKUL', 'ŞİRİNEVLER MAH MİLLİ EGEMENLİK CAD DANIŞ APT KAT 3 NO 4', 'DENİZ DANIŞ', '', '(532) 545-2739', '', '', b'0'),
(122, 0, 3, '0000-00-00', 'SENA NUR', 'DANIŞ', '', 'ANAOKUL', 'ŞİRİNEVLER MAH MİLLİ EGEMENLİK CAD DANIŞ APT KAT 3 NO 4', 'UĞUR DANIŞ', '', '(532) 327-2350', '', '', b'0'),
(123, 0, 3, '0000-00-00', 'MUHAMMED BERAT ', 'ÖZDEMİR', '', 'İLKÖĞRETİM 1', 'HÜRRİYET MAH ARI CAD NO 68/3', 'SUAD ÖZDEMİR', '', '(532) 426-7794', '', '', b'1'),
(124, 0, 3, '0000-00-00', 'EYMEN ', 'YANIK', '', 'İLKÖĞRETİM 1', 'GÜLTEPE MAH 4305 SK BATMAN C SİT 11/15', 'KORAY YANIK', '', '(506) 402-3908', '', '', b'0'),
(125, 0, 3, '0000-00-00', 'YİĞİT', 'KÜTÜKOĞLU', '', 'İLKÖĞRETİM 1', 'HİLAL MAH KOMANDO CAD YÜKSEL ERYİĞİT APT ', 'TUĞBA KÜTÜKOĞLU', '', '(505) 315-9864', '', '', b'0'),
(126, 0, 3, '0000-00-00', 'AİŞE ', 'ÖZEK', '', 'İLKÖĞRETİM 1', 'GÜLTEPE MAH BEYAZ KONAK SİT 1 KAT 2 NO 5', 'BÜLENT ÖZEK', '', '(533) 565-4565', '', '', b'0'),
(127, 0, 3, '0000-00-00', 'VEYSEL', 'UĞRAK', '', 'İLKÖĞRETİM 1', 'YAVUZ SELİM MAH KÖRÜK CAD 3530 SK NO 12', 'HAMDULLAH UĞRAK', '', '(535) 764-1271', '', '', b'0'),
(128, 0, 3, '0000-00-00', 'AZRA ', 'DİREK', '', 'İLKÖĞRETİM 1', 'TILMERÇ MAH 3853 SK B BLOK DAİRE 14', 'NEDİM DİREK', '', '(532) 461-8764', '', '', b'1'),
(129, 0, 3, '0000-00-00', 'BERAT SAMET', 'KÜNKÜL', '', 'İLKÖĞRETİM 1', 'ÇAMLITEPE MAH 4001 SK AKGÜL APT 20/12', 'BURHAN KÜNKÜL', '', '(533) 494-7136', '', '', b'0'),
(130, 0, 3, '0000-00-00', 'MUHAMMED SALİH', 'DOĞU', '', 'İLKÖĞRETİM 1', 'GÜLTEPE MAH 4396 SK HELİS SİTESİ B BLOK NO 12', 'LOKMAN DOĞU', '', '(505) 816-3933', '', '', b'0'),
(131, 0, 3, '0000-00-00', 'ASMİN ', 'ÇİFTÇİ', '', 'İLKÖĞRETİM 1', 'GAP MAH DİYARBBAKIR CAD BERAT APT', 'ELİF ÇİFTÇİ', '', '(505) 223-5024', '', '', b'1'),
(132, 0, 3, '0000-00-00', 'ECRİN ', 'NASIROĞLU', '', 'İLKÖĞRETİM 1', 'GAP MAH ÇELİK APT 3/4', 'ZEYNEP NASIROĞLU', '', '(543) 615-0905', '', '', b'0'),
(133, 0, 3, '0000-00-00', 'LORAN TUNA ', 'AYAZ', '', 'İLKÖĞRETİM 1', 'KÜLTÜR MAH 2629 SK ONUR APT 2/5', 'İSMAİL AYAZ', '', '(532) 132-0846', '', '', b'0'),
(134, 0, 3, '0000-00-00', 'AHMET', 'SARAÇOĞLU', '', 'İLKÖĞRETİM 1', 'GAP MAH 2504 SK BARIŞ CEYLAN APT NO 70', 'EFKAN SARAÇOĞLU', '', '(505) 622-2257', '', '', b'1'),
(135, 0, 3, '0000-00-00', 'HELİN', 'KOPARAN', '', 'İLKÖĞRETİM 1', 'GÜLTEPE MAH EFLATUN CAD SEBİL 3 APT 2/5', 'İLKNUR DEMİR KOPARAN', '', '(505) 274-4993', '', '', b'1'),
(136, 0, 3, '0000-00-00', 'ALTAN RONİ', 'ERİN', '', 'İLKÖĞRETİM 1', '', 'ÖZLEM ERİN', '', '(505) 779-6820', '', '', b'1'),
(137, 0, 3, '0000-00-00', 'KAĞAN BERK ', 'BIYIKLI', '', 'İLKÖĞRETİM 1', 'BÖLGE JANDARMA LOJMANLARI', 'ARİF BIYIKLI', '', '(505) 455-9660', '', '', b'0'),
(138, 0, 3, '0000-00-00', 'ŞİRİN İDİL ', 'EREN', '', 'İLKÖĞRETİM 1', 'GÜLTEPE MAH EFLATUN CAD GÜNEYKENT SİT B BLOK NO 17', 'İMAM EREN', '', '(532) 504-9014', '', '', b'1'),
(139, 0, 3, '0000-00-00', 'MAHİR ZANA', 'KAYA', '', 'İLKÖĞRETİM 1', 'GÜLTEPE MAH 4304 SK BEYAZ KONAK 1 SİT DAİRE 8', 'NALİN KAYA', '', '(532) 132-3382', '0488 213 70 60', '', b'0'),
(140, 0, 3, '0000-00-00', 'SEDAT EMRE', 'ŞİRİKÇİ', '', 'İLKÖĞRETİM 1', 'TPAO LOJMANLARI', 'RAHİME ŞİRİKÇİ', '', '(505) 457-1354', '', '', b'1'),
(141, 0, 3, '0000-00-00', 'AHMET TAHA', 'TEMİZ', '', 'İLKÖĞRETİM 1', '', 'ŞEMSETTİN TEMİZ', '', '(534) 208-2582', '', '', b'1'),
(142, 0, 3, '0000-00-00', 'TEVFİK KAĞAN', 'ARIKMERT', '', 'İLKÖĞRETİM 1', 'ÖZEL HAREKAT LOJ', 'SİNAN ARIKMERT', '', '(506) 381-6905', '', '', b'0'),
(143, 0, 3, '0000-00-00', 'ÇAĞLAR METE', 'İÇÖZ', '', 'İLKÖĞRETİM 1', 'HİLAL MAH KOMANDO CAD K.HULUSİ SAYIN KIŞ İL JANDARMA LOJMANLARI', 'ÖZGÜR BARIŞ İÇÖZ', '', '(505) 383-8203', '', '', b'0'),
(144, 0, 3, '0000-00-00', 'JİYAN ARMANÇ', 'KUTLU', '', 'İLKÖĞRETİM 1', '', 'YAVUZ KUTLU', '', '(533) 363-1461', '', '', b'1'),
(145, 0, 3, '0000-00-00', 'ELİF ADA ', 'DELLAL', '', 'İLKÖĞRETİM 1', 'TILMERÇ TOKİ K 9 NO 13', 'HALİL DELLAL', '', '(505) 496-5640', '', '', b'0'),
(146, 0, 3, '0000-00-00', 'UMUT ÇAĞAN', 'ŞİMŞEK', '', 'İLKÖĞRETİM 1', 'TILMERÇ MAH 3860 SK F 1 SİT A BLOK NO 18', 'SERDAR ŞİMŞEK', '', '(505) 757-6566', '', '', b'1'),
(147, 0, 3, '0000-00-00', 'MEHMET MİRAN', 'BALTAŞ', '', 'İLKÖĞRETİM 1', 'GÜLTEPE MAH BATMAN SİT C BLOK KAT 1 NO 2', 'SELMA ORAK', '', '(553) 684-4184', '', '', b'1'),
(148, 0, 3, '0000-00-00', 'KÜBRA YAĞMUR ', 'KARABULUT', '', 'İLKÖĞRETİM 1', 'GÜLTEPE MAH YAŞATAN SİT A BLOK NO 4', 'SEMİH KARABULUT', '', '(533) 734-7900', '', '', b'0'),
(149, 0, 3, '0000-00-00', 'ŞEVVAL SUDE ', 'BAŞARAN', '', 'İLKÖĞRETİM 1', 'GAP MAH TPAO BULV HUZUR APT KAT 6 NO 7', 'RIZA BAŞARAN', '', '(532) 315-0301', '', '', b'0'),
(150, 0, 3, '0000-00-00', 'CEM ', 'ŞAHİN', '', 'İLKÖĞRETİM 1', 'ÇAMLITEPE MAH 4009 SK FIRAT SİT A BLOK NO 4', 'CENGİZ ŞAHİN', '', '(505) 298-3348', '', '', b'1'),
(151, 0, 3, '0000-00-00', 'ARDA FURKAN', 'KOÇER', '', 'İLKÖĞRETİM 1', '', 'İBRAHİM KOÇER', '', '', '', '', b'1'),
(152, 0, 3, '0000-00-00', 'HASAN ÇELEBİ', 'AL', '', 'İLKÖĞRETİM 1', 'TPAO BULV FATİH MAH GÜNEY APT KAT 7/28', 'MEHMET HANİFİ AL', '', '(537) 376-6007', '', '', b'0'),
(153, 0, 3, '0000-00-00', 'MUSTAFA', 'ÇANKAYA', '', 'İLKÖĞRETİM 1', 'GÜLTEPE MAH YAŞARKENT SİT B BLOK KAT 7 NO 14', 'HASAN ÇANKAYA', '', '(505) 304-2785', '', '', b'1'),
(154, 0, 3, '0000-00-00', 'BEYTULLAH', 'GÜNEY', '', 'İLKÖĞRETİM 1', 'TILMERÇ MAH GÜNEY APT KAT 4 NO 11', 'AYDIN GÜNEY', '', '(532) 312-7297', '', '', b'0'),
(155, 0, 3, '0000-00-00', 'MEHMET BAYKAN', 'KARASU', '', 'İLKÖĞRETİM 1', 'BAŞARAN KULE TILMERÇ MAH KAT 4/7', 'KAMURAN KARASU', '', '(533) 653-9565', '', '', b'1'),
(156, 0, 3, '0000-00-00', 'BOTAN', 'EREN', '', 'İLKÖĞRETİM 1', 'KÜLTÜR MAH EREN SİT KAT 5 NO 33', 'CENGİZ EREN', '', '(542) 544-2535', '', '', b'0'),
(157, 0, 3, '0000-00-00', 'HAZAL', 'DEMİR', '', 'İLKÖĞRETİM 1', 'BELDE MAH 3261 SK DAMLA APT KAT 4/15', 'LEYLA DEMİR', '', '(506) 632-6942', '', '', b'1'),
(158, 0, 3, '0000-00-00', 'ELİF MERVE', 'AKSOY', '', 'İLKÖĞRETİM 1', 'KÜLTÜR MAH 2632 SK POLİS LOJ B 3 BLOK NO 18 DAİRE 11', 'M.SALİH AKSOY', '', '(505) 775-4847', '', '', b'0'),
(159, 0, 3, '0000-00-00', 'BENGİ SU', 'YILDIRIM', '', 'İLKÖĞRETİM 1', 'MEMURSEN TOKİ LOJMANLARI', 'MEVLÜT YILDIRIM', '', '(506) 248-7554', '', '', b'1'),
(160, 0, 3, '0000-00-00', 'IRMAK MELİS', 'BAL ', '', 'İLKÖĞRETİM 1', 'ASKERİYE KOMANDO LOJMANLARI ', 'HAMİT BAL', '', '(532) 773-9247', '', '', b'0'),
(161, 0, 3, '0000-00-00', 'RECEP ARAS', 'PASİNLİ', '', 'İLKÖĞRETİM 1', 'ZİYA GÖKALP MAH ESKİ POLİS LOJ KANTİNİ ÜSTÜ KAT 2', 'ALPER PASİNLİ', '', '(505) 210-7177', '', '', b'1'),
(162, 0, 3, '0000-00-00', 'SEYHAN GÖKÇE', 'HAN', '', 'İLKÖĞRETİM 1', 'GÜLTEPE MAH ADLİYE LOJ NO 29', 'FATMA NUR HAN', '', '(505) 253-6072', '', '', b'1'),
(163, 0, 3, '0000-00-00', 'MİRAÇ AYAZ', 'CELBEK', '', 'İLKÖĞRETİM 1', 'BELDE MAH 3201 SK CELBEK APT KAT 5 NO 2', 'LEVENT CELBEK', '', '(532) 567-2818', '', '', b'0'),
(164, 0, 3, '0000-00-00', 'ASMİN ', 'ERİMAN', '', 'İLKÖĞRETİM 1', 'GAP MAH 2504 SK İNALCAN APT B BLOK KAT 5 NO 10', 'OKTAY ERİMAN', '', '(505) 232-3669', '', '', b'1'),
(165, 0, 3, '0000-00-00', 'YUSUF ', 'SİNEN', '', 'İLKÖĞRETİM 1', '', 'ÖMER SİNEN', '', '(533) 304-8232', '', '', b'1'),
(166, 0, 3, '0000-00-00', 'RECEP GÖRKEM', 'ÖBEK', '', 'İLKÖĞRETİM 1', '', 'SUAT ÖBEK', '', '(505) 548-4100', '', '', b'1'),
(167, 0, 3, '0000-00-00', 'AHMET HAMZA ', 'ALTUNKAYNAK', '', 'İLKÖĞRETİM 1', 'TILMERÇ MAH 4372 SK D 6 B BLOK KAT 3 NO 6', 'MEHMET ATA', '', '(507) 608-9091', '', '', b'1'),
(168, 0, 3, '0000-00-00', 'AYLİN NAZ', 'ÇELİK', '', 'İLKÖĞRETİM 1', 'KÜLTÜR MAH YEŞİLKENT B BLOK KAT 2 NO 5', 'ŞEHMUS ÇELİK', '', '(536) 664-3649', '', '', b'1'),
(169, 0, 3, '0000-00-00', 'ARİN TOPRAK', 'SARİHAN', '', 'İLKÖĞRETİM 1', 'BAHÇELİEVLER MAH CEVHER SİT A BLOK NO 12', 'ABDULKADİR SARIHAN', '', '(532) 219-8289', '', '', b'0'),
(170, 0, 3, '0000-00-00', 'YİGİT FURKAN', 'BAYMAZ', '', 'İLKÖĞRETİM 1', 'GÜLTEPE MAH ESENPARK SİT C BLOK KAT 4 NO 10', 'YASİN BAYMAZ', '', '(533) 225-3393', '', '', b'0'),
(171, 0, 3, '0000-00-00', 'SUDENAZ', 'ÜNVER', '', 'İLKÖĞRETİM 1', 'SERVİS KULLANMAYACAK', 'YILMAZ ÜNVER', '', '(535) 272-7041', '', '', b'1'),
(172, 0, 3, '0000-00-00', 'ZERYA CEMRE', 'ÇELİK', '', 'İLKÖĞRETİM 1', 'GAP MAH SOSUN CAD BEYAZ KENT EVLERİ B BLOK KAT 4 /14', 'RIDVAN ÇELİK', '', '(505) 938-5411', '', '', b'0'),
(173, 0, 3, '0000-00-00', 'MUHAMMED BİLAL ', 'DOĞAN', '', 'İLKÖĞRETİM 1', 'ÇAMLITEPE MAH 4001 SK NO 2 SARAY KÖŞK KAT 5 NO 5', 'ABDULKERİM DOĞAN', '', '(533) 716-4354', '', '', b'0'),
(174, 0, 3, '0000-00-00', 'NURŞAH AYAZ', 'TARHAN', '', 'İLKÖĞRETİM 1', 'ÇAMLITEPE MAH TPAO BULV 311 SK SİMAR APT KAT 7/13', 'YASEMİN TARHAN', '', '(530) 363-4424', '', '', b'0'),
(175, 0, 3, '0000-00-00', 'DURU', 'AKBAY', '', 'İLKÖĞRETİM 1', 'MEMURSEN TOKİ K6/66 ', 'SERHAT AKBAY', '', '(505) 517-3130', '', '', b'1'),
(176, 0, 3, '0000-00-00', 'GÜRCİYE ', 'ÖZCAN', '', 'İLKÖĞRETİM 1', 'ÖZCEYLAN APT ADEM İLK KILIÇ OKULU YANI', 'ABDULMELEK ÖZCAN', '', '(532) 658-7294', '', '', b'0'),
(177, 0, 3, '0000-00-00', 'MUHAMMED EMİN ', 'ÖZEK', '', 'İLKÖĞRETİM 1', 'GÜLTEPE MAH EFLATUN CAD BİLKENT SİT A BLOK NO 31', 'DENİZ ÖZEK', '', '(533) 285-1600', '', '', b'0'),
(178, 0, 3, '0000-00-00', 'MERVENUR', 'UÇAN', '', 'İLKÖĞRETİM 1', 'KÜLTÜR MAH POLİS LOJ B 3 DAİRE 5', 'KENAN UÇAN', '', '(505) 543-3553', '', '', b'0'),
(179, 0, 3, '0000-00-00', 'NİSA NUR', 'CANGİR', '', 'İLKÖĞRETİM 1', 'GÜLTEPE MAH DEMOKRASİ BULV CANGİR PETROL ÜSTÜ NO 35/14', 'KADRİ CANGİR', '', '(532) 371-0151', '', '', b'1'),
(180, 0, 3, '0000-00-00', 'SARYA LORİN ', 'GÜNEŞ', '', 'İLKÖĞRETİM 1', 'GÜLTEPE MAH PARK REZİDANS SİT A BLOK KAT 4 NO 11', 'YAKUP GÜNEŞ', '', '(506) 973-7834', '', '', b'1'),
(181, 0, 3, '0000-00-00', 'İLKCAN ERKAN', 'İNAN', '', 'İLKÖĞRETİM 1', 'GÜLTEPE MAH 4392 SK YEŞİLVADİ KAT 6 NO 28', 'ÜMİT SENDE İNAN', '', '(553) 253-3983', '', '', b'0'),
(182, 0, 3, '0000-00-00', 'BEDİRHAN ALİ', 'BAĞCI', '', 'İLKÖĞRETİM 1', 'FATİH MAH FATİH SİTESİ A BLOK NO 3', 'EMRE BAĞCI', '', '(541) 650-5075', '', '', b'1'),
(183, 0, 3, '0000-00-00', 'ELA', 'ERASLAN', '', 'İLKÖĞRETİM 1', 'MEMURSEN TOKİ ÖZEL HAREKAT LOJ NO 80', 'OSMAN ERASLAN', '', '(505) 211-1026', '', '', b'1'),
(184, 0, 3, '0000-00-00', 'JİNDA NUDA', 'YERME', '', 'İLKÖĞRETİM 1', 'SİİRT ÇEVRE YOLU ÜZERİ KİA SERVİS KARŞISI', 'ALİ YERME', '', '(533) 146-6233', '', '', b'0'),
(185, 0, 3, '0000-00-00', 'İREM ', 'SEÇKİN', '', 'İLKÖĞRETİM 1', 'ÖZEL HAREKAT LOJ B 3 BLOK NO 26', 'KADİR SEÇKİN', '', '(505) 312-4760', '', '', b'1'),
(186, 0, 3, '0000-00-00', 'ELİF ECE', 'DUYMAZ', '', 'İLKÖĞRETİM 1', 'GÜLTEPE MAH HAİT LOJMANLARI C 3 BLOK NO 13', 'EMEL DUYMAZ', '', '(505) 719-1538', '', '', b'0'),
(187, 0, 3, '0000-00-00', 'ADAR CEYLİN', 'BAŞAR', '', 'İLKÖĞRETİM 1', 'ÇAMLITEPE MAH 4045 SK NAZLI APT KAT 5 NO 11', 'BİLAL BAŞAR', '', '(505) 628-8140', '', '', b'0'),
(188, 0, 3, '0000-00-00', 'DİLVİN', 'CANPOLAT', '', 'İLKÖĞRETİM 1', 'GÜLTEPE MAH İBRAHİM HAKKI CAD BAHARKENT SİT MENEKŞE APT KAT 4 NO 7', 'CİHAN CANPOLAT', '', '(505) 572-1014', '', '', b'1'),
(189, 0, 3, '0000-00-00', 'MELİS TUANA', 'YILDIRIM', '', 'İLKÖĞRETİM 1', 'MEMURSEN TOKİ ÖZEL HAREKAT LOJ B 3 KAT 7/31', 'İLYAS YILDIRIM', '', '(506) 357-2725', '', '', b'1'),
(190, 0, 3, '0000-00-00', 'DEMİR', 'SEZGİN', '', 'İLKÖĞRETİM 1', '', 'SERVET SEZGİN', '', '(505) 222-5202', '', '', b'1'),
(191, 0, 3, '0000-00-00', 'SUDEM DİLA', 'ERGÜL', '', 'İLKÖĞRETİM 1', 'ZİYAGÖKALP MAH ÇIRAĞAN LOKANTASI YANI ERGÜL APT KAT 1 NO 2', 'FERİT ERGÜL', '', '(542) 221-4572', '', '', b'1'),
(192, 0, 3, '0000-00-00', 'EYLÜL', 'DANIŞ', '', 'İLKÖĞRETİM 1', 'ŞİRİNEVLER MAH MİLLİ EGEMENLİK CAD DANIŞ APT KAT 3/4', 'DENİZ DANIŞ', '', '(532) 545-2739', '', '', b'0'),
(193, 0, 3, '0000-00-00', 'MUHAMMED ALİ', 'ÖZDEMİR', '', 'İLKÖĞRETİM 2', 'TURGUT ÖZAL BULV HALKBANK ÜSTÜ 6.KAT NO 21', 'ADNAN ÖZDEMİR', '', '(533) 744-2931', '', '', b'0'),
(194, 0, 3, '0000-00-00', 'MUHAMMED BERAT ', 'EVCİL', '', 'İLKÖĞRETİM 2', 'BELDE MAH 3235 SK İPEK APT KAT 6', 'BAKİ EVCİL', '', '(533) 471-0572', '', '', b'0'),
(195, 0, 3, '0000-00-00', 'NAZ ', 'SEZEN', '', 'İLKÖĞRETİM 2', 'BELDE MAH 3261 SK TURHAN İZGİ APT NO 12 DAİRE 12', 'SERKAN SEZEN', '', '(505) 237-0203', '', '', b'0'),
(196, 0, 3, '0000-00-00', 'ZEYNEP BUĞLEM ', 'KAYA', '', 'İLKÖĞRETİM 2', 'GÜLTEPE MAH EFLATUN CAD PARK REZİDANS SİTESİ B BLOK KAT 5 NO 18', 'HASAN KAYA', '', '(505) 445-4686', '', '', b'0'),
(197, 0, 3, '0000-00-00', 'BARAN KAYRA', 'ÇELİK', '', 'İLKÖĞRETİM 2', 'GÜLTEPE MAH HELEN SİT  KAT 2 NO 5', 'MURAT ÇELİK', '', '(532) 344-1922', '', '', b'0'),
(198, 0, 3, '0000-00-00', 'ALİ SİNA', 'ŞEKER', '', 'İLKÖĞRETİM 2', 'BEYAZ KONAK', 'FERHAT ŞEKER', '', '(532) 297-3188', '0532 297 31 88', '', b'0'),
(199, 0, 3, '0000-00-00', 'ROBİN', 'DENİZ', '', 'İLKÖĞRETİM 2', 'GÜLTEPE MAH GÜLKENT SİT 24. BLOK KAT 2 NO 5', 'VEDAT DENİZ', '', '(532) 645-3500', '', '', b'0'),
(200, 0, 3, '0000-00-00', 'MUHAMMED KÜRŞAT', 'KARATAŞ', '', 'İLKÖĞRETİM 2', 'TILMERÇ MAH ÖZEL HAREKAT POLİS LOJ B 4 BLOK KAT 2 NO 14', 'OSMAN KARATAŞ', '', '(506) 359-4535', '', '', b'1'),
(201, 0, 3, '0000-00-00', 'EMRE ', 'ÜNEY', '', 'İLKÖĞRETİM 2', 'GÜLTEPE MAH EFLATUN CAD PARK REZİDANS SİTESİ C BLOK', 'VEYSİ ÜNEY', '', '(533) 500-5758', '', '', b'0'),
(202, 0, 3, '0000-00-00', 'EMİRHAN DORUK', 'AKARER', '', 'İLKÖĞRETİM 2', 'BELDE MAH EFLATUN CAD 3246 SK ESEN SİTESİ A BLO NO 41', 'GÖKMEN AKARER', '', '(505) 299-3174', '', '', b'1'),
(203, 0, 3, '0000-00-00', 'ELİFNAZ', 'BAŞÇI', '', 'İLKÖĞRETİM 2', 'GÜLTEPE MAH SU PARKI KARŞISI YAVUZ SİTE A BLOK NO 10', 'BÜLENT BAŞÇI', '', '(537) 423-3372', '', '', b'0'),
(204, 0, 3, '0000-00-00', 'GÜLSÜM', 'TEKATLI', '', 'İLKÖĞRETİM 2', 'GAP MAH TURGUT ÖZAL BULV UMUT APT KAT 4 NO 12', 'MUSTAFA TEKATLI', '', '(532) 482-5053', '', '', b'0'),
(205, 0, 3, '0000-00-00', 'AHMET YİĞİT', 'İLERİ', '', 'İLKÖĞRETİM 2', 'TURGUT ÖZAL BULVARI YILDIZ APT KAT 3 NO 2', 'FATİH İLERİ', '', '(505) 931-3053', '', '', b'0'),
(206, 0, 3, '0000-00-00', 'AHMET BAYRAM', 'TERECE', '', 'İLKÖĞRETİM 2', 'GÜLTEPE MAH 4390 SK YEŞİL VADİ PLAZA APT NO 33', 'NİYAZİ TERECE', '', '(532) 284-4490', '', '', b'0'),
(207, 0, 3, '0000-00-00', 'HÜSEYİN NUR', 'TUNCAY', '', 'İLKÖĞRETİM 2', 'KÜLTÜR MAH MEZOPOTAMYA CAD ONUR SİT B BLOK NO 21', 'REMZİ TUNCAY', '', '(532) 242-6447', '', '', b'0'),
(208, 0, 3, '0000-00-00', 'VEYSEL DENİZ', 'AĞIN', '', 'İLKÖĞRETİM 2', '', 'VEYSİ AĞIN', '', '(532) 365-5032', '', '', b'1'),
(209, 0, 3, '0000-00-00', 'DENİZ ÇAĞAN ', 'AĞIN', '', 'İLKÖĞRETİM 2', 'GÜLTEPE MAH 4305 SK AKASYA SİTESİ 2 A BLOK NO 6', 'İRFAN AĞIN', '', '(535) 870-9345', '', '', b'0'),
(210, 0, 3, '0000-00-00', 'ASAF', 'ÖNAL', '', 'İLKÖĞRETİM 2', '', 'MEHMET ÖNAL', '', '(532) 172-1545', '', '', b'0'),
(211, 0, 3, '0000-00-00', 'AHMET', 'OĞUZ', '', 'İLKÖĞRETİM 2', 'ÇAMLITEPE MAH NUDEM APT KAT 5 NO 12', 'ŞAHABETTİN OĞUZ', '', '(532) 497-2607', '', '', b'1'),
(212, 0, 3, '0000-00-00', 'RANA', 'KESKİN', '', 'İLKÖĞRETİM 2', 'TILMERÇ MAH 3853 SK SİTE PALL A BLOK NO 12', 'ÖMER KESKİN', '', '(532) 288-2067', '', '', b'1'),
(213, 0, 3, '0000-00-00', 'ELİF', 'ERPOLAT', '', 'İLKÖĞRETİM 2', 'GÜLTEPE MAH YEŞİL VADİ APT KAT 3 NO 15', 'NEŞE ERPOLAT', '', '(533) 220-5036', '', '', b'0'),
(214, 0, 3, '0000-00-00', 'AHMET EFE', 'SARI', '', 'İLKÖĞRETİM 2', 'TOKİ MEMURSEN K 12 NO 6', 'SERDAR SARI ', '', '(542) 622-6521', '', '', b'0'),
(215, 0, 3, '0000-00-00', 'NİSA TUANA', 'UĞUR', '', 'İLKÖĞRETİM 2', 'MEMURSE N TOKİ K G3 BLOK JANDARMA LOJ KAT 3/11', 'ALPARSLAN UĞUR', '', '(505) 217-0258', '', '', b'1'),
(216, 0, 3, '0000-00-00', 'ÜLKÜ YAREN', 'KUZUCU', '', 'İLKÖĞRETİM 2', 'MEMURSEN TOKİ', 'MEHMET KUZUCU', '', '(505) 484-1380', '', '', b'0'),
(217, 0, 3, '0000-00-00', 'SEFA ', 'ÜLEÇ', '', 'İLKÖĞRETİM 2', '', 'SALİH ÜLEÇ', '', '(536) 416-5831', '', '', b'1'),
(218, 0, 3, '0000-00-00', 'DENİZ SARA', 'ONUR', '', 'İLKÖĞRETİM 2', 'GÜLTEPE MAH 4392 A YEŞİL VADİ KAT 3 NO 13', 'BEHZAT ONUR', '', '(532) 346-2452', '', '', b'1'),
(219, 0, 3, '0000-00-00', 'YUSUF DENİZ', 'KONAÇ', '', 'İLKÖĞRETİM 2', '', 'MEHMET KONAÇ', '', '(532) 055-7272', '', '', b'1'),
(220, 0, 3, '0000-00-00', 'NEHİR', 'SEZGİN', '', 'İLKÖĞRETİM 2', '', 'SERVET SEZGİN', '', '(505) 222-5202', '', '', b'1'),
(221, 0, 3, '0000-00-00', 'FURKAN', 'AKMAN', '', 'İLKÖĞRETİM 2', 'ÇAMLITEPE MAH ÖZALP YAPI KAT 4 NO 10', 'SIDDIK AKMAN', '', '(535) 794-1754', '', '', b'1'),
(222, 0, 3, '0000-00-00', 'NARİN', 'ŞAHİN', '', 'İLKÖĞRETİM 3', 'AKÇA KÖY BATMAN ', 'SALİH ŞAHİN', '', '(532) 417-7532', '', '', b'1'),
(223, 0, 3, '0000-00-00', 'ROJİN', 'ŞAHİN', '', 'İLKÖĞRETİM 3', 'AKÇA KÖY BATMAN ', 'SALİH ŞAHİN', '', '(532) 417-7532', '', '', b'1'),
(224, 0, 3, '0000-00-00', 'GÜNEŞ NAZ', 'GÜNEŞ', '', 'İLKÖĞRETİM 3', 'GÜLTEPE MAH ESENKENT SİT A BLOK KAT 2 NO 13', 'SEDAT GÜNEŞ', '', '(507) 260-6060', '', '', b'0'),
(225, 0, 3, '0000-00-00', 'BERAT KAAN', 'ÇELİK', '', 'İLKÖĞRETİM 3', 'GÜLTEPE MAH HELEN SİTESİ KAT 2 NO 5', 'MURAT ÇELİK', '', '(532) 344-1922', '', '', b'0'),
(226, 0, 3, '0000-00-00', 'MUHAMMED MUSAP', 'ÖZDEMİR', '', 'İLKÖĞRETİM 3', 'HÜRRİYET MAH ARI CAD NO 68/3', 'ENVER ÖZDEMİR', '', '(532) 241-7338', '', '', b'1'),
(227, 0, 3, '0000-00-00', 'SARP', 'ZAMAN', '', 'İLKÖĞRETİM 3', 'BELDE MAH 3246 SK ÜTOPYA SİTESİ B BLOK NO 14', 'AYŞEGÜL ZAMAN', '', '(506) 248-9265', '', '', b'0'),
(228, 0, 3, '0000-00-00', 'MİNA ', 'ALOTAİBİ', '', 'İLKÖĞRETİM 3', 'GÜLTEPE MAH GÜLKENT SİT 8. BLOK DAİRE 3', 'HİŞAM ALOTAİBİ', '', '(505) 746-1661', '', '', b'0'),
(229, 0, 3, '0000-00-00', 'TUANA BEDİA', 'NASIROĞLU', '', 'İLKÖĞRETİM 3', 'BAHÇELİEVLER MAH MİMAR SİNAN CAD GÜMÜŞ APT KAT 11', 'BİLAL NASIROĞLU', '', '(532) 371-7186', '', '', b'0'),
(230, 0, 3, '0000-00-00', 'MUHAMMED ADİL', 'DİREK', '', 'İLKÖĞRETİM 3', '', 'NEDİM DİREK', '', '(532) 461-8764', '', '', b'1'),
(231, 0, 3, '0000-00-00', 'MUHAMMED TAHA', 'OSMANOĞLU', '', 'İLKÖĞRETİM 3', 'TILMERÇ MAH 3853 SK MAVİKENT SİT KAT 2 NO 5', 'EMRAH OSMANOĞLU', '', '(543) 633-3603', '', '', b'1'),
(232, 0, 3, '0000-00-00', 'UMUT DENİZ ', 'KILIÇ', '', 'İLKÖĞRETİM 3', 'DİYARBAKIR CAD UMUT APT NO 274 DAİRE 14', 'SÜLEYMAN KILIÇ', '', '(532) 265-2948', '', '', b'1'),
(233, 0, 3, '0000-00-00', 'MEHMET', 'TERECE', '', 'İLKÖĞRETİM 3', 'BAHÇELİEVLER MAH 1655 SK HUZUR İTESİ B BLOK NO 8', 'VESİLE TERECE', '', '(505) 572-4100', '', '', b'0'),
(234, 0, 3, '0000-00-00', 'SERDAR', 'YİĞİT', '', 'İLKÖĞRETİM 3', '', 'TAMER YİĞİT', '', '(532) 495-0415', '', '', b'1'),
(235, 0, 3, '0000-00-00', 'DUHAN  EMİR ', 'FİDAN', '', 'İLKÖĞRETİM 3', 'TPAO BULV DÜNYA HAST KARŞ DORUK APT KAT 4 NO 6', 'KADİR FİDAN', '', '(532) 776-3182', '', '', b'0'),
(236, 0, 3, '0000-00-00', 'MUHAMMED YUSUF', 'YUSUFOĞLU', '', 'İLKÖĞRETİM 3', 'ÇAMLITEPE MAH 4003 SK YUSUFOĞLU SİTESİ B BLOK KAT 3 NO 5', 'SERDAR YUSUFOĞLU', '', '(532) 583-4040', '', '', b'0'),
(237, 0, 3, '0000-00-00', 'FATİH', 'DİLMEN', '', 'İLKÖĞRETİM 3', 'FATİH MAH ÖMER MUHTAR BUL SEVİM APT', 'REYHAN DİLMEN', '', '(531) 292-0492', '', '', b'0'),
(238, 0, 3, '0000-00-00', 'OSMAN EFE', 'YILMAZ', '', 'İLKÖĞRETİM 3', 'ZİYA GÖKALP MAH 1717 SK ERCAN APT KAT 6 NO 22', 'BİRSEN YILMAZ', '', '(505) 359-6779', '', '', b'1'),
(239, 0, 3, '0000-00-00', 'EMİNE ELA', 'YILMAZ', '', 'İLKÖĞRETİM 3', 'BELDE MAH 3204 SK NASIROĞLU APT NO 1', 'DİLEK YILMAZ', '', '(539) 326-1436', '', '', b'0'),
(240, 0, 3, '0000-00-00', 'ELİF NAZ ', 'GÜMÜŞTAŞ', '', 'İLKÖĞRETİM 3', 'BELDE MAH BÖLGE HAST KARŞISI ESENKENT SİTESİ A BLOK KAT 2 NO 8', 'ŞENOL GÜMÜŞTAŞ', '', '(532) 732-4033', '', '', b'0'),
(241, 0, 3, '0000-00-00', 'CİVAN ŞERVAN', 'KUTLU', '', 'İLKÖĞRETİM 3', '', 'YAVUZ KUTLU', '', '(533) 363-1461', '', '', b'1'),
(242, 0, 3, '0000-00-00', 'İNAL', 'EKİNCİ', '', 'İLKÖĞRETİM 3', 'ÇAMLITEPE MAH SOSUN CAD AKKENT SİTESİ KAT 1 NO 1', 'ŞEHMUS EKİNCİ', '', '(545) 244-7301', '', '', b'1'),
(243, 0, 3, '0000-00-00', 'CİVAN ', 'AZİZOĞLU', '', 'İLKÖĞRETİM 3', 'TILMERÇ MAH 3851 SK SİTE PALL A BLOK KAT 7', 'AZAD AZİZOĞLU', '', '(533) 475-9772', '', '', b'1'),
(244, 0, 3, '0000-00-00', 'BATUHAN ', 'TINMAZOL', '', 'İLKÖĞRETİM 3', 'KÜLTÜR MAH POLİS LOJ B 4 BLOK KAT 3 NO 7', 'OSMAN TINMAZOL', '', '(505) 772-1409', '', '', b'0'),
(245, 0, 3, '0000-00-00', 'AZRA NUR', 'GÜLMEZ', '', 'İLKÖĞRETİM 3', 'ERTUĞRUL PARK', 'ŞAHİN GÜLMEZ', '', '(533) 382-7582', '', '', b'0'),
(246, 0, 3, '0000-00-00', 'ÖMER SEMİH', 'GÜNER', '', 'İLKÖĞRETİM 3', 'GAP MAH SENA DÜĞÜN SALONU ARKASI', 'VAHAP GÜNER', '', '(507) 246-1113', '', '', b'0'),
(247, 0, 3, '0000-00-00', 'FEREMEZ', 'CANGİR', '', 'İLKÖĞRETİM 3', 'GÜLTEPE MAH DEMOKRASİ BULV CANGİR PETROL ÜSTÜ NO 35/14', 'KADRİ CANGİR', '', '(532) 371-0151', '', '', b'1'),
(248, 0, 3, '0000-00-00', 'HAMDULLAH ', 'GÜNEY', '', 'İLKÖĞRETİM 3', 'TILMERÇ MAH GÜNEY APT 4 KAT 4 NO 11', 'AYDIN GÜNEY', '', '(532) 312-7297', '', '', b'0'),
(249, 0, 3, '0000-00-00', 'RENAS', 'YILMAZ', '', 'İLKÖĞRETİM 3', 'GÜLTEPE MAH ESENPARK SİTESİ B BLOK KAT 8 NO 18', 'MENSUR YILMAZ', '', '(532) 737-3922', '', '', b'0'),
(250, 0, 3, '0000-00-00', 'M.BULUT ', 'MANSUR', '', 'İLKÖĞRETİM 3', 'TILMERÇ MAH SOSUN CAD AKCAD SİT B BLOK KAT 5/13', 'ÖZLEM MANSUR', '', '(505) 730-2787', '', '', b'1'),
(251, 0, 3, '0000-00-00', 'AZİZ ARDA ', 'ARSLAN', '', 'İLKÖĞRETİM 3', 'BAHÇİVAN ARKASI İPEK SİTESİ', 'ANİFE ARSLAN', '', '(507) 918-0291', '', '', b'0'),
(252, 0, 3, '0000-00-00', 'MERT ALİ', 'GÜNEY', '', 'İLKÖĞRETİM 3', 'GÜNEY APT TILMERÇ YOLU ÜZERİ', 'MURAT GÜNEY', '', '(539) 865-7314', '', '', b'0'),
(253, 0, 3, '0000-00-00', 'MUHAMMED MİRHAT', 'NASIROĞLU', '', 'İLKÖĞRETİM 3', '', 'MECİT NASIROĞLU', '', '(544) 289-1263', '', '', b'1'),
(254, 0, 3, '0000-00-00', 'MELEK İNCİ', 'ERTURUL', '', 'İLKÖĞRETİM 3', 'GÜLTEPE MAH KARATAY POLİS LOJ A 8 BLOK NO 3', 'ÖMER ERTURUL', '', '(505) 231-9812', '', '', b'1'),
(255, 0, 3, '0000-00-00', 'FURKAN', 'DÖNMEZ', '', 'İLKÖĞRETİM 3', 'MEMURSEN TOKİ ÖZEL HAREKAT LOJ  B 12 NO 80 ', 'AYHAN DÖNMEZ', '', '(505) 225-5935', '', '', b'1'),
(256, 0, 3, '0000-00-00', 'ÖMER BURAK', 'GÜNDEM', '', 'İLKÖĞRETİM 3', 'GÜLTEPE MAH ADLİYE LOJ NO 10/5', 'ONUR GÜNDEM', '', '(505) 779-2047', '', '', b'1'),
(257, 0, 3, '0000-00-00', 'YEKTA  ', 'BAYINDIR', '', 'İLKÖĞRETİM 3', '', 'VEYSİ BAYINDIR', '', '(507) 833-4810', '', '', b'1'),
(258, 0, 3, '0000-00-00', 'ELİF FEYZA', 'KAVAK', '', 'İLKÖĞRETİM 3', '', 'FATİH KAVAK', '', '(532) 564-6171', '', '', b'1'),
(259, 0, 3, '0000-00-00', 'TOPRAK', 'ERGEN', '', 'İLKÖĞRETİM 4', 'BEŞİRİ', 'MUTLU ERGEN', '', '0505 649 39 81', '', '', b'0'),
(260, 0, 3, '0000-00-00', 'HAVİN', 'GÜNEŞ', '', 'İLKÖĞRETİM 4', 'GÜLTEPE MAH ESENKENT SİT A BLOK KAT 5 NO 13', 'SEDAT GÜNEŞ', '', '(507) 722-6060', '', '', b'0'),
(261, 0, 3, '0000-00-00', 'ALİ', 'KÖK', '', 'İLKÖĞRETİM 4', 'MEMURSEN TOKİ Y 6 DAİRE 7', 'TALİP KÖK', '', '(505) 252-7380', '', '', b'0'),
(262, 0, 3, '0000-00-00', 'AHMET KEREM', 'EKMEN', '', 'İLKÖĞRETİM 4', 'BAHÇELİEVLER MAH HUZUR 2 SİTESİ D BLOK 4.KAT NO 10', 'UMUT DOĞU EKMEN', '', '(533) 526-2140', '', '', b'1'),
(263, 0, 3, '0000-00-00', 'OZAN ÖMER ', 'VURAL', '', 'İLKÖĞRETİM 4', 'BAHÇELİEVLER MAH 1655 SK HUZUR SİT B BLOK NO 2', 'SELÇUK VURAL', '', '(505) 352-5301', '', '', b'0'),
(264, 0, 3, '0000-00-00', 'RANA', 'NASIROĞLU', '', 'İLKÖĞRETİM 4', 'EMİN BİLİYOR', 'ABDURAHMAN', '', '(555) 280-3287', '', '', b'0'),
(265, 0, 3, '0000-00-00', 'FİRDEVS', 'ÖZEK', '', 'İLKÖĞRETİM 4', 'GÜLTEPE MAH EFLATUN CAD BEYAZKONAK 1 APT KAT 2 NO 5', 'BÜLENT ÖZEK', '', '(533) 565-4565', '', '', b'0'),
(266, 0, 3, '0000-00-00', 'HÜSEYİN EFE', 'OĞUZ', '', 'İLKÖĞRETİM 4', 'KÜLTÜR MAH ADALET CAD HİCRET APT KAT 5 NO 10', 'MUSTAFA OĞUZ', '', '(505) 853-6985', '', '', b'0'),
(267, 0, 3, '0000-00-00', 'AHMET', 'AYDIN', '', 'İLKÖĞRETİM 4', 'TEİAŞ LOJMANLARI BATI RAMAN YOLU E BLOK NO 3', 'CENGİZ AYDIN', '', '(505) 314-2942', '', '', b'1'),
(268, 0, 3, '0000-00-00', 'MUHAMMED EMİN', 'BEDİR', '', 'İLKÖĞRETİM 4', 'TILMERÇ 3853 SK. SİTE PLAZA B BLOK', 'ŞEMSETTİN BEDİR', '', '(532) 276-1314', '', '', b'1'),
(269, 0, 3, '0000-00-00', 'ESMA ', 'BULŞU', '', 'İLKÖĞRETİM 4', 'ŞAFAK MAH 4422 SK BULŞU APT REGAL KARŞISI NO 9', 'ŞÜKRAN BULŞU', '', '(544) 629-2417', '', '', b'0'),
(270, 0, 3, '0000-00-00', 'MİNA ', 'FAKİRULLAHOĞLU', '', 'İLKÖĞRETİM 4', 'ÇAMLITEPE MH. 4030 SK. YUSUFOĞLU SİT. B BLOK NO:3', 'FATİH FAKİRULLHOĞLU', '', '(505) 348-7882', '', '', b'0'),
(271, 0, 3, '0000-00-00', 'MUHAMMED ', 'TURAN', '', 'İLKÖĞRETİM 4', 'GAP MAH. T. ÖZAL BLV. 2505 SK NO:22', 'MUZAFFER TURAN', '', '(532) 611-1642', '', '', b'0'),
(272, 0, 3, '0000-00-00', 'MUHAMMED ARAS', 'TERECE', '', 'İLKÖĞRETİM 4', 'GÜLTEPE MAH GÜLKENT SİTESİ NO 30/4', 'TÜLAY TERECE', '', '(543) 233-3328', '', '', b'0'),
(273, 0, 3, '0000-00-00', 'HASAN MAHİR ', 'TUNCAY', '', 'İLKÖĞRETİM 4', 'KÜLTÜR MAH MEZOPOTAMYA CAD ONUR SİT B BLOK NO 2', 'REMZİ TUNCAY', '', '(532) 242-6447', '', '', b'0'),
(274, 0, 3, '0000-00-00', 'YEKTA ONUR ', 'ERİN', '', 'İLKÖĞRETİM 4', 'PARK REZİDANS', 'ÖMER FARUK ERİN', '', '(505) 779-6820', '', '', b'0'),
(275, 0, 3, '0000-00-00', 'NİDA', 'HAVAS', '', 'İLKÖĞRETİM 4', 'GÜLTEPE MAH GÜLKENT SİTESİ DAİRE 6', 'FADIL HAVAS', '', '(506) 751-5353', '', '', b'1'),
(276, 0, 3, '0000-00-00', 'İDİL VİYAN', 'ER', '', 'İLKÖĞRETİM 4', 'GÜLTEPE MAH GÜLKENT SİT 4931 SK 8 BLOK NO 2', 'SİNAN ER', '', '(532) 630-7661', '', '', b'1'),
(277, 0, 3, '0000-00-00', 'AHMET TAHA', 'ÇINAR', '', 'İLKÖĞRETİM 4', 'AYDINLIK EVLER MAH 8. CAD NO 175/A', 'HÜSEYİN ÇINAR', '', '(533) 697-4050', '', '', b'0'),
(278, 0, 3, '0000-00-00', 'ALİ RUMET', 'SEVİM', '', 'İLKÖĞRETİM 4', 'GÜLTEPE MAH ŞAT PARK SİT A BLOK NO 3', 'AHMET SEVİM', '', '(533) 252-0980', '', '', b'0'),
(279, 0, 3, '0000-00-00', 'MUSTAFA ALİ', 'GÖKMEN', '', 'İLKÖĞRETİM 4', 'BELDE MAH SOSUN CAD BEYAZKENT ŞELALE EVLERİ A BLOK KAT 3', 'NUSRETTİN GÖKMEN', '', '(532) 069-9982', '', '', b'1'),
(280, 0, 3, '0000-00-00', 'SAVAŞ ', 'YARGI', '', 'İLKÖĞRETİM 4', 'KÜLTÜR MAH. YARGI APT', 'İSMET YARGI', '', '(532) 431-8641', '', '', b'0'),
(281, 0, 3, '0000-00-00', 'KEREM ', 'KESKİN', '', 'İLKÖĞRETİM 4', 'TILMERÇ MAH 3853 SK SİTE PAL A BLOK NO 12', 'ÖMER KESKİN', '', '(532) 288-2067', '', '', b'1'),
(282, 0, 3, '0000-00-00', 'MUHAMMED FURKAN', 'YILMAZ', '', 'İLKÖĞRETİM 4', 'GÜLTEPE MAH ESENPARK SİT B BLOK KAT 8 NO 18', 'MENSUR YILMAZ', '', '(532) 737-3922', '', '', b'0'),
(283, 0, 3, '0000-00-00', 'RENGİN', 'ÖZALP', '', 'İLKÖĞRETİM 4', 'ÇAMLITEPE MAH 4057 SK NO 8/13', 'YAŞAR ÖZALP', '', '(532) 563-5732', '', '', b'1'),
(284, 0, 3, '0000-00-00', 'BEYZA', 'ASLAN', '', 'İLKÖĞRETİM 4', 'JANDARMA LOJMANLARI', 'NABİ ASLAN', '', '(505) 316-2472', '', '', b'0'),
(285, 0, 3, '0000-00-00', 'SEVGİ', 'GÖRMÜŞ', '', 'İLKÖĞRETİM 4', 'ÇAMLITEPE MAH 4007 SK AKSOY APT KAT 4 NO 15', 'RECEP GÖRMÜŞ', '', '(532) 492-9772', '', '', b'0'),
(286, 0, 3, '0000-00-00', 'MUHAMMED ZEKİ', 'BAŞARAN', '', 'İLKÖĞRETİM 4', 'GÜLTEPE MAH EFLATUN CAD BEYAZ KONAK 1 KAT 4 NO 14', 'ABDULKADİR BAŞARAN', '', '(532) 276-1315', '', '', b'0'),
(287, 0, 3, '0000-00-00', 'YUSUF BERKE', 'YABA', '', 'İLKÖĞRETİM 4', 'ÇAMLITEPE MAH SOSUN CAD MUYAP SİT NO 38/13', 'ÖKKEŞ YABA', '', '(532) 565-0155', '', '', b'1'),
(288, 0, 3, '0000-00-00', 'ROJDA', 'GÖRNÜ', '', 'İLKÖĞRETİM 4', 'TILMERÇ MAH 3853 SK MAVİKENT SİT A BLOK 5/11', 'İLKAY GÖRNÜ', '', '(542) 275-9598', '', '', b'1'),
(289, 0, 3, '0000-00-00', 'AYBERK ', 'VURAL', '', 'İLKÖĞRETİM 4', 'GÜLTEPE MAH ZAFER APT SEFA SİT 2 B BLOK NO 7', 'MURAT VURAL', '', '(505) 683-1721', '', '', b'0'),
(290, 0, 3, '0000-00-00', 'MERYEM ', 'İZGİ', '', 'İLKÖĞRETİM 4', 'TILMERÇ MAH MİM SİT B BLOK NO 10', 'MERT BARIŞ YEŞİLMEN', '', '(542) 472-0572', '', '', b'1'),
(291, 0, 3, '0000-00-00', 'OĞUZHAN ', 'GÜNCAN', '', 'İLKÖĞRETİM 4', 'BAĞDU MAH TEKEL CAD BİNA 29 KAT 3 NO 5 KARDEŞLER APT BEŞİRİ', 'İSMAİL GÜNCAN', '', '(505) 950-5374', '', '', b'1'),
(292, 0, 3, '0000-00-00', 'DAVUZ', 'BİNGÖL', '', 'İLKÖĞRETİM 4', 'BELDE MAH 3224 SK KILIÇ APT KAT 4 NO 8', 'İHSAN BİNGÖL', '', '(532) 069-7818', '', '', b'1'),
(293, 0, 3, '0000-00-00', 'ARDA ', 'KONAÇ', '', 'İLKÖĞRETİM 4', 'PINAR BAŞI MAH 2219 SK NO 35/3', 'VEYSİ KONAÇ', '', '(532) 315-7222', '', '', b'0'),
(294, 0, 3, '0000-00-00', 'YUNUS EMRE', 'ASLAN', '', 'İLKÖĞRETİM 4', 'KÜLTÜR MAH POLİS LOJ BAHÇE 4 A1 NO 8', 'İBRAHİM ASLAN', '', '(505) 454-2006', '', '', b'0'),
(295, 0, 3, '0000-00-00', 'ALİ GÜNEŞ', 'PALA', '', 'İLKÖĞRETİM 4', 'GÜLTEPE MAH. MERETO SİTESİ', 'NECLA PALA', '', '(553) 465-3495', '', '', b'0'),
(296, 0, 3, '0000-00-00', 'FURKAN YUNUS', 'TURĞUT', '', 'İLKÖĞRETİM 4', '', 'HAKKI TURĞUT', '', '(532) 637-5326', '', '', b'1'),
(297, 0, 3, '0000-00-00', 'MERVE', 'DANIŞ', '', 'İLKÖĞRETİM 4', 'ŞİRİNEVLER MAH MİLLİ EGEMENLİK CAD DANIŞ APT 4/5', 'UĞUR DANIŞ', '', '(532) 327-2350', '', '', b'0'),
(298, 0, 3, '0000-00-00', 'SEMİH', 'ŞAHİN', '', 'İLKÖĞRETİM 5', 'AKÇA KÖY BATMAN ', 'SALİH ŞAHİN', '', '(532) 417-7532', '', '', b'1'),
(299, 0, 3, '0000-00-00', 'MUHAMMED EMİR', 'ÖZDEMİR', '', 'İLKÖĞRETİM 5', 'TURGUT ÖZAL BULV HALKBANK ÜSTÜ 6.KAT', 'ADNAN ÖZDEMİR', '', '(533) 545-0909', '', '', b'0'),
(300, 0, 3, '0000-00-00', 'HİRANUR', 'ÖZDEMİR', '', 'İLKÖĞRETİM 5', 'TURGUT ÖZAL BULV HALKBANK ÜSTÜ 6.KAT', 'SUAD ÖZDEMİR', '', '(532) 426-7794', '', '', b'0'),
(301, 0, 3, '0000-00-00', 'ZİLAN', 'VURAL', '', 'İLKÖĞRETİM 5', 'BAHÇELİEVLER MAH 1655 SK HUZUR 1 SİT B BLOK NO 2', 'SELÇUK VURAL', '', '(505) 352-5301', '', '', b'0'),
(302, 0, 3, '0000-00-00', 'HARUN ', 'KÜNKÜL', '', 'İLKÖĞRETİM 5', 'GÜLTEPE MAH ERTUĞRUL PARK B BLOK KAT 6 NO 24', 'ABDULLAH KÜNKÜL', '', '(532) 775-2896', '', '', b'0'),
(303, 0, 3, '0000-00-00', 'ELİF ', 'DOĞU', '', 'İLKÖĞRETİM 5', 'GÜLTEPE MAH 4396 SK HELİN SİT B BLOK NO 12', 'LOKMAN DOĞU', '', '(505) 344-7348', '', '', b'0'),
(304, 0, 3, '0000-00-00', 'MERYEM BEHİYE', 'TERECE', '', 'İLKÖĞRETİM 5', 'GÜLTEPE MAH GÜLKENT SİT NO 30/4', 'TÜLAY TERECE', '', '(543) 233-3328', '', '', b'0'),
(305, 0, 3, '0000-00-00', 'MUHAMMED ZİLAN', 'SAYAR', '', 'İLKÖĞRETİM 5', 'KÜLTÜR MAH KIBRIS ŞEHİTLERİ BULV NO 18', 'KADRİ SAYAR', '', '(532) 397-7867', '', '', b'1'),
(306, 0, 3, '0000-00-00', 'CANER', 'PLATİN', '', 'İLKÖĞRETİM 5', 'TILMERÇ MÖAH 3853 SK MAVİKENT SİTE B BLOK KAT 3 NO 7', 'ALİ AKMAN', '', '(532) 709-5170', '', '', b'1'),
(307, 0, 3, '0000-00-00', 'EYÜP', 'İMİR', '', 'İLKÖĞRETİM 5', '', 'ZEKİ İMİR', '', '(533) 567-4296', '', '', b'1'),
(308, 0, 3, '0000-00-00', 'NUPELDA NUR', 'TÜRKOĞLU', '', 'İLKÖĞRETİM 5', 'GÜLTEPE MAH EFLATUN CAD NUR APT KAT 2 NO 8', 'MEHMET HANİFİ', '', '(505) 346-3890', '', '', b'1'),
(309, 0, 3, '0000-00-00', 'BARAN ', 'YILMAZ', '', 'İLKÖĞRETİM 5', 'YAVUZ SELİM MAH 3509 SK NO 106/3', 'EKREM YILMAZ', '', '(532) 463-1774', '', '', b'0'),
(310, 0, 3, '0000-00-00', 'CEM ', 'ERBİL', '', 'İLKÖĞRETİM 5', 'GÜLTEPE MAH 4304 SK MİRAÇ APT KAT 2 DAİRE 5', 'CEM ERBİL', '', '(505) 454-0204', '', '', b'0'),
(311, 0, 3, '0000-00-00', 'NEHİR', 'YILDIZ', '', 'İLKÖĞRETİM 5', 'GAP MAH TURGUT ÖZAL BULV BORAL APT KAT 1 NO 5', 'DENİZ YILDIZ', '', '(505) 221-9378', '', '', b'0'),
(312, 0, 3, '0000-00-00', 'SUDENAZ', 'PLATİN', '', 'İLKÖĞRETİM 5', 'GAP MAH DİYARBAKIR CAD ENES APT KAT 5 NO 10', 'RAMAZAN PLATİN', '', '(535) 842-7255', '', '', b'0'),
(313, 0, 3, '0000-00-00', 'METEHAN ', 'KARADAVUT', '', 'İLKÖĞRETİM 5', 'CUMHURİYET MAH BEŞİRİ İLÇE JANDARMA KOM LOJMANLARI', 'MEHMET KARADAVUT', '', '(505) 222-8788', '', '', b'0'),
(314, 0, 3, '0000-00-00', 'ROJİN', 'YAVUZ', '', 'İLKÖĞRETİM 5', 'GÜLTEPE MAH 3805 SK NO 24/21', 'ZAFER YAVUZ', '', '(507) 265-5424', '', '', b'0'),
(315, 0, 3, '0000-00-00', 'SERHAT ', 'DEMİRBİLEK', '', 'İLKÖĞRETİM 5', 'GÜLTEPE MAH EFLATUN CAD BİLKENT SİT A BLOK KAT 8 NO 34', 'MUZAFFER DEMİRBİLEK', '', '(532) 463-8590', '', '', b'0'),
(316, 0, 3, '0000-00-00', 'MUHAMMED FURKAN', 'GÜN', '', 'İLKÖĞRETİM 5', 'GÜLTEPE MAH YENİŞEHİR KONUTLARI 2.ETAP A 8', 'MUSTAFA GÜN', '', '(532) 166-2941', '', '', b'0'),
(317, 0, 3, '0000-00-00', 'ARDA ', 'ÖNAL', '', 'İLKÖĞRETİM 5', 'SİTEPAL', 'TURGUT ÖNAL', '', '(532) 220-6668', '', '', b'0'),
(318, 0, 3, '0000-00-00', 'ZEYNEP ', 'KORKUT', '', 'İLKÖĞRETİM 5', 'TILMERÇ MAH MAVİKENT SİT B BLOK KAT 3 NO 8', 'MELEK ÖZBEK', '', '(505) 352-5724', '', '', b'1'),
(319, 0, 3, '0000-00-00', 'SABRİ', 'SUÇİN', '', 'İLKÖĞRETİM 5', 'KÜLTÜR MAH 2605 SK NO 59', 'ERKAN SUÇİN', '', '(533) 419-5000', '', '', b'0'),
(320, 0, 3, '0000-00-00', 'SERPİL ', 'KARABULUT', '', 'İLKÖĞRETİM 5', 'GÜLTEPE MAH YAŞATAN SİT A BLOK KAT 3 NO 3', 'SEMİH KARABULUT', '', '(533) 734-7900', '', '', b'0'),
(321, 0, 3, '0000-00-00', 'NEHİR', 'KURT', '', 'İLKÖĞRETİM 5', 'ÇAMLITEPE MAH SOSUN CAD ROZERİN APT KAT 5 NO 10', 'SERVET KURT', '', '(532) 287-2133', '', '', b'0'),
(322, 0, 3, '0000-00-00', 'SELMAN ', 'ŞEBAY', '', 'İLKÖĞRETİM 5', 'FATİH MAH ', 'MAHMUT ŞEBAY', '', '(544) 617-9285', '', '', b'0'),
(323, 0, 3, '0000-00-00', 'ENES', 'DEVECİ', '', 'İLKÖĞRETİM 5', 'KÜLTÜR MAH ADALET CAD 2636 SK ÖZLER APT NO 1/1', 'AHMET EMRE DEVECİ', '', '(505) 238-2489', '', '', b'1'),
(324, 0, 3, '0000-00-00', 'İLAYDA NİSA', 'TOMBAK', '', 'İLKÖĞRETİM 5', 'TILMERÇ AMH MEMURSEN TOKİ KG5 NO 7', 'ERCAN TOMBAK', '', '(533) 326-5688', '', '', b'1'),
(325, 0, 3, '0000-00-00', 'ARDA ', 'ERİMAN', '', 'İLKÖĞRETİM 5', 'GAP MAH 2504 SK İNAL CAN APT B BLOK KAT 5 NO 10', 'OKTAY ERİMAN', '', '(505) 232-3669', '', '', b'1'),
(326, 0, 3, '0000-00-00', 'AHMET', 'KOÇ ', '', 'İLKÖĞRETİM 5', 'BELDE MAH 3247 SK ÇAĞLAYAN SİT ZEMİN KAT ', 'KADİR KOÇ', '', '(544) 383-8899', '', '', b'1');
INSERT INTO `ogrenci` (`ID`, `ARAC_ID`, `OKUL_ID`, `KAYIT_TARIH`, `ADI`, `SOYADI`, `BABA_ADI`, `SINIF`, `ADRES`, `VELI_ADI`, `VELI_SOYADI`, `VELI_GSM`, `VELI_EV_TLF`, `IS_ADRES`, `IPTAL`) VALUES
(327, 0, 3, '0000-00-00', 'MERYEM ', 'CANGİR', '', 'İLKÖĞRETİM 5', 'GÜLTEPE MAH DEMOKRASİ BULV CANGİR PETROL ÜSTÜ NO 35/14', 'KADRİ CANGİR', '', '(532) 371-0151', '', '', b'1'),
(328, 0, 3, '0000-00-00', 'ECE NUR', 'ÇAPAR', '', 'İLKÖĞRETİM 5', 'BEŞİRİ MERKEZ ÇARŞI JANDARMA LOJ ', 'ÖZKAN ÇAPAR', '', '(544) 713-2273', '', '', b'1'),
(329, 0, 3, '0000-00-00', 'BARAN ', 'İLİK', '', 'İLKÖĞRETİM 5', 'GAP MAH 2512 SK NO 60 BATMAN ', 'ZEKERİYA İLİK', '', '(532) 498-8472', '', '', b'1'),
(330, 0, 3, '0000-00-00', 'ZEYNEP MİSLİNA', 'TİLEĞİ', '', 'İLKÖĞRETİM 5', 'ÇAMLITEPE MAH 4014 SK MİNA APT KAT 3/9', 'NECMETTİN TİLEĞİ', '', '(532) 559-1403', '', '', b'0'),
(331, 0, 3, '0000-00-00', 'ILGAZ BAHA', 'YILDIRIM', '', 'İLKÖĞRETİM 5', '14.CÜ İUS KOMUTANLIĞI LOJMANLARI MİSAFİRHANESİ', 'TAHSİN YILDIRIM', '', '(530) 260-3396', '', '', b'0'),
(332, 0, 3, '0000-00-00', 'ZEKERİYA', 'NASIROĞLU', '', 'İLKÖĞRETİM 5', 'GÜLTEPE MAH EFATUN CAD ERTUĞRUL PARK SİT B BLOK KAT 5 ', 'SELMAN NASIROĞLU', '', '(542) 266-2062', '', '', b'0'),
(333, 0, 3, '0000-00-00', 'ZİLAN ', 'EKMEN', '', 'İLKÖĞRETİM 5', 'GÜLTEPE MAH YENİŞEHİR APT F BLOK NO 7', 'ABDULLAH EKMEN', '', '(505) 503-7799', '', '', b'0'),
(334, 0, 3, '0000-00-00', 'MUSTAFA MERT', 'AĞIRBAŞ', '', 'İLKÖĞRETİM 5', 'BATMAN BEŞİRİ MERKEZ LOJMANLARI', 'ÖZKAN AĞIRBAŞ', '', '(505) 230-5846', '', '', b'1'),
(335, 0, 3, '0000-00-00', 'SİMAY', 'ASLAN', '', 'İLKÖĞRETİM 5', 'MEMURSEN TOKİ KG 6 -2 BLOK DAİRE 4', 'MURAT ASLAN', '', '(505) 350-0622', '', '', b'1'),
(336, 0, 3, '0000-00-00', 'HAZAR KAYRA ', 'TEPE', '', 'İLKÖĞRETİM 5', 'HİLAL MAH KOMANDO CAD ORHAN YARGIÇ APT KAT 4 NO 9', 'SELÇUK TEPE', '', '(505) 623-1631', '', '', b'0'),
(337, 0, 3, '0000-00-00', 'NEHİR REİS', 'BAL', '', 'İLKÖĞRETİM 5', 'ASKERİYE KOMANDO LOJMANLARI ', 'HAMİT BAL', '', '(532) 773-9247', '', '', b'0'),
(338, 0, 3, '0000-00-00', 'ALİ ARDA', 'TENDİK', '', 'İLKÖĞRETİM 5', 'KÜLTÜR MAH 2629 SK 10 T APT KAT 3/6', 'BAHAR TENDİK', '', '(544) 495-3909', '', '', b'0'),
(339, 0, 3, '0000-00-00', 'MUHAMMED', 'ERKÜL', '', 'İLKÖĞRETİM 5', 'BELDE MAH İSTİKBAL CAD MERETO APT NO 9', 'AHMET ERKÜL', '', '(533) 746-1348', '', '', b'1'),
(340, 0, 3, '0000-00-00', 'ADNAN', 'KARTAL', '', 'İLKÖĞRETİM 5', 'EMİN', 'CUMA KALTAL', '', '(533) 927-1097', '', '', b'0'),
(341, 0, 3, '0000-00-00', 'MUHAMMED ALİ', 'ÖZCAN', '', 'İLKÖĞRETİM 5', 'DİYARBAKIR CAD HALKBANK ÜSTÜ 8.KAT NO 29', 'MURAT ÖZCAN', '', '(532) 272-2744', '', '', b'0'),
(342, 0, 3, '0000-00-00', 'ALİ OSMAN', 'GÜNEL', '', 'İLKÖĞRETİM 5', 'BELDE MAH SOSUN CAD BEYAZKENT ŞELALE EVLERİ A BLOK KAT 2', 'HAKAN GÜNEL', '', '(532) 593-7543', '', '', b'1'),
(343, 0, 3, '0000-00-00', 'AVŞİN ', 'YILMAZER', '', 'İLKÖĞRETİM 5', 'BELDE MAH 1375 SK BİLKENT KAT 4 NO 15', 'MURAT YILMAZER', '', '(541) 233-7206', '', '', b'0'),
(344, 0, 3, '0000-00-00', 'MUHAMMED TAHA', 'ÜNVER', '', 'İLKÖĞRETİM 5', 'SERVİS KULLANMAYACAK', 'YILMAZ ÜNVER', '', '(535) 272-7041', '', '', b'1'),
(345, 0, 3, '0000-00-00', 'EZGİ NUR ', 'ARSLAN', '', 'İLKÖĞRETİM 5', 'BAHÇEVAN ARKASI İPEK SİTESİ B BLOK', 'M.ZAHİR  ARSLAN', '', '(507) 233-4548', '', '', b'0'),
(346, 0, 3, '0000-00-00', 'MİR MUHAMMED', 'ASLANKILIÇ', '', 'İLKÖĞRETİM 5', 'TILMERÇ MAH 3860 SK F 1 SİT C BLOK DAİRE 9', 'SADULLAH ASLANKILIÇ', '', '(530) 666-9927', '', '', b'1'),
(347, 0, 3, '0000-00-00', 'ZEYNEP ELİF', 'KAYA', '', 'İLKÖĞRETİM 5', 'JANDARMA ALAY KOMUTANLIĞI LOJ ORHAN YAZGIÇ APT NO 358/10', 'ALİ KAYA', '', '(505) 224-5720', '', '', b'0'),
(348, 0, 3, '0000-00-00', 'ARAM ROJEN', 'YILDIZ', '', 'İLKÖĞRETİM 5', '', 'YUSUF YILDIZ', '', '(505) 237-7260', '', '', b'1'),
(349, 0, 3, '0000-00-00', 'FIRAT', 'GÜNEŞ', '', 'İLKÖĞRETİM 5', 'KÜLTÜR MAH 2634 SK VEYSEL APT NO 9/8', 'CİHAT GÜNEŞ', '', '(532) 610-5120', '', '', b'0'),
(350, 0, 0, '0000-00-00', 'VEYSİ ', 'ŞEN', '', 'İLKÖĞRETİM 5', 'ÇAMLITEPE MAH 4096 SK ÖZ FIRAT SİT A BLOK NO 4', 'YASEMİN ŞEN', '', '(506) 951-2448', '', '', b'0'),
(351, 0, 3, '0000-00-00', 'ZÜHRE CAN', 'İŞCAN', '', 'İLKÖĞRETİM 5', 'TILMERÇ MAH SOSUN CAD İKİZ KULELER SİTESİ ', 'MEHMET MURAT', '', '(532) 524-5964', '', '', b'1'),
(352, 0, 3, '0000-00-00', 'ZÜLAL ', 'ERKUL', '', 'İLKÖĞRETİM 5', 'FATİH MAH TPAO BULV GÜNEY APT KAT 2  NO 5', 'EKREM ERKUL', '', '(507) 233-5044', '', '', b'1'),
(353, 0, 3, '0000-00-00', 'MUSTAFA', 'KARÇAK', '', 'İLKÖĞRETİM 5', 'HİLAL MAH KOMANDO CAD EMİN SEVİM APT NO 8', 'AHMET KARÇAK', '', '(505) 279-5944', '', '', b'0'),
(354, 0, 3, '0000-00-00', 'MEHMET BURAK', 'PEKTAŞ', '', 'İLKÖĞRETİM 5', '', 'FATMA PEKTAŞ', '', '(533) 153-6361', '', '', b'1'),
(355, 0, 3, '0000-00-00', 'YUNUS ENES', 'IŞIK', '', 'İLKÖĞRETİM 5', 'ÇAMLITEPE MAH 4009 SK NO 23/6 SERHAT SİTESİ', 'RIDVAN IŞIK', '', '(533) 774-7417', '', '', b'1'),
(356, 0, 3, '0000-00-00', 'ELİF ÖZGE', 'DANIŞ', '', 'İLKÖĞRETİM 5', 'ŞİRİNEVLER MAH MİLLİ EGEMENLİK CAD DANIŞ APT KAT 4/5', 'UĞUR DANIŞ', '', '(532) 327-2350', '', '', b'0'),
(357, 0, 3, '0000-00-00', 'ABDULLAH', 'İNANÇ', '', 'İLKÖĞRETİM 6', 'GÜLTEPE MAH 4392 SK ABDULLAH ŞAT SİT ŞAT PARK SİT B LOK NO 8', 'HEYBET İNANÇ', '', '(536) 693-4927', '', '', b'0'),
(358, 0, 3, '0000-00-00', 'IRMAK', 'ERGEN', '', 'İLKÖĞRETİM 6', 'TILMERÇ MAH MEMURSEN TOKİ Y 10 KAT 2 NO 3', 'MUTLU ERGEN', '', '(505) 649-3981', '', '', b'1'),
(359, 0, 3, '0000-00-00', 'MUHAMMED ABDURRAHMAN ', 'ÖZEK', '', 'İLKÖĞRETİM 6', 'GÜLTEPE MAH EFLATUN CAD BEYAZ KONAK APT KAT 3 NO 10', 'BÜLENT ÖZEK', '', '(533) 565-4565', '', '', b'0'),
(360, 0, 3, '0000-00-00', 'YUSUF YAHYA', 'ŞEKER', '', 'İLKÖĞRETİM 6', 'GÜLTEPE MAH EFLATUN CAD BEYAZ KONAK APT KAT 3 NO 10', 'FERHAT ŞEKER', '', '(532) 297-3188', '', '', b'0'),
(361, 0, 3, '0000-00-00', 'ALMİNA', 'BOZOĞUZ', '', 'İLKÖĞRETİM 6', 'HİLAL MAH KOMANDO CAD MUZAFFER BAKIŞ APT KAT 4 NO 10', 'BURAK BOZOĞUZ', '', '(505) 292-3570', '', '', b'0'),
(362, 0, 3, '0000-00-00', 'BARAN ', 'YAMAL', '', 'İLKÖĞRETİM 6', 'ÇAMLITEPE MAH 121.CAD 4005 SK BAHAR APT KAT 3/8', 'ŞEHMUS YAMAL', '', '(533) 553-6589', '', '', b'0'),
(363, 0, 3, '0000-00-00', 'SUDEM', 'ÜNEY', '', 'İLKÖĞRETİM 6', 'GÜLTEPE MAH EFLATUN CAD PARK REZİDANS SİT C BLOK ', 'VEYSİ ÜNEY', '', '(533) 500-5758', '', '', b'0'),
(364, 0, 3, '0000-00-00', 'İKRANUR', 'ERASLAN', '', 'İLKÖĞRETİM 6', 'TILMERÇ MAH ÖZEL HAREKAT LOJMANLARI', 'OSMAN ERASLAN', '', '(505) 211-1026', '', '', b'1'),
(365, 0, 3, '0000-00-00', 'MUHAMMED TAHA ', 'KAYA', '', 'İLKÖĞRETİM 6', 'GÜLTEPE MAH PARK REZİDANS SİTESİ C CBLOK DAİRE 18', 'MEHMET SALİH KAYA', '', '(532) 480-8351', '', '', b'0'),
(366, 0, 3, '0000-00-00', 'AYŞE HAVİN', 'BAŞÇI', '', 'İLKÖĞRETİM 6', 'GÜLTEPE MAH YAVUZ SİTESİ A BLOK NO 10', 'BÜLENT BAŞÇI', '', '(537) 423-3372', '', '', b'0'),
(367, 0, 3, '0000-00-00', 'RAĞDA', 'SARUHAN', '', 'İLKÖĞRETİM 6', 'ÇAMLITEPE MAH 4009 SK NO 14', 'SAİT SARUHAN', '', '(532) 431-8885', '', '', b'0'),
(368, 0, 3, '0000-00-00', 'EREN', 'CAN', '', 'İLKÖĞRETİM 6', 'ÇAMLIITEPE MAH TPAO BULV ARZİT APT KAT 3 NO 8', 'KENAN CAN', '', '(533) 647-3594', '', '', b'0'),
(369, 0, 3, '0000-00-00', 'DİLA', 'YİĞİT', '', 'İLKÖĞRETİM 6', 'FATİH MAH 3251 SK GAZİOĞLU APT KAT 2 NO 9', 'TAMER YİĞİT', '', '(532) 495-0475', '', '', b'0'),
(370, 0, 3, '0000-00-00', 'TAHA', 'GÜNANA', '', 'İLKÖĞRETİM 6', 'GAP MAH İNSAN HAKLARI BULV VEDAT APT NO 17', 'SALİH GÜNANA', '', '(532) 742-9324', '', '', b'1'),
(371, 0, 3, '0000-00-00', 'SAİT ', 'GEYBAY', '', 'İLKÖĞRETİM 6', '', 'KASIM GENBAY', '', '(506) 504-4110', '', '', b'1'),
(372, 0, 3, '0000-00-00', 'VEYSEL ', 'GÜN', '', 'İLKÖĞRETİM 6', 'GÜLTEPE MAH. YENİ ŞEHİR İKİNCİ ETAP', 'MUSTAFA GÜN', '', '(532) 126-2941', '', '', b'0'),
(373, 0, 3, '0000-00-00', 'RUBAR ARJİN', 'ÇİFTÇİ', '', 'İLKÖĞRETİM 6', 'GÜLTEPE MAH EFLATUN CAD ERTUĞRUL PARK SİTE A BLOK NO 14', 'NEVZAT ÇİFTÇİ', '', '(505) 221-6974', '', '', b'1'),
(374, 0, 3, '0000-00-00', 'ŞEVVAL', 'YUSUFOĞLU', '', 'İLKÖĞRETİM 6', 'ÇAMLITEPE MAH 4003 SK YUSUFOĞLU SİTESİ B BLOK KAT 3 NO 5', 'SERDAR YUSUFOĞLU', '', '(532) 583-4040', '', '', b'0'),
(375, 0, 3, '0000-00-00', 'EYLÜL', 'GÜNEŞ', '', 'İLKÖĞRETİM 6', 'PINARBAŞI MAH DİYARBAKIR CAD DOĞAN APT KAT 8 NO 14', 'BİLGE GÜNEŞ', '', '(505) 770-2770', '', '', b'0'),
(376, 0, 3, '0000-00-00', 'EMRE', 'KIZILÇİÇEK', '', 'İLKÖĞRETİM 6', 'ÇAMLITEPE MAH TILMERÇ MEVKİ MİM SİT A BLOK', 'RAUF KIZILÇİÇEK', '', '(532) 058-0221', '', '', b'1'),
(377, 0, 3, '0000-00-00', 'MUHAMMED MERT', 'AVŞAR', '', 'İLKÖĞRETİM 6', 'ŞAFAK MAH BARIŞ BULV ÖZALP SİT B BLOK KAT 5 NO 14', 'AHMET AVŞAR', '', '(535) 946-2722', '', '', b'0'),
(378, 0, 3, '0000-00-00', 'HASAN  ', 'AŞSIZ', '', 'İLKÖĞRETİM 6', 'GÜLTEPE MAH BEŞİKÇİ CAD YURTKENT SİT A BLOK NO 4/7', 'CEMAL AŞSIZ', '', '(532) 658-5656', '', '', b'0'),
(379, 0, 3, '0000-00-00', 'FURKAN', 'ERİN', '', 'İLKÖĞRETİM 6', 'GÜLTEPE MAH VEYSEL BULV EGEMEN YAPI APT KAT 5 NO10', 'ŞEHMUS ERİN', '', '(532) 605-4280', '', '', b'1'),
(380, 0, 3, '0000-00-00', 'ÖMER ', 'ÇINAR', '', 'İLKÖĞRETİM 6', 'AYDINLIK EVLER MAH 8. CAD NO 175/A', 'HASAN ÇINAR', '', '(544) 377-9073', '', '', b'0'),
(381, 0, 3, '0000-00-00', 'DENİZAY SILA', 'DÜNDAR', '', 'İLKÖĞRETİM 6', 'ÇAMLITEPE MAH FIRAT SİT B BLOK NO 9', 'RIŞVAN DÜNDAR', '', '(532) 172-3292', '', '', b'0'),
(382, 0, 3, '0000-00-00', 'KADİR ', 'DİLMEN', '', 'İLKÖĞRETİM 6', 'FATİH MAH ÖMER MUHTAR BULV NO 26 KAT 4 NO 8', 'REYHAN DİLMEN', '', '(531) 292-0492', '', '', b'0'),
(383, 0, 3, '0000-00-00', 'AHMET BERKAY ', 'YAŞAR', '', 'İLKÖĞRETİM 6', 'MEMURSEN TOKİ KG 11 NO 21', 'BÜLENT YAŞAR', '', '(505) 232-3400', '', '', b'0'),
(384, 0, 3, '0000-00-00', 'HÜSEYİN BARAN', 'ACARCAN', '', 'İLKÖĞRETİM 6', 'TILMERÇ TOKİ LOBTA REZİDANS KAT 4 NO 14', 'SALİH ACARCAN', '', '(505) 622-6339', '', '', b'0'),
(385, 0, 3, '0000-00-00', 'SEFA', 'ÖNAL', '', 'İLKÖĞRETİM 6', '', 'MEMET ÖNAL', '', '(532) 172-1545', '', '', b'1'),
(386, 0, 3, '0000-00-00', 'İBRAHİM MELİHŞAH', 'GÜLMEZ', '', 'İLKÖĞRETİM 6', 'GÜLTEPE MAH ERTUĞRUL PARK SİT A BLOK KAT 2 NO 7', 'ŞAHİN GÜLMEZ', '', '(533) 382-7582', '', '', b'0'),
(387, 0, 3, '0000-00-00', 'MERT EFE', 'ŞAHİN', '', 'İLKÖĞRETİM 6', 'KÜLTÜR MAH MEZOPOTAMYA CAD MARTI SİT B BLOK NO 9/6', 'ERCAN ŞAHİN', '', '(505) 521-2736', '', '', b'1'),
(388, 0, 3, '0000-00-00', 'SEÇİLAY', 'BİRKAN', '', 'İLKÖĞRETİM 6', 'GÜLTEPE MAH 4302 SK ALPHAN KONAK KAT 1/4', 'SELAHATTİN BİRKAN', '', '(506) 632-6998', '', '', b'0'),
(389, 0, 3, '0000-00-00', 'SEDA NUR', 'GÜNEY', '', 'İLKÖĞRETİM 6', 'TILMERÇ MAH GÜNEY APT 4 KAT 4 NO 11', 'AYDIN GÜNEY', '', '(532) 312-7297', '', '', b'0'),
(390, 0, 3, '0000-00-00', 'ALİ EREN', 'YÖNTEM', '', 'İLKÖĞRETİM 6', 'MEMURSEN TOKİ', 'SONGÜL YÖNTEM', '', '(505) 593-8210', '', '', b'1'),
(391, 0, 3, '0000-00-00', 'ÇAĞLA', 'EKMEKÇİ', '', 'İLKÖĞRETİM 6', 'MEMURSEN TOKİ', 'DERYA EKMEKÇİ', '', '(506) 336-2756', '', '', b'1'),
(392, 0, 3, '0000-00-00', 'SÜMEYYE NAZLICAN', 'BAŞARAN', '', 'İLKÖĞRETİM 6', 'GÜLTEPE MAH EFLATUN CAD BEYAZ KONAK 1 KAT 4 NO 14', 'ABDULKADİR', '', '(532) 276-1315', '', '', b'0'),
(393, 0, 3, '0000-00-00', 'EMİR ', 'BAYMAZ', '', 'İLKÖĞRETİM 6', 'GÜLTEPE MAH ESENPARK SİT C CLOK KAT 4/10', 'YASİN BAYMAZ', '', '(533) 225-3393', '', '', b'0'),
(394, 0, 3, '0000-00-00', 'İLAYDA ', 'GÜNEY', '', 'İLKÖĞRETİM 6', 'SERVİS KULLANMAYACAK', 'MURAT GÜNEY', '', '(539) 865-7314', '', '', b'1'),
(395, 0, 3, '0000-00-00', 'DİLDAR GÜLHAN', 'EROL', '', 'İLKÖĞRETİM 6', 'TILMERÇ TOKİ K /8 NO 2', 'SALİH EROL', '', '(505) 622-2372', '', '', b'1'),
(396, 0, 3, '0000-00-00', 'MUHAMMED SEFA ', 'YETKİN', '', 'İLKÖĞRETİM 6', 'GÜLTEPE MAHALLESİ\n AŞIK VEYSEL CAD YENİ YAZIHANE\n YANI ADAKULESİ', 'NURETTİN YETKİN', '', '(542) 636-9322', '', '', b'0'),
(397, 0, 3, '0000-00-00', 'YUSUF ', 'CİHAN', '', 'İLKÖĞRETİM 6', 'BELDE MAH 3248 SK UMUT SİT A BLOK KAT 4 NO 14', 'HAMİT CİHAN', '', '(505) 944-2641', '', '', b'0'),
(398, 0, 3, '0000-00-00', 'MEHMET EMİN', 'TOKDAŞ', '', 'İLKÖĞRETİM 6', 'GÜLTEPE MAH AŞIK VEYSEL BULV NO 31/A', 'ABDULVAHAP', '', '(533) 312-8490', '', '', b'0'),
(399, 0, 3, '0000-00-00', 'YUSUF İSLAM', 'TUNÇ', '', 'İLKÖĞRETİM 6', '', 'MUZAFFER TUNÇ', '', '(532) 012-2100', '', '', b'1'),
(400, 0, 3, '0000-00-00', 'HARUN ', 'EKMEN', '', 'İLKÖĞRETİM 6', '', 'M.BÜLENT EKMEN', '', '(532) 727-1600', '', '', b'1'),
(401, 0, 3, '0000-00-00', 'BOTAN SERHAT ', 'EFE', '', 'İLKÖĞRETİM 6', '', 'CEMAL EFE', '', '(505) 719-3421', '', '', b'1'),
(402, 0, 3, '0000-00-00', 'MURA ZAFER', 'ÇELİK', '', 'İLKÖĞRETİM 6', '', 'MUZAFFER ÇELİK', '', '(505) 391-6915', '', '', b'1'),
(403, 0, 3, '0000-00-00', 'ÖZGE', 'KAYA', '', 'İLKÖĞRETİM 6', 'ÇAMLITEPE MAH DOĞA SİTESİ C 9 ', 'SAMİ KAYA', '', '(532) 454-9363', '', '', b'0'),
(404, 0, 3, '0000-00-00', 'SUDE BETÜL', 'GÜNEŞ', '', 'İLKÖĞRETİM 6', '', 'ABDURRAHMAN', '', '(532) 335-0575', '', '', b'1'),
(405, 0, 3, '0000-00-00', 'YUNUS', 'BİNGÖL', '', 'İLKÖĞRETİM 6', 'BELDE MAH 3224 SK KILIÇ APT KAT4 NO 8', 'İHSAN BİNGÖL', '', '(532) 069-7818', '', '', b'0'),
(406, 0, 3, '0000-00-00', 'NUJEN', 'ONUR', '', 'İLKÖĞRETİM 6', '', 'BEHZAT ONUR', '', '(532) 346-2452', '', '', b'1'),
(407, 0, 3, '0000-00-00', 'EMİR EDİP ', 'TAN', '', 'İLKÖĞRETİM 6', 'BELDE MAH İBRAHİM HAKKI CAD NO 20 ÖZALP YAPI C BLOK NO 4', 'NEDİM TAN', '', '(538) 609-0809', '', '', b'1'),
(408, 0, 3, '0000-00-00', 'LARA', 'ATLAN', '', 'İLKÖĞRETİM 6', 'GÜLTEPE MAH HAİT LOJMANLARI C 2 D 5', 'TUNCAY ATLAN', '', '(532) 217-8717', '', '', b'0'),
(409, 0, 3, '0000-00-00', 'ASMİN', 'KIRINFIL', '', 'İLKÖĞRETİM 6', 'GÜLTEPE MAH PAPATYA SİTESİ A BLOK KAT 5 NO 11', 'RUKEN KIRINFIL', '', '(505) 383-1946', '', '', b'1'),
(410, 0, 3, '0000-00-00', 'ATA UĞUR ', 'GÜRKAŞ', '', 'İLKÖĞRETİM 7', 'KARATAY POLİS LOJMANLARI B 10 DAİRE 3', 'ÖZGÜR GÜRKAŞ', '', '0530 923 32 92', '', '', b'0'),
(411, 0, 3, '0000-00-00', 'YASEMİN', 'EFE', '', 'İLKÖĞRETİM 7', 'JANDARMA LOJMANLARI ÖMER FARUK ADAŞ AP NO 10', 'CİHANHAN EFE', '', '(505) 625-1341', '', '', b'0'),
(412, 0, 3, '0000-00-00', 'YİĞİT', 'DEMİR', '', 'İLKÖĞRETİM 7', 'TILMERÇ MAH ÖZEL HAREKAT LOJ B4 NO 14', 'VOLKAN DEMİR', '', '(553) 534-5219', '', '', b'1'),
(413, 0, 3, '0000-00-00', 'HARUN REŞİT', 'NASIROĞLU', '', 'İLKÖĞRETİM 7', 'BAHÇELİEVLER MAH MİMAR SİNAN CAD GÜMÜŞ APT KAT 11', 'BİLAL NASIROĞLU', '', '(532) 371-7186', '', '', b'0'),
(414, 0, 3, '0000-00-00', 'ARDA', 'AĞIN', '', 'İLKÖĞRETİM 7', 'TİLMENÇ MAH LOKTAY APT KAT 5 NO 16', 'VEYSİ AĞIN', '', '(532) 365-5032', '', '', b'0'),
(415, 0, 3, '0000-00-00', 'MERVE', 'DEMİRBİLEK', '', 'İLKÖĞRETİM 7', 'GÜLTEPE MAH EFLATUN CAD NO 77/A BİLKENT SİT KAT 8 NO 34', 'MUZAFFER ', '', '(532) 463-8590', '', '', b'0'),
(416, 0, 3, '0000-00-00', 'YASİN', 'ÖNAL', '', 'İLKÖĞRETİM 7', '', 'NEVZAT ÖNAL ', '', '(532) 562-8876', '', '', b'1'),
(417, 0, 3, '0000-00-00', 'MUHAMMED', 'SUNA', '', 'İLKÖĞRETİM 7', 'ÇAMLITEPE MAH ', 'RAMAZAN SUNA', '', '(543) 288-5978', '', '', b'0'),
(418, 0, 3, '0000-00-00', 'UMUT BARAN', 'ÖZ', '', 'İLKÖĞRETİM 7', 'GÜLTEPE MAH EFLATUN CAD SEMA SİT C CLOK 3.KAT NO 5', 'HAMİD ÖZ', '', '(505) 351-2172', '', '', b'0'),
(419, 0, 3, '0000-00-00', 'BİLAL', 'KARAKUŞ', '', 'İLKÖĞRETİM 7', 'RECEPLER KÖYÜ BATMAN ', 'İHSAN KARAKUŞ', '', '(532) 785-8977', '', '', b'1'),
(420, 0, 3, '0000-00-00', 'FURKAN ', 'DEMİRBİLEK', '', 'İLKÖĞRETİM 7', 'İL JANDARMA KOMUTANLIĞI', 'İSMAİL DEMİRBİLEK', '', '(505) 259-4013', '', '', b'1'),
(421, 0, 3, '0000-00-00', 'YUSUF BAHADIR', 'ARSLAN', '', 'İLKÖĞRETİM 7', 'ÖZEL HAREKAT KÖROĞLU LOJMANLARI', 'MURAT ARSLAN', '', '(505) 353-6110', '', '', b'0'),
(422, 0, 3, '0000-00-00', 'EYLÜL ROŞA', 'AZİZOĞLU', '', 'İLKÖĞRETİM 7', 'TILMERÇ MAH 3558 SK SİTE PAL A BLOK KAT 7 NO 20', 'AZAD AZİZOĞLU', '', '(533) 483-2333', '', '', b'1'),
(423, 0, 3, '0000-00-00', 'MEHMET UDAY', 'AKYÜZ', '', 'İLKÖĞRETİM 7', 'KÜLTÜR MAH SAĞLIK SİT D BLOK KAT 3/9', 'MEHMET MÜNİR', '', '(532) 749-9450', '', '', b'0'),
(424, 0, 3, '0000-00-00', 'SEMİH ', 'PÖLENT', '', 'İLKÖĞRETİM 7', 'ÇAMLITEPE MAH 4003 SK NO 13 DEFNE APT NO 11', 'HIDIR PÖLENT', '', '(532) 673-5848', '', '', b'0'),
(425, 0, 3, '0000-00-00', 'ZEYNEP', 'EKİNCİ', '', 'İLKÖĞRETİM 7', '', 'KASIM EKİNCİ', '', '(532) 790-0694', '', '', b'1'),
(426, 0, 3, '0000-00-00', 'ROJİN ADA', 'YAKUT', '', 'İLKÖĞRETİM 7', 'GAP MAH  TURGUT ÖZAL BULV BARIŞ APT KAT 5 NO 5/10', 'HALİS YAKUT', '', '(532) 622-2495', '', '', b'0'),
(427, 0, 3, '0000-00-00', 'İREM', 'ASLAN', '', 'İLKÖĞRETİM 7', 'JANDARMA LOJMANLARI', 'NABİ ASLAN', '', '(505) 316-2472', '', '', b'0'),
(428, 0, 3, '0000-00-00', 'YUSUF', 'ERKUL', '', 'İLKÖĞRETİM 7', 'BELDE MAH İSTİKBAL CAD MERETO APT NO 9', 'AHMET', 'ERKUL', '(533) 746-1348', '', '', b'0'),
(429, 0, 3, '0000-00-00', 'SEVİM CEREN', 'YABA', '', 'İLKÖĞRETİM 7', 'ÇAMLITEPE MAH SOSUN CAD MUYAP SİT NO 38/13', 'ÖKKEŞ YABA', '', '(532) 565-0155', '', '', b'1'),
(430, 0, 3, '0000-00-00', 'MEHMET', 'İÇYER', '', 'İLKÖĞRETİM 7', 'ÇAMLITEPE MAH 4060 SK ŞİRİN APT NO 8 KAT 3 DAİRE 9', 'ABDULCELİL İÇYER', '', '(532) 608-6448', '', '', b'1'),
(431, 0, 3, '0000-00-00', 'OĞUZAY', 'ÜNLÜ', '', 'İLKÖĞRETİM 7', 'GÜLTEPE MAH 4305 SK AKASYA SİT C CLOK NO 3', 'SERDAR ÜNLÜ', '', '(505) 251-6196', '', '', b'1'),
(432, 0, 3, '0000-00-00', 'TAHA VEYSEL', 'CEYLAN', '', 'İLKÖĞRETİM 7', '', 'CELALETTIN CEYLAN', '', '(544) 225-3012', '', '', b'0'),
(433, 0, 3, '0000-00-00', 'YUNUS ', 'PEKTAŞ', '', 'İLKÖĞRETİM 7', 'KÜLTÜR MAH MARTI SİT D BLOK NO 12', 'ZEYDİN PEKTAŞ', '', '(533) 367-1111', '', '', b'0'),
(434, 0, 3, '0000-00-00', 'HATİCE ESMA ', 'TEMİZ', '', 'İLKÖĞRETİM 7', 'GÜLTEPE MAH ÖMER HAYYAM CAD YENİŞEHİT 1.ETAP B BLOK 12', 'ŞEMSETTİN TEMİZ', '', '(534) 208-2582', '', '', b'0'),
(435, 0, 3, '0000-00-00', 'BÜNYAMİN', 'ASLANKILIÇ', '', 'İLKÖĞRETİM 7', 'ÇAMLITEPE MAH F 1 SİTESİ A BLOK NO 17 KAT 8', 'M.EMİN ASLANKILIÇ', '', '(553) 392-1767', '', '', b'0'),
(436, 0, 3, '0000-00-00', 'FATİH ', 'KARÇAK', '', 'İLKÖĞRETİM 7', 'HİLAL MAH KOMANDO CAD EMİN SEVİM APT NO 8', 'AHMET KARÇAK', '', '(505) 279-5944', '', '', b'0'),
(437, 0, 3, '0000-00-00', 'BERAT', 'ERİMAN', '', 'İLKÖĞRETİM 7', 'GÜLTEPE MAH. EFLATUN CADDE GÜNEY\nKENT SİTESİ B BLOK KAT 3 NO 12', 'ÜMİT ERİMAN', '', '(532) 472-7863', '', '', b'0'),
(438, 0, 3, '0000-00-00', 'BÜRDE ', 'YEŞİL', '', 'İLKÖĞRETİM 7', 'GAP MAH 2502 SK NO  8 KAT 3', 'ÖZKAN YEŞİL', '', '(532) 378-0280', '', '', b'0'),
(439, 0, 3, '0000-00-00', 'BETÜL', 'ATEŞ', '', 'İLKÖĞRETİM 7', '', 'MEHMET ATEŞ', '', '(505) 348-3778', '', '', b'1'),
(440, 0, 3, '0000-00-00', 'YUSUF', 'PEKTAŞ', '', 'İLKÖĞRETİM 7', '', 'ZEYDİN PEKTAŞ', '', '(533) 367-1111', '', '', b'0'),
(441, 0, 3, '0000-00-00', 'AZAD FURKAN', 'ÖZDEMİR', '', 'İLKÖĞRETİM 7', '', 'FATMA PEKTAŞ', '', '(533) 153-6361', '', '', b'0'),
(442, 0, 3, '0000-00-00', 'FIRAT ', 'GÜCÜ', '', 'İLKÖĞRETİM 7', 'TPAO LOJ ÇINARLI APT NO 11', 'MURAT GÜCÜ', '', '(505) 403-6421', '', '', b'1'),
(443, 0, 3, '0000-00-00', 'AHMET ', 'DEMİR', '', 'İLKÖĞRETİM 7', 'BAHÇELİEVLER MAH 1645 SK NO 10', 'NİZAMETTİN DEMİR', '', '(505) 391-1331', '', '', b'0'),
(444, 0, 3, '0000-00-00', 'MEVLÜDE SERRA', 'KAVAK', '', 'İLKÖĞRETİM 7', '', 'FATİH KAVAK', '', '(532) 564-6171', '', '', b'1'),
(445, 0, 3, '0000-00-00', 'SAMET ', 'ŞAHİN', '', 'İLKÖĞRETİM 8', 'AKÇA KÖY BATMAN', 'SALİH ŞAHİN', '', '(532) 417-7532', '', '', b'1'),
(446, 0, 3, '0000-00-00', 'FURKAN EFE', 'BOZDEMİR', '', 'İLKÖĞRETİM 8', 'KÜLTÜR MAH MEZOPOTAMYA CAD UMUT SİT 42/A KAT 3 NO 8', 'EMRULLAH BOZDEMİR', '', '(505) 232-2784', '', '', b'0'),
(447, 0, 3, '0000-00-00', 'MEHMET SEFA ', 'AYDIN', '', 'İLKÖĞRETİM 8', 'TILMERÇ MAH 3854 SK SİTE PALL B BLOK NO 15', 'NECATİ AYDIN', '', '(532) 583-4063', '', '', b'1'),
(448, 0, 3, '0000-00-00', 'MİRAÇ', 'ŞEBAY', '', 'İLKÖĞRETİM 8', 'FATİH MAH 3361 SK ŞEBAY APT NO 1 KAT 2', 'FAYSAL ŞEBAY', '', '(541) 497-7297', '', '', b'0'),
(449, 0, 3, '0000-00-00', 'İSA', 'KÜNKÜL', '', 'İLKÖĞRETİM 8', 'ERTUĞRUL PARK', 'ABDULLAH KÜNKÜL', '', '(532) 775-2896', '', '', b'0'),
(450, 0, 3, '0000-00-00', 'MEHMET ALİ', 'BULŞU', '', 'İLKÖĞRETİM 8', 'ŞAFAK MAH 4422 SK BULŞU APT REGAL KARŞISI NO 9', 'ŞÜKRAN BULŞU', '', '(544) 629-2417', '', '', b'0'),
(451, 0, 3, '0000-00-00', 'BERAN ARDA ', 'KILIÇ', '', 'İLKÖĞRETİM 8', 'T ÖZAL BULV UMUT APT 274 NO 14', 'SÜLEYMAN KILIÇ', '', '(533) 265-2948', '', '', b'0'),
(452, 0, 3, '0000-00-00', 'VAHDETTİN BİLAL ', 'TERECE', '', 'İLKÖĞRETİM 8', 'ÇAMLITEPE MAH DOĞA SİTESİ C BLOK TERAS KAT', 'CEMİLE TERECE ÖZGEN', '', '(505) 860-7436', '', '', b'0'),
(453, 0, 3, '0000-00-00', 'ARDA', 'YİVLİ', '', 'İLKÖĞRETİM 8', 'İL JANDARMA LOJ EMİN SEVİM APT NO 2', 'BATUHAN YİVLİ', '', '(538) 566-1757', '', '', b'0'),
(454, 0, 3, '0000-00-00', 'FURKAN JİYAN', 'SAYAR', '', 'İLKÖĞRETİM 8', 'KÜLTÜR MAH 3257 SK DEMİR APT K 2 NO 5', 'KADRİ SAYAR', '', '(532) 397-7867', '', '', b'1'),
(455, 0, 3, '0000-00-00', 'SERCAN ', 'CAN', '', 'İLKÖĞRETİM 8', 'ÇAMLITEPE MAH TPAO BULV ARZİF APT KAT 3 NO 8', 'KENAN CAN', '', '(533) 647-3594', '', '', b'0'),
(456, 0, 3, '0000-00-00', 'BUĞRA TÜRKER', 'KIRCA', '', 'İLKÖĞRETİM 8', 'MEMURSEN  TOKİ KG 2 NO 14', 'HASAN KIRCA', '', '(505) 483-6889', '', '', b'1'),
(457, 0, 3, '0000-00-00', 'HELİN ', 'YUSUFOĞLU', '', 'İLKÖĞRETİM 8', 'ÇAMLITEPE MAH 4003 SK YUSUFOĞLU SİTESİ B BLOK KAT 3 NO 5', 'SERDAR YUSUFOĞLU', '', '(532) 583-4040', '', '', b'0'),
(458, 0, 3, '0000-00-00', 'AKİF', 'TEK', '', 'İLKÖĞRETİM 8', 'ÇAMLITEPE MAH ', 'SALİH TEK', '', '(533) 735-0524', '', '', b'1'),
(459, 0, 3, '0000-00-00', 'BEYDA', 'ÖNAL', '', 'İLKÖĞRETİM 8', '', 'TURGUT ÖNAL', '', '(532) 220-6668', '', '', b'0'),
(460, 0, 3, '0000-00-00', 'RIDVAN', 'DİREKÇİ', '', 'İLKÖĞRETİM 8', '', 'HASAN DİREKÇİ', '', '(543) 223-7437', '', '', b'1'),
(461, 0, 3, '0000-00-00', 'MUHAMMED', 'ÇINAR', '', 'İLKÖĞRETİM 8', 'AYDINLIK EVLER MAH 8. CAD NO 175/A', 'HÜSEYİN ÇINAR', '', '(533) 697-4050', '', '', b'0'),
(462, 0, 3, '0000-00-00', 'ZEHRA', 'DİLMEN', '', 'İLKÖĞRETİM 8', 'FATİH MAH ÖMER MUHTAR BULV NO 26 KAT 4 NO 8', 'REYHAN DİLMEN', '', '(531) 292-0492', '', '', b'0'),
(463, 0, 3, '0000-00-00', 'ŞİMAL', 'BAŞÇI', '', 'İLKÖĞRETİM 8', 'GÜLTEPE MAH ÖMER HAYYAMÖ CAD GÜL SİTESİ D BLOK KAT 8 NO 23', 'M.SELİM BAŞÇI', '', '(542) 644-8369', '', '', b'0'),
(464, 0, 3, '0000-00-00', 'İBRAHİM  ', 'ÇEKMEN', '', 'İLKÖĞRETİM 8', 'GÜLTEPE MAH 4392 SK YAŞAM KENT SİT A BLOK ', 'CAHİT ÇEKMEN', '', '(532) 465-5177', '', '', b'0'),
(465, 0, 3, '0000-00-00', 'İREM', 'KARAKAŞ', '', 'İLKÖĞRETİM 8', 'TILMERÇ MAH ÖZEL HAREKAT LOJ B 3 BLOK NO 32', 'REMZİ KARAKAŞ', '', '(505) 542-6593', '', '', b'1'),
(466, 0, 3, '0000-00-00', 'BÜNYAMİN', 'CUCİ', '', 'İLKÖĞRETİM 8', 'PETROLKENT MAH 2857 SK NO 5 DAİRE 3', 'İKRAM CUCİ', '', '(535) 361-6879', '', '', b'1'),
(467, 0, 3, '0000-00-00', 'OSMAN', 'KARAKUŞ', '', 'İLKÖĞRETİM 8', 'RECEPLER KÖYÜ BATMAN ', 'İHSAN KARAKUŞ', '', '(532) 785-8977', '', '', b'1'),
(468, 0, 3, '0000-00-00', 'YUNUS EMRE', 'YARGI', '', 'İLKÖĞRETİM 8', 'KÜLTÜR MAH. YARGI APT', 'İSMET YARGI', '', '(532) 431-8641', '', '', b'0'),
(469, 0, 3, '0000-00-00', 'AYŞEGÜL ', 'GÜNER', '', 'İLKÖĞRETİM 8', 'GAP MAH 2510 SK ACAR APT B BLOK KAT 5 NO 10', 'VAHAP GÜNER', '', '(507) 246-1113', '', '', b'0'),
(470, 0, 3, '0000-00-00', 'GÜLİSTAN ', 'ARI', '', 'İLKÖĞRETİM 8', 'GÜLTEPE MAH DEMOKRASİ BULV ESENKENT SİT C BLOK KAT 5', 'NURETTİN ARI', '', '(532) 640-5477', '', '', b'0'),
(471, 0, 3, '0000-00-00', 'SEMA NUR', 'GÜNEY', '', 'İLKÖĞRETİM 8', 'TILMERÇ MAH GÜNEY APT 4 KAT 4 NO 11', 'AYDIN GÜNEY', '', '(532) 312-7297', '', '', b'0'),
(472, 0, 3, '0000-00-00', 'MUSTAFA ', 'PÖLENT', '', 'İLKÖĞRETİM 8', 'ÇAMLITEPE MAH 4003 SK NO 3 DEFNE APT', 'HIDIR PÖLENT', '', '(532) 673-5848', '', '', b'0'),
(473, 0, 3, '0000-00-00', 'KEREM ', 'TÜRKOĞLU', '', 'İLKÖĞRETİM 8', 'KÜLTÜR MAH ADALET CAD GÜL APT KAT 5 NO 13', 'HASAN TÜRKOĞLU', '', '(533) 613-4346', '', '', b'0'),
(474, 0, 3, '0000-00-00', 'DİLARA', 'SARAN', '', 'İLKÖĞRETİM 8', 'MEMURSEN TOKİ', 'MAHMUT SARAN', '', '(505) 351-4858', '', '', b'1'),
(475, 0, 3, '0000-00-00', 'ABDULLAH OĞUZ', 'SEVİM', '', 'İLKÖĞRETİM 8', 'BAHÇELİEVLER MAH 1620 SK FIRT APT NO 1/1', 'M.MEHDİ SEVİM', '', '(530) 114-4541', '', '', b'0'),
(476, 0, 3, '0000-00-00', 'DERAL', 'DOĞAN', '', 'İLKÖĞRETİM 8', 'ÇAMLITEPE MAH 4066 SK SERHAT 2 APT KAT 4 NO 13', 'HASAN DOĞAN', '', '(546) 417-0567', '', '', b'1'),
(477, 0, 3, '0000-00-00', 'SUDE NUR ', 'ÇETİN', '', 'İLKÖĞRETİM 8', 'GÜLTEPE MAH 4305 SK AKASYA SİT B BLOK D 11', 'BURHAN ÇETİN', '', '(505) 483-4585', '', '', b'1'),
(478, 0, 3, '0000-00-00', 'OZAN', 'KARTAL', '', 'İLKÖĞRETİM 8', 'SİİRT ÇEVRE YOLU ÜZERİ CHERİ BAYİ KARŞISI GÜNEY APT KAT 2 NO 6', 'CUMA KARTAL', '', '(533) 927-1097', '', '', b'0'),
(479, 0, 3, '0000-00-00', 'BUKET', 'SOYVURAL', '', 'İLKÖĞRETİM 8', 'BAHÇELİEVLER MAH CEVHER SİTESİ C BLOK DORUK SPOR SAL ÜSTÜ KAT 5', 'HALİL SOYVURAL', '', '(532) 738-5804', '', '', b'0'),
(480, 0, 3, '0000-00-00', 'DİCLE ', 'YILDIZ', '', 'İLKÖĞRETİM 8', 'GÜLTEPE MAH EFLATUN CAD NO 23 KAYAHAN SİT ', 'MUSTAFA YILDIZ', '', '(533) 500-3303', '', '', b'0'),
(481, 0, 3, '0000-00-00', 'MANSUR ', 'ARSLAN', '', 'İLKÖĞRETİM 8', 'ÇAMLITEPE MAH 4006 SK ÇIRAY APT 5/15', 'SALİH ARSLAN', '', '(505) 303-7060', '', '', b'1'),
(482, 0, 3, '0000-00-00', 'AHMET YILMAZ', 'GÜNEY', '', 'İLKÖĞRETİM 8', 'NUJEN SİTESİ', 'MURAT YILMAZ', '', '(532) 770-7880', '', '', b'1'),
(483, 0, 3, '0000-00-00', 'ZEHRA', 'AŞSIZ', '', 'İLKÖĞRETİM 8', 'BELDE MAH ÖMER MUHTAR BULV HELİN SİTESİ A BLOK KAT 3 NO 7', 'AHMET AŞSIZ', '', '(532) 367-7666', '', '', b'0'),
(484, 0, 3, '0000-00-00', 'CENGİZ BERKE', 'ERFİŞEK', '', 'İLKÖĞRETİM 8', 'MEMURSEN TOKİ KONUTLARI KG 6 /2-1', 'MEHMET ERFİŞEK', '', '(505) 242-8609', '', '', b'1'),
(485, 0, 3, '0000-00-00', 'ÖZGE', 'FİDANLIK', '', 'İLKÖĞRETİM 8', '', 'GÜLER FİDANLIK', '', '(507) 399-4746', '', '', b'1'),
(486, 0, 3, '0000-00-00', 'EMİR KUTAY', 'ÇELİK', '', 'İLKÖĞRETİM 8', '', 'AZMİ ÇELİK', '', '(505) 466-4129', '', '', b'1'),
(487, 0, 3, '0000-00-00', 'YUSUF', 'ÇINAR', '', 'İLKÖĞRETİM 8', 'ÇINAR MARKET', 'MEHMET ALİ ÇINAR', '', '(544) 601-4132', '', '', b'0'),
(488, 0, 3, '0000-00-00', 'ASYA', 'BİNGÖL', '', 'İLKÖĞRETİM 8', 'BELDE MAH 3224 SK KILIÇ APT KAT 4 NO 8', 'İHSAN BİNGÖL', '', '(532) 069-7818', '', '', b'0'),
(489, 0, 3, '0000-00-00', 'GAMZE ', 'ÇELİK', '', 'İLKÖĞRETİM 8', 'GÜLTEPE MAH YENİŞEHİR KONUT 5.ETAP B BLOK KAT 5 NO 10', 'M.SAİT ÇELİK', '', '(542) 595-5211', '', '', b'1'),
(490, 0, 3, '0000-00-00', 'BORAN', 'ÇAÇAN', '', 'İLKÖĞRETİM 8', 'HALYOLU ÜZERİ', 'ABDULVAHİT ÇAÇAN', '', '(535) 413-0363', '', '', b'0'),
(491, 0, 3, '0000-00-00', 'YUSUF CAN ', 'KARABAŞ', '', 'İLKÖĞRETİM 8', '', 'VAHDETTİN KARABAŞ', '', '(537) 481-4940', '', '', b'1'),
(492, 0, 3, '0000-00-00', 'HİVA', 'BAŞÇI', '', 'İLKÖĞRETİM 8', '', 'M.SELİM BAŞÇI', '', '(542) 644-8369', '', '', b'0'),
(493, 0, 3, '0000-00-00', 'AGİT SERKAN', 'ÖZDEMİR', '', 'LİSE 1', 'HÜRRİYET MAH ARI CAD NO 68/3', 'ENVER ÖZDEMİR', '', '(532) 241-7338', '', '', b'1'),
(494, 0, 3, '0000-00-00', 'ABDULLAH', 'NASIROĞLU', '', 'LİSE 1', 'BELDE MAH İSTİKBAL CAD MERETO APT KAT 4 NO 8', 'ABDURAHMAN', '', '(555) 280-3287', '', '', b'0'),
(495, 0, 3, '0000-00-00', 'AZAD FURKAN', 'ÖZDEMİR', '', 'LİSE 1', 'HÜRRİYET MAH ARI CAD NO 68/3', 'ENVER ÖZDEMİR', '', '(532) 241-7338', '', '', b'1'),
(496, 0, 3, '0000-00-00', 'MUHAMMED EMİR', 'ÜNEY', '', 'LİSE 1', 'GÜLTEPE MAH EFLATUN CAD PARK REZİDANS SİT C BLOK', 'VEYSİ ÜNEY', '', '(533) 500-5758', '', '', b'0'),
(497, 0, 3, '0000-00-00', 'MUHAMMED ', 'SAĞDIÇ', '', 'LİSE 1', 'BELDE MAH İNSAN HAKLARI BULV ESER APT B B BLOK NO8', 'AYŞE SAĞDIÇ', '', '(533) 658-0479', '', '', b'1'),
(498, 0, 3, '0000-00-00', 'GÜLSÜM', 'ERİN', '', 'LİSE 1', 'GÜLTEPE MAH AŞIK VEYSEL BULV EGEMEN YAPI APT KAT 5 NO 10', 'ŞEHMUS ERİN', '', '(532) 605-4280', '', '', b'0'),
(499, 0, 3, '0000-00-00', 'ELİF', 'ÖNAL', '', 'LİSE 1', 'GÜLTEPE MAH EFLATUN CAD BEYAZ KONAK 1 TERAS KAT', 'NEVZAT ÖNAL ', '', '(532) 562-8876', '', '', b'0'),
(500, 0, 3, '0000-00-00', 'OĞUZ HAN', 'TEKİN', '', 'LİSE 1', 'MEMURSEN TOKİ KONUTLARI JANDARMA LOJ KG3 DAİRE 12', 'KADRİ TEKİN', '', '(505) 539-0489', '', '', b'1'),
(501, 0, 3, '0000-00-00', 'MAHMUT CAN', 'ZOBU', '', 'LİSE 1', 'KÜLTÜR MAH 2638 SK GÖRKEM APT KAT 5 NO 10', 'HAKAN ZOBU', '', '(532) 615-1625', '', '', b'0'),
(502, 0, 3, '0000-00-00', 'UMUT ŞÜKRÜ', 'KAYA', '', 'LİSE 1', 'ÇAMLITEPE MAH DOĞA SİTESİ C BLOK NO 9', 'SAMİ KAYA', '', '(532) 454-9363', '', '', b'0'),
(503, 0, 3, '0000-00-00', 'HÜSEYİN', 'EKİNCİ', '', 'LİSE 1', 'BELDE MAH ÖZALP SİT B BLOK 3257 SK ', 'ABDULLAH EKİNCİ', '', '(536) 254-3669', '', '', b'1'),
(504, 0, 3, '0000-00-00', 'ÖMER FARUK', 'GÜNGÖR', '', 'LİSE 1', 'MEMURSEN TOKİ GRAND PARK SİTESİ C BLOK KAT 6', 'BEDRETTİN GÜNGÖR', '', '(532) 651-8355', '', '', b'1'),
(505, 0, 3, '0000-00-00', 'ZELAL', 'YILMAZ', '', 'LİSE 1', 'GÜLTEPE MAH ESENPARK SİT B BLOK KAT 8 NO 18', 'MENSUR YILMAZ', '', '(532) 737-3922', '', '', b'0'),
(506, 0, 3, '0000-00-00', 'MURAT ', 'DEMİR', '', 'LİSE 1', 'ÇAMLITEPE MAH TPAO BULV OZAN SERHAT APT KAT 8 NO 15', 'ADİL DEMİR', '', '(544) 797-7253', '', '', b'1'),
(507, 0, 3, '0000-00-00', 'ŞEHRİBAN ', 'GÖRKEM', '', 'LİSE 1', 'KÜLTÜR MAH 2608 SK NO 27 CEBUR APT', 'VEYSEL GÖRKEM', '', '(539) 631-2893', '', '', b'0'),
(508, 0, 3, '0000-00-00', 'ESAT', 'DALGA', '', 'LİSE 1', 'MEMURSEN TOKİ BEŞİKLİ CAD ÖZEL HAREKAT LOJ B 3 /45', 'GAMZE TAŞ', '', '(507) 142-3699', '', '', b'1'),
(509, 0, 3, '0000-00-00', 'HALİL BARAN', 'YAMAN', '', 'LİSE 1', 'KUYUBAŞI TOKİ K 50 DAİRE 10', 'M.ŞİRİN YAMAN', '', '(536) 594-2147', '', '', b'1'),
(510, 0, 3, '0000-00-00', 'ZEKİ', 'ORAK', '', 'LİSE 1', 'RAMAN MAH 1812 SK NO 21 KAT 4', 'RAMAZAN ORAK', '', '(545) 377-7904', '', '', b'1'),
(511, 0, 3, '0000-00-00', 'ZEHRA', 'AKGÜÇ', '', 'LİSE 1', 'ÇAMLITEPE MAH 4056 SK KÜNKÜL APT DAİRE 5', 'ABDURAHMAN AKGÜÇ', '', '(532) 792-9740', '', '', b'1'),
(512, 0, 3, '0000-00-00', 'DİLAN', 'AKGÜÇ', '', 'LİSE 1', 'ÇAMLITEPE MAH 4056 SK KÜNKÜL APT DAİRE 5', 'ABDURAHMAN AKGÜÇ', '', '(532) 792-9740', '', '', b'1'),
(513, 0, 3, '0000-00-00', 'SEFA ARDA ', 'BAYMAZ ', '', 'LİSE 1', 'GÜLTEPE MAH ESENPARK SİTESİ C CLOK KAT 4 NO 10', 'YASİN BAYMAZ', '', '(533) 225-3393', '', '', b'0'),
(514, 0, 3, '0000-00-00', 'ÖMER ', 'TAY', '', 'LİSE 1', 'BAHÇEŞEHİR KOLEJİ KARŞISI', 'HAYRETTİN TAY', '', '(506) 585-7136', '', '', b'1'),
(515, 0, 3, '0000-00-00', 'ELİF ', 'ÇELİK', '', 'LİSE 1', 'ÇAMLITEPE MAH 4041 SK IŞIKLAR APT KAT 6 NO 20', 'ABDURRAHİM ÇELİK', '', '(532) 563-5723', '', '', b'1'),
(516, 0, 3, '0000-00-00', 'KEREM ', 'GENBAY', '', 'LİSE 1', 'BAHÇELİEVLER MAH 1623 SK NO 7 KAT 2', 'AHMET GENBAY', '', '(532) 684-9666', '', '', b'0'),
(517, 0, 3, '0000-00-00', 'YUSUF SERCAN', 'ÖZCAN', '', 'LİSE 1', 'GÜLTEPE MAH GÜLKENT SİT NO 17', 'EMRAH ÖZCAN', '', '(541) 952-3276', '', '', b'0'),
(518, 0, 3, '0000-00-00', 'BATUHAN ', 'YÜCEKAYA', '', 'LİSE 1', 'MEMURSEN TOKİ KG65 BLOK NO 8', 'ALATİN YÜCEKAYA', '', '(505) 230-0916', '', '', b'1'),
(519, 0, 3, '0000-00-00', 'EMİNE DİCLE', 'GÜCÜ', '', 'LİSE 1', 'TPAO LOJMANLARI ÇINARLI APT 11/4', 'MURAT GÜCÜ', '', '(505) 403-6421', '', '', b'1'),
(520, 0, 3, '0000-00-00', 'ELİF', 'ÇİÇEK', '', 'LİSE 1', 'TILMERÇ MAH MİM SİT C BLOK NO 12', 'VEYSİ ÇİÇEK', '', '(532) 344-5879', '', '', b'1'),
(521, 0, 3, '0000-00-00', 'MUHAMMED BİLAL ', 'ÖZAY', '', 'LİSE 1', 'RAMAN MAH 1801 SK NO 4', 'SAİT ÖZAY', '', '(507) 539-8998', '', '', b'1'),
(522, 0, 3, '0000-00-00', 'AVJİN GÜLÇİN', 'EROL', '', 'LİSE 1', 'TILMERÇ TOKİ K8 NO 2', 'SALİH EROL', '', '(505) 622-2372', '', '', b'1'),
(523, 0, 3, '0000-00-00', 'BEYZA', 'DEMİRAL', '', 'LİSE 1', 'BELDE MAH 3257 SK MAVİ KONAK APT KAT 2 NO 4', 'MEHMET DEMİRAL', '', '(532) 172-5802', '', '', b'0'),
(524, 0, 3, '0000-00-00', 'MELİH', 'SOLMAZ', '', 'LİSE 1', 'ÇAMLITEPE MAH 4005 SK SAYHAN APT KAT 3 NO 11', 'FAYSAL SOLMAZ', '', '(532) 463-6207', '', '', b'1'),
(525, 0, 3, '0000-00-00', 'RECEP', 'KAVAK', '', 'LİSE 1', 'SEYİTLER MAH 3061 SK NO 15', 'RAMAZAN KAVAK', '', '(545) 474-0528', '', '', b'1'),
(526, 0, 3, '0000-00-00', 'MERVE', 'ÖZGEN', '', 'LİSE 1', 'GAP MAH DİYARBAKIR CAD ADİDAS ÜSTÜ UMUT APT KAT 5 NO 18', 'CEMRE TERECE ÖZGEN', '', '(505) 860-7436', '', '', b'0'),
(527, 0, 3, '0000-00-00', 'İSMAİL', 'BEDİR', '', 'LİSE 1', 'TILMERÇ MAH MEMURSEN TOKİ YOLU SİTE PALL BLOK ', 'ŞEMSETTİN BEDİR', '', '(532) 276-1314', '', '', b'1'),
(528, 0, 3, '0000-00-00', 'ELİF SAFİYE', 'BALOĞLU', '', 'LİSE 1', 'GÜLTEPE MAH ÖMER HAYYAM CAD MERETO SİT A BLOK 7/24', 'TUĞBA BALOĞLU', '', '(505) 806-6174', '', '', b'1'),
(529, 0, 3, '0000-00-00', 'EMİR BUĞRA', 'DENİZ', '', 'LİSE 1', 'JANDARMA BÖLGE KOMUTANLIĞI ENGİN DURMUŞ E BLOK NO 10', 'BURAK DENİZ', '', '(530) 072-9470', '', '', b'0'),
(530, 0, 3, '0000-00-00', 'FURKAN', 'TUNÇ', '', 'LİSE 1', 'TILMERÇ MAH ZAFER CAD ULUTAŞ 3 APT KAT 1/4', 'MUZAFFER TUNÇ', '', '(532) 012-2100', '', '', b'1'),
(531, 0, 3, '0000-00-00', 'MUHAMMED MELİK', 'TUNÇ', '', 'LİSE 1', 'TILMERÇ MAH ZAFER CAD ULUTAŞ 3 APT KAT 1/4', 'MUZAFFER TUNÇ', '', '(532) 012-2100', '', '', b'1'),
(532, 0, 3, '0000-00-00', 'HAZAL NUR', 'KIZILBULUT', '', 'LİSE 1', '', 'ÇETİN KIZILBULUT', '', '(532) 286-4806', '', '', b'1'),
(533, 0, 3, '0000-00-00', 'ELİF ', 'ASLANKILIÇ', '', 'LİSE 1', 'ÇAMLITEPE MAH F 1 SİTESİ A BLOK NO 17 KAT 8', 'M.EMİN ASLANKILIÇ', '', '(553) 392-1767', '', '', b'0'),
(534, 0, 3, '0000-00-00', 'VEYSEL', 'ÇINAR', '', 'LİSE 1', 'ÇINAR MARKET', 'RAMAZAN ÇINAR', '', '(530) 929-1501', '', '', b'0'),
(535, 0, 3, '0000-00-00', 'RIDVAN', 'ÇERE', '', 'LİSE 1', 'PETROL MAH BAHÇEŞEHİR SİT KAT 4 NO 15', 'VEYSİ ÇERE', '', '(543) 395-7202', '', '', b'1'),
(536, 0, 3, '0000-00-00', 'MELİSA', 'AYDIN', '', 'LİSE 1', 'GÜLTEPE MAH ÖMER HAYYAM CAD MERETO SİTESİ B BLOK KAT 2 NO 8', 'UBEYDULLAH AYDIN', '', '(505) 305-9924', '', '', b'0'),
(537, 0, 3, '0000-00-00', 'MUHAMMED ', 'BAYHAN', '', 'LİSE 1', 'GÜLTEPE MAH İL ÖZEL İDARE LOJ A BLOK NO 5', 'SUAT BAYHAN', '', '(505) 347-1848', '', '', b'0'),
(538, 0, 3, '0000-00-00', 'MEHMET ŞERİF', 'DEMERTAŞ', '', 'LİSE 1', '', 'ŞEHMUS DEMERTAŞ', '', '(532) 545-2744', '', '', b'1'),
(539, 0, 3, '0000-00-00', 'ERTUĞ ', 'SAPMAN', '', 'LİSE 1', 'GÜLTEPE MAH EFLATUN CAD ESENPARK SİT C BLOK KAT 5 ', 'NECAT SAPMAN', '', '(505) 408-3151', '', '', b'0'),
(540, 0, 3, '0000-00-00', 'EMİRHAN', 'ÇİFTÇİ', '', 'LİSE 1', 'ZİYAGÖKALP MAH 1717 SK FURKAN APT KAT 1 NO 2', 'ABDULLAH ÇİFTÇİ', '', '(532) 579-3462', '', '', b'1'),
(541, 0, 3, '0000-00-00', 'MUSTAFA MUHAMMED', 'ÇİÇEK', '', 'LİSE 1', 'GÜLTEPE MAH ALIÇPARK SİT A BLOK KAT 2 NO 7', 'ABDULLAH ÇİÇEK', '', '(532) 523-1717', '', '', b'1'),
(542, 0, 3, '0000-00-00', 'CEREN', 'KOÇYİĞİT', '', 'LİSE 1', 'BELDE MAH 3237 SK EĞİTİMCİLER APT NO 1 KAT 3 NO 16', 'DİLEK KOÇYİĞİT', '', '(505) 402-4023', '', '', b'1'),
(543, 0, 3, '0000-00-00', 'ÖMER', 'GÜNEY', '', 'LİSE 1', '', 'ABDULHAKİM GÜNEY', '', '(532) 344-2083', '', '', b'1'),
(544, 0, 3, '0000-00-00', 'ÖMER', 'AVCI', '', 'LİSE 1', 'BELDE MAH 3240 SK HAYAT SİT KAT 5 NO 9', 'EMRULLAH AVCI', '', '(543) 496-4286', '', '', b'1'),
(545, 0, 3, '0000-00-00', 'MUHAMMED ', 'AYDIN', '', 'LİSE 2', 'TEİAŞ LOJMANLARI BATI RAMAN YOLU ', 'CENGİZ AYDIN', '', '(505) 314-2942', '', '', b'1'),
(546, 0, 3, '0000-00-00', 'AYŞENUR ', 'TÜRKAY', '', 'LİSE 2', 'GAP MAH T.ÖZAL BULV 2517 SK AKADEMİ APT NO 6/12', 'VİLDAN TÜRKAY', '', '(532) 571-5890', '', '', b'1'),
(547, 0, 3, '0000-00-00', 'TAHA ', 'ÖZDEMİR', '', 'LİSE 2', 'HÜRRİYET MAH 28.CAD NO 60', 'AYŞE ÖZDEMİR', '', '(533) 613-3554', '', '', b'1'),
(548, 0, 3, '0000-00-00', 'FATMA ECEM NAZ', 'ÖZTAŞ', '', 'LİSE 2', '', 'RECEP ÖZTAŞ', '', '(533) 646-8065', '', '', b'0'),
(549, 0, 3, '0000-00-00', 'SEDA NUR', 'GÜNER', '', 'LİSE 2', 'GÜLTEPE MAH YENİ ÇAĞ CAD YONCA SİT A BLOK NO 12', 'FETHULLAH GÜNER', '', '(532) 208-5835', '', '', b'0'),
(550, 0, 3, '0000-00-00', 'ASUMAN ', 'GÜNEY', '', 'LİSE 2', 'TILMERÇ MAH GÜNEY APT KAT 4 NO 11', 'AYDIN GÜNEY', '', '(532) 312-7297', '', '', b'0'),
(551, 0, 3, '0000-00-00', 'AHMET ', 'ÜLEÇ', '', 'LİSE 2', 'FATİH MAH 3320 SK NO 32/3', 'BURHAN ÜLEÇ', '', '(537) 286-9408', '', '', b'0'),
(552, 0, 3, '0000-00-00', 'YUNUS EMRE', 'PÖLENT', '', 'LİSE 2', 'ÇAMLITEPE MAH 4021 SK SARIKÖŞK APT KAT 3 NO 5', 'MEHMET ARİF PÖLENT', '', '(535) 317-2275', '', '', b'0'),
(553, 0, 3, '0000-00-00', 'EMRE', 'BAYIK', '', 'LİSE 2', 'GÜLTEPE MAH 4392 SK ŞAT PARK SİT B BLOK KAT 4 NO 17', 'TURHAN BAYIK', '', '(542) 570-3426', '', '', b'0'),
(554, 0, 3, '0000-00-00', 'MUHAMMED HABİB', 'ATSAN', '', 'LİSE 2', 'ÇAMLITEPE MAH 4003 SK DEFNE APT KAT DAİRE 4', 'ABDURAHMAN ATSAN', '', '(533) 649-0203', '', '', b'0'),
(555, 0, 3, '0000-00-00', 'EMİRHAN', 'İZGİ', '', 'LİSE 2', 'TILMERÇ MAH MİM SİT B BLOK NO 10', 'MERT BARIŞ YEŞİLMEN', '', '(542) 472-0572', '', '', b'1'),
(556, 0, 3, '0000-00-00', 'ABDURRAHMAN', 'KUTLU', '', 'LİSE 2', 'FATİH MAH ÖMER MUHTAR BULV VEFA APT KAT 4 NO 7', 'SÜLEYMAN KUTLU', '', '(532) 324-1897', '', '', b'1'),
(557, 0, 3, '0000-00-00', 'VEYSEL SEFA', 'GÖZÜOĞLU', '', 'LİSE 3', 'GÜLTEPE MAH 4302 SK BEYAZ KONAK 1 APT NO 17/12', 'METİN GÖZÜOĞLU', '', '(542) 748-0066', '', '', b'1'),
(558, 0, 3, '0000-00-00', 'İBRAHİM HALİL', 'TUNCER', '', 'LİSE 3', 'TILMERÇ MAH 3860 SK YENİ KENTİ SİTESİ B BLOK KAT 3 NO 11', 'RASİM TUNCER', '', '(543) 947-2972', '', '', b'1'),
(559, 0, 3, '0000-00-00', 'CEYDA ', 'ORAK', '', 'LİSE 3', 'GÜLTEPE MAH EFLATUN CAD SEMA SİTESİ D BLOK KAT 3 DAİRE 7', 'ENVER ORAK', '', '(532) 408-0841', '', '', b'0'),
(560, 0, 3, '0000-00-00', 'MUHAMMED CAN', 'DEMİR', '', 'LİSE 3', 'GAP MAH DİYARBAKIR CAD UMUT APT KAT 5 NO 5', 'EKREM DEMİR', '', '(533) 517-4040', '', '', b'0'),
(561, 0, 3, '0000-00-00', 'İLKER', 'DEMİRHAN', '', 'LİSE 3', 'CUMHURİYET MAH GENÇLİK CAD ENSAKA APT NO 14 DAİRE 20', 'HASAN DEMİRHAN', '', '(532) 512-5416', '', '', b'1'),
(562, 0, 3, '0000-00-00', 'ALPER ', 'ATEŞ', '', 'LİSE 3', 'ÖZEL HAREKAT LOJ B 2 BLOK NO 41', 'SEVDA ATEŞ', '', '(505) 560-0583', '', '', b'1'),
(563, 0, 3, '0000-00-00', 'MUSTAFA ', 'ÖNAL', '', 'LİSE 3', 'GÜLTEPE MAH EFLATUN CAD BEYAZ KONAK APT TERAS KAT', 'NEVZAT ÖNAL ', '', '(532) 562-8876', '', '', b'0'),
(564, 0, 3, '0000-00-00', 'NEŞE', 'TAŞ', '', 'LİSE 3', 'MEMURSEN TOKİ BEŞİKLİ CAD ÖZEL HAREKAT LOJ B 3 /45', 'CEBRAİL TAŞ', '', '(507) 236-1899', '', '', b'1'),
(565, 0, 3, '0000-00-00', 'MEHMET TANER', 'LALE', '', 'LİSE 3', 'AYDINLIK EVLER MAH 19.CAD 9 NOLU\n SAĞLIK OCĞI YANİ', 'SAİM LALE ', '', '(533) 710-9088', '', '', b'0'),
(566, 0, 3, '0000-00-00', 'AHMET ORÇUN ', 'AYDIN', '', 'LİSE 3', 'BELDE MAH TPAO BULV ANTİK APT KAT 4 NO 7', 'HAMZA AYDIN', '', '(553) 491-2172', '', '', b'1'),
(567, 0, 3, '0000-00-00', 'CANER ', 'ARASLI', '', 'LİSE 3', 'ÇAMLITEPE MAH 4007 SK DALMIŞ APT A BLOK KAT 5 NO 16', 'YUSUF ARASLI', '', '(533) 811-6854', '', '', b'1'),
(568, 0, 3, '0000-00-00', 'RAMAZAN ', 'UÇANAK', '', 'LİSE 3', 'GÜLTEPE MAH DEMOKRASİ BULV ESENKET SİT 2 KAT 8 NO 23', 'İSMET UÇANAK', '', '(532) 637-1574', '', '', b'1'),
(569, 0, 3, '0000-00-00', 'ENES ', 'LEVENTOĞLU', '', 'LİSE 3', '', 'FADİL LEVENTOĞLU', '', '(530) 273-3782', '', '', b'1'),
(570, 0, 3, '0000-00-00', 'SERDAR BARAN', 'ZENGİN', '', 'LİSE 3', 'FATİH MAH ÖMER MUHTAR BULV HAMİTOĞLU 1 SİT A BLOK KAT 3 NO 6', 'CENGİZ ZENGİN', '', '(532) 501-5237', '', '', b'0'),
(571, 0, 3, '0000-00-00', 'MERVE', 'PÖLENT', '', 'LİSE 3', 'ÇAMLITEPE MAH 4003 SK NO 13 DEFNE APT NO 11', 'HIDIR PÖLENT', '', '(532) 673-5848', '', '', b'0'),
(572, 0, 3, '0000-00-00', 'ALEYNA YAĞMUR', 'FİDANLIK', '', 'LİSE 3', 'ÇAMLITEPE MAH 40124 SK MİM SİTESİ A BLOK NO 1', 'GÜLER FİDANLIK', '', '(507) 399-4746', '', '', b'1'),
(573, 0, 3, '0000-00-00', 'ŞAKİR', 'ÇAĞLAYAN', '', 'LİSE 3', 'BELDE MAH 3247 SK ÇAĞLAYAN SİT KAT 5 NO 10', 'MEHMET ÇAĞLAYAN', '', '(532) 252-9637', '', '', b'0'),
(574, 0, 3, '0000-00-00', 'BAYRAM', 'TAY', '', 'LİSE 3', 'ÇAMLITEPE MAH SEYİDOĞLU APT DAİRE NO 10', 'ABDULHAKİM TAY', '', '(532) 305-2468', '', '', b'1'),
(575, 0, 3, '0000-00-00', 'ESRA', 'BAYTAR', '', 'LİSE 3', 'BAHÇELİEVLER MAH 105 SK NO 41 HASANKEYF', 'SÜLEYMAN BAYTAR', '', '(532) 167-7207', '', '', b'1'),
(576, 0, 3, '0000-00-00', 'MUHAMMED ENES', 'SAĞDIÇ', '', 'LİSE 3', 'FATİH MAH ÖMER MUHTAR BULV HAMİTOĞLU SİT 2 B BLOK KAT 2 NO 3 ', 'MEHMET MASUM', '', '(532) 334-4972', '', '', b'1'),
(577, 0, 3, '0000-00-00', 'RUMEYSA', 'TERECE', '', 'LİSE 4', 'ÇAMLITEPE MAH DOĞAN SİT C BLOK TEERAS KAT', 'CEMİLE TERECE ÖZGEN', '', '(505) 860-7436', '', '', b'0'),
(578, 0, 3, '0000-00-00', 'VEDAT ', 'EREN', '', 'LİSE 4', 'GÜLTEPE MAH BEŞİKÇİ CAD YURTKENT SİT C BLOK KAT 3 NO 9', 'İSMET EREN', '', '(535) 346-9471', '', '', b'1'),
(579, 0, 3, '0000-00-00', 'FATMA ', 'ASLAN', '', 'LİSE 4', 'KÜLTÜR MAH AYDINARSLAN CAD', 'LALE ASLAN', '', '(542) 516-5772', '', '', b'1'),
(580, 0, 3, '0000-00-00', 'DERYA', 'SOYVURAL', '', 'LİSE 4', 'TILMERÇ MAH 3847 SK VİZYON SİT B BLOK NO 16', 'MESUT SOYVURAL', '', '(532) 672-1266', '', '', b'1'),
(581, 0, 3, '0000-00-00', 'ASLI NUR', 'YILDIRIM', '', 'LİSE 4', 'TOKİ TİLMERÇ E 9 BLOK DAİRE 15', 'EKREM YILDIRIM', '', '(505) 636-2406', '', '', b'0'),
(582, 0, 3, '0000-00-00', 'EMİNE BUSE ', 'ŞAHİN', '', 'LİSE 4', '', 'ERCAN ŞAHİN', '', '(505) 521-2736', '', '', b'1'),
(583, 0, 3, '0000-00-00', 'ALİ', 'AVCI', '', 'LİSE 4', 'BELDE MAH 3240 SK HAYAT SİT KAT 5 NO 9', 'EMRULLAH AVCI', '', '(543) 496-4286', '', '', b'1'),
(584, 0, 3, '0000-00-00', 'TUĞÇE ', 'ÖZTAŞ', '', 'LİSE 4', 'PAZARYERİ MAH 2709 SK GÜR APT KAT 1/11', 'RECEP ÖZTAŞ', '', '(533) 646-8065', '', '', b'0'),
(585, 0, 3, '0000-00-00', 'İREM', 'ÇINAR', '', 'LİSE 4', 'AYDINLIK EVLER MAH 8. CAD NO 175/A', 'HÜSEYİN ÇINAR', '', '(533) 697-4050', '', '', b'0'),
(586, 0, 3, '0000-00-00', 'EDA NUR', 'YARDIMCI', '', 'LİSE 4', 'BİNATLI KÖYÜ', 'MUHYEDDİN YARDIMCI', '', '(541) 435-6972', '', '', b'1'),
(587, 0, 3, '0000-00-00', 'MELİS', 'SOYVURAL', '', 'LİSE 4', 'BAHÇELİEVLER MAH CEVHER SİT C BLOK KAT 5 NO 20', 'HALİL SOYVURAL', '', '(532) 738-5804', '', '', b'0'),
(588, 0, 3, '0000-00-00', 'MUHAMMED SEFA ', 'DAĞ', '', 'LİSE 4', 'FATİH MAH 3316 SK NO 6', 'MEHMET SADIK DAĞ', '', '(542) 483-1908', '', '', b'1'),
(589, 0, 3, '0000-00-00', 'ABDURRAHMAN', 'ÜCE', '', 'LİSE 4', 'BELDE MAH 3212 SK SEFANUR APT 3/20', 'ABDULKADİR ÜCE', '', '(505) 331-8123', '', '', b'1'),
(590, 0, 3, '0000-00-00', 'BATUHAN ', 'İGMEN', '', 'LİSE 4', 'BELDE MH. 3246 SK FIRAT 3 APT. D 17', 'SELAHATTİN İGMEN', '', '(532) 577-3705', '', '', b'0'),
(591, 0, 3, '0000-00-00', 'YUSUF', 'IŞIK', '', 'LİSE 4', 'BELDE MAH 3201 SK SEVEN APT KAT 1 NO 2', 'SEDAT IŞIK', '', '(544) 295-2805', '', '', b'0'),
(592, 0, 3, '0000-00-00', 'ÖMER MUHTAR', 'DURUCEYLAN', '', 'LİSE 4', 'KÜLTÜR MAH 2608 SK NO 27 CEBUR APT', 'MEHMET CEMAL', '', '(505) 755-8627', '', '', b'1'),
(593, 0, 3, '0000-00-00', 'NARİN', 'OKAN', '', 'LİSE 4', 'DEMİRYOLU KÖYÜ', 'M.ŞAFİ OKAN', '', '(532) 425-1972', '', '', b'1'),
(594, 0, 3, '0000-00-00', 'MERVE', 'PEKERLİ', '', 'LİSE 4', 'PINAR BAŞI MAH 2209 SK ULU APT NO 4', 'MESUT PEKERLİ ', '', '(543) 954-0044', '', '', b'1'),
(595, 0, 3, '0000-00-00', 'FATİH ALİ ', 'OKAN', '', 'LİSE 4', 'TILMERÇ MAH BEŞİKÇİ CAD NO 3', 'M.ŞİRİN OKAN', '', '(532) 622-7293', '', '', b'1'),
(596, 0, 3, '0000-00-00', 'İREM', 'KORKMAZ', '', 'LİSE 4', 'BELDE MAH 3257 SK TRC APT B BLOK DAİRE 20', 'SEDAT KORKMAZ', '', '(530) 520-3589', '', '', b'1'),
(597, 0, 3, '0000-00-00', 'EYYÜP', 'BUDAK', '', 'LİSE 4', 'BAHÇELİ EVLER MAH 1649 SK ÖZAL SİT B BLOK NO 6', 'BURAK BUDAK', '', '(506) 355-3906', '', '', b'0'),
(598, 0, 3, '0000-00-00', 'İREM SULTAN', 'PARSAK', '', 'LİSE 4', '', 'SARA PARSAK', '', '(505) 536-8644', '', '', b'1'),
(599, 0, 15, '2015-09-07', 'PERİHAN', 'ÖZDEMİR', '', 'İLKÖĞRETİM 7', 'GÜLTEPE MAH. ZAFER CAD. ENES AP. NO:4', 'AHMET', 'ÖZDEMİR', '0542 652 56 66', '', '', b'0'),
(600, 0, 7, '2015-09-07', 'VİYAN ', 'AKTAN', '', 'İLKÖĞRETİM 1', 'GÜLTEPE MAH EYLÜL SİTESİ', 'AHMET', 'AKTAN', '0537 940 93 69', '', '', b'0'),
(601, 0, 3, '2015-09-07', 'MUHAMMET', 'BAYHAN', '', 'LİSE 1', 'GÜLTEPE MAH İL ÖZEL İDARE LOJMANLARI A \nBLOK NO 5', 'SUAT', 'BAYHAN', '0505 347 18 48 ', '', '', b'1'),
(602, 0, 3, '2015-09-07', 'ELİF MERVE', 'AKSOY', '', 'İLKÖĞRETİM 1', 'KÜLTÜR POLİS LOJMANLARI B3 BLOK', '', '', '0505 775 48 47', '', '', b'1'),
(603, 0, 15, '0002-11-30', 'İREM', 'GÜNAYDIN', '', 'İLKÖĞRETİM 4', 'TILMERÇ MAH. SİTEPAL SİTESİ', 'KADRİ', 'GÜNAYDIN', '0544 347 77 00', '', '', b'0'),
(604, 0, 15, '2015-09-20', 'UFUK', 'GÜNAYDIN', '', 'İLKÖĞRETİM 7', 'TILMERÇ MAH. SİTEPAL SİTESİ', 'KADRİ', 'GÜNAYDIN', '0544 347 77 00', '', '', b'0'),
(605, 0, 10, '2015-09-20', 'EYÜP', 'GÜLTEKİN', '', 'İLKÖĞRETİM 5', 'GÜLTEPE MAH YAŞATAN SİTESİ ', 'YOK', '', '0532 304 83 52', '0533 355 62 47', '', b'0'),
(606, 0, 5, '2015-09-20', 'MELİS SİDAR', 'YARDIMCI', '', 'LİSE 1', 'FATİH MAH ÜÇYILDIZ SİTESİ BİMİN İLERİSİ ESKİ\nFATİH GROSMAR YANI', 'YOK', '', '0533 240 54 50', '0554 300 14 14', '', b'0'),
(607, 0, 5, '2015-09-20', 'BÜŞRA CEREN', 'İMİR', '', 'LİSE 2', 'BELDE MAH MERETO CAD MÜFTÜLÜK SİTE \nARKASI BAĞIMSIZ ANAOKUL KÖŞESİ MİROĞLU\nAPT', 'ŞEHMUS', 'İMİR', '0505 309 92 85', '', '', b'0'),
(608, 0, 15, '2015-09-20', 'ALPER', 'BAĞLAMIŞ', '', 'İLKÖĞRETİM 7', 'BELDE MAH. MALİKANE YANI DEMİRBİLEK APT', 'ADEM', 'BAĞLAMIŞ', '0544 244 41 58', '', '', b'0'),
(609, 0, 16, '2015-09-20', 'PRENSES', 'ALEYNA', '', 'İLKÖĞRETİM 3', 'DEMİRBİLEK APT MALİKANE YANI', 'ADEM', '', '0544 244 41 58', '', '', b'0'),
(610, 0, 16, '2015-09-20', 'NUAR', 'ALEYNA', '', 'İLKÖĞRETİM 3', 'DEMİRBİLEK APT MALİKANE YANI', 'ADEM', '', '0544 244 41 58', '', '', b'0'),
(611, 0, 5, '2015-09-20', 'ZOZAN', 'ŞAHİN', '', 'İLKÖĞRETİM 3', '19.MAYIS MAHALESİ DİYAR SİMİT SARAYI\n YANI ', 'MEHMET', 'ŞAHİN', '0531 952 55 05', '', '', b'0'),
(612, 0, 5, '2015-09-20', 'RABİA', 'ASLANKILIÇ', '', 'LİSE 2', 'YENİ MAHALE 1016 SK NO 9', 'AHMET', 'ASLANKILIÇ', '0536 205 72 19', '', '', b'0'),
(613, 0, 5, '2015-09-20', 'MURAT', 'OCAK', '', 'LİSE 2', 'ESKİ YAĞMUR TURİZM ÇEVRESİ', 'YOK', '', '0542 324 13 93', '', '', b'0'),
(614, 0, 5, '2015-09-20', 'YÜCEL', 'BUCAĞA', '', 'LİSE 2', 'ESKİ YAĞMUR TURİZM ÇEVRESİ', 'YOK', '', '0507 426 87 87', '', '', b'0'),
(615, 0, 6, '2015-09-19', 'HACER', 'EKİNCİ', '', 'LİSE 2', 'BAHÇELİ EVLER HİLAL EVLER', 'MEHMET', 'EKİNCİ', '0505 774 12 03', '0488 214 93 58', '', b'0'),
(616, 0, 6, '2015-09-19', 'ASYA NUR', 'SAYIN', '', 'LİSE 3', 'ZİYA GÖKALP MAH YAŞAR KEMAL \nCAD ŞEYMA APT Z 1 SELÇUK ECZA DEPOSU ÜSTÜ', 'SELAM', 'SAYIN', '0536 438 79 30', '', '', b'0'),
(617, 0, 15, '2015-09-19', 'HÜSEYİN', 'TAY', '', 'İLKÖĞRETİM 5', 'SEYİTOĞLU APT BAHÇEŞEHİR KOLEJİ ARKSASI', 'LOKMAN', '', '0537 861 72 75', '', '', b'0'),
(618, 0, 15, '2015-09-19', 'HAYRÜNİSA', 'TAY', '', 'İLKÖĞRETİM 5', 'SEYİTOĞLU APT BAHÇEŞEHİR ARKASI', 'LOKMAN', 'TAY', '0537 861 72 75', '', '', b'0'),
(619, 0, 15, '2015-09-19', 'İREM', 'TAY', '', 'İLKÖĞRETİM 5', 'SEYİTOĞLU APT BAHÇEŞEHİR ARKASI', 'LOKMAN', 'TAY', '0537 861 72 75', '', '', b'0'),
(620, 0, 15, '2015-09-19', 'VEYSEL', 'TAY', '', 'İLKÖĞRETİM 5', 'SEYİTOĞLU APT BAHÇEŞEHİR ARKASI', 'TAYİP', '', '0537 792 42 09', '0532 305 24 68', '', b'0'),
(621, 0, 15, '2015-09-19', 'NUBAHAR', 'TAY', '', 'İLKÖĞRETİM 5', 'SEYİTOĞLU APT BAHÇEŞEHİR ARKASI', 'TAYİP', '', '0537 792 42 09', '0532 305 24 68', '', b'0'),
(622, 0, 15, '2015-09-19', 'BERİVAN', 'TAY', '', 'İLKÖĞRETİM 4', 'SEYİTOĞLU APT BAHÇEŞEHİR ARKASI', 'TAYİP', '', '0537 792 42 09', '0532 305 24 68', '', b'0'),
(623, 0, 15, '2015-09-19', 'OSMAN', 'TAY', '', 'İLKÖĞRETİM 5', 'SEYİTOĞLU APT BAHÇEŞEHİR ARKASI', 'ABDULHEKİM', '', '0532 305 24 68', '', '', b'0'),
(624, 0, 9, '2015-09-19', 'TAHA', 'ERMİN', '', 'ANAOKUL', 'GÜLTEPE MAH GÜL SİTESİ B BLOK KAT 2 NO 6', 'AHMET', 'ERMİN', '0507 677 91 21', '0507 945 77 71', '', b'0'),
(625, 0, 15, '2015-09-19', 'ŞÜKRAN', 'ADSAN', '', 'İLKÖĞRETİM 2', 'ÇAMLI TEPE MAH YEŞİL BATMAN APT KAT 2 NO 7', 'FİKRİ', 'ADSAN', '0505 579 44 86', '', '', b'0'),
(626, 0, 5, '2015-09-19', 'HARUN', 'ŞAHİN', '', 'LİSE 2', 'GAP MAHALLE 2522 SK NO 15', 'İBRAHİM', '', '0536 390 55 59', '', '', b'0'),
(627, 0, 6, '2015-09-19', 'FURKAN', 'ALMAZ', '', 'LİSE 2', 'TILMERÇ TOKİ POLİS LOJMANLARI', 'YOK', '', '0544 299 27 91', '', '', b'0'),
(628, 0, 8, '2015-09-19', 'M.BURAK', 'ALMAZ', '', 'İLKÖĞRETİM 7', 'KARATAY POLİS LOJMANLARI B/2', 'ZEYNEL', 'ALMAZ', '0505 217 32 20', '', '', b'0'),
(629, 0, 8, '2015-09-19', 'EMİRHAN', 'ALMAZ', '', 'İLKÖĞRETİM 3', 'KARATAY POLİS LOJMANLARI B/2', 'ZEYNEL', 'ALMAZ', '0505 217 32 20', '', '', b'0'),
(630, 0, 12, '2015-09-19', 'YILDIZ NUR', 'YILMAZ', '', 'İLKÖĞRETİM 6', 'GÜLTEPE MAH YILDIRIM YAPI YAZİHANE YANI\n404 MARKET YANI', 'ÖMER', 'YILMAZ', '0534 979 35 66', '', '', b'0'),
(631, 0, 15, '2015-09-19', 'SULTAN', 'AKGÜN', '', 'İLKÖĞRETİM 8', 'AŞIK VEYSEL CADDESİ GENÇ SİTESİ KAT 3 NO 12', 'CEMİL', 'AKGÜN', '0535 509 36 84', '', '', b'0'),
(632, 0, 15, '2015-09-19', 'EMİRHAN', 'PLATİN', '', 'İLKÖĞRETİM 4', 'GÜLTEPE MAHALESİ ÖMER AYHAN CADDESİ \nYENİ ŞEHİR 1.ETAP', 'YOK', '', '0507 358 10 72', '', '', b'0'),
(633, 0, 10, '2015-09-19', 'FURKAN', 'BİÇİM', '', 'İLKÖĞRETİM 4', 'GÜLTEPE MAH. ALBAYRAK APT 3.KAT', 'RAMAZAN', 'BİÇİM', '0534 365 31 76', '', '', b'0'),
(634, 0, 10, '2015-09-19', 'ÖZKAN', 'BİÇİM', '', 'İLKÖĞRETİM 3', 'GÜLTEPE MAH. ALBAYRAK APT 3.KAT', 'RAMAZAN', 'BİÇİM', '0534 365 31 76', '', '', b'0'),
(635, 0, 15, '2015-09-19', 'ÖMER FARUK', 'YILDIZ', '', 'İLKÖĞRETİM 8', 'BAHÇEŞEHİR KOLEJİ ARKASI BERÇEM SİTESİ', 'YOK', '', '0506 390 92 14', '', '', b'0'),
(636, 0, 16, '2015-09-19', 'NAZLI', 'YILDIZ', '', 'İLKÖĞRETİM 1', 'BAHÇEŞEHİR KOLEJİ ARKASI BERÇEM SİTESİ', 'YOK', '', '0506 390 42 14', '', '', b'0'),
(637, 0, 7, '2015-09-19', 'YUNUS EMRE', 'DOĞAN', '', 'İLKÖĞRETİM 1', 'TEPE PARK GÜLTEPE KÖPRÜ KAVŞAĞI', 'YOK', '', '0535 441 68 56', '', '', b'0'),
(638, 0, 15, '2015-09-19', 'ELİF SUDE', 'SUBAŞI', '', 'İLKÖĞRETİM 6', 'ÖZEL HAREKAT LOJMANLARI', 'SEYİT', 'SUBAŞI', '0505 620 43 88', '', '', b'0'),
(639, 0, 15, '2015-09-19', 'MEHMET BURAK', 'SUBAŞI', '', 'İLKÖĞRETİM 6', 'ÖZEL HAREKAT LOJMANLARI', 'SEYİT', 'SUBAŞI', '0505 620 43 88', '', '', b'0'),
(640, 0, 7, '2015-09-19', 'BERAT', 'DAĞ', '', 'İLKÖĞRETİM 5', 'BELDE MAH YÜKSEL BEŞ APT \nİSOT ALİ LAHMACUN ÜSTÜ', 'HAMZA', 'UCAR', '0505 303 70 71', '', '', b'0'),
(641, 0, 7, '2015-09-19', 'ELİF RANA', 'UÇAR', '', 'İLKÖĞRETİM 5', 'GAP MAH. 2510 SK NO 97 ARATO LAHMACUN', 'HAMZA', 'UCAR', '0505 303 70 71', '', '', b'0'),
(642, 0, 16, '2015-09-19', 'DELAL ECRİN', 'GÜRBÜZ', '', 'İLKÖĞRETİM 1', 'GÜLTEPE MAH. VEYSEL APT', 'GÜRKAN', 'GÜRBÜZ', '0506 740 10 25', '', '', b'0'),
(643, 0, 8, '2015-09-19', 'MERVE', 'ÖZMEN', '', 'İLKÖĞRETİM 8', 'GÜLTEPE MAH 4318 SK NO 8 ATMACA APT', 'ERCAN', 'ÖZMEN', '0535 246 42 92', '', '', b'0'),
(644, 0, 12, '2015-09-19', 'M.TEYFİK', 'BAĞIŞ', '', 'İLKÖĞRETİM 7', 'GÜLTEPE MAH ÇINAR SİTESİ A BLOK\nGİRİŞ KAT NO1 YURTTAŞ APT YANI', 'ŞEHMUS', 'BAĞIŞ', '0542 801 04 94', '', '', b'0'),
(645, 0, 11, '2015-09-19', 'HÜSEYİN', 'BAĞIŞ', '', 'İLKÖĞRETİM 5', 'GÜLTEPE MAH ÇINAR SİTESİ A BLOK GİRİŞ KAT\nYURTTAŞLAR APT YANI', 'ŞEHMUS', 'BAĞIŞ', '0542 801 04 94', '', '', b'0');
INSERT INTO `ogrenci` (`ID`, `ARAC_ID`, `OKUL_ID`, `KAYIT_TARIH`, `ADI`, `SOYADI`, `BABA_ADI`, `SINIF`, `ADRES`, `VELI_ADI`, `VELI_SOYADI`, `VELI_GSM`, `VELI_EV_TLF`, `IS_ADRES`, `IPTAL`) VALUES
(646, 0, 11, '2015-09-19', 'ZEYNEP', 'BAĞIŞ', '', 'İLKÖĞRETİM 1', 'GÜLTEPE MAH ÇINAR SİTESİ A BLOK GİRİŞ KAT\nYURTTAŞLAR APT YANI', 'ŞEHMUS', 'BAĞIŞ', '0542 801 04 94', '', '', b'0'),
(647, 0, 5, '2015-09-19', 'RÜKİYE', 'GÜNAY', '', 'LİSE 1', 'BAHÇELİ EVLER 1028 SK NO 3', 'FİKRET', 'GÜNAY', '0543 421 43 40', '', '', b'0'),
(648, 0, 10, '2015-09-19', 'MUHAMMED', 'KALKAN', '', 'İLKÖĞRETİM 3', 'GÜLTEPE MAH AŞIK VEYSEL CAD ADA KULE\nAPT', 'KUDRETTİN', 'KALKAN', '0534 397 35 85', '', '', b'0'),
(649, 0, 8, '2015-09-20', 'GÜLSE', 'GÜLSOY', '', 'İLKÖĞRETİM 5', 'KARATAY POLİS LOJMANLARI', 'NECATİ', ' GÜLSOY', '0505 357 48 49', '', '', b'0'),
(650, 0, 8, '2015-09-20', 'MUHAMMET', 'ŞEN', '', 'İLKÖĞRETİM 5', 'KARATAY POLİS LOJMANLARI', 'YILMAZ ', 'ŞEN', '0505 540 90 28', '', '', b'0'),
(651, 0, 8, '2015-09-20', 'SILA ', 'YÜCEL', '', 'İLKÖĞRETİM 5', 'KARATAY POLİS LOJMANLARI', 'HALİL', 'YÜCEL', '0505 457 34 50', '', '', b'0'),
(652, 0, 8, '2015-09-20', 'SEMİH', 'GÖK', '', 'İLKÖĞRETİM 6', 'KARATAY POLİS LOJMANLARI', 'ŞABAN', 'GÖK', 'YOK', '', '', b'0'),
(653, 0, 8, '2015-09-20', 'SAMET ', 'GÖK', '', 'İLKÖĞRETİM 5', 'KARATAY POLİS LOJMANLARI', 'ŞABAN', 'GÖK', 'YOK', '', '', b'0'),
(654, 0, 7, '2015-09-20', 'İREM', 'KASAR', '', 'İLKÖĞRETİM 5', 'KARATAY POLİS LOJMANLARI', 'ARİF', 'KASAR', 'YOK', '', '', b'0'),
(655, 0, 8, '2015-09-20', 'KAAN', 'OGLU', '', 'İLKÖĞRETİM 5', 'KARATAY POLİS LOJMANLARI', 'APASLAN', 'OĞLU', 'YOK', '', '', b'0'),
(656, 0, 8, '2015-09-20', 'KEMAL', 'OĞLU', '', 'İLKÖĞRETİM 7', 'KARATAY POLİS LOJMANLARI', 'APASLAN', 'OĞLU', 'YOK', '', '', b'0'),
(657, 0, 8, '2015-09-20', 'GAFFAR', 'AY', '', 'İLKÖĞRETİM 7', 'KARATAY POLİSLOJMANLARI', 'ŞEHMUS ', 'AY', 'YOK', '', '', b'0'),
(658, 0, 7, '2015-09-20', 'SÜLEYMAN', 'AY', '', 'İLKÖĞRETİM 5', 'KARATAY POLİS LOJMANLARI', 'ŞEHMUS ', 'AY', 'YOK', '', '', b'0'),
(659, 0, 7, '2015-09-20', 'EMİR', 'HAN', '', 'İLKÖĞRETİM 4', 'KARATAY POLİS LOJMANLARI', 'YOK', '', 'YOK', '', '', b'0'),
(660, 0, 8, '2015-09-20', 'AYÇA', 'TURSUN', '', 'İLKÖĞRETİM 5', 'KARATAY POLİS LOJMANLARI', 'MURAT ', 'TURSUN', '0505 211 32 16', '', '', b'0'),
(661, 0, 7, '2015-09-20', 'BURAK', 'LALA', '', 'İLKÖĞRETİM 4', 'KARATAY POLİS LOJMANLARI', 'TURGUT ', 'LALA', '0505 225 03 39', '', '', b'0'),
(662, 0, 8, '2015-09-20', 'SÜMMEYYE', 'TAŞKIRAN', '', 'İLKÖĞRETİM 5', 'KARATAY POLİS LOJMNALARI', 'MEHMET ŞAHİN', 'TAŞKIRAN', '0507 609 55 79', '', '', b'0'),
(663, 5, 5, '2015-09-20', 'ALİYE', 'ÖZCAN', '', 'LİSE 2', 'DSİ LOJMANLARI MALİKKANE KARŞISI', 'İBRAHİM', '', '0534 937 48 24', '', '', b'0'),
(664, 5, 5, '2015-09-20', 'NARİN ŞEVAL', 'İPEK', '', 'LİSE 2', 'DSİ YANI BELDE APT ŞAHİN MARKET ÜSTÜ', 'NİHAT', 'İPEK', '0535 247 16 34', '', '', b'0'),
(665, 5, 5, '2015-09-20', 'TAKVA', 'ALTUN', '', 'LİSE 2', 'ELİT SİTESİ M.EMİN ŞİMŞEK İLK ÖĞRETİM YANI', 'BOŞ', '', '0505 507 55 66', '', '', b'0'),
(666, 5, 5, '2015-09-20', 'ÖZNUR BERFİN', 'SİNCAR', '', 'LİSE 3', 'ELİT SİTESİ M.EMİN ŞİMŞEK İLKÖĞRETİM OKULU \nYANI', 'ABULHALİM', '', '0532 628 16 31', '', '', b'0'),
(667, 5, 5, '2015-09-20', 'BÜŞRA', 'YİĞİT', '', 'LİSE 2', 'TAŞ KONAK APT', 'M.SALİH', '', '0532 445 66 19', '', '', b'0'),
(668, 5, 5, '2015-09-20', 'FARUK', 'OK', '', 'LİSE 2', 'YILDIZ KONAK APT', 'HABİP', '', '0533 252 09 71', '0542 298 65 25', '', b'0'),
(669, 5, 5, '2015-09-20', 'KÜBRA', 'ÖN', '', 'LİSE 2', 'DİCLE APT BİM MARKET YANI', 'MARAN', '', '0533 557 45 83', '', '', b'0'),
(670, 5, 5, '2015-09-20', 'RUKEN', 'GAYRETLİ', '', 'LİSE 2', 'KARDELEN APT İMKB KARŞISI', 'ŞABAN', '', '0505 757 66 40', '', '', b'0'),
(671, 5, 5, '2015-09-20', 'HÜSEYİN', 'TARHAN', '', 'LİSE 2', 'OSMANLI KONAĞI A101 İN YANI', 'BOŞ', '', '0532 275 59 35', '', '', b'0'),
(672, 5, 5, '2015-09-20', 'İBRAHİM ONUR', 'ERPOLAT', '', 'LİSE 2', 'ÖZALP APT', 'BOŞ', '', '0542 722 66 05', '', '', b'0'),
(673, 5, 5, '2015-09-20', 'ŞİMAL', 'NAYMAN', '', 'LİSE 2', 'ESENKENT SİTESİ', 'BOŞ', '', '0505 488 61 14', '', '', b'0'),
(674, 5, 5, '2015-09-20', 'AKİF', 'AKTAŞ', '', 'ANAOKUL', 'MURAT APT MALİKANE KARŞISI', 'BOŞ', '', '0532 372 72 69', '', '', b'0'),
(675, 5, 5, '2015-09-20', 'UMUT', 'ELMA', '', 'LİSE 2', 'HACIOĞLU APT İSOT ALİ ÜSTÜ', 'BOŞ', '', '0530 144 98 08', '', '', b'0'),
(676, 5, 7, '2015-09-20', 'ÖMER EREN', 'AKTAR', '', 'ANAOKUL', 'EYLÜL SİTESİ', 'AHMET', '', '0530 692 91 62', '', '', b'0'),
(677, 5, 7, '2015-09-20', 'TUANA', 'EREN', '', 'İLKÖĞRETİM 4', 'ODA YERİ SİTESİ', 'RAMAZAN', '', '0544 727 21 62', '', '', b'0'),
(678, 5, 7, '2015-09-20', 'VİYAN', 'AKTAR', '', 'İLKÖĞRETİM 1', 'EYLÜL SİTESİ', 'AHMET', 'AKTAR', '0530 692 91 62', '', '', b'0'),
(679, 5, 7, '2015-09-20', 'M.EMRE', 'ONAT', '', 'İLKÖĞRETİM 4', 'EYLÜL SİTESİ', 'BOŞ', '', '0505 270 25 94', '', '', b'0'),
(680, 5, 7, '2015-09-20', 'ALİ İHSAN', 'AKYÜZ', '', 'İLKÖĞRETİM 4', 'EYLÜL SİTESİ', 'BOŞ', '', '0532 774 45 85', '', '', b'0'),
(681, 5, 7, '2015-09-20', 'SALİH', 'AKYOL', '', 'İLKÖĞRETİM 3', 'EYLÜL SİTESİ', 'MEHMET', '', '0530 333 43 85', '', '', b'0'),
(682, 5, 7, '2015-09-20', 'ELİF', 'AKYOL', '', 'İLKÖĞRETİM 2', 'EYLÜL SİTESİ', 'MEHMET', '', '0530 333 43 85', '', '', b'0'),
(683, 5, 7, '2015-09-20', 'RAMAZAN', 'BİÇEN', '', 'İLKÖĞRETİM 7', 'EYLÜL SİTESİ', 'ŞEHMUS', '', '0505 348 78 70', '', '', b'0'),
(684, 5, 7, '2015-09-20', 'HALİL İBRAHİM', 'IŞIK', '', 'İLKÖĞRETİM 6', 'EYLÜL SİTESİ', 'M.ALİ', '', '0507 706 7359', '', '', b'0'),
(685, 5, 7, '2015-09-20', 'ENES', 'ONAT', '', 'İLKÖĞRETİM 6', 'EYLÜL SİTESİ', 'BOŞ', '', '0538 415 62 36', '', '', b'0'),
(686, 5, 7, '2015-09-20', 'ENSAR', 'AKIN', '', 'İLKÖĞRETİM 4', 'ŞEMANUR APT', 'MİRAÇ', '', '0543 566 21 71', '', '', b'0'),
(687, 0, 3, '2015-09-21', 'NAZLI', 'ULUCAY', '', 'ANAOKUL', 'MEMURSEN TOKİ KG 4 NO 15', 'YOK', '', 'YOK', '', '', b'0'),
(688, 0, 3, '2015-09-21', 'ŞİLDAN', 'NUDA', '', 'ANAOKUL', 'KİA SERVİSİ ARKASI DÜNYA HASTANESİ', 'YOK', '', '0533 146 62 33', '', '', b'0'),
(689, 0, 3, '2015-09-21', 'YUSUF', 'ERKUL', '', 'İLKÖĞRETİM 3', 'BELDE MAH. İSTİKBAL CAD MERETO APT \nYIKAMACI KARŞISI', 'AHMET', 'ERKUL', '0533 546 13 48', '', '', b'1'),
(690, 0, 3, '2015-09-21', 'MUHAMMED', 'ERKUL', '', 'İLKÖĞRETİM 4', 'BELDE MAH. İSTİKBAL CAD. MERETO APT YIKAMA\nKARŞISI', 'AHMET', 'ERKUL', '0533 546 13 48', '', '', b'0'),
(691, 0, 5, '2015-09-21', 'HALE', 'NASIROĞLU', '', 'LİSE 3', 'BAHÇELİEVLER MAH. SEFA ÇEYİZ ÜSTÜ', 'BİLAL', '', '0532 371 7186', '', '', b'0'),
(692, 0, 5, '2015-09-21', 'SELMAN', 'SERHAT', '', 'LİSE 2', 'BAHÇELİEVLER MAH DEMİRBİLEK SİTESİ', 'AHMET', '', '0532 736 84 02', '', '', b'0'),
(693, 0, 6, '2015-09-21', 'BURCU', 'TURSUN', '', 'LİSE 2', 'KARATAY POLİS LOJMANLAR', 'MURAT', '', '0505 21 32 16', '', '', b'0'),
(694, 0, 17, '2015-09-21', 'İCLAL', 'EKMEN', '', 'İLKÖĞRETİM 5', 'ŞAFAK MAH MALİYE BLOKLARI A BLOK KAT 5\nNO 9', 'AYŞE', 'EKMEN', '0541 417 67 90', '', '', b'0'),
(695, 0, 5, '2015-09-21', 'MEDİNE SUDE', 'ASLAN', '', 'LİSE 3', 'MEMURSEN TOKİ Y 1 D 8', 'BAHATTİN', 'ASLAN', '0533 653 95 83', '', '', b'0'),
(696, 0, 5, '2015-09-21', 'TUBA', 'DOĞU', '', 'LİSE 3', 'MEMURSEN TOKİ', 'A.HAKİM', 'DOĞU', '0505 313 44 55', '', '', b'0'),
(697, 0, 6, '2015-09-21', 'ZEYNEP', 'ÇETİN', '', 'LİSE 2', 'BELDE MAH. MERETO CAD İBRAHİM HALİL APT\nDSİ ANAOKULU KARŞISI NO 31/6', 'ABDULREZAK', 'ÇETİN', '0542 420 19 51', '', '', b'0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `okul`
--

DROP TABLE IF EXISTS `okul`;
CREATE TABLE IF NOT EXISTS `okul` (
  `ID` int(11) NOT NULL,
  `OKUL_ADI` varchar(35) DEFAULT NULL,
  `AD_SOYAD` varchar(35) DEFAULT NULL,
  `TELEFON` varchar(20) DEFAULT NULL,
  `ADRES` varchar(255) DEFAULT NULL,
  `IPTAL` bit(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin5;

--
-- Tablo döküm verisi `okul`
--

INSERT INTO `okul` (`ID`, `OKUL_ADI`, `AD_SOYAD`, `TELEFON`, `ADRES`, `IPTAL`) VALUES
(0, NULL, NULL, NULL, NULL, NULL),
(3, 'BAHÇEŞEHİR KOLEJİ', 'YOK', 'BOŞ', 'BEŞİÇİ CADDESİ TILMERÇ MAHALESİ', b'0'),
(4, 'MEMET ŞİMŞEK İ.HATİP LİSESİ', 'BOŞ', 'BOŞ', 'BOŞ', b'1'),
(5, 'MEVLANA ANADOLU LİSESİ', 'BOŞ', 'BOŞ', 'BOŞ', b'0'),
(6, 'YUNUS EMRE ANADOLU LİSESİ', 'BOŞ', 'BOŞ', 'BOŞ', b'0'),
(7, 'GÜLTEPE İLÖĞRETİM', 'BOŞ', 'BOŞ', 'BOŞ', b'0'),
(8, 'GÜLTEPE ORTAOKULU', 'BOŞ', 'BOŞ', 'BOŞ', b'0'),
(9, 'GÜLTEPE ANAOKULU', 'BOŞ', 'BOŞ', 'BOŞ', b'0'),
(10, 'TOKİ K.KARABEKİR İLKÖĞRETİM', 'BOŞ', 'BOŞ', 'BOŞ', b'0'),
(11, 'FATİH İLKÖĞRETİM', 'BOŞ', 'BOŞ', 'BOŞ', b'0'),
(12, 'FATİH ORTAOKULU', 'BOŞ', 'BOŞ', 'BOŞ', b'0'),
(13, 'TÜPRAŞ İLKÖĞRETİM', 'BOŞ', 'BOŞ', 'BOŞ', b'0'),
(14, 'GAP İLKÖĞRETİM', 'BOŞ', 'BOŞ', 'BOŞ', b'1'),
(15, 'İMKB İLKÖĞRETİM', 'BOŞ', 'BOŞ', 'BOŞ', b'0'),
(16, 'M.EMİN ŞİMŞEK İLKOKULU', 'YOK', 'YOK', 'BELDE MAHALESİ', b'0'),
(17, 'TÜPRAŞ İLKÖĞRETİM', 'YOK', 'YOK', 'ÇAMLITEPE MAHALESİ', b'0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personel`
--

DROP TABLE IF EXISTS `personel`;
CREATE TABLE IF NOT EXISTS `personel` (
  `ID` int(11) NOT NULL,
  `GOREV_ID` int(11) NOT NULL DEFAULT '0',
  `ADI` varchar(35) COLLATE utf8_turkish_ci DEFAULT NULL,
  `SOYADI` varchar(35) COLLATE utf8_turkish_ci DEFAULT NULL,
  `CINSIYET` varchar(5) COLLATE utf8_turkish_ci DEFAULT NULL,
  `DOGUM_TARIHI` date DEFAULT NULL,
  `UCRET_MIKTARI` double DEFAULT NULL,
  `TELEFON` varchar(20) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ADRES` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `IPTAL` bit(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `personel`
--

INSERT INTO `personel` (`ID`, `GOREV_ID`, `ADI`, `SOYADI`, `CINSIYET`, `DOGUM_TARIHI`, `UCRET_MIKTARI`, `TELEFON`, `ADRES`, `IPTAL`) VALUES
(0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 4, 'EMİN', 'İREGÜR', NULL, NULL, NULL, '0505 666 11 11', '', b'0'),
(2, 4, 'ERCAN', 'TEMEL', NULL, NULL, NULL, '0532 164 01 88', 'BOŞ', b'0'),
(3, 4, 'ÖMER', 'TURAN', NULL, NULL, NULL, '0545 821 45 23', 'BOŞ', b'0'),
(4, 4, 'HÜSEYİN', 'TEMEL', NULL, NULL, NULL, '0545 234 60 27', 'BOŞ', b'0'),
(5, 4, 'ALİ', 'ACAR', NULL, NULL, NULL, '0537 360 92 05', 'BOŞ', b'0'),
(6, 4, 'KADİR', 'İREGÜR', NULL, NULL, NULL, '0533 603 76 84', 'BOŞ', b'0'),
(7, 4, 'RIDVAN', 'ÖZBEK', NULL, NULL, NULL, '0535 545 06 60', 'BOŞ', b'0'),
(8, 4, 'BÜLENT', 'TÜTÜNCÜ', NULL, NULL, NULL, '0544 488 62 61', 'BOŞ', b'0'),
(9, 4, 'REMZİ', 'TURAN', NULL, NULL, NULL, '0488 213 87 87', 'BAHÇELİ EVLER MAH.', b'0'),
(10, 4, 'SEDAT', 'UPDATE', NULL, NULL, NULL, 'BOŞ', 'BOŞ', b'1'),
(11, 4, 'SAİT', 'KALKAN', NULL, NULL, NULL, '0545 624 07 72', 'BOŞ', b'0'),
(12, 4, 'VEYSİ ', 'BEYCUR', NULL, NULL, NULL, '0532 472 28 90', '', b'0'),
(13, 4, 'MUSTAFA', 'BEYCUR', NULL, NULL, NULL, '0507 940 72 65', '', b'0'),
(14, 4, 'SUAT', 'ÖZGEÇ', NULL, NULL, NULL, '0532 605 60 72', '', b'0'),
(15, 4, 'KEREM', 'ÇELİK', NULL, NULL, NULL, '0541 906 86 34', '', b'0'),
(16, 4, 'ENVER', 'PATOZ', NULL, NULL, NULL, '0535 379 87 54', '', b'0'),
(17, 4, 'HASAN', 'TEMEL', NULL, NULL, NULL, '0539 715 04 22', '', b'0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `taksit`
--

DROP TABLE IF EXISTS `taksit`;
CREATE TABLE IF NOT EXISTS `taksit` (
  `ID` int(11) NOT NULL,
  `OGRENCI_ID` int(11) NOT NULL DEFAULT '0',
  `TAKSIT_NO` varchar(10) CHARACTER SET latin5 DEFAULT NULL,
  `TAKSIT_MIKTARI` double DEFAULT NULL,
  `OLUSTURMA_TARIH` datetime DEFAULT NULL,
  `ODEME_TARIHI` datetime DEFAULT NULL,
  `ODENEN_TARIH` date DEFAULT NULL,
  `ODEME_SEKLI` varchar(10) CHARACTER SET latin5 DEFAULT NULL,
  `ODEME_DURUM` bit(1) DEFAULT NULL,
  `IPTAL` bit(1) DEFAULT NULL,
  `ODENEN_MIKTAR` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `arac`
--
ALTER TABLE `arac`
  ADD PRIMARY KEY (`ID`,`PERSONEL_ID`),
  ADD UNIQUE KEY `ID` (`ID`),
  ADD UNIQUE KEY `ID_2` (`ID`),
  ADD UNIQUE KEY `ID_3` (`ID`),
  ADD UNIQUE KEY `PLAKA` (`PLAKA`),
  ADD KEY `PERSONEL_ID` (`PERSONEL_ID`);

--
-- Tablo için indeksler `arac_gider`
--
ALTER TABLE `arac_gider`
  ADD PRIMARY KEY (`ID`,`ARAC_ID`),
  ADD UNIQUE KEY `ID` (`ID`),
  ADD UNIQUE KEY `ID_2` (`ID`),
  ADD UNIQUE KEY `ID_3` (`ID`),
  ADD KEY `ARAC_ID` (`ARAC_ID`);

--
-- Tablo için indeksler `arac_kira`
--
ALTER TABLE `arac_kira`
  ADD PRIMARY KEY (`ID`,`ARAC_ID`);

--
-- Tablo için indeksler `arac_okul`
--
ALTER TABLE `arac_okul`
  ADD PRIMARY KEY (`ID`,`ARAC_ID`,`OKUL_ID`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Tablo için indeksler `firma`
--
ALTER TABLE `firma`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `gorev`
--
ALTER TABLE `gorev`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `kasa`
--
ALTER TABLE `kasa`
  ADD PRIMARY KEY (`ID`,`ARAC_GIDER_ID`,`TAKSIT_ID`,`MAAS_ID`,`ARAC_KIRA_ID`),
  ADD UNIQUE KEY `ID` (`ID`),
  ADD UNIQUE KEY `ID_2` (`ID`),
  ADD KEY `TAKSIT_ID` (`TAKSIT_ID`),
  ADD KEY `MAAS_ID` (`MAAS_ID`),
  ADD KEY `ARAC_KIRA_ID` (`ARAC_KIRA_ID`);

--
-- Tablo için indeksler `kulanici`
--
ALTER TABLE `kulanici`
  ADD PRIMARY KEY (`ID`,`FIRMA_ID`,`PERSONEL_ID`),
  ADD KEY `FIRMA_ID` (`FIRMA_ID`),
  ADD KEY `PERSONEL_ID` (`PERSONEL_ID`);

--
-- Tablo için indeksler `maas`
--
ALTER TABLE `maas`
  ADD PRIMARY KEY (`ID`,`PERSONEL_ID`),
  ADD UNIQUE KEY `ID` (`ID`),
  ADD UNIQUE KEY `ID_2` (`ID`,`PERSONEL_ID`),
  ADD KEY `PERSONEL_ID` (`PERSONEL_ID`);

--
-- Tablo için indeksler `ogrenci`
--
ALTER TABLE `ogrenci`
  ADD PRIMARY KEY (`ID`,`ARAC_ID`,`OKUL_ID`),
  ADD UNIQUE KEY `ID` (`ID`),
  ADD KEY `ARAC_ID` (`ARAC_ID`),
  ADD KEY `OKUL_ID` (`OKUL_ID`);

--
-- Tablo için indeksler `okul`
--
ALTER TABLE `okul`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Tablo için indeksler `personel`
--
ALTER TABLE `personel`
  ADD PRIMARY KEY (`ID`,`GOREV_ID`),
  ADD UNIQUE KEY `ID` (`ID`),
  ADD KEY `GOREV_ID` (`GOREV_ID`);

--
-- Tablo için indeksler `taksit`
--
ALTER TABLE `taksit`
  ADD PRIMARY KEY (`ID`,`OGRENCI_ID`),
  ADD UNIQUE KEY `ID` (`ID`),
  ADD KEY `OGRENCI_ID` (`OGRENCI_ID`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `arac`
--
ALTER TABLE `arac`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- Tablo için AUTO_INCREMENT değeri `arac_gider`
--
ALTER TABLE `arac_gider`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `arac_kira`
--
ALTER TABLE `arac_kira`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `arac_okul`
--
ALTER TABLE `arac_okul`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- Tablo için AUTO_INCREMENT değeri `firma`
--
ALTER TABLE `firma`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `gorev`
--
ALTER TABLE `gorev`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- Tablo için AUTO_INCREMENT değeri `kasa`
--
ALTER TABLE `kasa`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `kulanici`
--
ALTER TABLE `kulanici`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `maas`
--
ALTER TABLE `maas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `ogrenci`
--
ALTER TABLE `ogrenci`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=698;
--
-- Tablo için AUTO_INCREMENT değeri `okul`
--
ALTER TABLE `okul`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- Tablo için AUTO_INCREMENT değeri `personel`
--
ALTER TABLE `personel`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- Tablo için AUTO_INCREMENT değeri `taksit`
--
ALTER TABLE `taksit`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `arac`
--
ALTER TABLE `arac`
  ADD CONSTRAINT `arac_ibfk_1` FOREIGN KEY (`PERSONEL_ID`) REFERENCES `personel` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Tablo kısıtlamaları `arac_gider`
--
ALTER TABLE `arac_gider`
  ADD CONSTRAINT `arac_gider_ibfk_1` FOREIGN KEY (`ARAC_ID`) REFERENCES `arac` (`ID`);

--
-- Tablo kısıtlamaları `kasa`
--
ALTER TABLE `kasa`
  ADD CONSTRAINT `kasa_ibfk_1` FOREIGN KEY (`TAKSIT_ID`) REFERENCES `taksit` (`ID`),
  ADD CONSTRAINT `kasa_ibfk_2` FOREIGN KEY (`MAAS_ID`) REFERENCES `maas` (`ID`),
  ADD CONSTRAINT `kasa_ibfk_3` FOREIGN KEY (`ARAC_KIRA_ID`) REFERENCES `arac_kira` (`ID`);

--
-- Tablo kısıtlamaları `kulanici`
--
ALTER TABLE `kulanici`
  ADD CONSTRAINT `kulanici_ibfk_1` FOREIGN KEY (`FIRMA_ID`) REFERENCES `firma` (`ID`),
  ADD CONSTRAINT `kulanici_ibfk_2` FOREIGN KEY (`PERSONEL_ID`) REFERENCES `personel` (`ID`);

--
-- Tablo kısıtlamaları `maas`
--
ALTER TABLE `maas`
  ADD CONSTRAINT `maas_ibfk_1` FOREIGN KEY (`PERSONEL_ID`) REFERENCES `personel` (`ID`);

--
-- Tablo kısıtlamaları `ogrenci`
--
ALTER TABLE `ogrenci`
  ADD CONSTRAINT `ogrenci_ibfk_1` FOREIGN KEY (`ARAC_ID`) REFERENCES `arac` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ogrenci_ibfk_2` FOREIGN KEY (`OKUL_ID`) REFERENCES `okul` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Tablo kısıtlamaları `personel`
--
ALTER TABLE `personel`
  ADD CONSTRAINT `personel_ibfk_1` FOREIGN KEY (`GOREV_ID`) REFERENCES `gorev` (`ID`);

--
-- Tablo kısıtlamaları `taksit`
--
ALTER TABLE `taksit`
  ADD CONSTRAINT `taksit_ibfk_1` FOREIGN KEY (`OGRENCI_ID`) REFERENCES `ogrenci` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
