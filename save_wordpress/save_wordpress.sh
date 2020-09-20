#!/bin/bash
# Sauvegarde site WordPress + BDD Mysql + fichiers de conf

# Variable date
DATE=$(date +%Y-%m-%d)

# Nom du fichier sauvegarde
NOM=wordpress-$DATE

# Creation du repertoire de sauvegarde
/bin/mkdir $NOM

# Création de l'archive de wordpress
/bin/tar -cjf $NOM/wordpress-$DATE.tar.bz2 /var/www/wordpress

# Creation de la sauvegarde mysql
/usr/bin/mysqldump --user=MON_USER --password='MON_MDP' --databases MA_BDD | /bin/gzip > $NOM/dump-BDD-wordpres$

# Copie fichier de conf utiles
/bin/cp /etc/nginx/nginx.conf $NOM/
/bin/cp /etc/iptables/rules.v4 $NOM/
/bin/cp /etc/nginx/sites-available/wordpress $NOM/
/bin/cp /usr/local/sbin/backup_full_wordpress.sh $NOM/

# Envoi mail de confirmation fin de sauvegarde
echo "Sauvegarde terminé"-$DATE | mail -s "Fin de la sauvegarde" mon_email@domaine.tld

