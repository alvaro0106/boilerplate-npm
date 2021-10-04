#Referencia
#https://phoenixnap.com/kb/install-mysql-ubuntu-20-04

#Actulalizar 
sudo apt update
sudo apt upgrade -y

#install Mysql
sudo apt install mysql-server

#Comprobar version
mysql --version
mysql  Ver 8.0.26-0ubuntu0.20.04.2 for Linux on x86_64 ((Ubuntu))

#Asegurar Mysql
sudo mysql_secure_installation

#contrasena
alvaro123

#Verificar el servicio
sudo systemctl status mysql

# Inicie sesión en MySQL Server
sudo mysql -u root
