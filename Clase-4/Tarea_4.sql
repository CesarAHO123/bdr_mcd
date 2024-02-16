create database imdb;
use imdb ;
CREATE TABLE akas (
    titleid VARCHAR(20) PRIMARY KEY,
    title VARCHAR(100),
    region VARCHAR(10),
    language VARCHAR(30)
);

create table crew (crewid VARCHAR(20)  primary key ,directors varchar(200), writers varchar(200), titleid VARCHAR(20), foreign key (titleid) references akas(titleid));
create table ratings (ratingid VARCHAR(20)  primary key ,average float, numVotes int, titleid VARCHAR(20), foreign key (titleid) references akas(titleid));
create table principals (principalsid VARCHAR(20)  primary key ,name varchar(100), character_name varchar(100), titleid VARCHAR(20), foreign key (titleid) references akas(titleid));
create table episode (episodeid VARCHAR(20)  primary key ,season varchar(50), epnumber int, titleid VARCHAR(20), foreign key (titleid) references akas(titleid));
create table basics (basicsid VARCHAR(20)  primary key ,title varchar(100), type varchar(100), genre varchar(100), titleid VARCHAR(20), foreign key (titleid) references akas(titleid));

INSERT INTO akas (titleid, title, region, language) VALUES
('M1', 'The Shattered Dreams', 'US', 'English'),
('M2', 'Whispers in the Wind', 'UK', 'English'),
('M3', 'Eternal Echoes', 'FR', 'French'),
('M4', 'Serenade of Shadows', 'ES', 'Spanish');

INSERT INTO crew (crewid, directors, writers, titleid) VALUES
('C5', 'Alexandra Filmmaker', 'Sam Scriptwriter', 'M1'),
('C6', 'Christopher Director', 'Amanda Author', 'M2'),
('C7', 'Gabriel Moviemaker', 'Sophie Scribe', 'M3'),
('C8', 'Victoria Visionary', 'Michael Wordsmith', 'M4');

INSERT INTO ratings (ratingid, average, numVotes, titleid) VALUES
('R5', 7.8, 800, 'M1'),
('R6', 6.5, 600, 'M2'),
('R7', 8.2, 900, 'M3'),
('R8', 7.0, 700, 'M4');

INSERT INTO principals (principalsid, name, character_name, titleid) VALUES
('P5', 'Emily Star', 'Isabella', 'M1'),
('P6', 'Jack Moon', 'Nathan', 'M2'),
('P7', 'Sophia Sun', 'Elena', 'M3'),
('P8', 'Matthew Sky', 'Adrian', 'M4');

INSERT INTO episode (episodeid, season, epnumber, titleid) VALUES
('E5', 'Season 1', 1, 'M1'),
('E6', 'Season 1', 2, 'M1'),
('E7', 'Season 1', 1, 'M2'),
('E8', 'Season 1', 2, 'M2');

INSERT INTO basics (basicsid, title, type, genre, titleid) VALUES
('B5', 'The Shattered Dreams', 'Movie', 'Drama', 'M1'),
('B6', 'Whispers in the Wind', 'Movie', 'Mystery', 'M2'),
('B7', 'Eternal Echoes', 'Movie', 'Romance', 'M3'),
('B8', 'Serenade of Shadows', 'Movie', 'Thriller', 'M4');


