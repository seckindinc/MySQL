/*
Query to find employees who have 3rd highest salary

create table `workout`.`w6` (ID int, FNAME varchar(50), LNAME varchar(50), GENDER varchar(50), SALARY int(18), HIREDATE date);

INSERT INTO `w6` (`ID`,`FNAME`,`LNAME`,`GENDER`,`SALARY`,`HIREDATE`) VALUES (1,	'Rajveer','Singh'	,'Male'	,30000,	'2017/11/05');
INSERT INTO `w6` (`ID`,`FNAME`,`LNAME`,`GENDER`,`SALARY`,`HIREDATE`) VALUES (2,	'Manveer'	,'Singh'	,'Male',	50000,	'2017/11/05');
INSERT INTO `w6` (`ID`,`FNAME`,`LNAME`,`GENDER`,`SALARY`,`HIREDATE`) VALUES (3,	'Ashutosh'	,'Kumar'	,'Male'	,40000,	'2017/12/12');
INSERT INTO `w6` (`ID`,`FNAME`,`LNAME`,`GENDER`,`SALARY`,`HIREDATE`) VALUES (4,	'Ankita'	,'Sharma'	,'Female',	45000,	'2017/12/15');
INSERT INTO `w6` (`ID`,`FNAME`,`LNAME`,`GENDER`,`SALARY`,`HIREDATE`) VALUES (5,	'Vijay'	,'Kumar'	,'Male'	,50000	,'2018/01/12');
INSERT INTO `w6` (`ID`,`FNAME`,`LNAME`,`GENDER`,`SALARY`,`HIREDATE`) VALUES (6,	'Dilip'	,'Yadav'	,'Male'	,25000,	'2018/02/26');
INSERT INTO `w6` (`ID`,`FNAME`,`LNAME`,`GENDER`,`SALARY`,`HIREDATE`) VALUES (7,	'Jayvijay'	,'Singh'	,'Male',	30000,	'2018/02/18');
INSERT INTO `w6` (`ID`,`FNAME`,`LNAME`,`GENDER`,`SALARY`,`HIREDATE`) VALUES (8,	'Reenu'	,'Kumari'	,'Female'	,40000	,'2017/09/19');
INSERT INTO `w6` (`ID`,`FNAME`,`LNAME`,`GENDER`,`SALARY`,`HIREDATE`) VALUES (9,	'Ankit'	,'Verma'	,'Male'	,25000,	'2018/04/04');
INSERT INTO `w6` (`ID`,`FNAME`,`LNAME`,`GENDER`,`SALARY`,`HIREDATE`) VALUES (10,	'Harpreet'	,'Singh'	,'Male'	,50000,	'2017/10/10');

*/
use workout;

select *
from w6
where salary = (
select max(salary)
from w6
where SALARY < (
select max(salary)
from w6
where SALARY < (
select max(SALARY) as maks_salary
from w6)));

