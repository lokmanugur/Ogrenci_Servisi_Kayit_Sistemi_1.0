-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 15 Eyl 2015, 19:31:02
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
CREATE DATABASE IF NOT EXISTS `student_service` DEFAULT CHARACTER SET utf8 COLLATE utf8_turkish_ci;
USE `student_service`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `arac`
--

DROP TABLE IF EXISTS `arac`;
CREATE TABLE IF NOT EXISTS `arac` (
  `ID` int(11) NOT NULL,
  `PERSONEL_ID` int(11) NOT NULL,
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
(1, 1, '2015-09-15', 'YENİ', '2015', 17, 'CRAFTER', b'0'),
(2, 2, '2015-09-15', 'YENİ 2', '2015', 17, 'CRAFTER', b'0'),
(3, 3, '2015-09-15', 'YENİ 3', '2015', 17, 'CRAFTER', b'0'),
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `arac_okul`
--

INSERT INTO `arac_okul` (`ID`, `ARAC_ID`, `OKUL_ID`, `IPTAL`) VALUES
(10, 1, 3, b'0'),
(11, 1, 4, b'0');

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
  `MAAS_MIKTAR` double DEFAULT NULL,
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
  `ADI` varchar(35) COLLATE utf8_turkish_ci DEFAULT NULL,
  `SOYADI` varchar(35) COLLATE utf8_turkish_ci DEFAULT NULL,
  `BABA_ADI` varchar(35) COLLATE utf8_turkish_ci DEFAULT NULL,
  `SINIF` varchar(10) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ADRES` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `VELI_ADI` varchar(35) COLLATE utf8_turkish_ci DEFAULT NULL,
  `VELI_SOYADI` varchar(35) COLLATE utf8_turkish_ci DEFAULT NULL,
  `VELI_GSM` varchar(20) COLLATE utf8_turkish_ci DEFAULT NULL,
  `VELI_EV_TLF` varchar(20) COLLATE utf8_turkish_ci DEFAULT NULL,
  `IS_ADRES` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `IPTAL` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `okul`
--

DROP TABLE IF EXISTS `okul`;
CREATE TABLE IF NOT EXISTS `okul` (
  `ID` int(11) NOT NULL,
  `OKUL_ADI` varchar(35) COLLATE utf8_turkish_ci DEFAULT NULL,
  `AD_SOYAD` varchar(35) COLLATE utf8_turkish_ci DEFAULT NULL,
  `TELEFON` varchar(20) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ADRES` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `IPTAL` bit(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `okul`
--

INSERT INTO `okul` (`ID`, `OKUL_ADI`, `AD_SOYAD`, `TELEFON`, `ADRES`, `IPTAL`) VALUES
(1, 'BAHÇEŞEHİR', 'AYŞE GÜNEŞ', '0533 525 25 24', 'KORKE MAH NO 15', b'1'),
(2, 'FİNAL KOLEJİ', 'MÜNEVER SAİL', '0545 878 89 89', 'DİYARBAKI YOLU ÜZERİ', b'1'),
(3, 'BAŞAKŞEHİR KOLEJİ', 'YOK', 'BOŞ', 'BEŞİÇİ CADDESİ TILMERÇ', b'0'),
(4, 'MEMET ŞİMŞEK İ.HATİP LİSESİ', 'BOŞ', 'BOŞ', 'BOŞ', b'0'),
(5, 'MEVLANA ANADOLU LİSESİ', 'BOŞ', 'BOŞ', 'BOŞ', b'0'),
(6, 'YUNUS EMRE ANADOLU LİSESİ', 'BOŞ', 'BOŞ', 'BOŞ', b'0'),
(7, 'GÜLTEPE İLÖĞRETİM', 'BOŞ', 'BOŞ', 'BOŞ', b'0'),
(8, 'GÜLTEPE ORTAOKULU', 'BOŞ', 'BOŞ', 'BOŞ', b'0'),
(9, 'GÜLTEPE ANAOKULU', 'BOŞ', 'BOŞ', 'BOŞ', b'0'),
(10, 'TOKİ K.KARABEKİR İLKÖĞRETİM', 'BOŞ', 'BOŞ', 'BOŞ', b'0'),
(11, 'FATİH İLKÖĞRETİM', 'BOŞ', 'BOŞ', 'BOŞ', b'0'),
(12, 'FATİH ORTAOKULU', 'BOŞ', 'BOŞ', 'BOŞ', b'0'),
(13, 'TÜPRAŞ İLKÖĞRETİM', 'BOŞ', 'BOŞ', 'BOŞ', b'0'),
(14, 'GAP İLKÖĞRETİM', 'BOŞ', 'BOŞ', 'BOŞ', b'0'),
(15, 'İMKB İLKÖĞRETİM', 'BOŞ', 'BOŞ', 'BOŞ', b'0');

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
  `TELEFON` varchar(20) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ADRES` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `IPTAL` bit(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `personel`
--

INSERT INTO `personel` (`ID`, `GOREV_ID`, `ADI`, `SOYADI`, `TELEFON`, `ADRES`, `IPTAL`) VALUES
(1, 4, 'EMİN', 'İREGÜR', 'BOŞ', '', b'0'),
(2, 4, 'ERCAN', 'TEMEL', 'BOŞ', 'BOŞ', b'0'),
(3, 4, 'ÖMER', 'TURAN', 'BOŞ', 'BOŞ', b'0'),
(4, 4, 'HÜSEYİN', 'TEMEL', 'BOŞ', 'BOŞ', b'0'),
(5, 4, 'ALİ', 'ACAR', 'BOŞ', 'BOŞ', b'0'),
(6, 4, 'KADİR', 'İREGÜR', 'BOŞ', 'BOŞ', b'0'),
(7, 4, 'RIDVAN', 'UPDATE', 'BOŞ', 'BOŞ', b'0'),
(8, 4, 'BÜLENT', 'TÜTÜNCÜ', 'BOŞ', 'BOŞ', b'0'),
(9, 4, 'REMZİ', 'TURAN', '0488 213 87 87', 'BAHÇELİ EVLER MAH.', b'0'),
(10, 4, 'SEDAT', 'UPDATE', 'BOŞ', 'BOŞ', b'0'),
(11, 4, 'SAİT', 'UPDATE', 'BOŞ', 'BOŞ', b'0');

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `okul`
--
ALTER TABLE `okul`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- Tablo için AUTO_INCREMENT değeri `personel`
--
ALTER TABLE `personel`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
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
