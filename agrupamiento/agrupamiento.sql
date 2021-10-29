/* PARA FILTRAR ELEMENTOS DE UNA TABLA */
/* EN este caso seleccionara a todas las filas de la tabla film que tengan un rental duration = 3 */
SELECT *FROM film WHERE rental_duration =3;

/* COUNT */
/* Contara cuantos elementos con con un filtro de rental duration = 3 */
SELECT COUNT(film_id) FROM film WHERE rental_duration = 3;

/*  */
SELECT rental_duration, COUNT(film_id)      AS "Total" FROM film WHERE rental_duration = 7;
/*            |               |             |      |          |                             */
/*     recuper la col   cuenta los elem   apodo  total  de col fil                          */

/* GRUPO */
/* Se filtraa por grupos, muestra cuantas hay de rental duration = 3,  cuantas hay de rental duration = 4, rental duration = 5 , etc. */
SELECT rental_duration, COUNT(film_id) AS "Total" FROM film GROUP BY rental_duration;
/*                                                              |       */
/*                                                          agrupar por */
SELECT rental_duration, COUNT(film_id) AS "Total" FROM film GROUP BY rental_duration ORDER BY rental_duration ASC;
/*                                                              |                       |                       |*/
/*                                                          agrupar por             ordenar por             orden ascendente*/

/* PROMEDIO DE COSTO DE REEMPLAZO */
SELECT AVG(replacement_cost) AS "Costo promedio" FROM film;
/*       | */
/*   pemedio(columna)               */
SELECT SUM(replacement_cost) AS "Costo por reemplazar todo" FROM film;
/*              | */
/* sumar todos lo elementos de la columna */

/* Filstar el valor mas alto */
SELECT *, MAX(replacement_cost) AS "Costo mas alto" FROM film;
/*     | */
/* Selecciona todas las columnas de la fila con el replacement cost mas alto */


/* Se ordenan por el replacement cost de mayor a menor y solo devuelve un elemento */
SELECT *FROM film ORDER BY replacement_cost DESC LIMIT 1;

