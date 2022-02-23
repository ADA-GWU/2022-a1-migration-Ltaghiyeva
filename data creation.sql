create table STUDENTS(
    ST_ID   integer,
    ST_NAME varchar(15),
    ST_LAST varchar(15)
);
insert into STUDENTS (ST_ID , ST_NAME , ST_LAST)  values (1, 'Laman', 'Taghiyeva');
insert into STUDENTS (ST_ID , ST_NAME , ST_LAST) values (2, 'Orxan', 'Taghiyev');
insert into STUDENTS (ST_ID , ST_NAME , ST_LAST) values (3, 'Ailin', 'Baghirova');

select*from STUDENTS;


create table INTERESTS (
    STUDENT_ID integer,
    INTEREST varchar(15)
                       );
insert into INTERESTS (STUDENT_ID , INTEREST) values(1,'Tennis');
insert into INTERESTS (STUDENT_ID , INTEREST) values(1,'Literature');
insert into INTERESTS (STUDENT_ID , INTEREST) values(1,'Math');
insert into INTERESTS (STUDENT_ID , INTEREST) values(2,'Tennis');
insert into INTERESTS (STUDENT_ID , INTEREST) values(3,'Math');
insert into INTERESTS (STUDENT_ID , INTEREST) values(3,'Music');
insert into INTERESTS (STUDENT_ID , INTEREST) values(2,'Football');
insert into INTERESTS (STUDENT_ID , INTEREST) values(1,'Chemistry');
insert into INTERESTS (STUDENT_ID , INTEREST) values(3,'Chess');
select*from INTERESTS;