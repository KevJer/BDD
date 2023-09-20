--truncate table productos
--crear y ejecutar 5 inserts con todos los campos de la tabla productos
insert into productos (codigo, nombre, descripcion, precio, stock)
values(001, 'balon de futbol', 'balon que sirve para jugar futbol','25.50',10)

insert into productos (codigo, nombre, descripcion, precio, stock)
values(002, 'camisa', 'camisa de tela ','15',15)

insert into productos (codigo, nombre, descripcion, precio, stock)
values(003, 'zapato', 'zapato para toda ocacion','20.99',5)

insert into productos (codigo, nombre, descripcion, precio, stock)
values(004, 'gorra', 'gorra que ayuda a protegernos del sol','10',30)

insert into productos (codigo, nombre, descripcion, precio, stock)
values(005, 'blusa', 'blusa para verano','8.50',18)

select * from productos

--crea y ejecuta 3 insert solo con los campos obligatorios de la tabla productos
insert into productos (codigo, nombre, precio, stock)
values(006, 'pupos','50',20)

insert into productos (codigo, nombre, precio, stock)
values(007, 'medias','8.50',4)

insert into productos (codigo, nombre, precio, stock)
values(008, 'pantaloneta','5.50',10)

select codigo, nombre, precio, stock from productos
select * from productos