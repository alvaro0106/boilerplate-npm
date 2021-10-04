sudo apt-get install system-config-lvm
sudo pvdisplay -m
sudo vgdisplay -vv
sudo lvdisplay

#Preparar un disco para LVM
sudo lvdisplay /dev/lion10/swap_1

sudo fdisk /dev/sdb

sudo fdisk -l /dev/sdb

#listar grupos de volumenes
vgdisplay
vgsscan

#mostrar el volumen ver el espacio libre
sudo vgdisplay ubuntu-vg

# Creando volumenes logicos
sudo lvcreate --size 100G -n respaldos ubuntu-vg

#Ver el voumen Creando
sudo lvscan

#Aun no tenemos un sistema de archivos, creemos un sistema de archivos ext4 en el nuevo
#volumen logico con el comando: mkfs.ext4
sudo mkfs.ext4 /dev/ubuntu-vg/respaldos
sudo lvdisplay /dev/ubuntu-vg/respaldos

#Para reducir el tama;o de un volumen logico, si desea reducir el tamaño de su volumen lógico "raíz"
#deberá hacerlo a través de un disco en vivo
#Desmontar el volumen logico.
sudo lvreduce --resizefs --extents -10000 /dev/ubuntu-vg/respaldos

#Creando instantaneas
#Cuando tome una instantánea, use el comando lvcreate junto con la opción " - s " o - -snapshot 
#como se muestra a continuación y recuerde no usar ningún "-" (es decir, guión / guión) 
#en el nombre ya que software como grub2 tendrá problemas usándolo:
sudo lvcreate -s -n sp_respaldos --size 1G /dev/ubuntu-vg/respaldos

sudo mkdir /mnt/snap
sudo mount /dev/ubuntu-vg/sp_respaldos /mnt/snap

#Cuantas extenciones fisicas hay / dev / sdb1 
sudo pvdisplay /dev/sdb1

#Remover volumenes de grupo
pvdisplay /dev/hda1


#Para inicializar una partición como volumen físico
sudo pvcreate /dev/sdb

#Order display existing logical volumenes
sudo lvs

#To check the actual size of your logical volume,
df -h


#############################################################
#############################################################
#
#LVM Snapshots Backup and Restore on Linux
#
#############################################################
#############################################################

lvs
df -h

#Example copy folder
sudo cp -R lion10 /mnt/snap

#creandp the snapshot
lvcreate -s -n <snapshot_name> -L <size> <logical_volume>
sudo lvcreate -s -n vg_1 -L 500M /dev/ubuntu-vg/respaldos
lvs

#Montaje de una instantánea de LVM usando mount
$mount <snapshot_path> <mount_point>
mount /dev/ubuntu-vg/respaldos /mnt/snap
lsblk

#Creación de una copia de seguridad de instantánea LVM local
$tar -cvzf backup.tar.gz <snapshot_mount>
tar -cvzf backup.tar.gz /mnt/snap
sudo tar -cvzf backup.tar.gz /mnt/snap
rsync -aPh /mnt/snap alvaro@192.168.0.6:/home/alvaro

#Restauracion del sistema
$lvconvert --mergesnapshot <snapshot_logical_volume>
lvconvert --merge ubuntu-vg/respaldos

lvs -a -o +devices
lvconvert --merge rhel/snap

#Restauracion
sudo vgs
sudo lvs
sudo umount /mnt/snap
sudo lvdisplay ubuntu-vg/respaldos
df -h