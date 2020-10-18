USE tugas_weekend;

CREATE TABLE ramen_ratings (
	Review INT(6),
	Brand VARCHAR(50),
	Variety VARCHAR(200),
	Style VARCHAR(10),
	Country VARCHAR(50),
	Stars FLOAT,
	Top_Ten VARCHAR(5)
);

LOAD DATA INFILE 'F:/BKPSDM/mysql/ramen-ratings.csv'

INTO TABLE ramen_ratings

FIELDS TERMINATED BY ','

ENCLOSED BY '"'

LINES TERMINATED BY '\n'

IGNORE 1 ROWS;

SELECT * FROM ramen_ratings WHERE Stars > 4;

SELECT * FROM ramen_ratings WHERE Country = 'Japan';

SELECT Review, Brand, UPPER(Variety) AS Variety, Style, Country, Stars, Top_Ten FROM ramen_ratings;
