create table customer(
customer_id serial primary key,
first_name varchar(20) not null,
last_name varchar(20),
email varchar(50) not null,
premium_accaunt boolean default false,
username varchar(20) not null,
reward_points integer default 0,
customer_age integer not null,
passward_hash varchar(20)
);

create table movie(
movie_id serial primary key,
title varchar(50) not null,
movie_length interval not null,
description text not null,
rating varchar(5)
);

create table showtime(
showtime_id serial primary key,
start_time timestamp not null,
theater varchar(5) not null,
movie_id integer not null,
foreign key(movie_id) references movie(movie_id)
);

create table ticket(
tiket_id serial primary key,
seat varchar(5) not null,
price numeric(5, 2) not null,
customer_id integer,
foreign key(customer_id) references customer(customer_id),
showtime_id integer,
foreign key(showtime_id) references showtime(showtime_id)
);