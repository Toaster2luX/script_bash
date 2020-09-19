Récupérer la validité de plusieurs noms de domaine
https://it.izero.fr/script-bash-recuperer-la-validite-de-plusieurs-noms-de-domaine/


---

Executer le script et rediriger le resultat dans un fichier 

./ndd.sh > date_ndd.txt

---
---

Lister le fichier de sortie
cat date_ndd.txt

free.fr
notBefore=Jul 24 00:00:00 2019 GMT
notAfter=Jul 23 12:00:00 2021 GMT

google.fr
notBefore=Aug 26 08:17:30 2020 GMT
notAfter=Nov 18 08:17:30 2020 GMT

it.izero.fr
notBefore=Jul 24 20:21:51 2020 GMT
notAfter=Oct 22 20:21:51 2020 GMT

---


En detail
tree
.
├── date_ndd.txt (fichier en sortie avec les informations)
├── ndd.sh (script)
├── ndd.txt (liste des noms de domaine a checker)
├── readme.txt
└── repertoire_certificats (repo de tous les certificats, ci-dessous)
    ├── free.fr
    ├── google.fr
    └── it.izero.fr

