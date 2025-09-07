create database college;
use college;
create table st(
name_ varchar(100),
department varchar(100),
marks_scored int
);
alter table st  add column age int(12);
alter table st change department dpt varchar(100);
alter table st change marks_scored marks_scored float(10);
insert into st values ("baskar","computer science",21,90);
insert into st values ("kumar","chemistry",21,80);
insert into st values ("robin","tamil",21,100);
insert into st values ("kishore","maths",21,100);
select * from st;
alter table st add sno int(12) primary key auto_increment;
desc st;
update st set age=21 where sno;
update st set marks_scored =100 where sno;
delete from st where sno=4; 
truncate st;




