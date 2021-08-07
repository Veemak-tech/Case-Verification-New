
CREATE TABLE `documents` (
  `DocID` int NOT NULL AUTO_INCREMENT,
  `FilePath` blob NOT NULL,
  `FileName` varchar(45) NOT NULL,
  `GEOLocation` varchar(45) DEFAULT NULL,
  `FileTypeID` int DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `LastModifiedBy` varchar(45) DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`DocID`)
);