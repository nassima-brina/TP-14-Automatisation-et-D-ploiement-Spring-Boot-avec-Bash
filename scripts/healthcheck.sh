#!/bin/bash
echo "Vérification de l'état de santé de l'application..."
STATUS=$(curl -s http://localhost:8085/actuator/health)

if [[ $STATUS == *"UP"* ]]; then
  echo "L'application est opérationnelle (UP) !"
else
  echo "L'application ne répond pas ou est en erreur."
  echo "Réponse reçue : $STATUS"
fi