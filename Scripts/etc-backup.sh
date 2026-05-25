#!/bin/bash

# Configuration
SOURCE_ETC="/etc"
SOURCE_DB="/var/lib/pve-cluster/config.db"
BACKUP_DIR="/mnt/usb-backup/etc-backups"
DEST="$BACKUP_DIR/$(date +%Y-%m-%d)"

# Ensure the backup directory exists and isn't root
if [ -d "$BACKUP_DIR" ] && [ "$BACKUP_DIR" != "/" ]; then
    echo "Clearing old backups in $BACKUP_DIR..."
    rm -rf "${BACKUP_DIR:?}"/*
else
    echo "Error: Backup directory not found or invalid! Is the flash drive mounted?"
    exit 1
fi

# Create destination directory for today
mkdir -p "$DEST"

echo "Packing and compressing /etc folder..."
# Using tar preserves symlinks/permissions cleanly inside a single file
tar -czf "$DEST/etc-folder.tar.gz" -C "$SOURCE_ETC" .

echo "Backing up the database..."
cp "$SOURCE_DB" "$DEST/"

echo "Backup completed successfully to $DEST"
