--1.Migration for the STUDENTS--
alter table students
    rename column st_id to STUDENT_ID;

alter table STUDENTS
    alter column ST_NAME type  varchar(30);
alter table STUDENTS
    alter column ST_LAST type  varchar(30);
select*
from students;


--2.Migration for Interests--
select* from INTERESTS;
alter table INTERESTS
add column INTERESTS text[];

insert into INTERESTS(STUDENT_ID,INTERESTS) values ('1','{{"Tennis"}, { "Literature"}, {"Math"}, { "Chemistry"} }');
insert into interests (STUDENT_ID , INTERESTS)  values ('2','{{"Tennis"}, { "Football"}}');
insert into interests (STUDENT_ID , INTERESTS)  values ('3','{{"Math"}, { "Music"}, {"Chess"}}');
alter table interests
drop column INTEREST;
select*from INTERESTS;
delete from INTERESTS where interests is null;
select*from INTERESTS;