#primero ver todos los volumenes
sudo fdisk -l /dev/sda

#LVM - Logical Volume Management
#https://www.digitalocean.com/community/tutorials/how-to-use-lvm-to-manage-storage-devices-on-ubuntu-16-04
# https://www.digitalocean.com/community/tutorials/an-introduction-to-lvm-concepts-terminology-and-operations#

Physical Volumes - pv
Volume Groups - vg
Logical Volumes - lv

sudo lvmdiskscan

#Now that we know the physical devices we want to use, we can mark them as 
#physical volumes within LVM using the pvcreate command:

sudo pvcreate /dev/sda3
sudo fdisk -l
snap list
losetup -a
lsblk -o name,mountpoint,label,size,fstype,uuid | egrep -v "^loop"
df | egrep -v /dev/loop

#ver solo los montajes
lsblk -af |grep -sv loop

# para eliminar
sudo losetup -d /dev/loop<loopnumber>

#ESpacio de almacenamianto
sudo du -hs /snap/

#Crear o ampliar componentes LVM
sudo lvmdiskscan

https://landoflinux.com/linux_lvm_command_examples.html
https://unix.stackexchange.com/questions/189054/how-to-obtain-info-about-physical-volume-as-non-root-user
https://www.instructables.com/Snapshots-con-LVM-Usalos-como-backup-para-revertir/

https://tutonics.com/2012/11/ubuntu-lvm-guide-part-1.html
https://tutonics.com/2012/12/lvm-guide-part-2-snapshots.html

https://access.redhat.com/documentation/es-es/red_hat_enterprise_linux/5/html/logical_volume_manager_administration/pv_change
https://serverfault.com/questions/275679/rescue-disk-is-unable-to-see-the-lvm-physical-volumes
https://access.redhat.com/documentation/es-es/red_hat_enterprise_linux/8/pdf/configuring_and_managing_logical_volumes/red_hat_enterprise_linux-8-configuring_and_managing_logical_volumes-es-es.pdf

https://www.redhat.com/sysadmin/resize-lvm-simple
https://www.digitalocean.com/community/tutorials/how-to-use-lvm-to-manage-storage-devices-on-ubuntu-16-04

https://docs.ansible.com/ansible/2.5/modules/ec2_snapshot_module.html
https://linoxide.com/lvm-snapshots-ext4-centos-7/
https://www.linuxsysadmin.ml/2016/02/haciendo-snapshots-con-lvm.html

https://www.flecharoja.com/blog/2018-04/volumenes-logicos/
https://docs.ansible.com/ansible/2.4/vmware_guest_snapshot_module.html
https://vander.host/knowledgebase/operating-systems/how-to-resize-an-ubuntu-18-04-lvm-disk/

https://docs.ansible.com/
https://docs.ansible.com/ansible/latest/collections/ansible/posix/synchronize_module.html
https://docs.ansible.com/ansible/latest/collections/community/kubernetes/k8s_module.html
https://docs.ansible.com/ansible/2.4/docker_volume_module.html
https://docs.ansible.com/ansible/latest/index.html


https://www.hostinger.mx/tutoriales/rsync-linux

