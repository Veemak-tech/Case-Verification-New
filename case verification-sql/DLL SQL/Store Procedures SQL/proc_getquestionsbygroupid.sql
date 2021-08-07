
CREATE DEFINER=`root`@`localhost` PROCEDURE `getquestionsbygroupid`(IN gpid INT)
begin
    
select questionid ,questionname, questiondisplaytext, helptext, labelcss, controlcss, maxlength, controltype, groupid, displayorderno, CreatedBy, CreatedDate, LastModifiedBy from questions
where groupid = gpid  order by displayorderno ASC;

end