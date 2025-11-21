CREATE TABLE Product(
    num INTEGER,
    Category_name VARCHAR (50)
    );

INSERT INTO Product (num, Category_name)VALUES
(1,'мясное'), 
(2,'бакалея'), 
(3,'молочное'), 
(4,'специи'), 
(5,'овощи');

select * From product; 

 

CREATE TABLE Units(
    num INTEGER,
    Unit_name varchar (50)
);

INSERT INTO Units (num, Unit_name)VALUES
(1,'unit'),
(2,'kilogram'),
(3,'liter');

CREATE TABLE Products(
    Product_name varchar (50),
    unit INTEGER,
    Quantity INTEGER,
    per_piece INTEGER,
    Category INTEGER
);

INSERT INTO Products (Product_name, unit, Quantity, per_piece, Category)VALUES
('молоко', 3, 10, 100, 1),
('говядина',2, 15, 800, 2);

select * from products;

select category_name, product_name, quantity, unit_name, per_piece, per_piece*quantity as sum
from products, units, product
where units.num = unit and product.num=category;

---------------------------------------------------------

CREATE TABLE Product(
    id SERIAL PRIMARY KEY,
    Category_name VARCHAR (50)
    );

INSERT INTO Product (Category_name)VALUES
('мясное'), 
('бакалея'), 
('молочное'), 
('специи'), 
('овощи');
 


CREATE TABLE Units(
    id SERIAL PRIMARY KEY,
    Unit_name varchar (50)
);

INSERT INTO Units (Unit_name)VALUES
('unit'),
('kilogram'),
('liter');


CREATE TABLE Products(
    id SERIAL PRIMARY KEY,
    Product_name varchar (50),
    unit INTEGER,
    Quantity INTEGER,
    per_piece INTEGER,
    Category INTEGER
);


INSERT INTO Products (Product_name, unit, Quantity, per_piece, Category)VALUES
('молоко', (select id from units where unit_name='liter'), 10, 100, (select id from product where category_name='молочное')),
('говядина',(select id from units where unit_name='kilogram'), 15, 800, (select id from product where category_name='мясное')),
('сахар',(select id from units where unit_name='kilogram'), 20, 50, (select id from product where category_name='бакалея')),
('перец черный',(select id from units where unit_name='unit'), 50, 200, (select id from product where category_name='специи')),
('картофель',(select id from units where unit_name='kilogram'), 100, 30, (select id from product where category_name='овощи'));


select * from products;


select category_name, product_name, quantity, unit_name, per_piece, per_piece*quantity as sum
from products, units, product
where units.id = unit and product.id=category;

