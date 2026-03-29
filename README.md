# TP 14 — Automatisation et Déploiement Spring Boot avec Bash

## 📚 Cours
Développement JakartaEE : Spring

---

## Contexte

Ce TP s'inscrit dans le cadre du cours Développement JakartaEE avec Spring. En environnement professionnel, les applications ne sont pas exécutées depuis un IDE mais via des scripts automatisés sur des serveurs Linux. 

L'objectif est de maîtriser le cycle de vie complet d'une application (Build, Run, Stop, Deploy) en utilisant des scripts **Bash**, faisant ainsi le pont entre le développement logiciel et l'administration système (DevOps).

---

## Objectifs

#### - Générer un fichier exécutable (JAR) de l'application via Maven
#### - Automatiser le démarrage en arrière-plan avec gestion des flux (nohup, redirections)
#### - Maîtriser la gestion des processus Linux (PID) pour l'arrêt propre du service
#### - Créer un pipeline de déploiement continu local (Build + Deploy)
#### - Mettre en place une supervision de base avec Healthcheck et archivage des logs

---

## Technologies utilisées

- **Spring Boot 3.x**
- **Java 17 / 25**
- **Maven** 
- **Bash** 
- **H2 Database** (Base de données en mémoire)
- **Spring Boot Actuator** 

---

##  Structure du projet

<img width="1316" height="845" alt="image" src="https://github.com/user-attachments/assets/0fe2273d-a958-4e50-a6f9-6e01692d03c2" />



## Installation et lancement
- Cloner le projet :

git clone https://github.com/nassima-brina/TP-14-Automatisation-et-D-ploiement-Spring-Boot-avec-Bash/tree/main
- Entrer dans le dossier :

cd springbash
- Donner les permissions d'exécution :

chmod +x scripts/*.sh
- Lancer le déploiement automatique :

./scripts/deploy.sh
L'application est accessible sur : http://localhost:8085
![WhatsApp Image 2026-03-29 at 12 36 01](https://github.com/user-attachments/assets/6796fab2-1de0-4e20-854c-b033c5c9a4ef)

![WhatsApp Image 2026-03-29 at 13 01 46](https://github.com/user-attachments/assets/3536142b-bfd8-471b-84d4-b0eb71deac99)

## Scripts Bash créés
### run.sh
Démarre l'application en arrière-plan avec nohup, redirige les logs vers logs/app.log et récupère le PID du processus.
### stop.sh
Identifie le PID du processus en cours et utilise la commande kill pour libérer le port 8085 proprement.
### logs.sh
Affiche les 30 dernières lignes du fichier de log pour surveiller l'activité du serveur en temps réel.
### deploy.sh
Automatise la compilation via mvn clean package et lance immédiatement la nouvelle version du JAR généré.
### healthcheck.sh
Utilise curl pour interroger l'endpoint /actuator/health et confirmer que le service est opérationnel (UP).
### archive_logs.sh
Compresse le dossier des logs dans une archive .tar.gz horodatée pour l'archivage historique.
## Aperçu de l'application
L'application permet :
- Une compilation sans erreur via Maven
  ![WhatsApp Image 2026-03-29 at 13 19 09](https://github.com/user-attachments/assets/5224693a-84e9-4133-8119-5003939b347a)

- Un démarrage persistant même après fermeture du terminal
- Une vérification automatisée de la disponibilité du service
- Une gestion propre des ressources système (arrêt des PID)
## Conclusion
Ce TP m'a permis de comprendre et d'appliquer les concepts DevOps fondamentaux :
- L'automatisation des tâches répétitives avec des scripts Bash
- La gestion des processus et des flux d'entrée/sortie sous Linux
- Le déploiement reproductible d'une application Spring Boot sans IDE
- La mise en place d'une première brique de pipeline CI/CD
