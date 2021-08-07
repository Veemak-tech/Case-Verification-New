
CREATE TABLE `casedetails` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CaseID` varchar(45) DEFAULT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `InsurerVerificationNotes` varchar(255) DEFAULT NULL,
  `T_VerificationNotes` varchar(255) DEFAULT NULL,
  `ReferenceNumber` varchar(45) DEFAULT NULL,
  `DueDate` varchar(45) DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `LastModifiedBy` varchar(45) DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ;