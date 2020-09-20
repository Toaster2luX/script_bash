Sauvegarde WordPress + Bdd + fichiers de conf

https://it.izero.fr/script-bash-sauvegarde-wordpress-bdd-fichiers-de-conf/


---

Executer le script 

./save_wordpress.sh

---
---

Automatiser la sauvegarde toute les semaines dans un cron
30 07 * * 1 /usr/local/sbin/save_wordpress.sh

---


En detail
tree
.
├── readme.md
└── save_wordpress.sh
