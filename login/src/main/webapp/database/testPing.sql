create database loginServer;

create table loginServer.users(
	code integer primary key auto_increment,
	id varchar(30) not null,
	pw varchar(30) not null,
	name varchar(30) not null,
	year varchar(30) not null,
	month varchar(30) not null,
	day varchar(30) not null,
	gender varchar(30) not null,
	email varchar(30) not null,
	phone varchar(30) not null,
	regDate datetime not null default current_timestamp
	);

use loginServer;

insert into users (id, pw, name, year, month, day, gender, email, phone) values('qwer', '1234', '김형민', '1990', '10', '12', '남자', '1234@naver.com', '123456');


use loginServer;

create table board(
	code integer primary key auto_increment,
    title varchar(200),
    content varchar(5000),
    id varchar(20),
	passward varchar(20),
    view integer default 0,
	`like` integer default 0,
    date datetime not null default current_timestamp
);

use loginServer;

insert into board (title, content, id, password, date) values('테스트', '테스트용 입니다.', 'qwer', '1234', current_timestamp());

select * from board;