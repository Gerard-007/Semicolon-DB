use user_db;

create table users (
	id serial primary key,
    name varchar(100),
    email varchar(225) unique
);