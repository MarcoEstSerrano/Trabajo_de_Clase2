CREATE DATABASE PriceAutoSales;

USE PriceAutoSales;

CREATE TABLE users (
	id int not null,
    user_name varchar(50),
    email varchar(50),
    pwd varchar(100),
    creation_date datetime,
    user_status char,
    PRIMARY KEY (id)
);

INSERT INTO users VALUES (1, "Braulio Sandi", "brav88@hotmail.com", "Admin$1234", CURDATE(), 1);
INSERT INTO users VALUES (2, "Jason Taylor", "jtaylor@gmail.com", "Admin$1234", CURDATE(), 1);

SELECT * FROM users WHERE email = "brav88@hotmail.com" AND pwd = "Admin$1234" AND user_status = 1;

CREATE TABLE cars (
	id int not null,
    brand varchar(50),
    model varchar(50),
    man_year int,
    color varchar(50),
    cc_engine varchar(50),
    fuelType varchar(50),
    mileage int,
    photo varchar(500),
    PRIMARY KEY (id)
);

INSERT INTO cars VALUES(1, "Hyundai", "Tucson", 2022, "White", "1600 Turbo", "Gasoline", 80000, "Images/1.jpg");
INSERT INTO cars VALUES(2, "Mitsubishi", "Montero", 2024, "Black", "2500", "Diesel", 32000, "Images/2.jpg");

SELECT * FROM cars;
INSERT INTO cars (brand, model, man_year, color, cc_engine, fuelType, mileage, photo) VALUES ("Audi", "r8", 2026, "White",
 "1600 Turbo", "Gasoline", 80000, "");
 
 INSERT INTO cars (brand, model, man_year, color, cc_engine, fuelType, mileage, photo) VALUES ("Lambo", "Veneno", 2026, "green",
 "1600 Turbo", "Gasoline", 80000, "");

CREATE TABLE Brands (
	Marca varchar(50)
);

INSERT INTO Brands (Marca) VALUES
('Toyota'),
('Honda'),
('Ford'),
('Chevrolet'),
('BMW'),
('Mercedes-Benz'),
('Audi'),
('Nissan'),
('Volkswagen'),
('Hyundai'),
('Kia'),
('Porsche'),
('Mazda'),
('Subaru'),
('Lexus');

CREATE TABLE Models (
	NombredeCarro varchar(50)
);

INSERT INTO Models (NombredeCarro) VALUES
('Corolla'),
('Civic'),
('F-150'),
('Malibu'),
('X5'),
('A-Class'),
('Q5'),
('Altima'),
('Jetta'),
('Sonata'),
('Sportage'),
('911'),
('CX-5'),
('Outback'),
('RX 350');



CREATE TABLE FuelType (
	Combustible varchar(50)
);

INSERT INTO FuelType (Combustible) VALUES
('Gasolina'),
('Diésel'),
('Eléctrico'),
('Híbrido'),
('Gas Natural');

ALTER TABLE cars MODIFY id INT NOT NULL AUTO_INCREMENT;
DESCRIBE cars;

DELETE FROM cars where id in (3,4,5,6,7);		