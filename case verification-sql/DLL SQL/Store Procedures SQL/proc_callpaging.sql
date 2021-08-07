CREATE DEFINER=`root`@`localhost` PROCEDURE `callpaging`()
BEGIN
call getallcasedetailByPage(pageno, pagesize);
end
