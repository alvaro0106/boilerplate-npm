#Referencia

#Muestra el nombre de usuario y el nombre de host actuales:
USER()

#crear un usuario de mysql
CREATE USER 'user'@'host';

#Crear base de datos
CREATE DATABASE bunker;

#Acceder a la base de datos
USE database_name;

#Eliminar la base de datos
DROP DATABASE database_name

#VER LAS BASES DE DATOS
SHOW DATABASES;

#enumerar todos los usuarios
SELECT user FROM mysql.user;

#Trabajar con tablas
CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype,
);

#Visualice la estructura de la tabla:
DESCRIBE table_name

#Eliminar una tabla
DROP TABLE table_name;

#Enumere todas las tablas en la base de datos:
SHOW TABLES;
