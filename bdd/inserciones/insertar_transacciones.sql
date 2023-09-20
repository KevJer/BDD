truncate table transacciones
--crear y ejecutar 10 inserts con todos los campos en la tabla transacciones
--los valores permitidos para tipo son C o D
insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
values(200, '11121', 200, 'D', '20/09/2023', '10:00' )

insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
values(300, '11122', 40, 'C', '19/09/2023', '12:00' )

insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
values(400, '11133', 100, 'D', '19/09/2023', '14:00' )

insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
values(500, '11144', 80, 'C', '20/09/2023', '18:00' )

insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
values(600, '11155', 400, 'C', '20/09/2023', '09:00' )

insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
values(700, '11166', 150, 'D', '15/09/2023', '16:00' )

insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
values(800, '11177', 20, 'D', '14/09/2023', '17:20' )

insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
values(900, '11188', 500, 'C', '20/09/2023', '10:00' )

insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
values(950, '11199', 40, 'D', '18/09/2023', '08:30' )

insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
values(980, '11200', 200, 'D', '18/09/2023', '13:00' )

select * from transacciones