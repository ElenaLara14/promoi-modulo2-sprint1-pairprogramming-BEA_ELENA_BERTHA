 CREATE SCHEMA `tienda_zapatillas`;
 
 USE `tienda_zapatillas`;
 
 CREATE TABLE zapatillas (
	id_zapatilla INT NOT NULL AUTO_INCREMENT,
    modelo VARCHAR(45) NOT NULL,
    color VARCHAR(45) NOT NULL,
	PRIMARY KEY (id_zapatilla)
    );

CREATE TABLE clientes (
    id_cliente INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(45) NOT NULL,
    numero_telefono VARCHAR(15) NOT NULL,
    email VARCHAR(45) NOT NULL,
    direccion VARCHAR(45) NOT NULL,
    ciudad VARCHAR(45) NOT NULL,
    provincia VARCHAR(45) NOT NULL,
    pais VARCHAR(45) NOT NULL,
    codigo_postal VARCHAR(10) NOT NULL,
    PRIMARY KEY (id_cliente)
);


 CREATE TABLE empleados (
	id_empleado INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(45) NOT NULL,
    tienda VARCHAR(45) NOT NULL,
    salario INT,
    fecha_incorporacion DATE NOT NULL,
	PRIMARY KEY (id_empleado)
    );
    
CREATE TABLE facturas (
	id_factura INT NOT NULL AUTO_INCREMENT,
    num_factura VARCHAR(45) NOT NULL,
    fecha DATE NOT NULL,
    id_zapatilla INT NOT NULL,
    id_cliente INT NOT NULL,
    id_empleado INT NOT NULL,
	PRIMARY KEY (id_factura),
    CONSTRAINT FK_zapatillas
		FOREIGN KEY	(id_zapatilla) 
			REFERENCES zapatillas (id_zapatilla),
	CONSTRAINT FK_clientes
		FOREIGN KEY	(id_cliente) 
			REFERENCES clientes (id_cliente),
	  CONSTRAINT FK_empleados
		FOREIGN KEY	(id_empleado) 
			REFERENCES empleados (id_empleado)
    )
    
ALTER TABLE zapatillas
ADD COLUMN marca VARCHAR(45) NOT NULL;

ALTER TABLE zapatillas
ADD COLUMN talla INT NOT NULL;

ALTER TABLE empleados
MODIFY salario FLOAT NOT NULL;

ALTER TABLE clientes
DROP pais;

ALTER TABLE facturas
ADD COLUMN total FLOAT;

INSERT INTO zapatillas (id_zapatilla, modelo, color, marca, talla)
VALUES (1, 'XQYUN', 'Negro', 'Nike', 42), (2, 'UOPMN', 'Rosas', 'Nike', 39), (3, 'OPNYT', 'Verdes', 'Adidas', 35);

INSERT INTO empleados (id_empleado, nombre, tienda, salario, fecha_incorporacion)
VALUES (1, 'Laura', 'Alcobendas', 25.987, '2010/09/03'), (2, 'Maria', 'Sevilla', 0, '2001/04/11'), (3, 'Ester', 'Oviedo', 30165.98, '2000/11/29');

INSERT INTO clientes (id_cliente, nombre, numero_telefono, email, direccion, ciudad, provincia, codigo_postal)
VALUES (1, 'Monica', '1234567289', 'monica@email.com', 'Calle Felicidad', 'Mótoles', 'Madrid', 28176), (2, 'Lorena', '289345678', 'lorena@email.com', 'Calle Alegria', 'Barcelona', 'Barcelona', 12346), (3, 'Carmen', '298463759', 'carmen@email.com', 'Calle del Color', 'Vigo', 'Pontevedra', 23456);

INSERT INTO facturas (id_factura, num_factura, fecha, id_zapatilla, id_empleado, id_cliente, total)
VALUES (1, 123, '2001/12/11', 1, 2, 1, 54.98), (2, 1234, '2005/05/23', 1, 1, 3, 89.91), (3, 12345, '2015/09/18', 2, 3, 3, 76.23);

UPDATE zapatillas
SET color = 'Amarillas'
WHERE color = 'Rosas';

UPDATE  empleados
SET tienda = 'A Coruña'
WHERE tienda = 'Alcobendas'

UPDATE  clientes
SET numero_telefono = '12345672898'
WHERE numero_telefono = '1234567289'

UPDATE  facturas
SET total = 89.91
WHERE total = 89.91