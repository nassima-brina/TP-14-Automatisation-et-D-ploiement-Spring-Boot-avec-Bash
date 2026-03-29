#!/bin/bash
# Remplace 'user' et 'serveur' par tes vrais identifiants
REMOTE_USER="votre_utilisateur"
REMOTE_HOST="votre_ip_serveur"
REMOTE_PATH="/opt/apps/"

echo "Transfert du fichier JAR vers le serveur distant..."
# On utilise target/*.jar pour prendre le fichier généré par mvn package
scp target/*.jar $REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH

echo "Déploiement terminé sur le serveur."