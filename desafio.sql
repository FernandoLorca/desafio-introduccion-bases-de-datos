sudo -u postgres psql

CREATE DATABASE fernandolorca123;

\c fernandolorca123;

CREATE TABLE clients (
  id SERIAL PRIMARY KEY,
  email VARCHAR(50),
  client_name VARCHAR,
  phone VARCHAR(16),
  company VARCHAR(50),
  priority SMALLINT NOT NULL CHECK (priority >= 1 AND priority <= 10),
  created_at TIMESTAMP NOT NULL DEFAULT now(),
  updated_at TIMESTAMP NOT NULL DEFAULT now()
);

INSERT INTO clients(email, client_name, phone, company, priority)
VALUES (
  'florcapinto@gmail.com',
  'Fernando Lorca',
  '12345678',
  'Saesa',
  1
);

INSERT INTO clients(email, client_name, phone, company, priority)
VALUES (
  'correo1@gmail.com',
  'Persona 1',
  '12345678',
  'Desafío Latam1',
  3
);

INSERT INTO clients(email, client_name, phone, company, priority)
VALUES (
  'correo2@gmail.com',
  'Persona 2',
  '12345678',
  'Desafío Latam2',
  6
);

INSERT INTO clients(email, client_name, phone, company, priority)
VALUES (
  'correo3@gmail.com',
  'Persona 3',
  '12345678',
  'Desafío Latam3',
  9
);

INSERT INTO clients(email, client_name, phone, company, priority)
VALUES (
  'correo4@gmail.com',
  'Persona 4',
  '12345678',
  'Desafío Latam4',
  10
);

SELECT * FROM clients ORDER BY priority DESC, LIMIT 3;

SELECT * FROM clients WHERE empresa = 'Saesa' OR prioridad = 10;

\q