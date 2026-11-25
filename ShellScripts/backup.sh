#!/bin/bash
# Author: Paramjeet Yadav (Roll No: 2601730091)
# Purpose: Create a compressed backup of a folder

if [ -z "$1" ]; then
    echo "Usage: ./backup.sh <folder>"
    exit 1
fi

if [ ! -d "$1" ]; then
    echo "Error: folder '$1' does not exist."
    exit 1
fi

BACKUP_DIR="$HOME/DeveloperPortfolio_Backups"
mkdir -p "$BACKUP_DIR"

TIME=$(date +%Y-%m-%d_%H-%M-%S)
FILE="backup_$TIME.tar.gz"
SOURCE=$(realpath "$1")

if tar -czf "$BACKUP_DIR/$FILE" -C "$(dirname "$SOURCE")" "$(basename "$SOURCE")"; then
    SIZE=$(du -h "$BACKUP_DIR/$FILE" | cut -f1)
    echo "Backup successful: $FILE (Size: $SIZE)"
    echo "$TIME SUCCESS $FILE $SIZE" >> "$BACKUP_DIR/backup.log"
else
    echo "Backup failed."
    echo "$TIME FAILED $SOURCE" >> "$BACKUP_DIR/backup.log"
    exit 1
fi

