-- MySQL dump 10.13  Distrib 8.3.0, for macos14.2 (x86_64)
--
-- Host: database-1.cfngygfor8bi.us-east-1.rds.amazonaws.com    Database: db_cafecito
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `Qualifiers`
--

DROP TABLE IF EXISTS `Qualifiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Qualifiers` (
  `EventId` int NOT NULL,
  `typeQualifierId` int DEFAULT NULL,
  `qualifierValue` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`EventId`),
  UNIQUE KEY `EventId` (`EventId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Qualifiers`
--

LOCK TABLES `Qualifiers` WRITE;
/*!40000 ALTER TABLE `Qualifiers` DISABLE KEYS */;
/*!40000 ALTER TABLE `Qualifiers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TSPositions`
--

DROP TABLE IF EXISTS `TSPositions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TSPositions` (
  `TSPositionIdid` int NOT NULL,
  `namePosition` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`TSPositionIdid`),
  UNIQUE KEY `TSPositionIdid` (`TSPositionIdid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TSPositions`
--

LOCK TABLES `TSPositions` WRITE;
/*!40000 ALTER TABLE `TSPositions` DISABLE KEYS */;
/*!40000 ALTER TABLE `TSPositions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competitionTypes`
--

DROP TABLE IF EXISTS `competitionTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `competitionTypes` (
  `competitionType` int NOT NULL,
  `competitionTypeName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`competitionType`),
  UNIQUE KEY `competitionType` (`competitionType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competitionTypes`
--

LOCK TABLES `competitionTypes` WRITE;
/*!40000 ALTER TABLE `competitionTypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `competitionTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competitions`
--

DROP TABLE IF EXISTS `competitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `competitions` (
  `competitionId` int NOT NULL,
  `competitionName` varchar(255) DEFAULT NULL,
  `competitionTypeId` int DEFAULT NULL,
  `countryId` int DEFAULT NULL,
  `conferenceId` int DEFAULT NULL,
  PRIMARY KEY (`competitionId`),
  UNIQUE KEY `competitionId` (`competitionId`),
  KEY `fk_competitions_conferences` (`conferenceId`),
  KEY `fk_competitions_competitionTypes` (`competitionTypeId`),
  CONSTRAINT `fk_competitions_competitionTypes` FOREIGN KEY (`competitionTypeId`) REFERENCES `competitionTypes` (`competitionType`),
  CONSTRAINT `fk_competitions_conferences` FOREIGN KEY (`conferenceId`) REFERENCES `conferences` (`conferenceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competitions`
--

LOCK TABLES `competitions` WRITE;
/*!40000 ALTER TABLE `competitions` DISABLE KEYS */;
/*!40000 ALTER TABLE `competitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conditions`
--

DROP TABLE IF EXISTS `conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conditions` (
  `conditionId` int NOT NULL,
  PRIMARY KEY (`conditionId`),
  UNIQUE KEY `conditionId` (`conditionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conditions`
--

LOCK TABLES `conditions` WRITE;
/*!40000 ALTER TABLE `conditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conferences`
--

DROP TABLE IF EXISTS `conferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conferences` (
  `conferenceId` int NOT NULL,
  `conferenceShortName` varchar(255) DEFAULT NULL,
  `conferenceImage` varchar(255) DEFAULT NULL,
  `conferenceName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`conferenceId`),
  UNIQUE KEY `conferenceId` (`conferenceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conferences`
--

LOCK TABLES `conferences` WRITE;
/*!40000 ALTER TABLE `conferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `conferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `countryId` int NOT NULL,
  `countryName` varchar(255) DEFAULT NULL,
  `countryImage` varchar(255) DEFAULT NULL,
  `countryShortName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`countryId`),
  UNIQUE KEY `countryId` (`countryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventTypes`
--

DROP TABLE IF EXISTS `eventTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventTypes` (
  `eventTypeId` int NOT NULL,
  `eventTypeName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`eventTypeId`),
  UNIQUE KEY `eventTypeId` (`eventTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventTypes`
--

LOCK TABLES `eventTypes` WRITE;
/*!40000 ALTER TABLE `eventTypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `eventTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formationPositions`
--

DROP TABLE IF EXISTS `formationPositions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formationPositions` (
  `formationId` int NOT NULL,
  `PlayerId` int NOT NULL,
  `systemId` int DEFAULT NULL,
  `TSPosition` int DEFAULT NULL,
  `jerseyNumber` int DEFAULT NULL,
  `formationSlot` int DEFAULT NULL,
  `vertical` double DEFAULT NULL,
  `horizontal` double DEFAULT NULL,
  PRIMARY KEY (`formationId`,`PlayerId`),
  UNIQUE KEY `formationId` (`formationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formationPositions`
--

LOCK TABLES `formationPositions` WRITE;
/*!40000 ALTER TABLE `formationPositions` DISABLE KEYS */;
/*!40000 ALTER TABLE `formationPositions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formations`
--

DROP TABLE IF EXISTS `formations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formations` (
  `formationId` int NOT NULL,
  `matchId` int DEFAULT NULL,
  `teamId` int DEFAULT NULL,
  `systemId` int DEFAULT NULL,
  `captainPlayerId` int DEFAULT NULL,
  `period` int DEFAULT NULL,
  `startMinuteExpanded` int DEFAULT NULL,
  `endMinuteExpanded` int DEFAULT NULL,
  PRIMARY KEY (`formationId`),
  UNIQUE KEY `formationId` (`formationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formations`
--

LOCK TABLES `formations` WRITE;
/*!40000 ALTER TABLE `formations` DISABLE KEYS */;
/*!40000 ALTER TABLE `formations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lineUps`
--

DROP TABLE IF EXISTS `lineUps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lineUps` (
  `matchId` int NOT NULL,
  `teamId` int NOT NULL,
  `playerId` int NOT NULL,
  `isFirstEleven` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`matchId`,`teamId`,`playerId`),
  UNIQUE KEY `matchId` (`matchId`),
  KEY `fk_lineups_teams` (`teamId`),
  KEY `fk_lineups_players` (`playerId`),
  CONSTRAINT `fk_lineups_matches` FOREIGN KEY (`matchId`) REFERENCES `matches` (`matchId`),
  CONSTRAINT `fk_lineups_players` FOREIGN KEY (`playerId`) REFERENCES `players` (`playerId`),
  CONSTRAINT `fk_lineups_teams` FOREIGN KEY (`teamId`) REFERENCES `teams` (`teamId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lineUps`
--

LOCK TABLES `lineUps` WRITE;
/*!40000 ALTER TABLE `lineUps` DISABLE KEYS */;
/*!40000 ALTER TABLE `lineUps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matchCentreEventTypeJson`
--

DROP TABLE IF EXISTS `matchCentreEventTypeJson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matchCentreEventTypeJson` (
  `satisfiedEventsTypeId` int NOT NULL,
  `satisfiedEventsTypeName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`satisfiedEventsTypeId`),
  UNIQUE KEY `satisfiedEventsTypeId` (`satisfiedEventsTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matchCentreEventTypeJson`
--

LOCK TABLES `matchCentreEventTypeJson` WRITE;
/*!40000 ALTER TABLE `matchCentreEventTypeJson` DISABLE KEYS */;
/*!40000 ALTER TABLE `matchCentreEventTypeJson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matchCodes`
--

DROP TABLE IF EXISTS `matchCodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matchCodes` (
  `matchCodeId` int NOT NULL,
  `matchCodeName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`matchCodeId`),
  UNIQUE KEY `matchCodeId` (`matchCodeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matchCodes`
--

LOCK TABLES `matchCodes` WRITE;
/*!40000 ALTER TABLE `matchCodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `matchCodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matchEvents`
--

DROP TABLE IF EXISTS `matchEvents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matchEvents` (
  `eventId` int NOT NULL,
  `eventTypeId` int DEFAULT NULL,
  `matchId` int DEFAULT NULL,
  `minute` int DEFAULT NULL,
  `second` int DEFAULT NULL,
  `teamId` int DEFAULT NULL,
  `x` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  `expandedMinute` int DEFAULT NULL,
  `period` int DEFAULT NULL,
  `outcomeType` int DEFAULT NULL,
  `isTouch` tinyint(1) DEFAULT NULL,
  `endX` double DEFAULT NULL,
  `endY` double DEFAULT NULL,
  `playerId` int DEFAULT NULL,
  `goalMouthZ` double DEFAULT NULL,
  `goalMouthY` double DEFAULT NULL,
  `isGoal` tinyint(1) DEFAULT NULL,
  `isShot` tinyint(1) DEFAULT NULL,
  `relatedEventId` int DEFAULT NULL,
  `relatedPlayerId` int DEFAULT NULL,
  `blockedX` double DEFAULT NULL,
  `blockedY` double DEFAULT NULL,
  `cardType` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`eventId`),
  UNIQUE KEY `eventId` (`eventId`),
  KEY `fk_matchEvents_matches` (`matchId`),
  KEY `fk_matchEvents_teams` (`teamId`),
  KEY `fk_matchEvents_players` (`playerId`),
  KEY `fk_matchEvents_eventTypes` (`eventTypeId`),
  CONSTRAINT `fk_matchEvents_eventTypes` FOREIGN KEY (`eventTypeId`) REFERENCES `eventTypes` (`eventTypeId`),
  CONSTRAINT `fk_matchEvents_matches` FOREIGN KEY (`matchId`) REFERENCES `matches` (`matchId`),
  CONSTRAINT `fk_matchEvents_players` FOREIGN KEY (`playerId`) REFERENCES `players` (`playerId`),
  CONSTRAINT `fk_matchEvents_teams` FOREIGN KEY (`teamId`) REFERENCES `teams` (`teamId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matchEvents`
--

LOCK TABLES `matchEvents` WRITE;
/*!40000 ALTER TABLE `matchEvents` DISABLE KEYS */;
/*!40000 ALTER TABLE `matchEvents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matchPlayerStatsDetailed`
--

DROP TABLE IF EXISTS `matchPlayerStatsDetailed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matchPlayerStatsDetailed` (
  `matchId` int NOT NULL,
  `playerId` int NOT NULL,
  `teamId` int DEFAULT NULL,
  `statsName` varchar(255) DEFAULT NULL,
  `statsValue` varchar(255) DEFAULT NULL,
  `minutes` int DEFAULT NULL,
  PRIMARY KEY (`matchId`,`playerId`),
  UNIQUE KEY `matchId` (`matchId`),
  CONSTRAINT `fk_matchPlayerStatsDetailed_matches` FOREIGN KEY (`matchId`) REFERENCES `matches` (`matchId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matchPlayerStatsDetailed`
--

LOCK TABLES `matchPlayerStatsDetailed` WRITE;
/*!40000 ALTER TABLE `matchPlayerStatsDetailed` DISABLE KEYS */;
/*!40000 ALTER TABLE `matchPlayerStatsDetailed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matchPlayerStatsTotal`
--

DROP TABLE IF EXISTS `matchPlayerStatsTotal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matchPlayerStatsTotal` (
  `matchId` int NOT NULL,
  `playerId` int NOT NULL,
  `teamId` int DEFAULT NULL,
  `totalSaves` double DEFAULT NULL,
  `collected` double DEFAULT NULL,
  `parriedSafe` double DEFAULT NULL,
  `claimsHigh` double DEFAULT NULL,
  `possession` double DEFAULT NULL,
  `ratings` double DEFAULT NULL,
  `clearances` double DEFAULT NULL,
  `touches` double DEFAULT NULL,
  `passesTotal` double DEFAULT NULL,
  `passesAccurate` double DEFAULT NULL,
  `passSuccess` double DEFAULT NULL,
  PRIMARY KEY (`matchId`,`playerId`),
  UNIQUE KEY `matchId` (`matchId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matchPlayerStatsTotal`
--

LOCK TABLES `matchPlayerStatsTotal` WRITE;
/*!40000 ALTER TABLE `matchPlayerStatsTotal` DISABLE KEYS */;
/*!40000 ALTER TABLE `matchPlayerStatsTotal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matchSustitutions`
--

DROP TABLE IF EXISTS `matchSustitutions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matchSustitutions` (
  `sustitutionId` int NOT NULL,
  `matchId` int DEFAULT NULL,
  `teamId` int DEFAULT NULL,
  `playerIdOn` int DEFAULT NULL,
  `playerIdOff` int DEFAULT NULL,
  `minutes` int DEFAULT NULL,
  `period` varchar(255) DEFAULT NULL,
  `JerseyNumberOn` int DEFAULT NULL,
  `JerseyNumberOff` int DEFAULT NULL,
  `PlayerPositionOn` varchar(255) DEFAULT NULL,
  `PlayerPositionOff` varchar(255) DEFAULT NULL,
  `FormationSlot` int DEFAULT NULL,
  PRIMARY KEY (`sustitutionId`),
  UNIQUE KEY `sustitutionId` (`sustitutionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matchSustitutions`
--

LOCK TABLES `matchSustitutions` WRITE;
/*!40000 ALTER TABLE `matchSustitutions` DISABLE KEYS */;
/*!40000 ALTER TABLE `matchSustitutions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matchTeamStatsAVG`
--

DROP TABLE IF EXISTS `matchTeamStatsAVG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matchTeamStatsAVG` (
  `matchId` int NOT NULL,
  `teamId` int NOT NULL,
  `shotsTotal` double DEFAULT NULL,
  `shotsOnTarget` double DEFAULT NULL,
  `shotsOffTarget` double DEFAULT NULL,
  `shotsBlocked` double DEFAULT NULL,
  `clearances` double DEFAULT NULL,
  `interceptions` double DEFAULT NULL,
  `possession` double DEFAULT NULL,
  `touches` double DEFAULT NULL,
  `passesTotal` double DEFAULT NULL,
  `passesAccurate` double DEFAULT NULL,
  `passesKey` double DEFAULT NULL,
  `passSuccess` double DEFAULT NULL,
  `aerialsTotal` double DEFAULT NULL,
  `aerialsWon` double DEFAULT NULL,
  `aerialSuccess` double DEFAULT NULL,
  `offensiveAerials` double DEFAULT NULL,
  `defensiveAerials` double DEFAULT NULL,
  `cornersTotal` double DEFAULT NULL,
  `cornersAccurate` double DEFAULT NULL,
  `throwInsTotal` double DEFAULT NULL,
  `throwInsAccurate` double DEFAULT NULL,
  `throwInAccuracy` double DEFAULT NULL,
  `offsidesCaught` double DEFAULT NULL,
  `foulsCommited` double DEFAULT NULL,
  `tacklesTotal` double DEFAULT NULL,
  `tackleSuccessful` double DEFAULT NULL,
  `tackleUnsuccesful` double DEFAULT NULL,
  `tackleSuccess` double DEFAULT NULL,
  `dribbledPast` double DEFAULT NULL,
  `dribblesWon` double DEFAULT NULL,
  `dribblesAttempted` double DEFAULT NULL,
  `dribblesLost` double DEFAULT NULL,
  `dribbleSuccess` double DEFAULT NULL,
  `dispossessed` double DEFAULT NULL,
  `errors` double DEFAULT NULL,
  PRIMARY KEY (`matchId`,`teamId`),
  UNIQUE KEY `matchId` (`matchId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matchTeamStatsAVG`
--

LOCK TABLES `matchTeamStatsAVG` WRITE;
/*!40000 ALTER TABLE `matchTeamStatsAVG` DISABLE KEYS */;
/*!40000 ALTER TABLE `matchTeamStatsAVG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matchTeamStatsDetailed`
--

DROP TABLE IF EXISTS `matchTeamStatsDetailed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matchTeamStatsDetailed` (
  `id` int NOT NULL,
  `matchId` int DEFAULT NULL,
  `teamId` int DEFAULT NULL,
  `statsName` varchar(255) DEFAULT NULL,
  `statsValue` varchar(255) DEFAULT NULL,
  `minutes` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `fk_matchTeamStatsDetailed_matches` (`matchId`),
  CONSTRAINT `fk_matchTeamStatsDetailed_matches` FOREIGN KEY (`matchId`) REFERENCES `matches` (`matchId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matchTeamStatsDetailed`
--

LOCK TABLES `matchTeamStatsDetailed` WRITE;
/*!40000 ALTER TABLE `matchTeamStatsDetailed` DISABLE KEYS */;
/*!40000 ALTER TABLE `matchTeamStatsDetailed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matchTeamStatsP90`
--

DROP TABLE IF EXISTS `matchTeamStatsP90`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matchTeamStatsP90` (
  `matchId` int NOT NULL,
  `teamId` int NOT NULL,
  `shotsTotal` double DEFAULT NULL,
  `shotsOnTarget` double DEFAULT NULL,
  `shotsOffTarget` double DEFAULT NULL,
  `shotsBlocked` double DEFAULT NULL,
  `clearances` double DEFAULT NULL,
  `interceptions` double DEFAULT NULL,
  `possession` double DEFAULT NULL,
  `touches` double DEFAULT NULL,
  `passesTotal` double DEFAULT NULL,
  `passesAccurate` double DEFAULT NULL,
  `passesKey` double DEFAULT NULL,
  `passSuccess` double DEFAULT NULL,
  `aerialsTotal` double DEFAULT NULL,
  `aerialsWon` double DEFAULT NULL,
  `aerialSuccess` double DEFAULT NULL,
  `offensiveAerials` double DEFAULT NULL,
  `defensiveAerials` double DEFAULT NULL,
  `cornersTotal` double DEFAULT NULL,
  `cornersAccurate` double DEFAULT NULL,
  `throwInsTotal` double DEFAULT NULL,
  `throwInsAccurate` double DEFAULT NULL,
  `throwInAccuracy` double DEFAULT NULL,
  `offsidesCaught` double DEFAULT NULL,
  `foulsCommited` double DEFAULT NULL,
  `tacklesTotal` double DEFAULT NULL,
  `tackleSuccessful` double DEFAULT NULL,
  `tackleUnsuccesful` double DEFAULT NULL,
  `tackleSuccess` double DEFAULT NULL,
  `dribbledPast` double DEFAULT NULL,
  `dribblesWon` double DEFAULT NULL,
  `dribblesAttempted` double DEFAULT NULL,
  `dribblesLost` double DEFAULT NULL,
  `dribbleSuccess` double DEFAULT NULL,
  `dispossessed` double DEFAULT NULL,
  `errors` double DEFAULT NULL,
  PRIMARY KEY (`matchId`,`teamId`),
  UNIQUE KEY `matchId` (`matchId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matchTeamStatsP90`
--

LOCK TABLES `matchTeamStatsP90` WRITE;
/*!40000 ALTER TABLE `matchTeamStatsP90` DISABLE KEYS */;
/*!40000 ALTER TABLE `matchTeamStatsP90` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matchTeamStatsTotal`
--

DROP TABLE IF EXISTS `matchTeamStatsTotal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matchTeamStatsTotal` (
  `matchId` int NOT NULL,
  `teamId` int NOT NULL,
  `shotsTotal` double DEFAULT NULL,
  `shotsOnTarget` double DEFAULT NULL,
  `shotsOffTarget` double DEFAULT NULL,
  `shotsBlocked` double DEFAULT NULL,
  `clearances` double DEFAULT NULL,
  `interceptions` double DEFAULT NULL,
  `possession` double DEFAULT NULL,
  `touches` double DEFAULT NULL,
  `passesTotal` double DEFAULT NULL,
  `passesAccurate` double DEFAULT NULL,
  `passesKey` double DEFAULT NULL,
  `passSuccess` double DEFAULT NULL,
  `aerialsTotal` double DEFAULT NULL,
  `aerialsWon` double DEFAULT NULL,
  `aerialSuccess` double DEFAULT NULL,
  `offensiveAerials` double DEFAULT NULL,
  `defensiveAerials` double DEFAULT NULL,
  `cornersTotal` double DEFAULT NULL,
  `cornersAccurate` double DEFAULT NULL,
  `throwInsTotal` double DEFAULT NULL,
  `throwInsAccurate` double DEFAULT NULL,
  `throwInAccuracy` double DEFAULT NULL,
  `offsidesCaught` double DEFAULT NULL,
  `foulsCommited` double DEFAULT NULL,
  `tacklesTotal` double DEFAULT NULL,
  `tackleSuccessful` double DEFAULT NULL,
  `tackleUnsuccesful` double DEFAULT NULL,
  `tackleSuccess` double DEFAULT NULL,
  `dribbledPast` double DEFAULT NULL,
  `dribblesWon` double DEFAULT NULL,
  `dribblesAttempted` double DEFAULT NULL,
  `dribblesLost` double DEFAULT NULL,
  `dribbleSuccess` double DEFAULT NULL,
  `dispossessed` double DEFAULT NULL,
  `errors` double DEFAULT NULL,
  PRIMARY KEY (`matchId`,`teamId`),
  UNIQUE KEY `matchId` (`matchId`),
  CONSTRAINT `fk_matchTeamStatsTotal_matches` FOREIGN KEY (`matchId`) REFERENCES `matches` (`matchId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matchTeamStatsTotal`
--

LOCK TABLES `matchTeamStatsTotal` WRITE;
/*!40000 ALTER TABLE `matchTeamStatsTotal` DISABLE KEYS */;
/*!40000 ALTER TABLE `matchTeamStatsTotal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matches`
--

DROP TABLE IF EXISTS `matches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matches` (
  `matchId` int NOT NULL,
  `competitionId` int DEFAULT NULL,
  `roundId` int DEFAULT NULL,
  `seasonId` int DEFAULT NULL,
  `venueName` varchar(255) DEFAULT NULL,
  `refereeId` int DEFAULT NULL,
  `managerNameHome` varchar(255) DEFAULT NULL,
  `managerNameAway` varchar(255) DEFAULT NULL,
  `matchCodeId` int DEFAULT NULL,
  `teamHomeId` int DEFAULT NULL,
  `teamAwayId` int DEFAULT NULL,
  `attendance` int DEFAULT NULL,
  `elapsed` varchar(255) DEFAULT NULL,
  `startTime` varchar(255) DEFAULT NULL,
  `startDate` varchar(255) DEFAULT NULL,
  `score` varchar(255) DEFAULT NULL,
  `htScore` varchar(255) DEFAULT NULL,
  `ftScore` varchar(255) DEFAULT NULL,
  `statusCode` int DEFAULT NULL,
  `periodCode` int DEFAULT NULL,
  `etScore` varchar(255) DEFAULT NULL,
  `pkScore` varchar(255) DEFAULT NULL,
  `maxMinute` int DEFAULT NULL,
  `minuteExpanded` int DEFAULT NULL,
  `maxPeriod` int DEFAULT NULL,
  `expandedMaxMinute` int DEFAULT NULL,
  `periodEndMinutesFT` int DEFAULT NULL,
  `periodEndMinutesST` int DEFAULT NULL,
  `timeoutInSeconds` int DEFAULT NULL,
  PRIMARY KEY (`matchId`),
  UNIQUE KEY `matchId` (`matchId`),
  KEY `fk_matches_competitions` (`competitionId`),
  KEY `fk_matches_rounds` (`roundId`),
  KEY `fk_matches_seasons` (`seasonId`),
  KEY `fk_matches_teams_home` (`teamHomeId`),
  KEY `fk_matches_teams_away` (`teamAwayId`),
  CONSTRAINT `fk_matches_competitions` FOREIGN KEY (`competitionId`) REFERENCES `competitions` (`competitionId`),
  CONSTRAINT `fk_matches_rounds` FOREIGN KEY (`roundId`) REFERENCES `rounds` (`roundId`),
  CONSTRAINT `fk_matches_seasons` FOREIGN KEY (`seasonId`) REFERENCES `seasons` (`SeasonId`),
  CONSTRAINT `fk_matches_teams_away` FOREIGN KEY (`teamAwayId`) REFERENCES `teams` (`teamId`),
  CONSTRAINT `fk_matches_teams_home` FOREIGN KEY (`teamHomeId`) REFERENCES `teams` (`teamId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matches`
--

LOCK TABLES `matches` WRITE;
/*!40000 ALTER TABLE `matches` DISABLE KEYS */;
/*!40000 ALTER TABLE `matches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `players` (
  `playerId` int NOT NULL,
  `positionMainId` int DEFAULT NULL,
  `positionSecundaryId` int DEFAULT NULL,
  `currentTeamId` int DEFAULT NULL,
  `playerName` varchar(255) DEFAULT NULL,
  `playerShortName` varchar(255) DEFAULT NULL,
  `playerBirthdate` date DEFAULT NULL,
  `weight` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `countryId` int DEFAULT NULL,
  `marketValueLast` decimal(10,0) DEFAULT NULL,
  `tranfermarketPlayerId` int DEFAULT NULL,
  PRIMARY KEY (`playerId`),
  UNIQUE KEY `playerId` (`playerId`),
  KEY `fk_players_positions_main` (`positionMainId`),
  KEY `fk_players_positions_secondary` (`positionSecundaryId`),
  CONSTRAINT `fk_players_positions_main` FOREIGN KEY (`positionMainId`) REFERENCES `positions` (`positionId`),
  CONSTRAINT `fk_players_positions_secondary` FOREIGN KEY (`positionSecundaryId`) REFERENCES `positions` (`positionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positions`
--

DROP TABLE IF EXISTS `positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positions` (
  `positionId` int NOT NULL,
  `positionName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`positionId`),
  UNIQUE KEY `positionId` (`positionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positions`
--

LOCK TABLES `positions` WRITE;
/*!40000 ALTER TABLE `positions` DISABLE KEYS */;
/*!40000 ALTER TABLE `positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referees`
--

DROP TABLE IF EXISTS `referees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `referees` (
  `refereeId` int NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `refereeName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`refereeId`),
  UNIQUE KEY `refereeId` (`refereeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referees`
--

LOCK TABLES `referees` WRITE;
/*!40000 ALTER TABLE `referees` DISABLE KEYS */;
/*!40000 ALTER TABLE `referees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rounds`
--

DROP TABLE IF EXISTS `rounds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rounds` (
  `roundId` int NOT NULL,
  `roundName` varchar(255) DEFAULT NULL,
  `roundShortName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`roundId`),
  UNIQUE KEY `roundId` (`roundId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rounds`
--

LOCK TABLES `rounds` WRITE;
/*!40000 ALTER TABLE `rounds` DISABLE KEYS */;
/*!40000 ALTER TABLE `rounds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `satisfiedEventsTypes`
--

DROP TABLE IF EXISTS `satisfiedEventsTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `satisfiedEventsTypes` (
  `eventId` int NOT NULL,
  `satisfiedEventsTypeId` int DEFAULT NULL,
  PRIMARY KEY (`eventId`),
  UNIQUE KEY `eventId` (`eventId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `satisfiedEventsTypes`
--

LOCK TABLES `satisfiedEventsTypes` WRITE;
/*!40000 ALTER TABLE `satisfiedEventsTypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `satisfiedEventsTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seasons`
--

DROP TABLE IF EXISTS `seasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seasons` (
  `SeasonId` int NOT NULL,
  `seasonName` varchar(255) DEFAULT NULL,
  `seasonShortName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SeasonId`),
  UNIQUE KEY `SeasonId` (`SeasonId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seasons`
--

LOCK TABLES `seasons` WRITE;
/*!40000 ALTER TABLE `seasons` DISABLE KEYS */;
/*!40000 ALTER TABLE `seasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stats`
--

DROP TABLE IF EXISTS `stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats` (
  `statsName` varchar(255) NOT NULL,
  PRIMARY KEY (`statsName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats`
--

LOCK TABLES `stats` WRITE;
/*!40000 ALTER TABLE `stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tacticalsystempositions`
--

DROP TABLE IF EXISTS `tacticalsystempositions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tacticalsystempositions` (
  `systemId` int NOT NULL,
  `TSPositionId` int NOT NULL,
  `vertical` double DEFAULT NULL,
  `horizontal` double DEFAULT NULL,
  PRIMARY KEY (`systemId`,`TSPositionId`),
  UNIQUE KEY `systemId` (`systemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tacticalsystempositions`
--

LOCK TABLES `tacticalsystempositions` WRITE;
/*!40000 ALTER TABLE `tacticalsystempositions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tacticalsystempositions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tacticalsystems`
--

DROP TABLE IF EXISTS `tacticalsystems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tacticalsystems` (
  `systemId` int NOT NULL,
  PRIMARY KEY (`systemId`),
  UNIQUE KEY `systemId` (`systemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tacticalsystems`
--

LOCK TABLES `tacticalsystems` WRITE;
/*!40000 ALTER TABLE `tacticalsystems` DISABLE KEYS */;
/*!40000 ALTER TABLE `tacticalsystems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `teamId` int NOT NULL,
  `teamName` varchar(255) DEFAULT NULL,
  `teamShortName` varchar(255) DEFAULT NULL,
  `teamImage` varchar(255) DEFAULT NULL,
  `teamCountryId` int DEFAULT NULL,
  PRIMARY KEY (`teamId`),
  UNIQUE KEY `teamId` (`teamId`),
  KEY `fk_teams_countries` (`teamCountryId`),
  CONSTRAINT `fk_teams_countries` FOREIGN KEY (`teamCountryId`) REFERENCES `countries` (`countryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tournamentTeamplayers`
--

DROP TABLE IF EXISTS `tournamentTeamplayers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tournamentTeamplayers` (
  `competitionId` int NOT NULL,
  `roundId` int NOT NULL,
  `seasonId` int NOT NULL,
  `teamId` int NOT NULL,
  `playerId` int NOT NULL,
  PRIMARY KEY (`competitionId`,`roundId`,`seasonId`,`teamId`,`playerId`),
  UNIQUE KEY `competitionId` (`competitionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournamentTeamplayers`
--

LOCK TABLES `tournamentTeamplayers` WRITE;
/*!40000 ALTER TABLE `tournamentTeamplayers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tournamentTeamplayers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tournamentTeams`
--

DROP TABLE IF EXISTS `tournamentTeams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tournamentTeams` (
  `competitionId` int NOT NULL,
  `roundId` int NOT NULL,
  `seasonId` int NOT NULL,
  `teamId` int NOT NULL,
  PRIMARY KEY (`competitionId`,`roundId`,`seasonId`,`teamId`),
  UNIQUE KEY `competitionId` (`competitionId`),
  KEY `fk_tournamentTeams_rounds` (`roundId`),
  KEY `fk_tournamentTeams_seasons` (`seasonId`),
  KEY `fk_tournamentTeams_teams` (`teamId`),
  CONSTRAINT `fk_tournamentTeams_competitions` FOREIGN KEY (`competitionId`) REFERENCES `competitions` (`competitionId`),
  CONSTRAINT `fk_tournamentTeams_rounds` FOREIGN KEY (`roundId`) REFERENCES `rounds` (`roundId`),
  CONSTRAINT `fk_tournamentTeams_seasons` FOREIGN KEY (`seasonId`) REFERENCES `seasons` (`SeasonId`),
  CONSTRAINT `fk_tournamentTeams_teams` FOREIGN KEY (`teamId`) REFERENCES `teams` (`teamId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournamentTeams`
--

LOCK TABLES `tournamentTeams` WRITE;
/*!40000 ALTER TABLE `tournamentTeams` DISABLE KEYS */;
/*!40000 ALTER TABLE `tournamentTeams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tournaments`
--

DROP TABLE IF EXISTS `tournaments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tournaments` (
  `competitionId` int NOT NULL,
  `roundId` int NOT NULL,
  `seasonId` int NOT NULL,
  `tournamentName` varchar(255) DEFAULT NULL,
  `formatId` int DEFAULT NULL,
  `competitionState` tinyint(1) DEFAULT NULL,
  `competitionStart` date DEFAULT NULL,
  `competitionEnd` date DEFAULT NULL,
  PRIMARY KEY (`competitionId`,`roundId`,`seasonId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournaments`
--

LOCK TABLES `tournaments` WRITE;
/*!40000 ALTER TABLE `tournaments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tournaments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tournametFormats`
--

DROP TABLE IF EXISTS `tournametFormats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tournametFormats` (
  `formatId` int NOT NULL,
  `tournamentFormatName` varchar(255) DEFAULT NULL,
  `tournamentFormatShortName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`formatId`),
  UNIQUE KEY `formatId` (`formatId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournametFormats`
--

LOCK TABLES `tournametFormats` WRITE;
/*!40000 ALTER TABLE `tournametFormats` DISABLE KEYS */;
/*!40000 ALTER TABLE `tournametFormats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typeQualifiers`
--

DROP TABLE IF EXISTS `typeQualifiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `typeQualifiers` (
  `typeQualifierId` int NOT NULL,
  `qualifierName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`typeQualifierId`),
  UNIQUE KEY `typeQualifierId` (`typeQualifierId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typeQualifiers`
--

LOCK TABLES `typeQualifiers` WRITE;
/*!40000 ALTER TABLE `typeQualifiers` DISABLE KEYS */;
/*!40000 ALTER TABLE `typeQualifiers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `usuario` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `clave` varchar(255) NOT NULL,
  PRIMARY KEY (`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES ('admin','admin','admin'),('luis','Luis','password123'),('MPAD','MPAD','MPAD');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-05 16:24:21
