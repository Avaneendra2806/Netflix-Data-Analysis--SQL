-- Creating database for netflix Data Analysis
create database netflix_db;
use netflix_db;

CREATE TABLE netflix_titles (
    show_id VARCHAR(10) PRIMARY KEY,
    type VARCHAR(20) NOT NULL,
    title VARCHAR(255) NOT NULL,
    director VARCHAR(255),
    cast TEXT,
    country VARCHAR(255),
    date_added VARCHAR(50),
    release_year INT NOT NULL,
    rating VARCHAR(20),
    duration VARCHAR(50),
    listed_in VARCHAR(255)
);

select * from netflix_titles;

drop table netflix_titles;

SHOW CREATE TABLE netflix;
SELECT COUNT(*) FROM netflix;
DROP TABLE netflix;

SELECT VERSION();

SHOW GLOBAL VARIABLES LIKE 'local_infile';

LOAD DATA LOCAL INFILE 'C:/Users/avane/Desktop/Github Data Analytics Projects/Netflix_Titles.csv'
INTO TABLE netflix
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

SHOW GLOBAL VARIABLES LIKE 'local_infile';

DROP TABLE netflix;

LOAD DATA LOCAL INFILE "C:/Users/avane/Desktop/Github Data Analytics Projects/Netflix_Titles.csv"
INTO TABLE netflix_titles
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;










