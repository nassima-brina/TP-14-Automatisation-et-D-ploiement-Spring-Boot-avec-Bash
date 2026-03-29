#!/bin/bash
echo "Arrêt de l'application sur le port 8085..."
PID=$(netstat -ano | grep :8085 | awk '{print $5}' | head -n 1)

if [ -z "$PID" ]; then
  echo "Aucun processus trouvé sur le port 8085."
else
  taskkill -F -PID $PID
  echo "Processus $PID arrêté avec succès."
fi