#!/bin/bash

SOURCE_DIR="$HOME/Documents"
BACKUP_DIR="$HOME/Backups"
DATE=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_FILE="$BACKUP_DIR/backup_$DATE.tar.gz"

mkdir -p "$BACKUP_DIR"
tar -czf "$BACKUP_FILE" "$SOURCE_DIR"

if [ $? -eq 0 ]; then
    echo "✅ Backup successful: $BACKUP_FILE"
else
    echo "❌ Backup failed!"
fi
