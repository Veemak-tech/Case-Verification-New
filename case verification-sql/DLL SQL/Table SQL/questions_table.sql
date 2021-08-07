
CREATE TABLE `questions` (
  `questionid` int NOT NULL AUTO_INCREMENT,
  `questionname` varchar(128) DEFAULT NULL,
  `questiondisplaytext` varchar(128) DEFAULT NULL,
  `helptext` varchar(128) DEFAULT NULL,
  `labelcss` varchar(128) DEFAULT NULL,
  `controlcss` varchar(128) DEFAULT NULL,
  `maxlength` int DEFAULT NULL,
  `controltype` varchar(128) DEFAULT NULL,
  `groupid` int DEFAULT NULL,
  `displayorderno` int DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `LastModifiedBy` varchar(45) DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`questionid`)
) ;