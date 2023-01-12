DROP schema IF EXISTS coursera;
CREATE schema coursera;

DROP DATABASE IF EXISTS coursera;
CREATE DATABASE coursera;
USE coursera;

create table cyclic (
	ride_id varchar(50),
    rideable_type varchar(50),
    started_at timestamp,
    ended_at timestamp,
    start_station_name varchar(50),
    start_station_id varchar(50),
    end_station_name varchar(50),
    end_station_id varchar(50),
    start_lat decimal(10,8),
    strat_lng decimal(10,8),
    end_lat decimal(10,8),
    end_lng decimal(10,8),
    memeber_casual varchar(50));

SET SQL_SAFE_UPDATES = 0;
    
