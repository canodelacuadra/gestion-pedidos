drop database if exists gestionpedidos;
create database gestionpedidos;
use gestionpedidos;
drop table if exists productos; 
create table productos (
    id_producto int auto_increment,
    nombre_producto varchar(99),
    precio_producto decimal(6,2),
    primary key (id_producto)

);
drop table if exists usuarios; 
create table usuarios (
    id_usuario int auto_increment,
    nombre_usuario varchar(99),
    email_usuario varchar(99),
     primary key (id_usuario)
);
drop table if exists pedidos; 
create table pedidos (
    id_pedido int auto_increment,
    id_usuario int not null,
    fecha_pedido timestamp,
    confirmar_pedido char(2) default 'no',
     primary key (id_pedido),
     constraint fk_pedido_usuarios
     foreign key (id_usuario) references usuarios(id_usuario)
     on delete CASCADE
     on update RESTRICT
);
drop table if exists detalles; 
create table detalles(
    id_detalle int auto_increment,
    id_pedido  int not null,
    id_producto  int not null,
    cantidad  int not null,

     primary key (id_detalle),

     constraint `fk_detalles_pedido`
     foreign key (id_pedido) references pedidos(id_pedido)
    on delete CASCADE
     on update RESTRICT,

     constraint fk_detalles_producto
     foreign key (id_producto)references productos(id_producto)
     on delete cascade
     on update RESTRICT

);

