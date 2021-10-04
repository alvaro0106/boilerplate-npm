#Actualizar 
sudo apt-get update
sudo apt-get upgrade

#install
snap install multipass

#ASegurar ser parte del grupo multipass
ls -l /var/snap/multipass/common/multipass_socket
groups | grep sudo
snap info multipass

#Trabajando con instancais 
#Lanzando tu primera instancia
#El launchcomando crea una nueva instancia de Ubuntu usando la imagen predeterminada, en este momento.
multipass launch

#Buscar imagenes 
multipass find

#formas de acceder a la instancia: execy shell(o shpara abreviar)
multipass exec keen-yak -- lsb_release --description
multipass shell keen-yak

#Obtener más información
multipass ls
multipass info keen-yak

#Compartir datos con la instancia
multipass mount $HOME keen-yak
multipass info keen-yak

#A partir de este momento /home/ubuntuestará disponible dentro de la instancia. 
#Úselo umountpara desmontarlo nuevamente y puede cambiar el destino pasándolo 
#después del nombre de la instancia:
multipass umount keen-yak
multipass mount $HOME keen-yak:/some/path
multipass info keen-yak

#También puede usar transferpara copiar archivos alrededor - prefijo la ruta con <name>:si está dentro de una instancia:
multipass transfer keen-yak:/etc/crontab keen-yak:/etc/fstab
ls -l crontab fstab
multipass transfer crontab fstab keen-yak:
multipass exec keen-yak -- ls -l crontab fstab

#Eliminando la instancia
multipass delete keen-yak
multipass list

#A continuación recover, puede hacerlo o purgeeliminar todas las instancias eliminadas por completo:
multipass recover keen-yak
multipass list

#Manifestación
multipass set client.primary-name=first
multipass start
multipass stop
multipass launch eoan
multipass set client.primary-name=calm-chimaera
multipass suspend
multipass set client.primary-name=chopin
multipass start
multipass list

#Lanzamiento
multipass help launch

multipass launch -c4 -d 5G -m 4G -n kvm2 --network <spec>
multipass launch -c 4 -d 5G -m 4G -n bunker
multipass shell nombre-kvm

multipass launch --network en0 --network name=bridge0,mode=manual

 multipass list --format yaml

 #Install LXD on Ubuntu 20.04 LTS using apt
 #Step 1 – Install LXD on Ubuntu 20.04 LTS Linux server
 #https://www.cyberciti.biz/faq/install-lxd-on-ubuntu-20-04-lts-using-apt/

sudo apt update
sudo apt upgrade -y

sudo apt install lxd

sudo lxd init
lxc profile list
lxc profile show default
lxc network list
lxc network show lxdbr0
lxc storage list

#Step 4 – Listing built-in LXD image for various Linux distros

lxc image list images:

lxc image list images: | grep -i centos
lxc image list images: | grep -i ubuntu
lxc image list images: | grep -i debian


#Step 5 – Creating your first Linux container
