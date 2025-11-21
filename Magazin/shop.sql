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

