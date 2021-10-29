/* Este codigo se corre en la Base de datos testjoin */
SELECT *FROM departamentos
INNER JOIN empleados ON departamentos.Id = empleados.DeparamentoId;
/* Es es lo mismo que el codigo de arriba pero escrito de una menera mas limpia */
SELECT *FROM departamentos d
INNER JOIN empleados e ON d.Id = e.DeparamentoId;


/* Se antepone el nombre de la tabal cuando existe redundancia, es decir el nombre de la columna aparece en las mismas tabal, por ejemplo la clumna Nombre, por eso se escribe e.Nombre donde e=empleados */
SELECT Id, e.Nombre, d.Nombre AS "Nombre de departamento" FROM departamentos d
JOIN empleados e ON d.Id = e.DepartamentoId;

/* LEFT JOIN  */
SELECT Id, e.Nombre, d.Nombre AS "Nombre de departamento" FROM departamentos d
LEFT JOIN empleados e ON d.Id = e.DepartamentoId;

/* RIGHT JOING */
SELECT Id, e.Nombre, d.Nombre AS "Nombre de departamento" FROM departamentos d
RIGHT JOIN empleados e ON d.Id = e.DeparamentoId;

/* FULL JOIN */
SELECT Id, e.Nombre, d.Nombre AS "Nombre de departamento" FROM departamentos d
FULL JOIN empleados e ON d.Id = e.DeparamentoId;

/* REVISAER EJEMPLO DE ABAJO */
SELECT Id AS "Departamento" FROM empleados
JOIN departamentos ON departamentos.Id = empleados.DeparamentoId;


