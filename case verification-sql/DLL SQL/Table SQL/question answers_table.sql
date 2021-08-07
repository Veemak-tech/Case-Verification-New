CREATE TABLE `questionanswers` (
  `answerid` int NOT NULL AUTO_INCREMENT,
  `questionid` int DEFAULT NULL,
  `answerintext` varchar(128) DEFAULT NULL,
  `CaseID` varchar(128) DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `LastModifiedBy` varchar(45) DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`answerid`)
) 