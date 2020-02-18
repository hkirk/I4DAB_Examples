CREATE TABLE persons (
 cpr int,
 firstname varchar(20),
 lastname varchar(20),
)

 exec sp_columns persons

CREATE TABLE teachers (
 cpr int PRIMARY KEY,
 firstname varchar(20) NOT NULL,
 lastname varchar(20) ,
)

alter table teachers add birthday varchar(20) default '';

create table office (
 id int,
 building varchar(20),
 teacher_cpr int 
 FOREIGN KEY REFERENCES teachers(cpr)
)

 
insert into teachers values (2, 'henrik', 'kirk', 'dsaf')
insert into office values (1, 'dsaf', 2)

DELETE FROM teachers where cpr = 2

alter table teachers drop column cpr;

select cpr, birthday, firstname from teachers where cpr > 2;

UPDATE teachers set firstname = 'hans' where cpr = 1234

 
