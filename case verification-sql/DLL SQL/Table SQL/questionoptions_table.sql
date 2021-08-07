
CREATE TABLE `questionoptions` (
  `optionid` int NOT NULL AUTO_INCREMENT,
  `questionid` int DEFAULT NULL,
  `itemkey` varchar(128) DEFAULT NULL,
  `itemvalue` varchar(128) DEFAULT NULL,
  `displayorderno` varchar(128) DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `LastModifiedBy` varchar(45) DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`optionid`)
);