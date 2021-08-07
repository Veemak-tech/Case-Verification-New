

CREATE DEFINER=`root`@`localhost` PROCEDURE `getquestionoptions`(in ingroupid INT )
begin
		select qp.questionid,qp.itemkey, qp.itemvalue, qp.displayorderno, q.groupid from questionoptions qp 
join questions q on qp.questionid = q.questionid where q.groupid = ingroupid order by questionid ,displayorderno asc;
	
end
