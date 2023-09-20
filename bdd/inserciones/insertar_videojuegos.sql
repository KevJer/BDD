truncate table videojuegos
--crear y ejecutar 5 inserts en la tabla videojuegos 
insert into videojuegos (codigo, nombre, descripcion, valoracion)
values(111, 'Elden Ring', 'videojuego de rol, aventura y accion', 10)

insert into videojuegos (codigo, nombre, descripcion, valoracion)
values(112, 'The legend of Zelda', 'videojuego de rol en mundo abierto', 8)

insert into videojuegos (codigo, nombre, descripcion, valoracion)
values(113, 'Super Mario Odyssey', 'videojuego de fantasia y aventura', 9)

insert into videojuegos (codigo, nombre, descripcion, valoracion)
values(114, 'Injustice 2', 'videojuego de lucha entre superheroes de DC', 7)

insert into videojuegos (codigo, nombre, descripcion, valoracion)
values(115, 'DBZ: budokai tenkaichi 3', 'videojuego de accion y lucha en 3D', 10)

select * from videojuegos

--crear y ejecutar 3 inserts solo con los campos obligatorios en la tabla videojuegos 
insert into videojuegos (codigo, nombre, valoracion)
values(116, 'Resident Evil Remake', 9)

insert into videojuegos (codigo, nombre, valoracion)
values(117, 'Good of War', 10)

insert into videojuegos (codigo, nombre, valoracion)
values(118, 'Company of Heroes', 9)

select codigo, nombre, valoracion from videojuegos
select * from videojuegos