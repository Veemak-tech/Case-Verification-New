


CREATE DEFINER=`root`@`localhost` PROCEDURE `GetCasebyLoggedUsername`(IN pageno INT,IN Pagesize INT,IN userid INT)
begin
	DECLARE LowerBound  INT;
       DECLARE UpperBound  INT;
       DECLARE rownum  INT;
       SET LowerBound = ((pageno - 1) * Pagesize)   ;
       
       SET UpperBound =  Pagesize ;
      
      select a2.AssignmentID,a2.CaseID ,c.ID, c.Name ,insd.InsurerName,ast.StatusName, c.CaseID, a2.AppUserID from casedetails c
       join assignments a2 on c.CaseID = a2.CaseID 
      join insurerdetails insd on c.ID = insd.CaseID 
       join assignmentstatustype ast on ast.StatusID = a2.StatusID
      where a2.AppUserID = userid
      order by c.ID desc limit LowerBound,UpperBound ;
end
