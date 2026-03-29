#!/bin/bash
DATE=$(date +%Y%m%d)
ARCHIVE_NAME="logs_$DATE.tar.gz"

echo "Archivage des journaux dans $ARCHIVE_NAME..."
tar -czf "$ARCHIVE_NAME" logs/

if [ $? -eq 0 ]; then
  echo "Succès : Archive créée."
else
  echo "Erreur lors de l'archivage."
fi