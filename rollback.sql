alter table STUDENTS
add column ST_ID integer ;
update STUDENTS
SET ST_ID=STUDENT_ID;

alter table STUDENTS
drop column STUDENT_ID;
select* from STUDENTS;

alter table STUDENTS
alter column ST_NAME type varchar(15);
alter table STUDENTS
alter column ST_LAST type varchar(15);
select ST_ID,ST_NAME,ST_LAST
FROM STUDENTS;
--Rollback Interests;
alter table INTERESTS
add column interest varchar(15);
alter table INTERESTS
drop column interests;
insert into INTERESTS (STUDENT_ID , INTEREST) values(1,'Tennis');
insert into INTERESTS (STUDENT_ID , INTEREST) values(1,'Literature');
insert into INTERESTS (STUDENT_ID , INTEREST) values(1,'Math');
insert into INTERESTS (STUDENT_ID , INTEREST) values(2,'Tennis');
insert into INTERESTS (STUDENT_ID , INTEREST) values(3,'Math');
insert into INTERESTS (STUDENT_ID , INTEREST) values(3,'Music');
insert into INTERESTS (STUDENT_ID , INTEREST) values(2,'Football');
insert into INTERESTS (STUDENT_ID , INTEREST) values(1,'Chemistry');
insert into INTERESTS (STUDENT_ID , INTEREST) values(3,'Chess');
delete from INTERESTS where interest is null;
select*from INTERESTS;




