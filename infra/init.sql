SET CHARACTER_SET_CLIENT = utf8;
SET CHARACTER_SET_CONNECTION = utf8;
create database jwtapp;

create table jwtapp.users ( id int not null auto_increment primary key, name varchar(64) not null, password varchar(256) not null, email varchar(128) not null unique, secretword text, created_at timestamp not null default current_timestamp, updated_at timestamp not null default current_timestamp);
create table jwtapp.posts ( id int not null auto_increment primary key, text varchar(256) not null, user_id int not null, created_at timestamp not null default current_timestamp, updated_at timestamp not null default current_timestamp);
insert into jwtapp.users (name,password,email,secretword) values ("gopher","golangAwesome","gopher@golang.go","Gopher is very cool");
insert into jwtapp.posts (text,user_id) values ("Golang is Immortal!!!",1);
