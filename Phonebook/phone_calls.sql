How table will show only operators name?
CREATE TABLE operators (
    num INTEGER,
    operator_name VARCHAR(50)
);

INSERT INTO operators (num, operator_name) VALUES
(1,'МТС'),
(2,'Билайн'),
(3,'Мегафон'),
(4,'Теле2');


CREATE TABLE calls (
    phone_number VARCHAR(20),
    start_time TIMESTAMP,
    end_time TIMESTAMP
);

INSERT INTO calls (phone_number, start_time, end_time) VALUES
('+79991234567', '2025-11-10 09:15', '2025-11-10 09:23'),
('+79167778899', '2025-09-03 14:00', '2025-09-03 14:12'),
('+79263334455', '2025-10-20 18:40', '2025-10-20 18:58'),
('+79001230045', '2025-08-12 07:55', '2025-08-12 08:05'),
('+79851230987', '2025-07-30 12:10', '2025-07-30 12:24');


CREATE TABLE subscribers (
    phone_number VARCHAR(20),
    last_name VARCHAR(50),
    first_name VARCHAR(50),
    middle_name VARCHAR(50),
    operator_name INTEGER
);

INSERT INTO subscribers (phone_number, last_name, first_name, middle_name, operator_name) VALUES
('+79991234567', 'Петров', 'Илья', 'Андреевич', 2),
('+79167778899', 'Сидорова', 'Марина', 'Владимировна', 3),
('+79263334455', 'Ким', 'Виктор', 'Олегович', 4),
('+79001230045', 'Орлова', 'Екатерина', 'Сергеевна', 1),
('+79851230987', 'Гаврилов', 'Матвей', 'Игоревич', 2);


SELECT * From subscribers;