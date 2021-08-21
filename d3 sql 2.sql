CREATE TABLE performers(
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	genres VARCHAR(100) NOT NULL
);

CREATE TABLE albums(
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	relese_date INT NOT NULL,
	awards VARCHAR(100) NOT NULL
);

CREATE TABLE genres(
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL
);

CREATE TABLE collections(
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	relese_date INT NOT NULL
);

CREATE TABLE tracks(
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	duration INT NOT NULL,
	album_id INT NOT NULL REFERENCES albums(id)
	);
	
CREATE TABLE IF NOT EXISTS performers_albums(
	id SERIAL PRIMARY KEY,
	performer_id INT NOT NULL REFERENCES performers(id),
	album_id INT NOT NULL REFERENCES albums(id)
	);

CREATE TABLE IF NOT EXISTS performers_genres(
	id SERIAL PRIMARY KEY,
	performer_id INT NOT NULL REFERENCES performers(id),
	genre_id INT NOT NULL REFERENCES genres(id)
	);

CREATE TABLE IF NOT EXISTS tracks_collections(
	id SERIAL PRIMARY KEY,
	track_id INT NOT NULL REFERENCES tracks(id),
	collection_id INT NOT NULL REFERENCES collections(id)
	);

