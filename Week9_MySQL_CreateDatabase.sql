create database if not exists socialmedia_project9;
use socialmedia_project9;
drop table if exists posts;
drop table if exists users;
drop table if exists comments;

create table users (
	user_id int not null auto_increment,
	username varchar(20) not null,
	email	varchar(60) not null,
	password varchar(30) not null,
	birth_date date not null,
	creation datetime not null,
	primary key (user_id)
);

create table posts (
	post_id int not null auto_increment,
	time_of_post datetime not null,
	message_content tinytext not null,
	number_views int(8) not null,
    user_id int not null,
	primary key (post_id),
	foreign key (user_id) references users (user_id)
);

create table comments (
	comment_id int not null auto_increment,
	time_of_comment datetime not null,
	comment_content tinytext not null,
	user_id int not null,
	post_id int not null,	
    primary key (comment_id),
	foreign key (user_id) references users (user_id),
	foreign key (post_id) references posts (post_id)
);