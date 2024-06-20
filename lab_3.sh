#!/bin/bash

# Конфігурація
BACKUP_SRC="/path/to/source_directory"
BACKUP_DST="/path/to/backup_directory"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

# Створення бекапу, виключаючи файли з розширенням .dat
BACKUP_NAME="backup_$TIMESTAMP.tar.gz"
tar --exclude='*.dat' -czf $BACKUP_DST/$BACKUP_NAME $BACKUP_SRC

# Логи
echo "Backup $BACKUP_NAME created successfully at $TIMESTAMP" >> /var/log/backup.log
