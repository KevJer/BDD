--Productos
--selecciona todos los productos con stock igual a 10 y precio menor a 10
select * from productos where stock = 10
AND precio < money(10)
--seleccionar los nombres y stocks de todos los productos que 
--tengan la letra m en cualquier lugar de su nombre o tenga un espacio en blanco
--en su descripcion
select nombre, stock from productos 
where nombre like '%m%'
OR descripcion like '% %' 

--seleccionar el nombre de todos los productos que tenga null el campo
-- de descripcion o tenga stock de 0
select nombre from productos 
where descripcion is null
OR stock = 0;

select * from productos

--Cuentas 
--seleccionar el numero de cuenta y saldo de todas las cuentas con saldo mayor a 100
--y menor a 1000
select numero_cuenta, saldo from cuentas 
where saldo > money(100)
AND saldo < money(1000)

--seleccionar las cuentas entre el dia de hoy hasta hace un año 
select * from cuentas 
where fecha_creacion >= CURRENT_DATE - INTERVAL '1 year'
AND fecha_creacion <= CURRENT_DATE;

--seleccionar las cuentas con saldo 0 o con una cedula de propietario que termine en 2
select  * from cuentas 
where saldo = money(0)
OR cedula_propietario like '%2'

select * from cuentas 


--Estudiantes
--seleccionar el nombre y apellido de los estudiantes cuyos nombres empiecen con M
--o si su apellido termina en Z
select nombre , apellido from estudiantes 
where nombre like 'M%'
OR apellido like '%Z'

--seleccionar los nombres de todos los estudiantes que tenga un numero 32 y 
--empiece con 18 en alguna parte de su cedula
select nombre from estudiantes 
where cedula like '%32'
AND cedula like '18%'

--seleccionar los nombres completos de todos los estudiantes cuya cedula termine en 06
--o empiece con 17
select (nombre || ' ' || apellido) AS Nombre_Completo from estudiantes 
where cedula like '%06'
OR cedula like '17%'

select * from estudiantes

--Registros_entrada
--seleccione los registros del mes de septiembre, o realizados por las cedulas de pichincha
--(que inicien con 17)
select * from registros_entrada 
where (EXTRACT(MONTH FROM fecha) = 9 OR cedula_empleado like '17%')

--seleccione los registros del mes de agosto, realizados por las cedulas de pichincha
--que inicien con 17 y realizados entre las 8:00 a 12:00
select * from registros_entrada 
where (EXTRACT(MONTH FROM fecha) = 8 OR cedula_empleado like '17%')
AND hora between '08:00' and '12:00'

--seleccione los registros del mes de agosto, realizados por las cedulas de pichincha
--(que inicien con 17) y realizados entre las 8:00 a 12:00 o los registros del mes de 
--septiembre, realizados por las cedulas de esmeraldas(que inicien con 08) y realizadas
--entre las 9:00 a 13:00
select * from registros_entrada 
where (EXTRACT(MONTH FROM fecha) = 8 OR cedula_empleado like '17%') AND hora between '08:00' and '12:00'
OR (EXTRACT(MONTH FROM fecha) = 9 OR cedula_empleado like '08%') AND hora between '09:00' and '13:00'

select * from registros_entrada

--Videojuegos
--listar los registros de videojuegos con un nombre que contenga la letra C o 
--una valoracion de 7
select * from videojuegos 
where nombre like '%C%'
OR valoracion = 7

--seleccionar videojuegos con un codigo entre 3 y 7 o una valoracion de 7
select * from videojuegos 
where codigo between 3 and 7
OR valoracion = 7

--seleccionar videojuegos de guerra, con una valoracion mayor a 7 y que en su nombre 
--empiece con C
select * from videojuegos
where valoracion > 7 
AND nombre like 'C%'

select * from videojuegos

--Transacciones
--seleccionar transacciones de tipo C realizadas por los clientes con numero de cuenta
--entre 22001 y 22004
select * from transacciones 
where tipo = 'C'
AND numero_cuenta between '22001' and '22004'

--seleccionar transacciones de tipo D que fueron realizadas el 25 de mayo y con el rango
--de cuenta entre 22002 y  22010
select * from transacciones 
where tipo = 'D'
AND fecha = '25/05/2023'
AND numero_cuenta between '22002' and '22010'
--seleccione todas las transacciones en donde el codigo sea entre 1 y 5, numero de cuenta
-- entre 22002 y 22004 que se hayan realizado los dias 26 y 27 de mayo 
select * from transacciones 
where codigo between 1 and 5
AND numero_cuenta between '22002' and '22004'
AND fecha between '2023-05-26' and '2023-05-27'

select * from transacciones