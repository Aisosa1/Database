create schema demo;
use dhumanemo;
create table Human(
 `humanid` int(10) not null,
 `name` varchar(10) not null,
`age` int(3) not null,
`gender` varchar(1) not null,
`bloodtype` varchar(3) not null,
genotype varchar(3) not null,

constraint human_pk primary key(humanid)
);

create table Games(
`gameId` int(3) not Null,
`Gamename` varchar(30) not null,
`price` numeric(4,2) not null,
`quantity` int(3) not null,
`location` varchar(25) not null,
constraint Games_pk primary key(gameid)



);

-- game purchase table
 create table GamePurchase(
`humanId` int(10) Not Null,
`gameId` int(3) Not Null,

-- surrogate colunm
`orderdate` timestamp NOT NULL Default current_timestamp,
constraint Order_pk primary key(humanId, gameId),
constraint human_fk foreign key(humanId)
references Human(humanId),
constraint games_fk foreign key(gameId)
references Games(gameId)

);