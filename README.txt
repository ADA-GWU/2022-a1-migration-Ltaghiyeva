# 2022-a1-migration-Ltaghiyeva
2022-a1-migration-Ltaghiyeva created by GitHub Classroom

For this assignment I have uploaded 3 sql files,which are data creation.sql,migration.sql and rollback.sql.
  By compiling “creation” file user will be able to create the data set.
 Firstly, user will run those queries,which create table called “STUDENTS” that will hold values for  ST_ID,ST_NAME_ST_LAST. 

create table STUDENTS(
    ST_ID   integer,
    ST_NAME varchar(15),
    ST_LAST varchar(15)
);

 Secondly,user must run following queries for adding values to the  columns.
 
 
insert into STUDENTS (ST_ID , ST_NAME , ST_LAST)  values (1, 'Laman', 'Taghiyeva');
insert into STUDENTS (ST_ID , ST_NAME , ST_LAST) values (2, 'Orxan', 'Taghiyev');
insert into STUDENTS (ST_ID , ST_NAME , ST_LAST) values (3, 'Ailin', 'Baghirova');
Lastly,to retrieve what we create user must run 
End result for Students table shall look like this.

st_id st_name  st_last
1   Laman      Taghiyeva
2   Orxan      Taghiyev
3   Ailin      Baghirova

Now,we should create our “Interests” table. Again for doing this user should compile following queries which perform same functions we did while creating ”Students” table.
create table INTERESTS (
    STUDENT_ID integer,
    INTEREST varchar(15)
                       );
insert into INTERESTS (STUDENT_ID , INTEREST) values(1,'Tennis');
insert into INTERESTS (STUDENT_ID , INTEREST) values(1,'Literature');
insert into INTERESTS (STUDENT_ID , INTEREST) values(1,'Math'

insert into INTERESTS (STUDENT_ID , INTEREST) values(2,'Tennis');
insert into INTERESTS (STUDENT_ID , INTEREST) values(3,'Math');
insert into INTERESTS (STUDENT_ID , INTEREST) values(3,'Music');
insert into INTERESTS (STUDENT_ID , INTEREST) values(2,'Football');
insert into INTERESTS (STUDENT_ID , INTEREST) values(1,'Chemistry');
insert into INTERESTS (STUDENT_ID , INTEREST) values(3,'Chess');

To retrieve “INTERESTS” tables at the end we will execute 
select*from INTERESTS;

1,Tennis
1,Literature
1,Math
2,Tennis
3,Math
3,Music
2,Football
1,Chemistry
3,Chess

 Now we switch to “migration.sql” file. In the first part of the migration user will be able to 
 rename the STUDENTS.ST_ID to STUDENTS.STUDENT_ID and change the length of STUDENTS.ST_NAME and STUDENTS.ST_LAST. 
 For doing this first I select the table with alter table students,and use rename command to rename ST_ID to STUDENT_ID.

alter table students
    rename column st_id to STUDENT_ID;
Now to change the length of STUDENTS.ST_NAME and STUDENTS.ST_LAST from 15 to 30 user will again compile alter commands
alter t able STUDENTS
    alter column ST_NAME type varchar(30);
alter table STUDENTS
    alter column ST_LAST type varchar (30);
In the 2nd part of migration user will change the Change the name of the INTERESTS.INTEREST to INTERESTS and its type to array of strings. 
In this part instead of using rename command I create new column called Interests,because we are expected to change array values also.
To add INTERESTS column user will execute following commands. 
alter table INTERESTS
add column INTERESTS text[];
To insert values accordingly user now execute this part
insert into INTERESTS(STUDENT_ID,INTERESTS) values ('1','{{"Tennis"}, { "Literature"}, {"Math"}, { "Chemistry"} }');
insert into interests (STUDENT_ID , INTERESTS)  values ('2','{{"Tennis"}, { "Football"}}');
insert into interests (STUDENT_ID , INTERESTS)  values ('3','{{"Math"}, { "Music"}, {"Chess"}}');
  We don’t need Interest column anymore,therefore, we should drop Interest by executing 
 alter table interests
drop column INTEREST
If user retrieve the table,it will be shown that rows that previously created have NULL values,and to avoid them user shall execute 
delete from INTERESTS where interests is null;
