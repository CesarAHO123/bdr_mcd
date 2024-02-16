create database Clase4;
use clase4 ;
create table autores (id INT auto_increment primary key ,name varchar(50), biography varchar(100));
create table libros (id INT auto_increment primary key ,name varchar(50), description varchar(100), id_autor INT, foreign key (id_autor) references autores(id));
create table usuarios  (id INT auto_increment primary key ,name varchar(50));
create table prestamos (id INT auto_increment primary key, id_libro INT , id_usuario INT , fecha DATE, foreign key(id_libro) references libros(id), foreign key (id_usuario) references usuarios(id));
INSERT INTO autores VALUES (null,'Joaquin', 'Nacio en San Nicolas')
INSERT INTO libros VALUES (null,'Libro numero 1', 'Primer libro escrito',1)
INSERT INTO usuarios VALUES (null,'Ernesto')
insert into prestamos values (null, 1,1, '2024-01-01')
INSERT INTO libros VALUES (null,'Libro numero 2', 'Segundo libro escrito',1)
insert into prestamos values (null, 2,1, '2024-02-02')
select * from prestamos 