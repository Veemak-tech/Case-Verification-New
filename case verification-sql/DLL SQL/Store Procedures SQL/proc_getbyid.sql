

CREATE DEFINER=`root`@`localhost` PROCEDURE `getbyid`(IN getbyid INT)
begin
    
SELECT casedetails.ID,
casedetails.CaseID,
casedetails.Name,
casedetails.Description,
casedetails.InsurerVerificationNotes,
thirdpartydetails.T_VerificationNotes,
casedetails.CreatedBy,
casedetails.CreatedDate,
casedetails.LastModifiedBy,
insaddress.AddressLine1 as I_AddressLine1,
insaddress.AddressLine2 as I_AddressLine2,
insaddress.City as I_City,
insaddress.Landmark as I_Landmark,insaddress.State as I_State,
insaddress.Pincode as I_Pincode,casedetails.LastModifiedDate,
insurerdetails.InsurerName,insurerdetails.PhoneNumber,insurerdetails.AlternativePhoneNumber,
insurerdetails.EmailID,insurerdetails.CaseID as I_CaseID,insurerdetails.AddressID as I_AddressID,
casedetails.ReferenceNumber,casedetails.DueDate,thirdpartydetails.ThirdpartyName,thirdpartydetails.T_PhoneNumber,
thirdpartydetails.T_AddressID,tpaddress.AddressLine1 as T_AddressLine1,tpaddress.AddressLine2 as T_AddressLine2,
tpaddress.City as T_City,tpaddress.Landmark as T_Landmark,tpaddress.State as T_State,tpaddress.Pincode as T_Pincode,
thirdpartydetails.T_EmailID,
thirdpartydetails.T_AlternativePhoneNumber FROM caseverificationdb.casedetails 
LEFT JOIN caseverificationdb.insurerdetails ON caseverificationdb.insurerdetails.CaseID = caseverificationdb.casedetails.ID
LEFT JOIN caseverificationdb.thirdpartydetails ON caseverificationdb.casedetails.ID = caseverificationdb.thirdpartydetails.CaseID
LEFT JOIN caseverificationdb.address tpaddress ON  caseverificationdb.thirdpartydetails.T_AddressID = tpaddress.ID 
LEFT JOIN caseverificationdb.address insaddress ON  caseverificationdb.insurerdetails.AddressID = insaddress.ID where caseverificationdb.casedetails.ID = getbyid;
      
end
