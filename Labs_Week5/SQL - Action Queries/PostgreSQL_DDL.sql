DROP TABLE cars;
CREATE TABLE cars (
					"id" smallint
					 ,"vehicle identification number(VIN)" varchar(50)
					 ,manufacturer varchar(50)
					 ,model varchar(50)
					 ,"year" smallint
					 ,color varchar(50));

SELECT * FROM cars;

INSERT INTO cars VALUES (0,'3K096I98581DHSNUP' , 'Volkswagen' , 'Tiguan' , 2019 , 'Blue')
						,(1,'ZM8G7BEUQZ97IH46V' , 'Peugeot' , 'Rifter' , 2019 , 'Red' )
						,(2,'RKXVNNIHLVVZOUB4M' , 'Ford' , 'Fusion' , 2018 , 'White' )
						,(3,'HKNDGS7CU31E9Z7JW' , 'Toyota' , 'RAV4' , 2018 , 'Silver' ) 
						,(4,'DAM41UDN3CHU2WVF6' , 'Volvo' , 'V60' , 2019 , 'Gray' )
						,(5,'DAM41UDN3CHU2WVF6' , 'Volvo' , 'V60 Cross Country' , 2019 , 'Gray');

DROP TABLE customers;

CREATE TABLE customers (
					 "ID" smallint
					 ,"the customer ID" integer
					 ,"name" varchar(50)
					 ,"phone number" varchar(50)
					 ,email varchar(100)
					 ,address varchar(150)
					 ,city varchar(100)
					 ,"state/province" varchar(100)
					 ,country varchar(100)
					 ,"zip/postal code" integer);

SELECT * FROM customers;

INSERT INTO customers VALUES (0,10001 , 'Pablo Picasso' , '+34 636 17 63 82' , '-' , 'Paseo de la Chopera, 14' , 'Madrid' , 'Madrid' , 'Spain' , 28045)
							 ,(1,20001 , 'Abraham Lincoln' , '+1 305 907 7086' , '-' , '120 SW 8th St' , 'Miami' , 'Florida' , 'United States' , 33130)
							 ,(2,30001 , 'Napoléon Bonaparte' , '+33 1 79 75 40 00' , '-' , '40 Rue du Colisée' , 'Paris' , 'Île-de-France' , 'France' , 75008);

SELECT * FROM customers;

DROP TABLE IF EXISTS salespersons;

CREATE TABLE salespersons (
					 "ID" smallint
					 ,"staff ID" varchar(50)
					 ,"name" varchar(100)
					 ,store varchar(100));

SELECT * FROM salespersons;

INSERT INTO salespersons VALUES  (0,'00001' , 'Petey Cruiser' , 'Madrid' ) 
								 ,(1,'00002' , 'Anna Sthesia' , 'Barcelona' ) 
								 ,(2,'00003' , 'Paul Molive' , 'Berlin' ) 
								 ,(3,'00004' , 'Gail Forcewind' , 'Paris') 
								 ,(4,'00005' , 'Paige Turner' , 'Mimia' ) 
								 ,(5,'00006' , 'Bob Frapples' , 'Mexico City' ) 
								 ,(6,'00007' , 'Walter Melon' , 'Amsterdam' ) 
								 ,(7,'00008' , 'Shonda Leer' , 'São Paulo' );
								 
SELECT * FROM salespersons;

DROP TABLE invoices;

CREATE TABLE invoices (
					 "ID" smallint
					 ,"invoice number" integer
					 ,"date" varchar(50)
					 ,car varchar(50)
					 ,customer varchar(100)
					 ,salesperson varchar(100));

SELECT * FROM invoices;

INSERT INTO invoices VALUES  (0,852399038 , '22-08-2018' , 0 , 1 , 3) 
							 ,(1,731166526 , '31-12-2018' , 3 , 0 , 5) 
							 ,(2,271135104 , '22-01-2019' , 2 , 2 , 7) ;
								 
SELECT * FROM invoices;

UPDATE salespersons SET store='Miami' WHERE store='Mimia';
SELECT * FROM salespersons;

UPDATE customers SET email='ppicasso@gmail.com' WHERE name='Pablo Picasso';
UPDATE customers SET email='lincoln@us.gov' WHERE name='Abraham Lincoln';
UPDATE customers SET email='hello@napoleon.me' WHERE name='Napoléon Bonaparte';
SELECT * FROM customers;

DELETE FROM cars WHERE ID=4;
SELECT * FROM cars;
