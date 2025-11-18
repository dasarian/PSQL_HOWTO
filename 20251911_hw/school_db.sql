CREATE TABLE teachers (
    surname VARCHAR(50),
    first_name VARCHAR(50)
);

CREATE TABLE subjects (
    subject VARCHAR(100),
    hours INTEGER
);


CREATE TABLE students (
    surname VARCHAR(50),
    first_name VARCHAR(50),
    class VARCHAR(10)
);

INSERT INTO teachers (surname, first_name) VALUES
('Петров', 'Вася'),
('Сидорова', 'Аня');

INSERT INTO subjects (subject, hours) VALUES
('Математика', 56),
('Русский язык', 48);

INSERT INTO students (surname, first_name, class) VALUES
('Петров', 'Вася', '2А'),
('Сидорова', 'Аня', '3Б');

SELECT * FROM teachers;
SELECT * FROM subjects;
SELECT * FROM students;



