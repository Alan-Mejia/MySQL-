/* Para extraer datos de una base de datos */
SELECT  *    FROM   users;
/* |    |      |      | */
/* |  todos    |      | */
/* |   los     de     | */
/* |  campos       tabla*/
/* |                    */
/* Seleccionar          */

SELECT adress, nombre FROM users;
/*             |                 */
/*      Extrae solo  */
/*      direccion y  */
/*      nombre        */

/* REINICIAR EL CONTADOR DEL ID */
ALTER TABLE `blog`.`users` AUTO_INCREMENT = 1 ;
