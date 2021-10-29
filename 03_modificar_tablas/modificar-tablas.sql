/* Renombrar tablas */
ALTER TABLE usuarios RENAME TO users;
/*    |         |       |         | */
/* editar  tabla que  palabras   nuevo */
/* tabla   queremos   reservadas  nombre  */
/*          editar    RENAME TO        */

/* Cambiar el nombre de una columna */

ALTER TABLE users CHANGE direccion adress VARCHAR(50);
/*    |       |      |         |       |        |           */
/* editar tabla que  palabra   nombre   nuevo    nuevo tipo */
/* tabla  queremos   reservada  columna nombre   de dato que   */
/*         editar    CHANGE                        seleccionamos */

/* AGREGAR COLUMNAS */

ALTER TABLE users ADD edad INT NOT NULL;


/* BORRAR UNA COLUMNA */
ALTER TABLE users DROP edad;
