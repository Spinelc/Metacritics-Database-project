/*
This file creates all tables for the movie database.
The tables are based on the ERD that has been created.
All create tables statements without Carola commented were written by Carola and Mees

*/

CREATE TABLE age_rating_table(
    rating_id INT PRIMARY KEY,
    rating VARCHAR(11) -- rating column in meta had a maximum length of 11.
);

CREATE TABLE genre_table (
    genre_id INT PRIMARY KEY,
    genre VARCHAR(19) -- the column genre in sales had a maximum length of 19.
);

CREATE TABLE role_table(
    role_id INT PRIMARY KEY,
    reviewer_role VARCHAR(6) -- expert and user will be used. expert = 6 characters.
);

CREATE TABLE review_table(
    review_id INT PRIMARY KEY,
    posemo FLOAT(8), -- positive emotions column in expert_reviews ranges from -1 to +1.
    negemo FLOAT(8), -- negative emotions column in expert_reviews ranges from -1 to +1.
    overall_sentiment VARCHAR(8),
    role_id INT,

    FOREIGN KEY(role_id)
        REFERENCES role_table(role_id)
);


CREATE TABLE movie_table(  -- Carola
    movie_id VARCHAR(73) PRIMARY KEY, -- Max length of movie_id in metaclean file
    title VARCHAR(106), -- title column in meta had a maximum length of 106.
    release_date DATE, -- We take the release date from meta because it has the least missing values and is already in the right format.
    metascore INT,
    userscore FLOAT(8), -- user score column in meta has a small range of decimal numbers.
    production_budget INT,
    worldwide_box_office INT,
    rating_id INT,
    review_id INT,

    FOREIGN KEY (rating_id) REFERENCES age_rating_table (rating_id), -- Added by Martijn
    FOREIGN KEY (review_id) REFERENCES review_table (review_id)) -- Added by Martijn
;

CREATE TABLE movie_genre_junction_table(  -- Carola
    movie_id VARCHAR(73), -- Max length of movie_id in metaclean file
    genre_id INT NOT NULL,
    CONSTRAINT PK_movie_genre_junction_table PRIMARY KEY(
        movie_id,
        genre_id
    ),

    FOREIGN KEY(movie_id)
        REFERENCES movie_table(movie_id),

    FOREIGN KEY(genre_id)
        REFERENCES genre_table(genre_id))
;

