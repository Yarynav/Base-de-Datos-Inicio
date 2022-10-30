

CREATE DATABASE desafio_yaritza_navarrete_007;

CREATE TABLE clients(
	id serial PRIMARY KEY,
	email varchar(50),
	name varchar,
	phone varchar(16),
	enterprise varchar(50),
	priority smallint CHECK (priority >= 1 AND priority <= 10)
);

INSERT INTO clients (email, name, phone, enterprise, priority) VALUES 
('jperez@mail.com', 'Juan Perez', '11223344', 'Google', 7 ),
('abaeza@mail.com', 'Aquiles Baeza', '13243544', 'Meta', 8 ),
('cfranco@mail.com', 'Candela Franco', '11223344', 'Google', 5 ),
('kroman@mail.com', 'Kilian Roman', '11223344', 'Meta', 4 ),
('epinto@mail.com', 'Esmeralda Pinto', '11223344', 'Ebay', 10);


SELECT * FROM clients ORDER BY priority DESC LIMIT 3;

SELECT * FROM clients WHERE priority >= 8 OR enterprise = 'Meta' LIMIT 2;

\q 
