-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: The_Heritage_Places
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

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
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area` (
  `area_id` int(3) NOT NULL AUTO_INCREMENT,
  `area_name` varchar(150) NOT NULL,
  `city_id` int(3) NOT NULL,
  PRIMARY KEY (`area_id`),
  KEY `city_id` (`city_id`),
  CONSTRAINT `area_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (1,'Modhera',1),(2,'Vadnagar',1),(3,'Bechraji',1),(4,'Sabarmati Ashram',2),(5,'Manek chowk',2),(6,'Gheekanta',2),(7,'Moti Baug',3),(8,'Patan',4),(9,'Somnath',5),(10,'Sector 7',6),(11,'Rajsamand',7),(12,'Mewar',8),(13,'Manak Chowk',9),(14,'Bharatpur',10);
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking` (
  `booking_id` int(3) NOT NULL AUTO_INCREMENT,
  `booking_date` date NOT NULL,
  `museum_id` int(150) NOT NULL,
  `user_id` int(3) NOT NULL,
  `noofperson` int(3) NOT NULL,
  `totalprice` int(5) NOT NULL,
  `payment_status` varchar(150) NOT NULL,
  PRIMARY KEY (`booking_id`),
  KEY `museum_id` (`museum_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `booking_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `booking_ibfk_4` FOREIGN KEY (`museum_id`) REFERENCES `museum` (`museum_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (59,'2022-04-15',1,39,1,25,'0'),(60,'2022-04-15',1,39,1,25,'0');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(20) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Museums'),(2,'Architecture'),(3,'Masjid'),(4,'National Park'),(7,'Temples');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `city_id` int(3) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(30) NOT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Mehsana'),(2,'Ahmedabad'),(3,'Vadodara'),(4,'Patan'),(5,'Junagadh'),(6,'Gandhinagar'),(7,'Udaipur'),(8,'Chhittorgarh'),(9,'Jaisalmer'),(10,'Bharatpur'),(11,'Kutch'),(12,'Banaskantha'),(13,'Sabarkantha'),(14,'Aravalli'),(15,'Mahisagar'),(16,'Dahod'),(17,'Panchmahal'),(18,'Bharuch'),(19,'Surat'),(20,'Tapi'),(21,'Dang'),(22,'Navasari'),(23,'Valsad'),(24,'Narmda'),(25,'Amreli'),(26,'Bhavnagar'),(27,'Porbandhar'),(28,'Dhvarka'),(29,'Botad'),(30,'Morbi'),(31,'Jamnagar'),(32,'Rajkot'),(33,'Kheda'),(34,'Anand'),(35,'Chhota Udaipur'),(36,'Ajmer'),(37,'Alwar'),(38,'Banswara'),(39,'Baran'),(40,'Barmer'),(41,'Bharatpur'),(42,'Bhilwara'),(43,'Bikaner'),(44,'Bundi'),(45,'Churu'),(46,'Dausa'),(47,'Dholpur'),(48,'Dungarpur'),(49,'Hanumangarh'),(50,'Jaipur'),(51,'Jalore'),(52,'Jhalawar'),(53,'Jhunjhunu'),(54,'Jodhpur'),(55,'Karoli'),(56,'Kota'),(57,'Nagaur'),(58,'Pali'),(59,'Pratapgarh'),(60,'Sawai Madhovpur'),(61,'Sikar'),(62,'sirohi'),(63,'shri ganganagr'),(64,'Tonk'),(65,'surendranagar');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_us`
--

DROP TABLE IF EXISTS `contact_us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_us` (
  `contact name` varchar(10) NOT NULL,
  `contact email` varchar(20) NOT NULL,
  `museum name` varchar(20) NOT NULL,
  `message` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_us`
--

LOCK TABLES `contact_us` WRITE;
/*!40000 ALTER TABLE `contact_us` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_us` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facility`
--

DROP TABLE IF EXISTS `facility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facility` (
  `facility_id` int(3) NOT NULL AUTO_INCREMENT,
  `facility_name` varchar(20) NOT NULL,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY (`facility_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facility`
--

LOCK TABLES `facility` WRITE;
/*!40000 ALTER TABLE `facility` DISABLE KEYS */;
INSERT INTO `facility` VALUES (1,'foodcourt','food facility available'),(2,'toilets','toilets availables'),(3,'shop','shop available for shopping'),(4,'drawing','drawing fest available'),(6,'charging ports','can charge your mobile phone'),(7,'ac room','air conditioner rooms'),(8,'wifi','wifi is availabel for any visitor'),(9,'lcd display','playing museum related videos'),(10,'parking','praking availabel for bikes and car ');
/*!40000 ALTER TABLE `facility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `feedback` int(3) NOT NULL AUTO_INCREMENT,
  `feed_description` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `user_id` int(3) NOT NULL,
  `museum_id` int(3) NOT NULL,
  PRIMARY KEY (`feedback`),
  KEY `user_id` (`user_id`),
  KEY `museum_id` (`museum_id`),
  CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`museum_id`) REFERENCES `museum` (`museum_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'Vadnagar is more popular as birthplace of India\'s PM Shri Narendra Modi.But this place has also some historical and monumental places.Kirti Toran is one of them.\r\nThe mammoth structure keeps you wonde','2022-04-01',39,2),(9,'Tickets prices are value for money. Great architectural design and hand crafted art work and big garden and cafeteria space. One day picnic place near Ahmedabad.','2022-04-15',39,1),(10,'Wow... An ancient temple. Architectural wonder created 1100 years ago. Must visit place. What an carving on stones. Love it. There is garden also and cafeteria too.','2022-04-15',41,1),(11,'Bahucharaji Temple is situated in Bahucharaji town in Mehsana district of Gujarat, India. It is 36 km from Mahesana. The temple is nicely decorated with stone carvings & divinity of this temple is of ','2022-04-15',39,3),(12,'Needs Proper Organizing the facilities around....No Proper Boarding within Temple complex...Cleanliness was not seen,','2022-04-15',42,3),(13,'Considering the history and intensity of Gandhiji, I feel the museum could be curated much much much better. There is a lot of scope there.','2022-04-15',39,4),(14,'Nice and lush green place, preserving the Gandhian heritage and culture of our nation, displayed through museum and book shops.\r\nLocated Just beside Sabarmati River, also have a good river view from t','2022-04-15',42,4),(15,'Just unbelievable, the efforts did they put in building this mosque is extraordinary. Still maintained pretty good. An enormous mosque with a very large area. This mosque was built in the year 1424. Y','2022-04-15',41,5);
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `museum`
--

DROP TABLE IF EXISTS `museum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `museum` (
  `museum_id` int(3) NOT NULL AUTO_INCREMENT,
  `museum_name` varchar(200) NOT NULL,
  `museum_description` varchar(2000) NOT NULL,
  `info` varchar(300) NOT NULL,
  `starttime` time NOT NULL,
  `endtime` time NOT NULL,
  `category_id` int(3) NOT NULL,
  `area_id` int(3) NOT NULL,
  `museum_image` varchar(150) NOT NULL,
  `mqty` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  PRIMARY KEY (`museum_id`),
  KEY `category_id` (`category_id`),
  KEY `area_id` (`area_id`),
  CONSTRAINT `museum_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  CONSTRAINT `museum_ibfk_2` FOREIGN KEY (`area_id`) REFERENCES `area` (`area_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `museum`
--

LOCK TABLES `museum` WRITE;
/*!40000 ALTER TABLE `museum` DISABLE KEYS */;
INSERT INTO `museum` VALUES (1,'The Sun Temple Modhera','The sun temple is a hindu temple dedicated the solar deity surya located in modhera village of mehsana district.','The shrine proper of the Sun Temple was built during the reign of Bhima I of Chaulukya dynasty. Earlier, during 1024–1025, Mahmud of Ghazni had invaded Bhima\'s kingdom, and a force of around 20,000 soldiers had unsuccessfully tried to check his advance at Modhera. Historian A. K. Majumdar theorizes ','07:00:00','18:00:00',7,1,'images.jpg',0,25),(2,'The Kirti Toran','The town is famous for its torans, a pair of 12th century columns supporting an arch, about 40 feet tall built in red and yellow sandstone, just north of the walled town.','The town is famous for its torans, a pair of 12th century columns supporting an arch, about 40 feet tall built in red and yellow sandstone, just north of the walled town. They stand majestically on the bank of Sharmistha Talav, on a road going down from Arjun Bari. They are among the few surviving e','07:00:00','18:00:00',2,2,'Kirti Toran5.jpg',0,0),(3,'Bahuchara Mata Temple','Becharaji or Bahucharaji is a temple town and taluka capital in Mehsana district of Gujarat state, India. The town is associated with Hindu goddess Bahuchara Mata worshipped as Bala.','Becharaji or Bahucharaji is a temple town and taluka capital in Mehsana district of Gujarat state, India. The town is associated with Hindu goddess Bahuchara Mata worshipped as Bala.\r\n\r\nA short motor ride towards Chanasma and you come to the town of Becharaj and the temple of Bahuchar Mata, an incar','07:00:00','18:00:00',7,3,'bahuchar-mata-temple-bahucharaji.jpg',0,0),(4,'Sabarmati Ashram','Sabarmati Ashram served as the residence of Mahatma Gandhi and his wife for long term.','Gandhiji\'s India ashram was originally established at the Kocharab Bungalow of Jivanlal Desai, a barrister and friend of Gandhi, on 25 May 1915. At that time the ashram was called the Satyagraha Ashram. But Gandhi wanted to carry out various activities such as farming and animal husbandry, in additi','07:00:00','18:00:00',1,4,'sabarmati.jpg',0,0),(5,'Jama Mosque','Jama Masjid (literally Friday Mosque), also known as Jumah Mosque or Jami\' Masjid, is a mosque in Ahmedabad, and was built in 1424 during the reign of Ahmad Shah I. The inscription on the central mihrab commemorates the inauguration of the mosque on the 1st Safar A.H. 827 or January 4, 1424 A.D. by Sultan Ahmad Shah I. The mosque lies in the old walled city, and it is situated outside Bhadra Fort area. The old walled city is divided into separate quarters or pols, and the Jami\' Masjid is found on the Gandhi Road. Along the south side of the road, the mosque is a short distance beyond the Teen Darwaza or Tripolia Gate.','Prior to the founding of the city of Ahmedabad, the original settlement\'s name was Asaval. Ahmad Shah I was the heir apparent and in 1411 founded Ahmedabad, which eventually subsumed Asaval.\r\n\r\nIn recent years, local officials have struggled with balancing the preservation of the mosque\'s original e','07:00:00','18:00:00',3,5,'99f9bca8.jpg',0,0),(6,'siddi mosque','also refer to siddi saiyad ni jali this historical mosque i ahmadabad is known for his architectural beauty.','The Sidi Saiyyed Mosque, popularly known as Sidi Saiyyid ni Jali locally, built in 1572-73 AD (Hijri year 980), is one of the most famous mosques of Ahmedabad, a city in the state of Gujarat, India. As attested by the marble tablet fixed on the wall of the mosque, it was built by Sidi Saiyyid in the','07:00:00','18:00:00',3,6,'233px-Mosque_of_Sidi_Sayed_Jaali.jpg',0,0),(7,'Laxmi Vilas Palace','The Lakshmi Vilas Palace in Vadodara, Gujarat, India, was constructed by the Gaekwad family, a prominent Maratha family, who ruled the Baroda State. Major Charles Mant was credited to be the main architect of the palace.','It is reputed to have been the largest private dwelling built until that time, and four times the size of Buckingham Palace. At the time of construction, it boasted the most modern amenities such as elevators and the interior is reminiscent of a large European country house. It remains the residence','07:00:00','18:00:00',2,7,'Laxmi-Vilas-Palace-Thumbnail.jpg',0,200),(8,'Rani Ki Vav','Rani Ki Vav (lit.?\'The Queen\'s Stepwell\') is a stepwell situated in the town of Patan in Gujarat state of India. It is located on the banks of Saraswati river. Its construction is attributed to Udayamati, daughter of Khengara of Saurashtra, queen and spouse of the 11th-century Chaulukya king Bhima I','Rani ki vav was constructed during the rule of the Chaulukya dynasty. It is located on the banks of Saraswati river. Prabandha-Chintamani, composed by the Jain monk Merutunga in 1304, mentions: \"Udayamati, the daughter of Naravaraha Khengara, built this novel stepwell at Shripattana (Patan) surpassi','07:00:00','18:00:00',2,8,'Rani_ki_vav_02.jpg',0,35),(9,'Gir National Park','Gir National Park and Wildlife Sanctuary, also known as Sasan Gir, is a forest, national park, and wildlife sanctuary near Talala Gir in Gujarat, India. It is located 43 km (27 mi) north-east of Somnath, 65 km (40 mi) south-east of Junagadh and 60 km (37 mi) south-west of Amreli. ','In the 19th century, the rulers of Indian princely states used to invite the British colonists for hunting expeditions. At the end of the 19th century, only about a dozen Asiatic lions were left in India, all of them in the Gir Forest, which was part of the Nawab of Junagarh\'s private hunting ground','07:00:00','18:00:00',4,9,'devalia-safari.jpg',0,75),(10,'Indroda National Park','The Indroda Dinosaur and Fossil Park in Gandhinagar, Gujarat, India, is a park that houses fossilized remains and petrified eggs of dinosaurs. It is a man-made fossil park and not the actual nesting grounds where the dinosaurs lived.','The park is run by the Gujarat Ecological and Research Foundation (GEER) and has been called India\'s Jurassic Park. The oldest record of dinosaur bone fossils is of middle Jurassic period, and they are found from Patcham formation of Kutch basin. The fossils which were found in Upper Cretaceous form','07:00:00','18:00:00',4,10,'Indroda_Nature_Park_20190116141329.jpg',0,30),(11,'Kumbhalgarh Fort','Kumbhalgarh (literally \"Kumbhal fort\") also known as the Great Wall of India is a Mewar fortress on the westerly range of Aravalli Hills, in the Rajsamand district near Udaipur of Rajasthan state in western India. It is the second-longest wall of the world after the Great Wall of China.','The early history of the fort could not be ascertained on account of lack of evidence. Before Rana Kumbha built the new fort, there was a small fort, limited to small hilly area, believed to have been built by King Samprati of the Maurya and was known as Matsyaendra Durg. Rana Lakha won this entire ','07:00:00','18:00:00',2,11,'220px-Walls_of_Kumbhalgarh.jpg',0,10),(12,'Chittorgarh Fort','The Chittorgarh Fort also known as Chittorgarh or Chittor Fort is one of the largest forts in India. It is a UNESCO World Heritage Site. The fort was the capital of Mewar and is located in the present-day town of Chittorgarh.','Chittorgarh (garh means fort) was originally called Chitrakut. It is said to have been built by a local Mori Rajput ruler Chitrangada Mori. According to one legend, the name of the fort is derived from its builder. Another folk legend attributes the construction of fort to the legendary hero Bhima: ','07:00:00','18:00:00',2,12,'istockphoto-1311347871-170667a.jpg',0,50),(13,'Jaisalmer Fort','Jaisalmer Fort is situated in the city of Jaisalmer, in the Indian state of Rajasthan. It is believed to be one of the very few \"living forts\" in the world (such as Carcassonne, France)','Legend has it that the fort was built by Rawal Jaisal, a Bhati Rajput, in 1156 CE. The story says that it superseded an earlier construction at Lodhruva, with which Jaisal was dissatisfied. Thus, a new capital was established when Jaisal founded the city of Jaisalmer.\r\n\r\nAround 1293-94 CE, Rawal Jet','07:00:00','18:00:00',2,13,'jaisalmer-fort-stories-from-the-golden-fort-of-rajasthan_1580376176.jpeg',0,50),(14,'Keoladeo National Park','Keoladeo National Park or Keoladeo Ghana National Park formerly known as the Bharatpur Bird Sanctuary in Bharatpur, Rajasthan, India is a famous avifauna sanctuary that hosts thousands of birds, especially during the winter season. Over 350 species of birds are known to be resident.','The sanctuary was created 250 years ago and is named after a Keoladeo (Shiva) temple within its boundaries. Initially, it was a natural depression; and was flooded after the Ajan Bund was constructed by Maharaja Suraj Mal, then the ruler of the princely state of Bharatpur, between 1726–1763. The bun','07:00:00','18:00:00',4,14,'site_0340_0001-750-750-20110923001811.jpg',0,75);
/*!40000 ALTER TABLE `museum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `museum_facility`
--

DROP TABLE IF EXISTS `museum_facility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `museum_facility` (
  `museum_facility` int(3) NOT NULL AUTO_INCREMENT,
  `museum_id` int(3) NOT NULL,
  `facility_id` int(3) NOT NULL,
  PRIMARY KEY (`museum_facility`),
  KEY `museum_id` (`museum_id`),
  KEY `facility_id` (`facility_id`),
  CONSTRAINT `museum_facility_ibfk_1` FOREIGN KEY (`museum_id`) REFERENCES `museum` (`museum_id`),
  CONSTRAINT `museum_facility_ibfk_2` FOREIGN KEY (`facility_id`) REFERENCES `facility` (`facility_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `museum_facility`
--

LOCK TABLES `museum_facility` WRITE;
/*!40000 ALTER TABLE `museum_facility` DISABLE KEYS */;
INSERT INTO `museum_facility` VALUES (1,1,1),(2,1,2),(3,1,10),(4,2,1),(5,2,2),(6,2,10),(7,3,1),(8,3,2),(9,3,10),(10,4,1),(11,4,2),(12,4,3),(13,4,4),(14,4,6),(15,4,7),(16,4,8),(17,4,10),(18,5,1),(19,5,2),(20,5,10),(21,6,1),(22,6,2),(23,6,10),(24,7,1),(25,7,2),(26,7,3),(27,7,4),(28,7,6),(29,7,7),(30,7,8),(31,7,9),(32,7,10),(33,8,1),(34,8,2),(35,8,10),(36,9,1),(37,9,2),(38,9,3),(39,9,10),(40,10,1),(41,10,2),(42,10,10),(43,11,1),(44,11,2),(45,11,3),(46,11,4),(47,11,10),(48,12,1),(49,12,2),(50,12,3),(51,12,4),(52,12,10),(53,13,1),(54,13,2),(55,13,3),(56,13,4),(57,13,10),(58,14,1),(59,14,2),(60,14,10);
/*!40000 ALTER TABLE `museum_facility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `museum_gallery`
--

DROP TABLE IF EXISTS `museum_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `museum_gallery` (
  `gallery_id` int(3) NOT NULL AUTO_INCREMENT,
  `museum_id` int(3) NOT NULL,
  `image_path` varchar(150) NOT NULL,
  PRIMARY KEY (`gallery_id`),
  KEY `museum_id` (`museum_id`),
  CONSTRAINT `museum_gallery_ibfk_1` FOREIGN KEY (`museum_id`) REFERENCES `museum` (`museum_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `museum_gallery`
--

LOCK TABLES `museum_gallery` WRITE;
/*!40000 ALTER TABLE `museum_gallery` DISABLE KEYS */;
INSERT INTO `museum_gallery` VALUES (1,5,'jama.jpg'),(2,5,'jama2.jpg'),(3,5,'jama3.jpg'),(4,5,'jama4.jpg'),(5,5,'jama5.jpg'),(6,4,'sabarmati1.jpg '),(7,4,'sabarmati2.jpg '),(8,4,'sabarmati3.jpg '),(9,4,'sabarmati4.jpg '),(10,2,'toran1.jpg'),(11,2,'toran2.jpg'),(12,2,'toran3.jpg'),(13,7,'laxmi1.jpg'),(14,7,'laxmi2.jpg'),(15,7,'laxmi3.jpg'),(16,7,'laxmi4.jpg'),(17,7,'laxmi5.jpg'),(18,8,'vav1.jpg'),(19,8,'vav2.jpg'),(20,8,'vav3.jpg'),(21,8,'vav4.jpg'),(22,11,'kumbh1.jpg'),(23,11,'kumbh2.jpg'),(24,11,'kumbh3.jpg'),(25,11,'kumbh4.jpg'),(26,11,'kumbh5.jpg'),(27,11,'kumbh6.jpg'),(28,12,'chitor1.jpg'),(29,12,'chitor2.jpg'),(30,12,'chitor3.jpg'),(31,12,'chitor4.jpg'),(32,12,'chitor5.jpg'),(33,12,'chitor6.jpg'),(34,12,'chitor7.jpg'),(35,13,'jaisalmer1.jpg'),(36,13,'jaisalmer2.jpg'),(37,13,'jaisalmer3.jpg'),(38,13,'jaisalmer4.jpg'),(39,6,'siddi1.jpg'),(40,6,'siddi2.jpg'),(41,6,'siddi3.jpg'),(42,6,'siddi4.jpg'),(43,6,'siddi5.jpg'),(44,9,'gir1.jpg'),(45,9,'gir2.jpg'),(46,9,'gir3.jpg'),(47,9,'gir4.jpg'),(48,9,'gir5.jpg'),(49,10,'indroda.jpg'),(50,10,'indroda1.jpg'),(51,10,'indroda2.jpg'),(52,10,'indroda3.jpg'),(53,10,'indroda4.jpg'),(54,14,'keoladeo1.jpg'),(55,14,'keoladeo2.jpg'),(56,14,'keoladeo3.jpg'),(57,14,'keoladeo4.jpg'),(58,14,'keoladeo5.jpg'),(59,1,'sun1.jpg'),(60,1,'sun2.jpg'),(61,1,'sun3.jpg'),(62,1,'sun4.jpg'),(63,1,'sun5.jpg'),(64,3,'bahucharmata1.jpg'),(65,3,'bahucharmata2.jpg'),(66,3,'bahucharmata3.jpg'),(67,3,'bahucharmata4.jpg'),(68,3,'bahucharmata5.jpg');
/*!40000 ALTER TABLE `museum_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `role_id` int(3) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'admin'),(2,'owner'),(3,'customer');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(3) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `address` varchar(150) NOT NULL,
  `area_id` int(3) NOT NULL,
  `role_id` int(3) NOT NULL,
  `otp` int(10) NOT NULL,
  `otpused` int(10) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `area_id` (`area_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`area_id`) REFERENCES `area` (`area_id`),
  CONSTRAINT `user_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (39,'Parth_Patel','181040107032@gperi.ac.in','Arjun72566','Shukan bunglow near swaminarayan temple, Modhera road mehsana',1,3,0,0),(40,'Parth_Patel','181040107032@gperi.ac.in','Arjun72566','Shukan bunglow near swaminarayan temple, Modhera road mehsana',1,2,0,0),(41,'SavanPatel0','181040107033@gperi.ac.in','Arjun72566','Green park socity near tahuko party plot modhera road mehsana',1,3,0,0),(42,'MaulikNayi7','181040107013@gperi.ac.in','Arjun72566','Palavasana Mehsana',1,3,0,0),(43,'ArishPatel00','181040107017@gperi.ac.in','Arjun72566','Unja Mehsana',1,3,0,0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-15 22:06:07
