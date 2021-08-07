
CREATE TABLE `thirdpartydetails` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CaseID` varchar(45) DEFAULT NULL,
  `ThirdpartyName` varchar(45) DEFAULT NULL,
  `T_PhoneNumber` varchar(45) DEFAULT NULL,
  `T_AlternativePhoneNumber` varchar(45) DEFAULT NULL,
  `T_EmailID` varchar(45) DEFAULT NULL,
  `T_AddressID` varchar(45) DEFAULT NULL,
  `T_PhotoDocID` varchar(45) DEFAULT NULL,
  `T_AudioDocID` varchar(45) DEFAULT NULL,
  `T_VideoDocID` varchar(45) DEFAULT NULL,
  `T_PhotoWithSelfieDocID` varchar(45) DEFAULT NULL,
  `T_VerificationNotes` varchar(256) DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `LastModifiedBy` varchar(45) DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ;