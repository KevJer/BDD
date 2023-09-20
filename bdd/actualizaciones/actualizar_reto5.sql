--Productos
--actualizar el stock a 0 en todos los productos donde la descripcion sea null
update productos set stock=0 where descripcion is null

select * from productos

--Cuentas
--actualizar el saldo a 10 de las cuentas cuya cedula_propietario empiece por 17
update cuentas set saldo = 10 where cedula_propietario like'17%'

select * from cuentas

--Estudiantes
--actualizar el apellido por hernandez a todos los estudiantes 
--que tenga una cedula que empieza por 14
update estudiantes set apellido = 'hernandez' where cedula like '14%'

select * from estudiantes

--Registros_entrada
--actualizar todas las cedulas de registros_entrada por '0823456789' 
--para todos los registros del mes de agosto
update registros_entrada set cedula_empleado = '0823456789' where EXTRACT(MONTH FROM fecha) = 8

select * from registros_entrada

--Videojuegos
--actuaizar todas las descripciones de los videojuegos cuya valoracion 
--sea mayor que 9 por 'mejor puntuado'
update videojuegos set descripcion = 'Mejor Puntuado' where valoracion > 9

select * from videojuegos

--Transacciones
--actualizar tipo de todos los registros que tengan una transaccion mayor
--100 y menor que 500, que se hayan llevado a cabo el mes de septiembre 
--con horas entre 14:00 y 20:00 por 'transferencia' 
update transacciones set tipo= 'transferencia' 
where monto > money(100) and monto < money(500)
AND EXTRACT(MONTH FROM fecha) = 9
AND hora between '14:00' and '20:00';

select * from transacciones

