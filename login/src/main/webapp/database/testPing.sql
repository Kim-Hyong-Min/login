create database loginServer;

create table users(
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

insert into users (id, pw, name, year, month, day, gender, email, phone) values('qwer', '1234', '김형민', '1990', '10', '12', '남자', '1234@naver.com', '123456');
