-- Generation time: Thu, 26 Dec 2019 19:40:00 +0000
-- Host: mysql.hostinger.ro
-- DB name: u574849695_25
/*!40030 SET NAMES UTF8 */;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `speak_languages`;
CREATE TABLE `speak_languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) DEFAULT NULL,
  `trainer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `speak_languages` VALUES ('1','5','4'),
('2','7','20'),
('3','1','2'),
('4','7','14'),
('5','6','22'),
('6','3','3'),
('7','7','17'),
('8','5','12'),
('9','7','17'),
('10','3','14'),
('11','1','11'),
('12','6','8'),
('13','3','2'),
('14','1','19'),
('15','5','22'),
('16','2','6'),
('17','4','7'),
('18','4','24'),
('19','2','19'),
('20','2','24'),
('21','1','15'),
('22','2','19'),
('23','1','21'),
('24','1','24'),
('25','3','16'),
('26','5','6'),
('27','3','19'),
('28','5','19'),
('29','7','8'),
('30','3','29'),
('31','5','24'),
('32','1','6'),
('33','7','6'),
('34','2','14'),
('35','1','1'),
('36','2','15'),
('37','3','13'),
('38','5','3'),
('39','3','2'),
('40','4','29'),
('41','2','26'),
('42','6','17'),
('43','5','2'),
('44','7','20'),
('45','7','30'),
('46','1','27'),
('47','5','21'),
('48','7','20'),
('49','5','18'),
('50','4','5'),
('51','1','30'),
('52','4','30'),
('53','6','12'),
('54','2','4'),
('55','2','17'),
('56','1','25'),
('57','5','15'),
('58','6','8'),
('59','4','13'),
('60','6','5'),
('61','5','3'),
('62','5','4'),
('63','7','16'),
('64','1','18'),
('65','4','13'),
('66','6','16'),
('67','5','13'),
('68','5','9'),
('69','3','30'),
('70','4','1'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

