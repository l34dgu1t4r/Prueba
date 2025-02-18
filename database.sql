CREATE DATABASE IF NOT EXISTS apilaravel;
USE apilaravel;

CREATE TABLE users(
id 		int(255) auto_increment not null,
email varchar(255),
role	varchar(20),
name	varchar(255),
surname	varchar(255),
password varchar(255),
created_at datetime DEFAULT NULL,
updated_at datetime DEFAULT NULL,
remember_token varchar(255),
CONSTRAINT pk_users PRIMARY KEY(id)
)ENGINE=InnoDb;

CREATE TABLE cars(
id 		int(255) auto_increment not null,
user_id int(255) not null,
title	varchar(255),
description text,
price	varchar(30),
status  varchar(30),
created_at datetime DEFAULT NULL,
updated_at datetime DEFAULT NULL,
CONSTRAINT pk_cars PRIMARY KEY(id),
CONSTRAINT fk_cars_users FOREIGN KEY(user_id) REFERENCES users(id)
)ENGINE=InnoDb;

CREATE TABLE menus(
id 		int(255) auto_increment not null,
user_id int(255) not null,
title	varchar(255),
route    varchar(255),
imagen	varchar(255),
status  varchar(30),
created_at datetime DEFAULT NULL,
updated_at datetime DEFAULT NULL,
CONSTRAINT pk_menus PRIMARY KEY(id),
CONSTRAINT fk_menus_users FOREIGN KEY(user_id) REFERENCES users(id)
)ENGINE=InnoDb;

CREATE TABLE cia(
id int(255) auto_increment not null,
user_id int(255) not null,
nombre_cia	varchar(255),
direccion    text(1000),
rif	varchar(255),
tlf  varchar(30),
created_at datetime DEFAULT NULL,
updated_at datetime DEFAULT NULL,
CONSTRAINT pk_cia PRIMARY KEY(id),
CONSTRAINT fk_cia_users FOREIGN KEY(user_id) REFERENCES users(id)
)ENGINE=InnoDb;