#!/bin/bash

# Конфігурація
BACKUP_SRC="/path/to/source_directory"  # шлях до директорії з файлами, які потрібно бекапити
BACKUP_DST="/path/to/backup_directory"  # шлях до директорії для зберігання бекапів
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")  # поточна дата та час

# Створення бекапу
BACKUP_NAME="backup_$TIMESTAMP.tar.gz"
tar -czf $BACKUP_DST/$BACKUP_NAME $BACKUP_SRC

# Логи
echo "Backup $BACKUP_NAME created successfully at $TIMESTAMP" >> /var/log/backup.log
