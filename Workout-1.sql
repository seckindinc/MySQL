##Delete duplicate data from table so that only first data remains constant
/*
INSERT INTO `w1` (`id`,`name`,`salary`) VALUES (1,'Harpreet',20000);
INSERT INTO `w1` (`id`,`name`,`salary`) VALUES (2,'Ravi',30000);
INSERT INTO `w1` (`id`,`name`,`salary`) VALUES (3,'Vinay',10000);
INSERT INTO `w1` (`id`,`name`,`salary`) VALUES (4,'Ravi',30000);
INSERT INTO `w1` (`id`,`name`,`salary`) VALUES (5,'Harpreet',20000);
INSERT INTO `w1` (`id`,`name`,`salary`) VALUES (6,'Vinay',10000);
INSERT INTO `w1` (`id`,`name`,`salary`) VALUES (7,'Rajeev',40000);
INSERT INTO `w1` (`id`,`name`,`salary`) VALUES (8,'Vinay',10000);
INSERT INTO `w1` (`id`,`name`,`salary`) VALUES (9,'Ravi',30000);
INSERT INTO `w1` (`id`,`name`,`salary`) VALUES (10,'Sanjay',50000);
*/
use workout;

delete x
from w1 x, w1 y
where x.name = y.name and x.id > y.id;

select *
from w1;
