#https://ubunlog.com/angular-cli-crea-aplicaciones-angular/

sudo curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get update && sudo apt-get install yarn
sudo apt install -y nodejs
sudo apt install -y build-essential

#Instalación de CLI Angular en Ubuntu 
sudo npm install -g @angular/cli
ng --version 

#Crear un proyecto
cd /var/www/html/
sudo ng new ubunlog-app
cd ubunlog-app
ng serve

#Cambiar los propietarios de archivos y carpetas
sudo chown -R ubuntu www

#Cambiar grupo de documento
sudo chown :ubuntu -R www
