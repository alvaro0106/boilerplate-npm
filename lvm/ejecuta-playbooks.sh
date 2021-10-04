#################################### CREATE VOLUMENES ###############################################3

# corre sin errores

ansible-playbook partition.yaml --limit storage -t "backup-prep" 

##################################### storage #########################################################
#Es mismo codigo

ansible-playbook partition.yaml --limit storage -t "initial-storage-config"

##################################### ARCHIVE BACKUP ###################################

ansible-playbook partition.yaml --limit storage -t "archive-storage-backup"


################# SNAP SHOT ####################################################

ansible-playbook partition.yaml --limit storage -t "take-storage-snapshot"

################# RESTORE *** ############################################

ansible-playbook partition.yaml --limit storage -t "restore-from-snapshot"


######################### REMOVE ###################################################

ansible-playbook partition.yaml --limit storage -t "remove-fs-lv-vg-pv"