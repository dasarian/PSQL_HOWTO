CREATE TABLE genres (
    num INTEGER,
    genre VARCHAR (50)
);

CREATE TABLE groups (
    group_num INTEGER,
    group_name VARCHAR (50),
    start_year INTEGER
);

create TABLE artists (
    artist_num INTEGER,
    group INTEGER,
    genre INTEGER,
    surname VARCHAR (50),
    first_name VARCHAR (50),
    last_name VARCHAR (50),
);

INSERT INTO genres (num, genre)VALUES 
(1,'Rock'), 
(2,'Pop'), 
(3,'Classical'),
(4,'Electric');


INSERT INTO groups (group_name, start_year )VALUES
(1, 'Группа 1', 2000),
(2, 'Группа 2', 1995),
(3, 'Группа 3', 2010),
(4, 'Группа 4', 2015);


INSERT INTO artists (artist_num, group, genre, surname, first_name, last_name)VALUES
(1, 1, 2000, 'Иванович', 'Иван', 'Иванов'),
(2, 2, 1995, 'Петрович', 'Пётр', 'Петров'),
(3, 3, 2010, 'Алексевич', 'Алексей', 'кузнецов'),
(4, 4, 2025, 'Васильевич', 'Василий', 'Васильев');

