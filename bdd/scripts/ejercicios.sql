--comparar iguales
select * from personas where cedula = '1714618501'
select * from personas where nombre = 'Jennifer'
select numero_hijos,* from personas where numero_hijos = 2

--comparar mayor menor
select * from personas where estatura >1.55
select * from personas where estatura < 1.55

--comparar fecha
select * from personas where fecha_nacimiento = '28/05/1996'
select * from personas where fecha_nacimiento >= '28/05/1996'
select * from personas where fecha_nacimiento between '28/05/1996' and '15/02/2000'


insert into personas(cedula, nombre, apellido, fecha_nacimiento)
values('1714618505','Javier','Ortiz','15/02/2000')

insert into personas(cedula, nombre, apellido, fecha_nacimiento)
values('1714618506','Damian','Diaz','01/05/1987')

--comparar hora
select * from personas where hora_nacimiento = '14:30'
select * from personas where hora_nacimiento > '10:00'
select * from personas where hora_nacimiento between '10:00' and '22:00'

insert into personas(cedula, nombre, apellido, hora_nacimiento)
values('1714618507','Mathias','Oyola','22:50:15')

insert into personas(cedula, nombre, apellido, hora_nacimiento)
values('1714618508','Javier','Burrai','10:05:10')

--operador like
select * from personas where nombre like '%a'
select * from personas where apellido like 'B%'
select * from personas where apellido like '%o%'

--buscar nulos
select * from personas where hora_nacimiento is null
select * from personas where hora_nacimiento is not null
select * from personas where estatura is null
select * from personas where estatura is not null

--comparar diferentes (trae a los que son diferentes pero no a los nulos solo los que tienen valor)
select * from personas where estatura !=1.85
select numero_hijos, * from personas where numero_hijos <> 2

select * from personas