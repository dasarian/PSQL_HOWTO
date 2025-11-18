CREATE TABLE apartmentss (
    id SERIAL PRIMARY KEY,
    city VARCHAR(100) NOT NULL,
    street VARCHAR(100) NOT NULL,
    house_number VARCHAR(20) NOT NULL,
    apartment_number INTEGER NOT NULL,
    rooms INTEGER NOT NULL,
    area FLOAT NOT NULL,
    price INTEGER NOT NULL
);


INSERT INTO apartments (city, street, house_number, apartment_number, rooms, area, price)
VALUES
    ('Москва', 'Ленина', '10', 15, 2, 55.5, 50000),
    ('Москва', 'Пушкина', '5', 3, 1, 35.0, 35000),
    ('Санкт-Петербург', 'Невский проспект', '100', 12, 3, 75.0, 70000),
    ('Москва', 'Гагарина', '25', 7, 2, 60.0, 55000),
    ('Казань', 'Баумана', '15', 10, 4, 90.0, 80000);



SELECT city, street, house_number, apartment_number, price
FROM apartmentss
ORDER BY price ASC
LIMIT 1;


SELECT city, street, house_number, apartment_number, area
FROM apartmentss
ORDER BY area DESC
LIMIT 1;


SELECT city, street, house_number, apartment_number, rooms, area, price
FROM apartmentss
WHERE rooms = 2;


