--Productos
--elimina todos los productos donde la descripcion sea null
delete from productos where descripcion is null 

select * from productos

--Cuentas
--elimina todas las cuentas cuya cedula_propietario empiece por 10
delete from cuentas where cedula_propietario like '10%'

select * from cuentas

--Estudiantes
--elimina todos los estudiantes que tengan una cedula que termina por 05
delete from estudiantes where cedula like '%05'

select * from estudiantes 

--Registros_entradas
--elimina todos los registros del mes de junio 
delete from registros_entrada where EXTRACT(MONTH FROM fecha) = 6

select * from registros_entrada

--Videojuegos
--elimina los videojuegos cuya valoracion sea menor que 7
delete from videojuegos where valoracion < 7

select * from videojuegos 

--Transacciones 
--elimina las transferencias que se hayan hecho entre las 14:00 y 18:00 
--del mes de agosto del año actual
delete from transacciones where hora between '14:00' and '18:00'
AND EXTRACT(MONTH FROM fecha) = 8
AND EXTRACT(YEAR FROM fecha) = EXTRACT(YEAR FROM CURRENT_DATE);

select * from transacciones
