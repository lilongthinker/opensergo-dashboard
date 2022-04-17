-- create db
drop database if exists opensergo;
create database opensergo;

-- create table
use opensergo;

drop table if exists `application`;
CREATE TABLE `application`
(
    `id`   bigint(20) NOT NULL AUTO_INCREMENT,
    `name` varchar(100) NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `uniq_name` (`name`)
) DEFAULT CHARSET=utf8mb4;


drop table if exists `metadata`;
CREATE TABLE `metadata`
(
    `id`   bigint(20) NOT NULL AUTO_INCREMENT,
    `sha512` char(128) NOT NULL,
    `app_name` varchar(100) NOT NULL,
    `metadata` mediumtext NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `uniq_name` (`app_name`)
) DEFAULT CHARSET=utf8mb4;


-- init data
insert into application values(123,'first_app');
insert into application values(234,'second_app');
