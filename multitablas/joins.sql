/* PARA UNIR TABLAS */
SELECT *FROM actor, film_text; /* esta linea mexcla la informacion de 2 tablas pero noestan directamente ralcionadas */
SELECT *FROM actor, film_actor;

SELECT city_id, city, country FROM city, country;
/*                 |                    |       */
/* pedimos las 3 columnas          de las 2 tablas*/

/* Multitabla Ralcional */
SELECT city_id, city, country FROM city/* Le pedimos los datos de las 3 colunas que se ubican en la tabla city */
INNER JOIN country ON city.country_id = country.country_id;/* Va a comparar con la tabla country y la tabla city que usa su propiedad county_id debe ser igual a la tabla country que utiliza su propiedad country_id */

/* Ejercicio Hacer una tabla que contenga el actor con las peliculas que ha hecho */
/* La tabla tiene las sig columnas film_id, first_name, last_name, titulo; */
SELECT film.film_id, first_name, last_name, title FROM film
INNER JOIN film_actor ON film.film_id = film_actor.film_id
INNER JOIN actor ON film_actor.actor_id = actor.actor_id
ORDER BY film_id ASC;
/* Con el codigo de arriba va a dar todos los actores con las peliculas que han hecho */

/* CON ESTE CODIGO VA A SELECCIONAR A 1 SOLO ACTOR CON LAS PELICULAS QUE HA HECHO */
SELECT film_id, first_name, last_name, title FROM film 
INNER JOIN actor ON actor_id = 5
WHERE film_id IN (SELECT film_id FROM film_actor WHERE actor_id = 5);


