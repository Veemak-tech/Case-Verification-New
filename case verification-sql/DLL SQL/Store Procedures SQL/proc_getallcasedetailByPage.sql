

CREATE DEFINER=`root`@`localhost` PROCEDURE `getallcasedetailByPage`(IN pageno INT,IN Pagesize INT)
begin
       DECLARE LowerBound  INT;
       DECLARE UpperBound  INT;
       DECLARE rownum  INT;
       SET LowerBound = ((pageno - 1) * Pagesize)   ;
       
       SET UpperBound =  Pagesize ;
      
      select cd.ID, cd.CaseID, cd.Name, cd.Description, cd.InsurerVerificationNotes, cd.T_VerificationNotes, cd.ReferenceNumber, 
      cd.DueDate, cd.CreatedBy, cd.CreatedDate, cd.LastModifiedBy, cd.LastModifiedDate ,insd.InsurerName ,a2.StatusName ,
      a.AssignmentID , a.AppUserID , ifnull(u.name , 'Not Assigned')  as username
      from caseverificationdb.casedetails  cd
      join insurerdetails insd on insd.CaseID = cd.ID
      left join assignments a on a.CaseID = cd.CaseID 
      left join users u on u.ID = a.AppUserID 
      left join assignmentstatustype a2 on a2.StatusID = a.StatusID
      
     order by cd.ID desc LIMIT LowerBound,UpperBound ;
end
