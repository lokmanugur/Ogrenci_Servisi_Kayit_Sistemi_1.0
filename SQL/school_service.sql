CREATE DATABASE IF NOT EXISTS `school_service` DEFAULT CHARACTER SET latin5 COLLATE latin5_turkish_ci;
USE `school_service`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `address`
--

DROP TABLE IF EXISTS `addres`;
CREATE TABLE `addres` (
  `addresid` int(11) NOT NULL,
  `addres` varchar(50) NOT NULL,
  `addres2` varchar(50) DEFAULT NULL,
  `ilce` varchar(50) NOT NULL,
  `sehirid` smallint(6) NOT NULL,
  `postaCodu` varchar(10) NOT NULL,
  `telefon` varchar(20) NOT NULL,
  `lastUpdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin5;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `aracgider`
--

DROP TABLE IF EXISTS `aracgider`;
CREATE TABLE `aracgider` (
  `aracgiderid` int(11) NOT NULL,
  `aracid` int(11) NOT NULL,
  `firmaid` int(11) NOT NULL,
  `gider` decimal(5,2) NOT NULL,
  `aciklama` varchar(255) NOT NULL,
  `tarih` date NOT NULL,
  `lastUpdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin5;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `arackira`
--

DROP TABLE IF EXISTS `arackira`;
CREATE TABLE `arackira` (
  `arackiraid` int(11) NOT NULL,
  `aracid` int(11) NOT NULL,
  `firmaid` int(11) NOT NULL,
  `odenenmiktar` decimal(5,2) NOT NULL,
  `tarih` date NOT NULL,
  `lastUpdate` date NOT NULL,
  `iptal` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin5;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `city`
--

DROP TABLE IF EXISTS `sehir`;
CREATE TABLE `sehir` (
  `sehirid` smallint(11) NOT NULL,
  `ilceid` smallint(6) NOT NULL,
  `sehir` varchar(50) NOT NULL,
  `lastUpdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin5;

--
-- Tablo döküm verisi `city`
--

INSERT INTO `sehir` (`sehirid`, `ilceid`, `sehir`, `lastUpdate`) VALUES
(1, 1, 'Batman', '2016-08-03');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `country`
--

DROP TABLE IF EXISTS `ilce`;
CREATE TABLE `ilce` (
  `ilceid` smallint(6) NOT NULL,
  `ilce` varchar(50) NOT NULL,
  `lastUpdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin5;

--
-- Tablo döküm verisi `country`
--

INSERT INTO `ilce` (`ilceid`, `ilce`, `lastUpdate`) VALUES
(1, 'Merkez', '2016-08-03');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `firm`
--

DROP TABLE IF EXISTS `firma`;
CREATE TABLE `firma` (
  `firmaid` int(11) NOT NULL,
  `addresid` int(11) NOT NULL,
  `firma` varchar(45) NOT NULL,
  `director` varchar(45) NOT NULL,
  `lastUpdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin5;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `firmstaff`
--

DROP TABLE IF EXISTS `firmapersonel`;
CREATE TABLE `firmapersonel` (
  `firmapersonelid` int(11) NOT NULL,
  `firmaid` int(11) NOT NULL,
  `personelid` int(11) NOT NULL,
  `iptal` tinyint(1) NOT NULL,
  `lastUpdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin5;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `firmstudent`
--

DROP TABLE IF EXISTS `firmaogrenci`;
CREATE TABLE `firmaogrenci` (
  `firmaogrenciid` int(11) NOT NULL,
  `firmaid` int(11) NOT NULL,
  `ogrenciid` int(11) NOT NULL,
  `iptal` tinyint(1) NOT NULL,
  `lastUpdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin5;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `firmvehicle`
--

DROP TABLE IF EXISTS `firmaarac`;
CREATE TABLE `firmaarac` (
  `firmaaracid` int(11) NOT NULL,
  `firmaid` int(11) NOT NULL,
  `aracid` int(11) NOT NULL,
  `iptal` tinyint(1) NOT NULL,
  `lastUpdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin5;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `odemesekli`
--

DROP TABLE IF EXISTS `odemesekli`;
CREATE TABLE `odemesekli` (
  `odemeSekliid` int(11) NOT NULL,
  `odemeSekli` varchar(5) NOT NULL,
  `lastUpdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin5;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `parent`
--

DROP TABLE IF EXISTS `veli`;
CREATE TABLE `veli` (
  `veliid` int(11) NOT NULL,
  `adi` varchar(45) NOT NULL,
  `soyadi` varchar(45) NOT NULL,
  `email` varchar(50) NOT NULL,
  `lastUpdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin5;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `school`
--

DROP TABLE IF EXISTS `okul`;
CREATE TABLE `okul` (
  `okulid` int(11) NOT NULL,
  `addresid` int(11) NOT NULL,
  `okul` varchar(50) NOT NULL,
  `lastUpdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin5;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `schoolvehicle`
--

DROP TABLE IF EXISTS `okularac`;
CREATE TABLE `okularac` (
  `okularacid` int(11) NOT NULL,
  `okulid` int(11) NOT NULL,
  `aracid` int(11) NOT NULL,
  `iptal` tinyint(1) NOT NULL,
  `lastUpdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin5;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `staff`
--

DROP TABLE IF EXISTS `personel`;
CREATE TABLE `personel` (
  `personelid` int(11) NOT NULL,
  `kullaniciid` int(11) NOT NULL,
  `addresid` int(11) NOT NULL,
  `aracid` int(11) NOT NULL,
  `adi` varchar(45) NOT NULL,
  `soyadi` varchar(45) NOT NULL,
  `picture` blob NOT NULL,
  `email` varchar(50) NOT NULL,
  `maas` decimal(10,2) NOT NULL,
  `lastUpdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin5;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `staffodeme`
--

DROP TABLE IF EXISTS `personelodeme`;
CREATE TABLE `personelodeme` (
  `personelodemeid` int(11) NOT NULL,
  `personelid` int(11) NOT NULL,
  `firmaid` int(11) NOT NULL,
  `odeme` decimal(5,2) NOT NULL,
  `tarih` date NOT NULL,
  `lastUpdate` date NOT NULL,
  `iptal` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin5;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `student`
--

DROP TABLE IF EXISTS `ogrenci`;
CREATE TABLE `ogrenci` (
  `ogrenciid` int(11) NOT NULL,
  `aracid` int(11) NOT NULL,
  `okulid` int(11) NOT NULL,
  `veliid` int(11) NOT NULL,
  `addresid` int(11) NOT NULL,
  `tc` int(11) NOT NULL,
  `adi` varchar(45) NOT NULL,
  `soyadi` varchar(45) NOT NULL,
  `picture` blob NOT NULL,
  `olusturmatarihi` date NOT NULL,
  `email` varchar(50) NOT NULL,
  `lastUpdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin5;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `taksit`
--

DROP TABLE IF EXISTS `taksit`;
CREATE TABLE `taksit` (
  `taksitid` int(11) NOT NULL,
  `ogrenciid` int(11) NOT NULL,
  `firmaid` int(11) NOT NULL,
  `odemeSekliid` int(11) NOT NULL,
  `taksit` decimal(5,2) NOT NULL,
  `tarih` date NOT NULL,
  `odemeTarih` date NOT NULL,
  `odendiTarih` date NOT NULL,
  `odendi` tinyint(1) NOT NULL,
  `iptal` tinyint(1) NOT NULL,
  `odenenMiktar` decimal(5,2) NOT NULL,
  `lastUpdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin5;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

DROP TABLE IF EXISTS `kullanici`;
CREATE TABLE `kullanici` (
  `kullaniciid` int(11) NOT NULL,
  `kullaniciadi` varchar(50) NOT NULL,
  `sifre` varchar(50) NOT NULL,
  `lastUpdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin5;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `vehicle`
--

DROP TABLE IF EXISTS `arac`;
CREATE TABLE `arac` (
  `aracid` int(11) NOT NULL,
  `plaka` varchar(10) NOT NULL,
  `marka` varchar(35) NOT NULL,
  `model` varchar(35) NOT NULL,
  `oturmakapasitesi` int(2) NOT NULL,
  `kira` decimal(5,2) NOT NULL,
  `olusturmatarihi` date NOT NULL,
  `lastUpdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin5;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `address`
--
ALTER TABLE `addres`
  ADD PRIMARY KEY (`addresid`),
  ADD KEY `sehirid` (`sehirid`);

--
-- Tablo için indeksler `aracgider`
--
ALTER TABLE `aracgider`
  ADD PRIMARY KEY (`aracgiderid`),
  ADD KEY `aracid` (`aracid`),
  ADD KEY `firmaid` (`firmaid`);

--
-- Tablo için indeksler `arackira`
--
ALTER TABLE `arackira`
  ADD PRIMARY KEY (`arackiraid`),
  ADD KEY `aracid` (`aracid`),
  ADD KEY `firmaid` (`firmaid`);

--
-- Tablo için indeksler `city`
--
ALTER TABLE `sehir`
  ADD PRIMARY KEY (`sehirid`),
  ADD KEY `ilceid` (`ilceid`);

--
-- Tablo için indeksler `country`
--
ALTER TABLE `ilce`
  ADD PRIMARY KEY (`ilceid`),
  ADD KEY `ilceid` (`ilceid`);

--
-- Tablo için indeksler `firm`
--
ALTER TABLE `firma`
  ADD PRIMARY KEY (`firmaid`),
  ADD KEY `addresid` (`addresid`);

--
-- Tablo için indeksler `firmstaff`
--
ALTER TABLE `firmapersonel`
  ADD PRIMARY KEY (`firmapersonelid`),
  ADD KEY `firmaid` (`firmaid`),
  ADD KEY `personelid` (`personelid`);

--
-- Tablo için indeksler `firmstudent`
--
ALTER TABLE `firmaogrenci`
  ADD PRIMARY KEY (`firmaogrenciid`),
  ADD KEY `firmaid` (`firmaid`),
  ADD KEY `ogrenciid` (`ogrenciid`);

--
-- Tablo için indeksler `firmvehicle`
--
ALTER TABLE `firmaarac`
  ADD PRIMARY KEY (`firmaaracid`),
  ADD KEY `firmaid` (`firmaid`),
  ADD KEY `aracid` (`aracid`);

--
-- Tablo için indeksler `odemesekli`
--
ALTER TABLE `odemesekli`
  ADD PRIMARY KEY (`odemeSekliid`);

--
-- Tablo için indeksler `parent`
--
ALTER TABLE `veli`
  ADD PRIMARY KEY (`veliid`);

--
-- Tablo için indeksler `school`
--
ALTER TABLE `okul`
  ADD PRIMARY KEY (`okulid`),
  ADD KEY `addresid` (`addresid`);

--
-- Tablo için indeksler `schoolvehicle`
--
ALTER TABLE `okularac`
  ADD PRIMARY KEY (`okularacid`),
  ADD KEY `okulid` (`okulid`),
  ADD KEY `aracid` (`aracid`);

--
-- Tablo için indeksler `staff`
--
ALTER TABLE `personel`
  ADD PRIMARY KEY (`personelid`),
  ADD KEY `kullaniciid` (`kullaniciid`),
  ADD KEY `addresid` (`addresid`),
  ADD KEY `aracid` (`aracid`);

--
-- Tablo için indeksler `staffodeme`
--
ALTER TABLE `personelodeme`
  ADD PRIMARY KEY (`personelodemeid`),
  ADD KEY `personelid` (`personelid`),
  ADD KEY `firmaid` (`firmaid`);

--
-- Tablo için indeksler `student`
--
ALTER TABLE `ogrenci`
  ADD PRIMARY KEY (`ogrenciid`),
  ADD KEY `ogrenciid` (`ogrenciid`),
  ADD KEY `okulid` (`okulid`),
  ADD KEY `veliid` (`veliid`),
  ADD KEY `addresid` (`addresid`);

--
-- Tablo için indeksler `taksit`
--
ALTER TABLE `taksit`
  ADD PRIMARY KEY (`taksitid`),
  ADD KEY `ogrenciid` (`ogrenciid`),
  ADD KEY `firmaid` (`firmaid`),
  ADD KEY `odemeSekliid` (`odemeSekliid`);

--
-- Tablo için indeksler `user`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`kullaniciid`);

--
-- Tablo için indeksler `vehicle`
--
ALTER TABLE `arac`
  ADD PRIMARY KEY (`aracid`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `address`
--
ALTER TABLE `addres`
  MODIFY `addresid` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `aracgider`
--
ALTER TABLE `aracgider`
  MODIFY `aracgiderid` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `arackira`
--
ALTER TABLE `arackira`
  MODIFY `arackiraid` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `city`
--
ALTER TABLE `sehir`
  MODIFY `sehirid` smallint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Tablo için AUTO_INCREMENT değeri `country`
--
ALTER TABLE `ilce`
  MODIFY `ilceid` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Tablo için AUTO_INCREMENT değeri `firm`
--
ALTER TABLE `firma`
  MODIFY `firmaid` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `firmstaff`
--
ALTER TABLE `firmapersonel`
  MODIFY `firmapersonelid` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `firmstudent`
--
ALTER TABLE `firmaogrenci`
  MODIFY `firmaogrenciid` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `firmvehicle`
--
ALTER TABLE `firmaarac`
  MODIFY `firmaaracid` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `odemesekli`
--
ALTER TABLE `odemesekli`
  MODIFY `odemeSekliid` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `parent`
--
ALTER TABLE `veli`
  MODIFY `veliid` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `school`
--
ALTER TABLE `okul`
  MODIFY `okulid` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `schoolvehicle`
--
ALTER TABLE `okularac`
  MODIFY `okularacid` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `staff`
--
ALTER TABLE `personel`
  MODIFY `personelid` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `staffodeme`
--
ALTER TABLE `personelodeme`
  MODIFY `personelodemeid` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `student`
--
ALTER TABLE `ogrenci`
  MODIFY `ogrenciid` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `taksit`
--
ALTER TABLE `taksit`
  MODIFY `taksitid` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `user`
--
ALTER TABLE `kullanici`
  MODIFY `kullaniciid` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `vehicle`
--
ALTER TABLE `arac`
  MODIFY `aracid` int(11) NOT NULL AUTO_INCREMENT;
--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `address`
--
ALTER TABLE `addres`
  ADD CONSTRAINT `addresIbfk1` FOREIGN KEY (`sehirid`) REFERENCES `sehir` (`sehirid`) ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `aracgider`
--
ALTER TABLE `aracgider`
  ADD CONSTRAINT `aracgiderIbfk1` FOREIGN KEY (`firmaid`) REFERENCES `firma` (`firmaid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `aracgiderIbfk2` FOREIGN KEY (`aracid`) REFERENCES `arac` (`aracid`) ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `arackira`
--
ALTER TABLE `arackira`
  ADD CONSTRAINT `arackiraIbfk1` FOREIGN KEY (`firmaid`) REFERENCES `firma` (`firmaid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `arackiraIbfk2` FOREIGN KEY (`aracid`) REFERENCES `arac` (`aracid`) ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `city`
--
ALTER TABLE `sehir`
  ADD CONSTRAINT `sehirIbfk1` FOREIGN KEY (`ilceid`) REFERENCES `ilce` (`ilceid`);

--
-- Tablo kısıtlamaları `firm`
--
ALTER TABLE `firma`
  ADD CONSTRAINT `firmaIbfk1` FOREIGN KEY (`addresid`) REFERENCES `addres` (`addresid`);

--
-- Tablo kısıtlamaları `firmstaff`
--
ALTER TABLE `firmapersonel`
  ADD CONSTRAINT `firmapersonelIbfk1` FOREIGN KEY (`firmaid`) REFERENCES `firma` (`firmaid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `firmapersonelIbfk2` FOREIGN KEY (`personelid`) REFERENCES `personel` (`personelid`) ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `firmstudent`
--
ALTER TABLE `firmaogrenci`
  ADD CONSTRAINT `firmaogrenciIbfk1` FOREIGN KEY (`firmaid`) REFERENCES `firma` (`firmaid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `firmaogrenciIbfk2` FOREIGN KEY (`ogrenciid`) REFERENCES `ogrenci` (`ogrenciid`) ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `firmvehicle`
--
ALTER TABLE `firmaarac`
  ADD CONSTRAINT `firmaaracIbfk1` FOREIGN KEY (`firmaid`) REFERENCES `firmapersonel` (`firmapersonelid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `firmaaracIbfk2` FOREIGN KEY (`aracid`) REFERENCES `arac` (`aracid`) ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `school`
--
ALTER TABLE `okul`
  ADD CONSTRAINT `okulIbfk1` FOREIGN KEY (`addresid`) REFERENCES `addres` (`addresid`) ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `schoolvehicle`
--
ALTER TABLE `okularac`
  ADD CONSTRAINT `okularacIbfk1` FOREIGN KEY (`aracid`) REFERENCES `arac` (`aracid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `okularacIbfk2` FOREIGN KEY (`okulid`) REFERENCES `okul` (`okulid`) ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `staff`
--
ALTER TABLE `personel`
  ADD CONSTRAINT `personelIbfk1` FOREIGN KEY (`kullaniciid`) REFERENCES `kullanici` (`kullaniciid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `kullaniciIbfk2` FOREIGN KEY (`addresid`) REFERENCES `addres` (`addresid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `kullaniciIbfk3` FOREIGN KEY (`aracid`) REFERENCES `arac` (`aracid`) ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `staffodeme`
--
ALTER TABLE `personelodeme`
  ADD CONSTRAINT `personelodemeIbfk1` FOREIGN KEY (`firmaid`) REFERENCES `firma` (`firmaid`) ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `student`
--
ALTER TABLE `ogrenci`
  ADD CONSTRAINT `ogrenciIbfk1` FOREIGN KEY (`veliid`) REFERENCES `veli` (`veliid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ogrenciIbfk2` FOREIGN KEY (`aracid`) REFERENCES `arac` (`aracid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ogrenciIbfk3` FOREIGN KEY (`okulid`) REFERENCES `okul` (`okulid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ogrenciIbfk4` FOREIGN KEY (`addresid`) REFERENCES `addres` (`addresid`) ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `taksit`
--
ALTER TABLE `taksit`
  ADD CONSTRAINT `taksitIbfk1` FOREIGN KEY (`firmaid`) REFERENCES `firma` (`firmaid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `taksitIbfk2` FOREIGN KEY (`ogrenciid`) REFERENCES `ogrenci` (`ogrenciid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `taksitIbfk3` FOREIGN KEY (`odemeSekliid`) REFERENCES `odemesekli` (`odemeSekliid`) ON UPDATE CASCADE;