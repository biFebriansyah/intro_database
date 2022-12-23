CREATE TABLE movie (
	movie_id SERIAL PRIMARY KEY,
	movie_name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE users (
	users_id SERIAL PRIMARY KEY,
	users_name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE booking (
	booking_id SERIAL NOT NULL,
	booking_date DATE NOT NULL,
    movie_id INT NOT NULL,
    users_id INT NOT NULL
);
