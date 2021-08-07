

CREATE DEFINER=`root`@`localhost` PROCEDURE `getanswerbycaseid`(in caseid varchar(128))
begin
	select q.CaseID, q.questionid, q.answerintext, q2.questionname,q.answerid ,
q2.questiondisplaytext, q2.helptext, q2.labelcss, q2.controlcss, q2.maxlength, q2.controltype, q2.groupid, 
q2.displayorderno, q2.CreatedBy, q2.CreatedDate, q2.LastModifiedBy from questionanswers q 
join questions q2 on q.questionid = q2.questionid
where q.CaseID = caseid; 
end

END