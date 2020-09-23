insert into usuarios values (null, 'Pepe','pepe@gmail.com');
select * from usuarios;
insert into pedidos values (null, 1,null,'no');
select * from pedidos;
insert into productos 
values 
(1, 'reloj',61.50),
(2, 'pantalón',31.50),
(3, 'camisa',20.50),
(4, 'chaqueta',51.50),
(5, 'calcetines',3.50)
;
select * from productos;
insert into detalles values 
(1, 1,3,2),
(2, 1,4,1);

select * 
from productos 
join detalles
on productos.id_producto = detalles.id_producto
join pedidos
on pedidos.id_pedido = detalles.id_pedido;

-- CREATE VIEW pedidoDetalle AS
select 
pedidos.id_pedido as Pedido, 
productos.nombre_producto as Artículos,
detalles.cantidad as CANT, 
productos.precio_producto as Precio
from pedidos
join detalles
on pedidos.id_pedido = detalles.id_pedido
join productos
on productos.id_producto = detalles.id_producto;

where pedido =1;


