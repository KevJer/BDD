--consultas reto 4
--Productos
--crear select que traiga todos los productos que empiezan con Q
select * from productos where nombre like 'Q%'
--crear un select que traiga los productos con una descripcion de null
select * from productos where descripcion is null
--crear un select que traiga todos los productos con un precio entre 2 y 3
select * from productos where precio between money(2) and money(3)

select * from productos

--Cuentas
--crear select que traiga el numero de cuenta y el saldo de todas las ceuntas
select numero_cuenta, saldo from cuentas 
--crear select que traiga los registros entre el dia de hoy hasta 2 meses antes
select fecha_creacion from cuentas where fecha_creacion between '20/07/2023' and'20/09/2023' 
--crear select que traiga el numero de cuenta y el saldo de las cuentas desde el dia de hoy hasta 2 meses antes
select numero_cuenta, saldo from cuentas  where fecha_creacion between '20/07/2023' and'20/09/2023'

select * from cuentas

--Estudiantes
--crear select que traiga el nombre y la cedula de los estudiantes
select nombre, cedula from estudiantes 
--crear select que traiga los nombres de todos los estudiantes cuya cedula empiece con 17
select nombre from estudiantes where cedula like '17%'
--select nombre from estudiantes where cedula like '11%'

--crear select que traiga los nombres completos de todos los estudiantes cuyo nombre empiece con A
select (nombre || ' ' || apellido) AS Nombre_Completo from estudiantes where nombre like 'A%'

select * from estudiantes

--Registros_entrada
--seleccionar todas las cedulas de empleado y fecha y hora de los registros de entrada
select cedula_empleado, fecha, hora from registros_entrada
--seleccionar los registros de entrada que esten entre las 7:00 y 14:00
select * from registros_entrada where hora between '7:00' and '14:00'
--seleccionar los registros de entrada que tengan horas superiores a 8:00
select * from registros_entrada where hora > '8:00'

select * from registros_entrada

--Videojuegos
--seleccionar todos los videojuegos con un nombre que comience con "C"
select * from videojuegos where nombre like 'C%'
--seleccionar videojuegos con una valoracion entre 9 y 10
select * from videojuegos where valoracion between 9 and 10
--seleccionar videojuegos con una descripcion null
select * from videojuegos where descripcion is null

select * from videojuegos

--Transacciones
--seleccionar todas las transacciones realizadas con un tipo D
select * from transacciones where tipo = 'D'
--seleccionar las transacciones con montos entre 200 y 2000
select * from transacciones where monto between money(200) and money(2000)
--seleccionar el codigo, monto, tipo, y fecha de las transacciones que tengan una fecha diferente de null
select codigo, monto, tipo, fecha from transacciones where fecha is not null

select * from transacciones