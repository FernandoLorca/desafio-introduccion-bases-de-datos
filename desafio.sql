sudo -u postgres psql

CREATE DATABASE fernando_lorca_123;

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

INSERT INTO clients(email, client_name, phone, company, priority) VALUES ('florcapinto@gmail.com', 'Fernando Lorca', '12345678', 'Saesa', 1), ('josefina@gmail.com', 'Josefina Díaz', '12345678', 'Garuga', 3),
('pedro@gmail.com', 'Pedro Lorca', '12345678', 'Germania', 6),
('pina@gmail.com', 'Piña Lorca', '12345678', 'Patio trasero', 9),
('maqui@gmail.com', 'Maqui Lorca', '12345678', 'Patio delantero', 10);

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
  'josefina@gmail.com',
  'Josefina Díaz',
  '12345678',
  'Garuga',
  3
);

INSERT INTO clients(email, client_name, phone, company, priority)
VALUES (
  'pedro@gmail.com',
  'Pedro Lorca',
  '12345678',
  'Germania',
  6
);

INSERT INTO clients(email, client_name, phone, company, priority)
VALUES (
  'piña@gmail.com',
  'Piña Lorca',
  '12345678',
  'Patio trasero',
  9
);

INSERT INTO clients(email, client_name, phone, company, priority)
VALUES (
  'maqui@gmail.com',
  'Maqui Lorca',
  '12345678',
  'Patio delantero',
  10
);


SELECT * FROM clients ORDER BY priority DESC LIMIT 3;

SELECT * FROM clients WHERE company = 'Saesa' OR priority = 10;

\q