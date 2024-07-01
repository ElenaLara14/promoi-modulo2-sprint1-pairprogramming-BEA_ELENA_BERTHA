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