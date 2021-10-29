/* Seleccionar por id */
SELECT *FROM tabla WHERE id=5;

/*
OPERADORES DE COMPARACION utilizados con where:
Igual           =
Distinto        !=
Menor           <
Mayor           >
Menor o igual   <=
Mayor o igual   >=
Entre           between A and B
En              in
Es nulo         is null
No nulo         is not null
Como            like
No es como      not like
*/

SELECT *FROM actor WHERE actor_id > 63;

/* Seleccionar campos */
/* El orden en el que se escriban las columnas que se necesitan, sera el orden en el que retornara los valores */
SELECT actor_id, first_name, last_name FROM actor WHERE actor_id >63;

/* SELECCIONAR ELEMENTOS CON ID PARES */
SELECT *FROM actor WHERE actor_id % 2 = 0;

/* OPERADOR AND  */
SELECT *FROM actore WHERE first_name = "CHRIS" AND actor_id>50;

/*COMODINES*/
SELECT *FROM actor WHERE first_name LIKE "%a"; /* Va a consultar todos aquellos nombres que terminen con a */
SELECT *FROM actor WHERE first_name LIKE "a%"; /* Va a consultar todos aquellos nombres que empiecen con a */
SELECT *FROM actor WHERE first_name LIKE "%a%"; /* Va a consultar todos aquellos nombres que contienen una a */

/* CONCATENANDO CONSULTAS */
SELECT *FROM actor WHERE first_name LIKE "%a%" OR lasdt_name LIKE "e%"; /* Va a consultar todos aquellos nombres que contengan una a O que empiecen con e*/