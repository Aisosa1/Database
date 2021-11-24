-- insert into the human table
insert into human values
( 01,'john doe', 18,'M', '0+', 'AA');

insert into human values( 
02, 'will bruce', 23, 'M', 'B+', 'AS');

insert into human values(
03, 'shawn michaels', 25, 'M', '0+', 'AA');

insert into human values( 
04, 'jane doe', 18, 'F', 'B-', 'AS');

insert into human values(
 05, 'ken green', 20, 'M', '0+', 'SS');
 
 insert into human values( 06, 'sam lee', 19, 'M', 'A-', 'AS');
 
 insert into human values( 07, 'agbakaiaka ajala', 22, 'M', 'O', 'AA');
 
 insert into human values( 08, 'Ebuka Idoya', 24, 'M', 'O+', 'AA');
 
 insert into human values( 09, 'Adamu Aruna', 29, 'M', 'O+', 'AS');
 
 insert into human values( 10, 'bisola wayans', 18, 'F', 'O+', 'AA');
 
 
 
 
 -- insert method2
 -- insert into the games table
 
 insert into games values
 (010,'sophia the first', 50.34, 10, 'best buy store'),
 (011, 'God of war 3', 70.25, 5, 'jumia stores'),
 (012, 'Rocketeer', 50.34, 10, 'Konga'),
 (013, 'god of war 2', 60.99, 5, 'jumia stores'),
 (014, 'Call of Duty', 75.34, 10, 'Best Buy Store'),
 (015, 'Walking Dead', 40.24, 8, 'Konga'),
 (016, 'Van Helsing', 60.99, 10, 'Konga'),
 (017, 'GTA', 50.34, 10, 'Atlantics Store'),
 (018, 'Hitman 3', 72.34, 10, 'Andromeda Store'),
 (019, 'clash of Titans', 50.34, 10, 'atlantean store');
 
 
 insert into gamepurchase(humanId, gameId) values
 (01, 011),
 (02, 010),
 (03, 012),
(04, 013),
(05, 014),
(06, 015),
 (01, 016),
 (07, 017),
 (01, 018),
 (02, 019);
 use demo;
 update human
 set age = 23, name = 'shawn michael'
where name = 'shawn michael';
-- where humanId = 03;

update games
set price = 88.90
where gamename = 'god of war 2';


-- to add a column to an existing table --
alter table games
add gamegenre varchar (45) default ('None');

-- to drop a column to an existing table --
alter table games
drop column gamegenre;
 
 update games
 set gamegenre = 'Action'
 where gameid = 013;
 
 -- to drop a column to an existing table --
 alter table games
 drop column gamegenre;
 
 -- to delete from game purchase --
 delete from gamepurchase
 where humanid = 2;
 
 -- to delete all in a table --
 delete from human;
 
 -- add primary key to an existing table --
 create table persons(
 ID int NOT NULL,
 LastName varchar(255) Not Null,
 FirstName varchar(255),
 Age int
 );
 
 -- add the primary key --
 alter table persons
 add constraint pk_person primary key (ID, LASTNAME);
 
 -- for sql server --
 alter table persons
 add primary key (ID);
 
 -- remove primary key constraint from a table --
 alter table persons
 drop primary key;
 
 -- for sqlserver --
 alter table persons
 drop constraint pk_person;
 
 -- create users
 -- switch database to 'mysql'
 -- first display all users in the server
 
 
 select * from games;