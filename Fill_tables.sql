-- Should be working, we will fix it later after we created all csv files
COPY genre_table(genre_id, genre)
FROM 'C:\Users\carol\OneDrive\Desktop\GitProjects\DatabaseManagementB5\Cleaned data\genre_table.csv'
DELIMITER ';'
CSV HEADER;


COPY age_rating_table(rating, rating_id)
FROM 'C:\Users\carol\OneDrive\Desktop\GitProjects\DatabaseManagementB5\Cleaned data\age_rating_table.csv'
DELIMITER ';'
CSV HEADER;


COPY age_rating_table FROM '/Cleaned data/age_rating_table.csv' WITH (FORMAT CSV, HEADER);

