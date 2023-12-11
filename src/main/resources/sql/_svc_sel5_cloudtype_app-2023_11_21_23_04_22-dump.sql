-- MariaDB dump 10.19-11.0.2-MariaDB, for Win64 (AMD64)
--
-- Host: svc.sel5.cloudtype.app    Database: gambti
-- ------------------------------------------------------
-- Server version	10.5.22-MariaDB-1:10.5.22+maria~ubu2004

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
-- Table structure for table `game`
--

DROP TABLE IF EXISTS `game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game` (
  `game_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `img` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`game_id`),
  UNIQUE KEY `UK_jare70vqqti665ds3b2eh7rk8` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game`
--

LOCK TABLES `game` WRITE;
/*!40000 ALTER TABLE `game` DISABLE KEYS */;
INSERT INTO `game` VALUES
(1,'img1.jpg','심즈'),
(2,'img2.jpg','GTA'),
(3,'img3.jpg','데빌메이크라이 5'),
(4,'img4.jpg','크라이시스 3'),
(5,'img1.jpg','Handy Dandy'),
(6,'img1.jpg','It takes Two'),
(7,'img1.jpg','슈퍼 마리오 파티'),
(8,'img1.jpg','매드 래트 데드'),
(9,'img1.jpg','롤러코스터 타이쿤'),
(10,'img1.jpg','엘더 스크롤 V: 스카이림'),
(11,'img1.jpg','배드 엔딩 극장'),
(12,'img1.jpg','Superliminal'),
(13,'img1.jpg','역전재판123'),
(14,'img1.jpg','모여봐요 동물의 숲'),
(15,'img1.jpg','리그오브레전드'),
(16,'img1.jpg','마인크래프트'),
(17,'img1.jpg','항아리 게임'),
(18,'img1.jpg','할로우 나이트'),
(19,'img1.jpg','human resource machine'),
(20,'img1.jpg','젤다의 전설 티어스 오브 더 킹덤'),
(21,'img1.jpg','To The Moon'),
(22,'img1.jpg','롤토체스'),
(23,'img1.jpg','원신'),
(24,'img1.jpg','테일즈위버'),
(25,'img1.jpg','스타오션 세컨드 스토리 R'),
(26,'img1.jpg','파이널 판타지 10'),
(27,'img1.jpg','문명 6'),
(28,'img1.jpg','엔터 더 건전'),
(29,'img1.jpg','아이작의 번제'),
(30,'img1.jpg','슈퍼마리오 메이커'),
(31,'img1.jpg','DJMAX RESPECT V'),
(32,'img1.jpg','캐치마인드'),
(33,'img1.jpg','배스천'),
(34,'img1.jpg','퀀텀 브레이크'),
(35,'img1.jpg','디트로이트 비컴 휴먼 스토리'),
(36,'img1.jpg','Return of the Obra Dinn'),
(37,'img1.jpg','고스트리콘 와일드랜드'),
(38,'img1.jpg','컴퍼니 오브 히어로즈'),
(39,'img1.jpg','심시티 4'),
(40,'img1.jpg','마운트 앤 블레이드 2: 배너로드'),
(41,'img1.jpg','하스스톤'),
(42,'img1.jpg','철권7'),
(43,'img1.jpg','레프트4데드'),
(44,'img1.jpg','카운트 스트라이크 2'),
(45,'img1.jpg','로스트아크 '),
(46,'img1.jpg','에이펙스 레전드'),
(47,'img1.jpg','언더테일'),
(48,'img1.jpg','콜 오브 듀티'),
(49,'img1.jpg','페이데이 2'),
(50,'img1.jpg','배틀필드 1'),
(51,'img1.jpg','스타크래프트');
/*!40000 ALTER TABLE `game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_genre`
--

DROP TABLE IF EXISTS `game_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_genre` (
  `game_genre_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `game_id` bigint(20) unsigned NOT NULL,
  `genre_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`game_genre_id`),
  UNIQUE KEY `UK7eyy7bl14qosnqgqfgf4e8f0q` (`game_id`,`genre_id`),
  KEY `FKfgiexxwmferkxqbwbjs989ea9` (`genre_id`),
  CONSTRAINT `FKfgiexxwmferkxqbwbjs989ea9` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`),
  CONSTRAINT `FKj47t9lfhtj14lsg346bo3vujv` FOREIGN KEY (`game_id`) REFERENCES `game` (`game_id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_genre`
--

LOCK TABLES `game_genre` WRITE;
/*!40000 ALTER TABLE `game_genre` DISABLE KEYS */;
INSERT INTO `game_genre` VALUES
(1,1,6),
(2,2,7),
(4,2,9),
(5,2,10),
(3,2,17),
(6,3,11),
(8,4,5),
(7,4,12),
(10,5,8),
(13,6,15),
(12,6,16),
(11,6,17),
(14,7,14),
(15,8,2),
(16,8,13),
(17,9,18),
(18,10,22),
(19,11,20),
(20,12,21),
(21,13,24),
(22,14,26),
(24,15,4),
(23,15,25),
(25,16,27),
(26,16,28),
(27,17,2),
(28,17,16),
(29,18,16),
(30,18,17),
(31,18,29),
(32,19,21),
(33,20,33),
(34,21,8),
(35,21,30),
(36,21,31),
(37,22,32),
(38,23,34),
(39,24,19),
(40,25,36),
(41,26,36),
(42,27,38),
(44,28,17),
(43,28,37),
(45,29,2),
(46,29,8),
(47,29,39),
(49,30,16),
(48,30,27),
(50,31,13),
(51,32,40),
(52,33,35),
(53,33,41),
(54,34,17),
(56,35,17),
(55,35,42),
(57,36,45),
(58,37,43),
(59,38,44),
(60,39,18),
(61,40,36),
(62,41,46),
(63,42,47),
(65,43,5),
(68,43,15),
(66,43,28),
(67,43,39),
(69,44,5),
(70,45,19),
(71,46,5),
(72,46,50),
(78,47,2),
(76,47,21),
(74,47,35),
(73,47,36),
(77,47,39),
(75,47,51),
(79,47,52),
(80,48,5),
(81,49,2),
(82,49,5),
(83,49,36),
(85,50,2),
(84,50,5),
(64,51,48);
/*!40000 ALTER TABLE `game_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_platform`
--

DROP TABLE IF EXISTS `game_platform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_platform` (
  `game_platform_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `game_id` bigint(20) unsigned NOT NULL,
  `platform_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`game_platform_id`),
  UNIQUE KEY `UKegpakj7qvw6vono7jqhr7m6ng` (`game_id`,`platform_id`),
  KEY `FK8ac70j8dic3po6vpmytx17bjl` (`platform_id`),
  CONSTRAINT `FK41jgum716ebufujj784qyop5r` FOREIGN KEY (`game_id`) REFERENCES `game` (`game_id`),
  CONSTRAINT `FK8ac70j8dic3po6vpmytx17bjl` FOREIGN KEY (`platform_id`) REFERENCES `platform` (`platform_id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_platform`
--

LOCK TABLES `game_platform` WRITE;
/*!40000 ALTER TABLE `game_platform` DISABLE KEYS */;
INSERT INTO `game_platform` VALUES
(1,1,1),
(2,2,1),
(3,3,1),
(4,3,2),
(5,3,3),
(6,4,1),
(7,5,1),
(8,6,1),
(9,6,2),
(10,6,3),
(11,6,4),
(12,7,4),
(13,8,2),
(14,8,4),
(15,9,1),
(16,10,1),
(17,11,1),
(18,12,1),
(19,12,2),
(20,12,3),
(21,12,4),
(23,13,2),
(24,13,4),
(22,13,5),
(25,14,4),
(26,15,1),
(27,16,1),
(28,16,5),
(29,17,1),
(30,17,5),
(31,18,1),
(32,18,2),
(33,19,1),
(34,19,4),
(35,20,4),
(36,21,1),
(37,21,5),
(38,22,1),
(39,23,1),
(40,23,5),
(41,24,1),
(42,25,1),
(43,25,2),
(44,25,3),
(45,26,4),
(46,27,1),
(47,27,4),
(48,28,1),
(49,28,2),
(50,29,1),
(51,30,4),
(52,31,1),
(53,31,3),
(54,32,1),
(55,33,1),
(56,33,4),
(57,34,1),
(58,35,1),
(59,36,1),
(60,36,4),
(61,37,1),
(62,38,1),
(63,38,3),
(64,39,1),
(65,40,1),
(66,41,1),
(67,41,5),
(68,42,1),
(69,42,2),
(71,43,1),
(72,44,1),
(73,45,1),
(74,46,1),
(75,46,3),
(76,46,4),
(77,47,1),
(78,47,4),
(79,48,1),
(80,49,1),
(81,49,2),
(82,50,1),
(83,50,2),
(70,51,1);
/*!40000 ALTER TABLE `game_platform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre` (
  `genre_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`genre_id`),
  UNIQUE KEY `UK_ctffrbu4484ft8dlsa5vmqdka` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES
(45,'1인칭 미스터리 어드벤처'),
(22,'1인칭 액션 롤플레잉 게임'),
(33,'3인칭 오픈 에어 액션'),
(34,'3인칭 오픈 월드'),
(4,'AOS'),
(41,'ARPG'),
(46,'CCG'),
(5,'FPS'),
(19,'MMORPG'),
(25,'MOBA'),
(36,'RPG'),
(44,'RTS'),
(12,'SF'),
(43,'TPS'),
(18,'건설 경영 시뮬레이션'),
(52,'다크 판타지'),
(47,'대전 액션 게임'),
(37,'로그라이크'),
(30,'롤플레잉'),
(13,'리듬'),
(29,'메트로배니아'),
(31,'미스터리'),
(50,'배틀로얄'),
(9,'범죄'),
(24,'법정 배틀'),
(10,'블랙 코미디'),
(20,'비주얼 노벨'),
(27,'샌드박스'),
(28,'서바이벌'),
(51,'슈팅'),
(11,'스타일리쉬 액션'),
(1,'스포츠'),
(6,'시뮬레이션'),
(48,'실시간 전략 게임'),
(2,'액션'),
(17,'액션 어드벤처'),
(8,'어드벤처'),
(32,'오토배틀러'),
(7,'오픈 월드'),
(35,'인디'),
(42,'인터랙티브 무비'),
(3,'전략 시뮬레이션'),
(23,'추리'),
(40,'캐주얼'),
(26,'커뮤니케이션'),
(15,'코옵'),
(38,'턴 방식 전략 시뮬레이션'),
(14,'파티 게임'),
(21,'퍼즐'),
(16,'플랫포머'),
(49,'협동'),
(39,'호러');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `platform`
--

DROP TABLE IF EXISTS `platform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `platform` (
  `platform_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`platform_id`),
  UNIQUE KEY `UK_hp36t3hx9su23msu2p5qvukyh` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platform`
--

LOCK TABLES `platform` WRITE;
/*!40000 ALTER TABLE `platform` DISABLE KEYS */;
INSERT INTO `platform` VALUES
(5,'Mobile'),
(4,'Nintendo Switch'),
(1,'PC'),
(2,'PS4'),
(3,'PS5');
/*!40000 ALTER TABLE `platform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question` (
  `question_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `answer1` varchar(100) NOT NULL,
  `answer2` varchar(100) NOT NULL,
  `content` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES
(1,'귀찮으니 대꾸 안 한다.','이때다 싶어서 바로 수락하고 같이 한다.','친구가 게임을 같이하자고 초대를 보냈다. 당신은','img1.jpg'),
(2,'인간은 태생부터 혼자인 존재다. 혼자서 게임을 즐긴다.','혼밥만큼 외롭다. 친구들과 함께 가서 같이 할 수 있는 게임을 한다.','보통 나는 PC방에 가면','img2.jpg'),
(3,'나에게 관심을 주지 마세요.. 모른척한다.','신나서 같이 떠든다.','게임을 하다 모르는 사람이 채팅으로 말을 걸면','img3.jpg'),
(4,'혼자 하는 게 편하니 그냥 한다.','혼자 하는 것도 좋지만 파티 플레이가 게임의 묘미라고 생각한다.','파티를 맺으면 더 쉽게 클리어할 수 있는 퀘스트가 주어지면','img4.jpg'),
(5,'조용히 몰두하면서 플레이하는 게 더 좋다.','디스코드로 친구와 떠들며 플레이하는 것이 더 좋다.','나의 게임 플레이 방식은','img5.jpg'),
(6,'스토리도 게임의 일부다. 스토리를 처음부터 즐긴다.','현재 사회에 시간이란 귀하다. 빠른 레벨 업이나 시간 절약을 위해 스토리를 스킵한다.','프롤로그 튜토리얼 스토리를 본다면 당신은','img6.jpg'),
(7,'일단 내 마음대로 자유롭게 플레이해본다.','게임 공략을 찾아보며 준비를 철저히 한다.','게임을 하는 도중 막혔다!','img7.jpg'),
(8,'외형, 배경 스토리 등 느낌을 보고 고른다.','나는 철저하게 성능파다.','나는 캐릭터를 고를 땐','img8.jpg'),
(9,'으 안돼... (슬프다)','게임은 게임일 뿐. 별생각 없다.','게임 스토리 진행 중 내 최애 캐릭터가 죽었다..','img9.jpg'),
(10,'이해가 어렵지만 일단 친구를 믿어보자. 하지만 뭔가 찝찝하다.','내가 잘못 알고 있을 수도 있다. 일단 맞다고 치자!','친구가 잘못된 게임 정보를 잘 못 알려줬다. 내가 아는 정보랑 많이 다르다.','img10.jpg'),
(11,'이기든 지든 크게 상관없다. 친구와 재밌으면 장땡이다!','최적의 빌드를 구상하며 전략적으로 이기고 싶다.','친구와 게임을 하게되면 당신이 원하는 방향은','img11.jpg'),
(12,'혹시 내가 잘못해서 진 게 아닐까 눈치를 본다.','왜 졌는지 모르겠다. 원인을 분석해서 다음엔 꼭 이기고 싶다.','게임에서 패배했을 때, 당신의 행동은','img12.jpg'),
(13,'욕을 하고 싶지만 귀찮다. 핵은 대체 왜 쓰는지 이해가 안 간다.','게임 내 핵은 사라져야 하는 것. 바로 욕을 시원하게 해주고 신고 버튼을 누른다.','경쟁 게임을 하던도중 상대방 유저가 핵을 사용했다!','img13.jpg'),
(14,'오늘 날이다. 드가자~','오늘 운 다 썼다. 이론상 더 이상 질러선 안될 확률이니 그만두자.','당신은 아주 낮은 확률의 장비 강화에 성공하였다!','img14.jpg'),
(15,'지금 게임할 때가 아니다.. 친구의 약속은 중요하니 게임 약속을 취소한다.','나에겐 게임 약속도 중요해. 친구에게 사정을 얘기하고 게임 약속을 지킨다.','친구와 약속을 잡았는데 하필 게임 약속이랑 겹친다!','img15.jpg'),
(16,'공략을 찾아 따라 해본다. 일단 클리어가 중요해.','내 방식대로 깨고 싶다. 혼자서 계속 진행해 본다.','어려운 퀘스트가 생겼다! 여러 번 시도해도 해결이 어려울 때 나는','img16.jpg'),
(17,'하루에 정해진 시간 분량을 지켜서 한다.','그때그때 기분 내키는 대로! 오늘은 3시간 했지만 내일은 아예 안 할 수도 있고 때가 되어봐야 안다.','내가 게임하는 시간 조절은','img17.jpg'),
(18,'튜토리얼은 너무 귀찮다. 스킵 한다.','귀찮아도 튜토리얼을 모두 익혀본다. 중요한 걸 가르쳐 줄 수도 있잖아?!','처음 시작하는 게임의 튜토리얼이 무척 길고 자세하다. 이때 나는','img18.jpg'),
(19,'자유도가 높아서 나를 강제하지 않는 게임','구체적인 목표 퀘스트를 제시해서 뭘 할지 고민하지 않아도 되는 게임','두 종류의 게임 중에서 고른다면','img19.jpg'),
(20,'꼼꼼히 따져보고 계획을 세워 구매한다.','끌리면 그때 사는 거지 뭐 별 신경 안 쓰고 지내다가 확 구매한다.','게임을 사거나/게임 내 아이템을 살 때 나는','img20.jpg');
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rec_game`
--

DROP TABLE IF EXISTS `rec_game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rec_game` (
  `rec_game_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `game_id` bigint(20) unsigned NOT NULL,
  `result_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`rec_game_id`),
  UNIQUE KEY `UK399ex5918qa8m4n05ewy8n344` (`result_id`,`game_id`),
  KEY `FK1mkbkh2ayx4dltmw2omoo9gcp` (`game_id`),
  CONSTRAINT `FK1mkbkh2ayx4dltmw2omoo9gcp` FOREIGN KEY (`game_id`) REFERENCES `game` (`game_id`),
  CONSTRAINT `FK8pa1v7ebedajbprek5y9y9fa4` FOREIGN KEY (`result_id`) REFERENCES `result` (`result_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rec_game`
--

LOCK TABLES `rec_game` WRITE;
/*!40000 ALTER TABLE `rec_game` DISABLE KEYS */;
INSERT INTO `rec_game` VALUES
(1,1,1),
(2,2,1),
(3,3,1),
(4,4,1),
(5,5,2),
(6,6,2),
(7,7,2),
(8,8,2),
(9,9,3),
(10,10,3),
(11,11,3),
(12,12,3),
(13,13,4),
(14,14,4),
(15,15,4),
(16,16,4),
(20,16,5),
(17,17,5),
(18,18,5),
(19,19,5),
(21,20,6),
(22,21,6),
(23,22,6),
(24,23,6),
(28,1,7),
(25,24,7),
(26,25,7),
(27,26,7),
(29,27,8),
(30,28,8),
(31,29,8),
(32,30,8),
(36,16,9),
(33,31,9),
(34,32,9),
(35,33,9),
(40,21,10),
(39,26,10),
(37,34,10),
(38,35,10),
(42,15,11),
(41,36,11),
(43,37,11),
(44,38,11),
(46,27,12),
(45,39,12),
(47,40,12),
(48,41,12),
(51,15,13),
(49,41,13),
(50,42,13),
(52,51,13),
(53,43,14),
(54,44,14),
(55,45,14),
(56,46,14),
(57,47,15),
(58,48,15),
(59,49,15),
(60,50,15),
(62,27,16),
(61,39,16),
(63,40,16),
(64,41,16);
/*!40000 ALTER TABLE `rec_game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rec_genre`
--

DROP TABLE IF EXISTS `rec_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rec_genre` (
  `rec_gen_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `genre_id` bigint(20) unsigned NOT NULL,
  `result_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`rec_gen_id`),
  UNIQUE KEY `UKbwnsuhjxxodh7fcxtlmfi5rgx` (`result_id`,`genre_id`),
  KEY `FK4elugyvyy43p0hayimfxi1p63` (`genre_id`),
  CONSTRAINT `FK4elugyvyy43p0hayimfxi1p63` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`),
  CONSTRAINT `FKe5igxuk9x7prfgghups49ijhl` FOREIGN KEY (`result_id`) REFERENCES `result` (`result_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rec_genre`
--

LOCK TABLES `rec_genre` WRITE;
/*!40000 ALTER TABLE `rec_genre` DISABLE KEYS */;
INSERT INTO `rec_genre` VALUES
(1,1,1),
(2,2,1),
(3,3,1),
(4,4,1),
(5,5,1),
(7,2,2),
(6,8,2),
(8,13,2),
(9,14,2),
(10,18,3),
(11,19,3),
(12,20,3),
(13,21,3),
(17,4,4),
(14,23,4),
(15,24,4),
(16,25,4),
(18,26,4),
(19,27,4),
(20,28,4),
(21,16,5),
(22,17,5),
(25,21,5),
(23,27,5),
(24,28,5),
(26,7,6),
(27,8,6),
(28,30,6),
(29,32,6),
(31,6,7),
(32,8,7),
(30,19,7),
(33,35,7),
(35,6,8),
(37,16,8),
(36,17,8),
(34,37,8),
(40,7,9),
(38,13,9),
(41,27,9),
(39,40,9),
(42,41,9),
(43,17,10),
(45,30,10),
(44,42,10),
(47,4,11),
(46,25,11),
(48,43,11),
(49,44,11),
(50,6,12),
(52,36,12),
(51,46,12),
(56,4,13),
(55,25,13),
(53,46,13),
(54,47,13),
(57,5,14),
(59,19,14),
(58,49,14),
(60,50,14),
(61,2,15),
(63,5,15),
(64,36,15),
(62,51,15),
(65,6,16),
(66,36,16),
(67,46,16);
/*!40000 ALTER TABLE `rec_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `result` (
  `result_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `analysis` varchar(255) NOT NULL,
  `comment` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `img` varchar(100) NOT NULL,
  `mbti` char(4) NOT NULL,
  `title` varchar(50) NOT NULL,
  PRIMARY KEY (`result_id`),
  UNIQUE KEY `UK_n9h2am7nyap7wu6kpafxri638` (`mbti`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result`
--

LOCK TABLES `result` WRITE;
/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` VALUES
(1,'게임을 단순히 “클리어 해야 한다” 라는 개념보다 과격하거나 화끈한 액션 게임을 선호합니다.','애들 장난같은 칼싸움 그만하고 총으로 놀아 볼까?','사실적이고 관대하며 개방적이고 사람이나 사물에 대한 선입견이 별로 없으며, 사교적이며 적응력이 뛰어나며 행동 지향적인 타입입니다. 열정과 에너지가 가득하며 강한 정신력을 지닌 성격이라 삶의 모든 것을 즐기는 유형입니다.','estp 1.png','ESTP','모험을 즐기는 사업가'),
(2,'사교적인 성격에 밝고 재미있는 분위기를 조성하는 분위기 메이커로, 경쟁보다는 모두가 즐길 수 있는 게임을 선호합니다.','나는 그저 사람이 좋아요.','사교적이고 활동적이며 수용력이 강하고 친절하며 낙천적입니다. 어떤 상황이든 잘 적응하며, 사소한 일도 즐거워하며 지금 이 순간을 열정적으로 임합니다.','esfp 1.png','ESFP','자유로운 영혼의 사교가'),
(3,'반복되는 게임에 금방 싫증을 느끼는 경향이 있어 새로운 콘텐츠에 도전적인 성향입니다. 흔히 말해 “노가다”성이 짙은 게임보단 무언가 매번 변하는 게임을 선호합니다.','새로운 콘텐츠는 늘 새로워. 짜릿해','정열적이고 활기가 넘치며 상상력이 풍부하며 항상 새로운 것을 추구합니다. 진정으로 자유로운 영혼으로 외향적이고 솔직하며 개방적이며, 활기차고 낙관적인 태도로 삶을 대하며 다른 사람들 사이에서 돋보이곤 합니다.','enfp 1.png','ENFP','활기찬 탐험가'),
(4,'게임을 단순히 이기려고 하기보단 즐거움을 선호합니다. 자기 주장이 강해 특히 추리 같은 장르에서 활약을 합니다.','무슨 말인지 알겠는데.. 내 말도 맞는 거 같아!','두뇌 회전이 빠르며 사안에 대한 직관력을 발휘해 대략적인 이해가 뛰어납니다. 문제의 본질을 파악하고 논리적으로 판단하려는 기질이 있으며,  상황에 따라서 ”유쾌한 트롤러” 라고 불리기도 합니다.','ENTP 1.png','ENTP','논쟁을 즐기는 변론가'),
(5,'게임을 구매하기 전에 꼼꼼하게 게임을 조사하는 경우가 많으며 한번 시작한 게임은 끝까지 플레이 할 가능성이 높습니다. 남의 것을 뺏기보다는 자신의 것을 소유하려는 경향이 강합니다.','견디고 살아남았노라','실제 사실에 대하여 정확하고 체계적으로 기억하며 일 처리에서도 신중하고 책임감이 있다. 집중력이 강한 현실 감각을 지녔으며 조직적이고 침착합니다.','ISTJ 2.png','ISTJ','논리주의자'),
(6,'사람 중심의 스토리가 있는 게임을 즐기고 질서와 조직력도 좋아하기 때문에 RPG도 매력적으로 즐길 수 있습니다. 공격 역할보다는 방어를 선호하는 경우가 많습니다.','두려워 말게. 내가 그대들의 방패라네!','타인을 향한 연민과 동정심이 있으면서도 가족이나 친구를 보호할 때는 가차 없는 모습을 보인다거나, 조용하고 내성적인 반면 관계술이 뛰어나 인간관계를 잘 만들어갑니다.','ISFJ 1.png','ISFJ','용감한 수호자'),
(7,'게임, 영화, 소설 등 외적으로 보이는 내용보다 내적인 서사나 배경에 큰 관심을 가지며, 특별한 경우가 아닌 상황에선 주로 싱글플레이를 선호하는편입니다. PVP 게임을 즐길때도 대전격투보다는 팀 혹은 파티를 맺는 게임을 추천하며 PVE ,싱글플레이 게임은 뒷 배경을 조율하거나 큰 틀을 자신의 화합적인 성격 입맛에 따라 영향을 끼치는걸 선호하므로 전략 시뮬레이션 , MMORPG 종류의 게임을 추천합니다.','지식을 너와 공유할게','인내심이 많고 통찰력과 직관력이 뛰어나며 화합을 추구하는 유형입니다. 창의력이 좋으며, 성숙한 경우엔 강한 직관력으로 타인에게 말없이 영향력을 끼칩니다. 독창성과 내적 독립심이 강하며, 확고한 신념과 열정으로 자신의 영감을 구현시켜 나가는 정신적 지도자들이 많은 특징이 있습니다.','infj 1.png','INFJ','선의의 옹호자'),
(8,'파티 플레이보단 혼자서 할 수 있는 것을 지향합니다. 로그라이크를 좋아하고 사실적, 객관적인 것을 좋아합니다.','나는 친구가 적어도 된다. 남들보다 혼자 게임 하는 게 더 좋다','혼자만의 시간이 필요하며 자유를 매우 중요하게 여깁니다. 하지만 일반적으론 조용한 편이지만 필요에 따라 사교적인 성향이 조금 나오기도 합니다.','istp 1.png','ISTP','개인주의 재주꾼'),
(9,'음악이나 화려한 그래픽을 가진 게임을 선호할 수도 있으며 규칙 틀에 묶이는 것을 싫어하는 성향일수록 자유롭거나 개방적이고 나만의 가치를 만드는 창작게임에 끌리는 경향이 있습니다. 시간에 구애를 받지않고 여유롭게 플레이 할 수 있는 게임이면 더 재미있게 즐길 수 있습니다.','귀찮지만 숙제는 해야겠지?','말없이 다정하고 온화하며 사람들에게 친절하고 상대방을 잘 알게 될 때까지 내면의 모습이 잘 보이지 않습니다. 의견 충돌을 피하고, 인화를 중시하며. 인간과 관계되는 일을 할 때 자신의 감정과 타인의 감정에 지나치게 세심하고 민감한 경향이 있습니다.','isfp 1.png','ISFP','호기심 많은 예술가'),
(10,'감동적이고 깊은 서사가 포함되어있거나 개연성 있는 배경이 깔린 스토리 중심 적인 게임을 추천합니다. 게임이 아니더라도 영화나 애니등의 감성에 쉽게 물드는 타입이므로 게임의 질과관계없이 내용면으로 훌륭하다면 INFP에 있어 그 게임이 최고의 게임으로 기억될 수도 있습니다.','ㄴr는 ㄱr끔 눈물을 흘린ㄷr','차분하고 창의적이며 낭만적인 성향으로 보이지만 내면은 내적 신념이 깊은 열정적인 중재자 유형입니다.인간 본연에 대한 애정으로 사람들의 장점을 발견하고, 이들의 가능성을 성취할 수 있도록 도우며, 세상을 더 나은 곳으로 만듭니다. 하지만 대그룹에 있을 경우 에너지가 쉽게 고갈되는 경향이 있고, 친밀도가 높은 소수의 사람들과 상호작용 하는 것을 선호합니다.','infp 1.png','INFP','열정적인 중재자'),
(11,'직관적이고 빠른 판단으로 수수께끼나 풀기 어려운 문제 혹은 퍼즐과 관련있는 게임에 재미를 느낄 수 있는 성격으로 보여집니다. 복잡한 계산식이나 어려운 난제일 수록 이를 해결하려는 성격이므로 넌센스적인 지식이 필요하거나 과학 혹은 문과적 지식이 필요한 게임을 추천합니다. 또한 계산적인 성격이므로 전략을 구상해야 이길 수 있는 전략 시뮬레이션 게임도 추천합니다.','성능 좋은건 잘 모르겠고, 흔한건 싫다!','조용하고 과묵하며 논리와 분석으로 문제를 해결하기 좋아합니다. 먼저 대화를 시작하지 않는 편이나 관심이 있는 분야에 대해서는 말을 많이 하는 경향이 있습니다. 이해가 빠르고 직관력으로 통찰하는 능력이 있으며 지적 호기심이 많아, 분석적이고 논리적인 면모도 있습니다.','INTP 3.png','INTP','논리적인 사색가'),
(12,'뛰어난 전략적 사고와 상상력을 바탕으로 머릿속에서 시뮬레이션을 돌릴 수 있는 뛰어난 안목을 가지고 있습니다. 게임 전 공략을 찾아 볼 때가 많으며 자신이 세운 전략의 한계와 실용성을 시험해 볼 수 있는 전략게임을 추천합니다.','넌 하루에도 수천 가지를 잊어버려 이것도 그중 하나로 생각하라고','매우 독립적인 성향을 지녀 혼자 일하거나 결정내리는 경우도 있습니다.  타인에게 무심하다는 편견을 받기도 하지만, 이들은 자신이 틀렸거나 타인을 다치게 했다고 생각하면 큰 영향을 받고 그 일을 분석하는 데에 몰두합니다.','INTJ 1.png','INTJ','용의주도한 전략가'),
(13,'경쟁을 즐기며, 게임을 통해 승부욕을 충족시키는 경우가 많습니다.  게임을 계획적으로 다가가며 전략을 세우고 경쟁에서 승리하고자 노력합니다. 특히 경제 시뮬레이션 게임과 전략 게임에서 잘 어울릴 수 있습니다.','너! 나랑 승부하자!','현실적, 구체적, 사실적이며 어떠한 활동을 조직화하고 주도해 나가는 지도력이 있습니다. 실질적이고 현실 감각이 뛰어나며 일을 조직하고 계획하여 추진시키는 능력이 있습니다.','ESTJ 1.png','ESTJ','엄격한 관리자'),
(14,'게임을 통해 사회적 상호작용을 즐기는 경향이 있습니다. 멀티플레이어 게임에서 팀원들과의 협력을 중요시하며, 친밀한 사회적 관계를 형성하고 유지하려하고 팀 플레이 및 협력 게임에서 재미를 찾을 수 있습니다. 게임 스토리의 주인공이 될 수 있거나, 스토리적으로 매력이 있는 게임을 추천합니다.','영웅이 있어야 할 곳에 나타나지 않는다면 이 세상은 어떻게 되겠습니까?','동정심이 많고 다른 사람에게 관심을 쏟으며 나눔과 베풂을 중시한다. 타고난 협력자로서 동료애가 많고 친절하며 능동적인 구성원이다. 이야기 하기를 즐기며 정리정돈을 잘하고, 참을성이 많고 다른 사람들을 잘 도와준다.','ESFJ 1.png','ESFJ','사교적인 외교관'),
(15,'게임에서도 다른 참가자들의 감정과 요구사항을 이해하고 조절하는 데 뛰어나며, 팀의 조화와 협력을 중요시합니다.  리더십 역할을 맡아 다른 플레이어를 지도하고 동기부여하는데 능숙할 수 있습니다.  또한 게임의 OST나 BGM이 심금을 울릴 수 있는 매력적인 게임을 추천합니다.','뭐야, 뭐야? 친구야?','온화하고 적극적이며 책임감이 강하고 사교성이 풍부하고 동정심이 많습니다. 상당히 이타적이고 민첩하고 인화를 중요시하며 참을성이 많습니다.','enfj 1.png','ENFJ','정의로운 선도자'),
(16,'승부욕이 강하고 목표 지향적인 성향을 가질 수 있습니다. 전략적인 게임과 경쟁 게임, 동시에 다양한 아이디어로 자유롭게 즐길 수 있는 게임을 선호할 수 있습니다. 여러 사람과 함께 즐길 수 있으면서 전략적인 목표를 구체화하고 달성할 수 있는 게임을 추천합니다.','누가 나를 심판하는가. 내가 바로 정의다!','‘타고난 리더’라고 불리는 이 유형은 권위와 자신감으로 재능을 구현하고, 공통된 목표 뒤에서 사람들을 끌어모으는 통솔력이 있고  주로 목표를 달성하기 위해 장기적인 계획 개발을 즐깁니다.','ENTJ 1.png','ENTJ','대담한 통솔자');
/*!40000 ALTER TABLE `result` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-21 23:04:23
