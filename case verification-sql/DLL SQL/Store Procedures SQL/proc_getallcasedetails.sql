

CREATE DEFINER=`root`@`localhost` PROCEDURE `getallcasedetails`()
start
SELECT casedetails.ID,casedetails.CaseID,casedetails.Name,casedetails.Description,
casedetails.InsurerVerificationNotes,thirdpartydetails.T_VerificationNotes,
casedetails.CreatedBy,casedetails.CreatedDate,casedetails.LastModifiedBy,
casedetails.LastModifiedDate,insurerdetails.InsurerName,insurerdetails.PhoneNumber,
insurerdetails.AlternativePhoneNumber,insurerdetails.EmailID,
address.AddressLine1,address.AddressLine2,thirdpartydetails.ThirdpartyName,
thirdpartydetails.T_PhoneNumber,thirdpartydetails.T_AlternativePhoneNumber,
tpaddress.AddressLine1,tpaddress.AddressLine2 as taddress FROM caseverificationdb.casedetails 
LEFT JOIN caseverificationdb.insurerdetails ON caseverificationdb.insurerdetails.CaseID = caseverificationdb.casedetails.ID
LEFT JOIN caseverificationdb.address ON  caseverificationdb.insurerdetails.AddressID = caseverificationdb.address.ID
LEFT JOIN caseverificationdb.thirdpartydetails ON caseverificationdb.casedetails.ID = caseverificationdb.thirdpartydetails.CaseID
LEFT JOIN caseverificationdb.address tpaddress ON  caseverificationdb.thirdpartydetails.T_AddressID = tpaddress.ID
ORDER BY casedetails.ID desc
end
END