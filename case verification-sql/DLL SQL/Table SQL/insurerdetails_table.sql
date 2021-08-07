
CREATE TABLE `insurerdetails` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CaseID` varchar(45) DEFAULT NULL,
  `InsurerName` varchar(45) DEFAULT NULL,
  `PhoneNumber` varchar(45) DEFAULT NULL,
  `AlternativePhoneNumber` varchar(45) DEFAULT NULL,
  `EmailID` varchar(45) DEFAULT NULL,
  `AddressID` varchar(45) DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `LastModifiedBy` varchar(45) DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ;