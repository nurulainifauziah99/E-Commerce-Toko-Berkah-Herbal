-- MySQL dump 10.17  Distrib 10.3.23-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: berkahh1_berkahherbal
-- ------------------------------------------------------
-- Server version	10.3.23-MariaDB-cll-lve

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama_lengkap`) VALUES (1,'nurulainifauziah','fauziah400','Toko Herbal'),(2,'nurulaini','fauziah400','Nurul Aini Fauziah');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ongkir`
--

DROP TABLE IF EXISTS `ongkir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ongkir` (
  `id_ongkir` int(5) NOT NULL AUTO_INCREMENT,
  `nama_kota` varchar(100) NOT NULL,
  `tarif` int(11) NOT NULL,
  PRIMARY KEY (`id_ongkir`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ongkir`
--

LOCK TABLES `ongkir` WRITE;
/*!40000 ALTER TABLE `ongkir` DISABLE KEYS */;
INSERT INTO `ongkir` (`id_ongkir`, `nama_kota`, `tarif`) VALUES (1,'Bandung',13000),(2,'Solo',18000),(3,'Bogor',10000),(4,'Bekasi',10000),(5,'Depok',10000),(6,'Denpasar',28000),(7,'Medan',37000),(8,'Makasar',45000),(9,'Palembang',22000),(10,'Padang',35000),(11,'Pekanbaru',35000),(12,'Semarang',18000),(13,'Surabaya',20000),(14,'Yogyakarta',18000),(15,'Tangerang',10000);
/*!40000 ALTER TABLE `ongkir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pelanggan`
--

DROP TABLE IF EXISTS `pelanggan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT,
  `email_pelanggan` varchar(100) NOT NULL,
  `password_pelanggan` varchar(50) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `telpon_pelanggan` varchar(25) NOT NULL,
  `alamat_pelanggan` text NOT NULL,
  PRIMARY KEY (`id_pelanggan`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelanggan`
--

LOCK TABLES `pelanggan` WRITE;
/*!40000 ALTER TABLE `pelanggan` DISABLE KEYS */;
INSERT INTO `pelanggan` (`id_pelanggan`, `email_pelanggan`, `password_pelanggan`, `nama_pelanggan`, `telpon_pelanggan`, `alamat_pelanggan`) VALUES (1,'restu@gmail.com','restu','restu prasetio wibowo','089612324321',''),(2,'alfaridah@gmail.com','alfaridah','alfaridah','0896238474921',''),(3,'hafizh@gmail.com','hafizh','hafizh','08975483953','jakarta barat'),(4,'3makmun@gmail.com','makmun','123455','081218543958','macet');
/*!40000 ALTER TABLE `pelanggan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pembayaran`
--

DROP TABLE IF EXISTS `pembayaran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT,
  `id_pembelian` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `bukti_pembayaran` varchar(255) NOT NULL,
  PRIMARY KEY (`id_pembayaran`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pembayaran`
--

LOCK TABLES `pembayaran` WRITE;
/*!40000 ALTER TABLE `pembayaran` DISABLE KEYS */;
INSERT INTO `pembayaran` (`id_pembayaran`, `id_pembelian`, `nama`, `bank`, `jumlah`, `tanggal`, `bukti_pembayaran`) VALUES (1,34,'Restu Prasetio Wibowo','BCA',58000,'2020-06-29','202006291432070c0581c5954a376d62444a0f1dc3d859.jpg'),(2,33,'Restu Prasetio Wibowo','BCA',506000,'2020-06-30','202006301216342e22b546604aa6de97304c109ceb60e8.jpg');
/*!40000 ALTER TABLE `pembayaran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pembelian`
--

DROP TABLE IF EXISTS `pembelian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pembelian` (
  `id_pembelian` int(11) NOT NULL AUTO_INCREMENT,
  `id_pelanggan` int(11) NOT NULL,
  `id_ongkir` int(11) NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `total_pembelian` int(11) NOT NULL,
  `nama_kota` varchar(100) NOT NULL,
  `tarif` int(11) NOT NULL,
  `alamat_pengiriman` text NOT NULL,
  `status_pembelian` varchar(100) NOT NULL DEFAULT 'pending',
  `resi_pengiriman` varchar(50) NOT NULL,
  PRIMARY KEY (`id_pembelian`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pembelian`
--

LOCK TABLES `pembelian` WRITE;
/*!40000 ALTER TABLE `pembelian` DISABLE KEYS */;
INSERT INTO `pembelian` (`id_pembelian`, `id_pelanggan`, `id_ongkir`, `tanggal_pembelian`, `total_pembelian`, `nama_kota`, `tarif`, `alamat_pengiriman`, `status_pembelian`, `resi_pengiriman`) VALUES (25,2,0,'2020-06-18',80000,'',0,'bandung aja nih','pending',''),(26,2,1,'2020-06-18',138000,'Bandung',13000,'dimana saja','pending',''),(27,1,1,'2020-06-18',458000,'Bandung',13000,'Kp.gaga Rt.005/009 Kel.Semanan Kec.Kalideres','pending',''),(28,1,0,'2020-06-19',111000,'',0,'','pending',''),(29,2,0,'2020-06-25',111000,'',0,'','pending',''),(30,2,0,'2020-06-25',0,'',0,'','pending',''),(31,1,1,'2020-06-25',93000,'Bandung',13000,'','sudah kirim pembayaran',''),(32,1,1,'2020-06-25',93000,'Bandung',13000,'','sudah kirim pembayaran',''),(33,1,1,'2020-06-29',506000,'Bandung',13000,'padalarang','sudah kirim pembayaran',''),(34,1,1,'2020-06-29',58000,'Bandung',13000,'padalarang','barang dikirim','5413345232'),(35,2,1,'2020-07-14',235000,'Bandung',13000,' Padalarang, kertajaya, Rt.03/14, Patokan Masjid Al-anwar','pending',''),(36,1,3,'2020-08-05',90000,'Bogor',10000,'padalarang','pending','');
/*!40000 ALTER TABLE `pembelian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pembelian_produk`
--

DROP TABLE IF EXISTS `pembelian_produk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pembelian_produk` (
  `id_pembelian_produk` int(11) NOT NULL AUTO_INCREMENT,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `subberat` int(11) NOT NULL,
  `subharga` int(11) NOT NULL,
  PRIMARY KEY (`id_pembelian_produk`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pembelian_produk`
--

LOCK TABLES `pembelian_produk` WRITE;
/*!40000 ALTER TABLE `pembelian_produk` DISABLE KEYS */;
INSERT INTO `pembelian_produk` (`id_pembelian_produk`, `id_pembelian`, `id_produk`, `jumlah`, `nama`, `harga`, `berat`, `subberat`, `subharga`) VALUES (12,0,3,2,'',0,0,0,0),(13,0,3,2,'Extra Food',80000,200,400,160000),(14,0,3,1,'Extra Food',80000,200,200,80000),(15,20,2,1,'N-green HNI dan HPAI',111000,200,200,111000),(16,21,2,1,'N-green HNI dan HPAI',111000,200,200,111000),(17,21,3,1,'Extra Food',80000,200,200,80000),(18,22,2,1,'N-green HNI dan HPAI',111000,200,200,111000),(19,24,3,1,'Extra Food',80000,200,200,80000),(20,25,3,1,'Extra Food',80000,200,200,80000),(21,26,3,1,'Extra Food',80000,200,200,80000),(22,26,4,1,'Sari Kurma',45000,200,200,45000),(23,27,3,5,'Extra Food',80000,200,1000,400000),(24,27,4,1,'Sari Kurma',45000,200,200,45000),(25,28,2,1,'N-green HNI dan HPAI',111000,200,200,111000),(26,29,2,1,'N-green HNI dan HPAI',111000,200,200,111000),(27,31,3,1,'Extra Food',80000,200,200,80000),(28,32,3,1,'Extra Food',80000,200,200,80000),(29,33,3,2,'Extra Food',80000,200,400,160000),(30,33,2,3,'N-green HNI dan HPAI',111000,200,600,333000),(31,34,4,1,'Sari Kurma',45000,200,200,45000),(32,35,2,2,'N-green ',111000,200,400,222000),(33,36,3,1,'Extra Food',80000,200,200,80000);
/*!40000 ALTER TABLE `pembelian_produk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produk`
--

DROP TABLE IF EXISTS `produk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL AUTO_INCREMENT,
  `nama_produk` varchar(100) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `berat_produk` int(11) NOT NULL,
  `foto_produk` varchar(100) NOT NULL,
  `deskripsi_produk` text NOT NULL,
  `stok_produk` int(5) NOT NULL,
  PRIMARY KEY (`id_produk`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produk`
--

LOCK TABLES `produk` WRITE;
/*!40000 ALTER TABLE `produk` DISABLE KEYS */;
INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga_produk`, `berat_produk`, `foto_produk`, `deskripsi_produk`, `stok_produk`) VALUES (2,'N-green ',111000,200,'n-green-01.jpg','N-Green HPAI merupakan produk dari herba-herba yang kaya akan klorofil. Manfaat klorofil untuk kesehatan sangat banyak, termasuk untuk pencegahan anemia, menguatkan darah pembentuk organ dan kecukupan oksigen di dalam tubuh. Klorofil dipenuhi oleh antioksidan, serta memberikan efek menguntungkan terhadap berbagai kondisi medis seperti kanker, insomnia, penyakit gigi, sinusitis, pankreatitis dan batu ginjal.				',8),(3,'Extra Food',80000,200,'extrafood.jpg','Extra Food HPAI, adalah makanan kesehatan alami yang dibuat dari sinergi 23 herbal buah-buahan dan sayuran yang kaya akan antioksidan & serat alami. Extra Food HPAI diformulasikan sebagai makanan suplemen herba yang berkhasiat untuk mengatasi berbagai penyakit dan bermanfaat bagi kesehatan tubuh. \r\nDengan mengkonsumsi Extra Food HPAI ini akan memberikan perlindungan Anda dan keluarga dari RADIKAL BEBAS. \r\nSelain multi manfaat, Extra Food HPAI mempunyai rasa yang manis dan enak dengan tekstur lembut sehingga dapat dikonsumsi anak-anak. ',11),(4,'Sari Kurma',45000,200,'sarikurma.jpg','\r\nKurma adalah sumber serat pangan yang baik. Serat pangan terdiri dari dua jenis yaitu serat pangan larut dan serat pangan tak larut. Serat pangan tak larut berfungsi meningkatkan volume feses sehingga menurunkan waktu transit di usus dan lebih mudah dikeluarkan. Penurunan waktu transit feses akan menurunkan waktu kontak sel-sel mukosa usus besar dengan zat-zat karsinogen dari feses. Serat pangan larut dapat membantu mengontrol diabetes dengan menurunkan peningkatan kadar gula darah. Selain itu serat pangan larut juga berperan menurunkan kadar kolesterol LDL dalam darah.\r\nManfaat / Khasiat Sari Kurma Healthy Dates\r\nSari Kurma HPAI dibuat dari buah kurma pilihan dan diolah dengan cara yang terbaik untuk menjamin nutrisi alaminya tidak rusak. Sari Kurma HPAI memilik tesktur yang lembut dan rasa yang enak.',4),(12,'Diabextrac',110000,500,'Diabextrac-01.jpg','MERINGANKAN GEJALA KENCING MANIS \r\n\r\nDiabetes melitus merupakan penyakit yang di karenakan meningkatnya kadar gula darah akibat dari metabolisme yang tidak dapat menghasilkan atau tidak dapat merespon hormon insulin. \r\nDiabextrac adalah herba yang terbuat dari herba-herba yang mempunyai aktivitas hipoglicernia (menurunkan glukosa dalam darah) serta bertindak sebagai insulin yang dikeluarkan oleh pankreas. \r\n',20),(13,'Magafit',75000,500,'MAGAFIT-01.jpg','Satu lagi produk herbal alami hasil inovasi para herbalis thibbun nabawi dari produsen dan distributor herbal berkualitas halal yaitu Herbal penawar alwahida Indonesia yang akan menjadi obat herbal alami tradisional untuk mengatasi penyakit maag akut atau kronis serta berkhasiat menjaga dan memelihara kesehatan sistem pencernaan tubuh manusia yaitu MAGAFIT HPAI.\r\n\r\nSebuah resep ramuan berbahan herbal sangat baik untuk perut anda seperti maag kronis, mencegah peradangan, mengurangai nyeri lambung, asam lambung sekaligus mengatasi perut kembung ( masuk angin ).\r\n\r\nManfaat dan khasiat MAGAFIT hpai :\r\n\r\nObat alami peluruh emepedu.\r\n\r\nMelancarkan sirkulasi kentut ( karminatif ).\r\n\r\nMemperbaiki fungsi membran dan mengikat molekul2 protein untuk mengurangi iritasi dan peradangan serta pertahanan tubuh dari masuknya bakteri dan virus.\r\n\r\nSebagai OBAT MAAG dan deuretik ( melancar buar air seni).\r\n\r\nMengurangi nyeri lambung.\r\n\r\nPerut mudah kembung dan maag.\r\n\r\nMeningkatkan nafsu makan.\r\n\r\nMenghentikan peradangan dan anti radang tradisional.\r\n\r\n\r\nMAGAFIT HPAI obat herbal alami yang tepat untuk berbagai masalah lambung.\r\nMagafit hpai yang di formulasikan khusus dengan racikan yang tepat berkhasiat sangat baik untuk mengobati dan mengatasi penyakit maag kronis dengan sistem kerja memperbaiki organ yang rusak. \r\n\r\nObat tradisional ini di buat dari ekstraks herbal terbaik dan berkhasiat yang diolah dengan mengutamakan kehalalan dan kerbersihan maksimal untuk mendapatkan kualitas obat yang ampuh.',20),(14,'Siena',60000,500,'Siena-01.jpg','Diantara manfaat Siena adalah melangsingkan tubuh, membersihkan darah kotor, mengurangi kolesterol, membuang racun dalam tubuh, mengecilkan perut, melunturkan lemak bagi penderita obesitas, membantu proses pembuangan kotoran dalam tubuh.',20),(15,'Carnocap',100000,500,'carnocap-01.jpg','CARNOCAP MENGHAMBAT DAN MEMATIKAN SEL-SEL TUMOR DAN KANKER\r\n\r\nCarnocap pilihan tepat untuk membantu mengatasi masalah kanker, tumor dan kista karena mengandung ekstrak herbal alami yang dapat bekerja menghambat bahkan menghentikan pertumbuhan sel-sel yang abnormal.\r\n\r\nCarnocap memiliki komposisi yang dapat menghambat perkembangan sel kanker dan mematikannya\r\n\r\nMANFAAT KANDUNGAN :\r\n\r\nKELADI TIKUS : Membunuh / menghambat pertumbuhan sel kanker, menghilangkan efek buruk kemoterapi, bersifat anti virus dan anti bakteri.\r\n\r\nRUMPUT MUTIARA : Anti piretik, anti inflamasi, anti toksin, anti kanker, mengaktifkan sirkulasi darah.\r\n\r\nJOMBANG : Anti biotik, anti inflamasi, anti piretik, anti toksin, anti kanker dan tumor dan diuretik\r\n\r\nSAMBILOTO : Menurunkan panas, antibiotik, antipiretik, anti radang, anti bengkak, diuretik, anti bakteri, analgetik, meningkatkan kekebalan tubuh seluler dan meningkatkan aktifitas kelenjar-kelenjar tubuh.\r\n\r\nKUNIR PUTIH : Anti oksidan, anti inflamasi, anti neoplastik, anti koagulan.\r\n\r\nTEMU PUTIH : Anti inflamasi, melancarkan sirkulasi darah, anti neoplastik.\r\n\r\nDAUN DEWA : Antipiretik, anti koagulan, stimulasi sirkulasi, anti toksin, anti karsinogenik, anti mutagenik.\r\n\r\nBIDARA UPAS : inflamasi, analgesik, anti toksin.\r\n\r\nIsi 50 kapsul',20),(16,'Truson',100000,500,'truson-01.jpg','MENINGKATKAN VITALITAS\r\n\r\nTRUSON merupakan 100% ekstrak herbal alami, ramuan khusus untuk pria dewasa, dapat memelihara daya tahan tubuh, menjaga stamina tetap bugar, mengatasi disfungsi seksual serta memperbaiki kualitas sperma.',20),(17,'Jamtik',137000,500,'Jamtik-01.jpg','JAMTIK diproses menggunakan TEKNOLOGI NANO yang dapat menghasilkan ramuan yang\r\nmudah diserap oleh tubuh sehingga khasiatnya bisa cepat Anda rasakan. Teknologi\r\nini saat ini masi sangat masih jarang digunakan oleh herbal lain.\r\n\r\nTerbuat dari 0% bahan kimia. JAMTIK hanya mengandung tanaman obat yang telah\r\nteruji efektif menurunkan kadar asam urat dan meredakan rematik, begitu juga\r\ntambahan bahan alami lainnya, sehingga JAMTIK bebas dari efek samping yang\r\nberbahaya.',20),(18,'Diabetapro',200000,500,'diabetapro-01.jpg','Diabetapro adalah obat perkasa herbal alami khusus bagi pria yang mengalami gangguan diabetes dan berfungsi membantu mengatasi masalah gangguan seksssual yang disebabkan oleh penyakit diabetes, entah itu sulit berdiri, cepat keluar, loyo, dll. Dengan menggunakan obat herbal Diabetapro, maka masalah tersebut akan segera teratasi.\r\n\r\nObat herbal Diabetapro ini terbuat dari herbal pilihan berkualitas seperti pimpinella pruatjan extract, eurycoma longifolia extract, zygophyllaceae extract, piper Albi Lin extract, annona muricata L. Extract, garcinia mangostana L. Extract dan herbal lainnya yang memiliki manfaat bagi tubuh Anda. Bahan herbal yang digunakan tidak hanya berbahan herbal pilihan saja, namun juga telah melalui proses ekstraksi yang berkualitas dan telah lolos uji laboratorium, sehingga memiliki manfaat ganda untuk membantu menyehatkan kondisi tubuh Anda dan menjaga sistem kekebalan tubuh Anda.',20),(19,'Ganoni',290000,500,'Ganoni-01.jpg','Ganoni adalah produk-produk Herbal Waylife dari malaysia merupakan kombinasi dari cendawan Lingzhi dan buah Noni/Mengkudu yang mampu mengobati penyakit-penyakit kronis : Diabetes/kencing manis,lumpuh/strok,ambeyen,jantung,paru-paru,sawan,gondok,penyakit kulit,luka kecelakaan,luka bakar,pasca operasi,sembelit,asma,insomnia,ginjal,kanker,batu karang,belum mempunyai keturunan,lemahsahwat dan lain-lainnya\r\n',20),(20,'Laurik',55000,500,'Laurikk-01.jpg','Produk LAURIK menggunakan tumbuhan Sida rhombifolia (sidaguri), berfungsi untuk\r\nmengeluarkan asam yang berlebihan (asam urat) yang tersimpan di sendi-sendi\r\nmerupakan sumber penyakit Artritis dan gout (asam urat tinggi), kelebihan asam\r\ndi keluarkan melalui urin. Herba ini bersifat diuretik yang melancarkan buang\r\nair kecil. Oleh karena itu harus banyak minum air putih.',20);
/*!40000 ALTER TABLE `produk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produk_foto`
--

DROP TABLE IF EXISTS `produk_foto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produk_foto` (
  `id_produk_foto` int(11) NOT NULL AUTO_INCREMENT,
  `id_produk` int(11) NOT NULL,
  `nama_produk_foto` varchar(255) NOT NULL,
  PRIMARY KEY (`id_produk_foto`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produk_foto`
--

LOCK TABLES `produk_foto` WRITE;
/*!40000 ALTER TABLE `produk_foto` DISABLE KEYS */;
INSERT INTO `produk_foto` (`id_produk_foto`, `id_produk`, `nama_produk_foto`) VALUES (1,5,'0_GTwaK1TVzpAbdMPz.jpg'),(2,5,'1..jpg'),(3,5,'1.jpg'),(4,6,'287340-Minyak-Herba-Sinergi-hpai_X819ClTAn0vbzRIa_1563878294.png'),(5,6,'1img20181224_220948_ba_sinergi_minyak_burung_bubut_solusi__2.jpg'),(13,9,'287340-Minyak-Herba-Sinergi-hpai_X819ClTAn0vbzRIa_1563878294.png'),(14,9,'1img20181224_220948_ba_sinergi_minyak_burung_bubut_solusi__2.jpg'),(15,9,'obatherbal.jpg'),(16,10,'287340-Minyak-Herba-Sinergi-hpai_X819ClTAn0vbzRIa_1563878294.png'),(17,10,'1img20181224_220948_ba_sinergi_minyak_burung_bubut_solusi__2.jpg'),(18,10,'obatherbal.jpg'),(19,11,'287340-Minyak-Herba-Sinergi-hpai_X819ClTAn0vbzRIa_1563878294.png'),(20,11,'1img20181224_220948_ba_sinergi_minyak_burung_bubut_solusi__2.jpg'),(23,12,'download (1).jpg'),(24,13,'MAGAFIT-01.jpg'),(25,14,'Siena-01.jpg'),(26,15,'carnocap-01.jpg'),(27,16,'truson-01.jpg'),(28,17,'Jamtik-01.jpg'),(29,18,'diabetapro-01.jpg'),(30,19,'Ganoni-01.jpg'),(31,20,'Laurik HPAI-01.jpg');
/*!40000 ALTER TABLE `produk_foto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'berkahh1_berkahherbal'
--

--
-- Dumping routines for database 'berkahh1_berkahherbal'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-29 15:04:52
