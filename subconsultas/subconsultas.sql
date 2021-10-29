/* las subconsultas son consultas dentro de otras consultas */
/* PARA DESHACER LA RELACION MUCHOS A MUCHOS SE DEBE DE CREAR UNA TABLA INTERMEDIA ENTRE LAS TABLAS RELACIONADAS*/
/* FILATRAR ELEMENTOS DE 1 SOLA CATEGORIA */ 
SELECT *FROM sakila.film_category; /* Filtramos con respecto a la categoria de las peliculas */
SELECT *FROM film_category WHERE film_id = 4;

SELECT *FROM film WHERE film_id = 1 OR film_id = 2 OR film_id = 3; /* Esta linea es la misma que la de abajp */
SELECT *FROM film WHERE film_id BETWEEN 1 AND 3; /* Esta linea es la misma que la de abajo */
SELECT *FROM film WHERE film_id IN (1,2,3); /* Con IN podemos ser mas especificos y decir que id queremos que busque (1,2,100,50) */
/*                               |          */
/* Obtiene todas las peliculas con id 1,2,3 */

/* SUBCONSULTA */
SELECT *FROM film WHERE film_id IN (SELECT film_id FROM film_category WHERE category_id = 5);
/* Traeme todos los datos de la tabla film cuyos datos de la columna film_id sean(id1, id2, id2, id4, id5..., idn) */

