USE cars;
INSERT INTO cars (car_id, VIN, model, manufacturer, year, color)
VALUES
(1, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
(2,	'ZM8G7BEUQZ97IH46V', 'Peugeot',	'Rifter', 2019, 'Red'),
(3,	'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
(4,	'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
(5,	'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
(6,	'DAM41UDN3CHU2WVF6', 'Volvo',	'V60 Cross Country', 2019, 'Gray');


INSERT INTO customer(customer_id, name, phone_number, email_address, address, city)
VALUES

(10001,	'Pablo Picasso', 34636176382,	'-',	'Paseo de la Chopera, 14	Madrid',	'Madrid	Spain'),
(20001,	'Abraham Lincoln', 13059077086,	'-',	'120 SW 8th St	Miami',	'Florida	United States'),
(30001,	'Napoléon Bonaparte',	33179754000,	"-", '40 Rue du Colisée	Paris',	'Île-de-France	France');

INSERT INTO invoices(invoice_id, date, car, customer, salesperson)
VALUES

(852399038,	22082018,	'Volvo', 'Steve', 'Crazy Eye'),
(731166526,	31122018,	'BMW',	'Eve',	'Wooden leg'),
(271135104, 22012019, 'Toyota', 'George', 'Pirate');
SELECT * FROM invoices.cars
customer