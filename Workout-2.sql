#create table `workout`.`w2` (ID	int, FNAME	varchar(50), SNAME	varchar(50), LNAME	varchar(50), SALARY int(18));
/*
Find the Name of Employees where First Name, Second Name and Last Name is given in table. 
Some Name is missing such as First Name, Second Name and may be Last Name. 
Here we will use COALESCE() function which will return first Non Null values.

INSERT INTO `w2` (`ID`,`FNAME`,`SNAME`,`LNAME`,`SALARY`) VALUES (1,	'Har',	'preet',	'Singh',	30000);
INSERT INTO `w2` (`ID`,`FNAME`,`SNAME`,`LNAME`,`SALARY`) VALUES (2,	'Ashu',	NULL,	'Rana',	50000);
INSERT INTO `w2` (`ID`,`FNAME`,`SNAME`,`LNAME`,`SALARY`) VALUES (3,	NULL,	'Vinay',	'Thakur',	40000);
INSERT INTO `w2` (`ID`,`FNAME`,`SNAME`,`LNAME`,`SALARY`) VALUES (4,	NULL,	'Vinay',	NULL,	10000);
INSERT INTO `w2` (`ID`,`FNAME`,`SNAME`,`LNAME`,`SALARY`) VALUES (5,	NULL,	NULL,	'Rajveer',	60000);
INSERT INTO `w2` (`ID`,`FNAME`,`SNAME`,`LNAME`,`SALARY`) VALUES (6,	'Manjeet',	'Singh',	NULL,	60000);
*/

select case
when FNAME is not Null then FNAME
when FNAME is NULL and SNAME is not null then SNAME
when FNAME is null and SNAME is null and LNAME is not null then LNAME END
from w2;

use workout;

select *
from w2;