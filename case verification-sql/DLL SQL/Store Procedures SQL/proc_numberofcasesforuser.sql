



CREATE DEFINER=`root`@`localhost` PROCEDURE `numberofcasesforuser`()
begin
	select  count(c.CaseID) as casecount, a.AppUserID, coalesce(u.name ,"Un Assigned") as Name 
 from  casedetails c
 left join assignments a on a.CaseID =   c.CaseID
 left join users u on u.id =  a.AppUserID
group by u.name,a.AppUserID ;
end

