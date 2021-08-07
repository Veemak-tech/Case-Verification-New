


CREATE DEFINER=`root`@`localhost` PROCEDURE `caseassign`(in Cid INT, in Auid INT,in Crby varchar(45),
in Lmby varchar(45), in StID INT,in AtID INT)
begin
	delete from assignments where CaseID = cid ;
	
	insert INTO assignments (CaseID,AppUserID,CreatedBy,LastModifiedBy,StatusID)  VALUES 
   (Cid,Auid,Crby,Lmby,StID) ;
end
