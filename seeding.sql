INSERT INTO Branches (Branch_ID, Phone_number, Email, Street, ZIP_Code, City)
VALUES 
('12345', '1234343', 'sdsdsd@sdsdsd.pl', 'Ronda Toledo', '2804', 'Madrid'),
('3333', '343434', 'car@car.de', 'Main Street', '3313', 'Miami');


INSERT INTO Cars (Car_ID, Model_name, Category, Manufacturer, Colour, Year_of_Production)
VALUES 
('1', 'Tiguan', 'SUV', 'Volkswagen', 'Blue', 2019),
('2', 'Rifter', 'MPV', 'Peugeot', 'Red', 2019),
('3', 'Fusion', 'Sedan', 'Ford', 'White', 2018),
('4', 'RAV4', 'SUV', 'Toyota', 'Silver', 2018),
('5', 'V60', 'Wagon', 'Volvo', 'Gray', 2019),
('6', 'V60 Cross Country', 'Wagon', 'Volvo', 'Gray', 2019);

INSERT INTO Customer (Customer_ID, Name, Email, Street, ZIP_Code, City)
VALUES 
('10001', 'Pablo Picasso', '-', 'Paseo de la Chopera, 14', '2805', 'Madrid'),
('20001', 'Abraham Lincoln', '-', '120 SW 8th St', '3310', 'Miami'),
('30001', 'Napoléon Bonaparte', '-', '40 Rue du Colisée', '7508', 'Paris');

INSERT INTO Salesperson (Salesperson_ID, Salesperson_first_name, Salesperson_lastname, Email, Branch_ID)
VALUES 
('00001', 'Petey', 'Cruiser', '-', '12345'),
('00002', 'Anna', 'Sthesia', '-', '3333'),
('00003', 'Paul', 'Molive', '-', '12345'),
('00004', 'Gail', 'Forcewind', '-', '3333'),
('00005', 'Paige', 'Turner', '-', '3333'),
('00006', 'Bob', 'Frapples', '-', '3333'),
('00007', 'Walter', 'Melon', '-', '3333'),
('00008', 'Shonda', 'Leer', '-', '12345');

INSERT INTO Invoices (Invoice_ID, Amount, Status, Date, Salesperson_ID)
VALUES 
('852399038', 0.00, 'Paid', '2018-08-22', '00003'),  -- Customer 1, Car 1
('731166526', 0.00, 'Paid', '2018-12-31', '00005'),  -- Customer 3, Car 3
('271135104', 0.00, 'Paid', '2019-01-22', '00007');  -- Customer 2, Car 2


