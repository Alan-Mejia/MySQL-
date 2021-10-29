/* Para crear una tabla */

CREATE TABLE usuarios(
    id          INT(11) AUTO_INCREMENT NOT NULL, 
    nombre      VARCHAR(100) NOT NULL,
    correo      VARCHAR(100) NOT NULL,
    password    VARCHAR(100) NOT NULL,
    direccion   VARCHAR(255), /* Este campo si puede ser nulo */
    CONSTRAINT pk_usuario PRIMARY KEY(id) /* Asi es como se crea la llave primaria */
/*      |           |           |      |*/
/* restriccion  convencion  reservds  a que se liga  */
);