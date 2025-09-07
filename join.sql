use pratice;
create table client (
id int primary key,
name varchar(100),
dish varchar(100),
table_no varchar(20)
 );
 
insert into client values(1,'baskar','dosa','1');
insert into client values(2,'ram','idly','2');
insert into client values(3,'khan','briyani','3');
 
 create table cooking(
 cook_id int primary key,
 client_id int,
 foreign key (client_id) references client(id)
 );
 
insert into cooking values(1,1);
insert into cooking values(2,2);

select 
f.name,
f.dish,
f.table_no from client f join cooking c on f.id = c.cook_id;


select 
f.name,
f.dish,
f.table_no , c.cook_id from client f left join cooking c on f.id = c.cook_id;

select 
f.name,
f.dish,
f.table_no , c.cook_id from client f right join cooking c on f.id = c.cook_id;

