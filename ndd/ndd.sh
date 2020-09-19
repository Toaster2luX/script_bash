#!/bin/bash

# Lister tous les noms de domaine présent dans un répertoire, recuperer avec awk le champs qui est égal au nom et rediriger le résultat dans un fichier
ls -l repertoire_certificats/ | awk '{print $9}' > ndd.txt

# Retour chariot pour une meilleur lisibilité
sed -i 's/$/\n/' ndd.txt

# Lecture du fichier et exécution des commandes 
cat ndd.txt | while  read ligne ; do
  echo "$ligne"
  echo | openssl s_client -servername "$ligne" -connect "$ligne":443 2>/dev/null | openssl x509 -noout -dates
done
