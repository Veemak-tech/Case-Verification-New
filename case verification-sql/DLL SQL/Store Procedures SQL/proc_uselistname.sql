
CREATE DEFINER=`root`@`localhost` PROCEDURE `uselistname`()
begin
	select u.id , u.name , u.`date` , u.email , u.RoleID, r.Name from users u
	left join roles r on r.RoleID = u.RoleID 
	order by u.id ;
END