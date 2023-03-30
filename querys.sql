-- ABRIR TERMINAL

-- INGRESAR AL postgreSQL
psql -U postgres

-- CREAR DB
CREATE DATABASE desafio_alex_fernandez_178;

-- CONECTAR A LA BD
\c desafio_alex_fernandez_178

-- CREAR TABLA
CREATE TABLE clientes (
  id SERIAL PRIMARY KEY,
  email VARCHAR(50),
  client_name VARCHAR,
  phone VARCHAR(16),
  company VARCHAR(50),
  priority SMALLINT NOT NULL CHECK (priority BETWEEN 1 AND 10)
);

-- INSERTAR DATOS A LA TABLA

INSERT INTO clientes (email,  client_name, phone, company, priority)
VALUES ('juan@example.com', 'Juan Pérez', '955571234', 'ACME Inc.', 8),
      ('maria@example.com', 'María González', '955575678', 'XYZ Corp.',7),
      ('pedro@example.com', 'Pedro Ramirez', '955579101', 'EFG Bar', 10),  
      ('lucia@example.com', 'Lucía Fernández', '955572468', 'ABC Co.', 3),
      ('roberto@example.com', 'Roberto Torres', '955573698', 'XYZ Corp.',7);

-- SELECCIONAR 3 CLIENTES CON LAS PRIORIDADES MÁS ALTAS
SELECT * FROM clientes ORDER BY priority DESC LIMIT 3

-- Selecciona, de la tabla clientes, una priority o una company, de forma que el resultado devuelva 2 registros

SELECT * FROM clientes WHERE priority =8 OR company = 'EFG Bar';

