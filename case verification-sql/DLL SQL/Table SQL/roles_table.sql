
CREATE TABLE `roles` (
  `RoleID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `IsActive` tinyint DEFAULT '1',
  PRIMARY KEY (`RoleID`)
) ;