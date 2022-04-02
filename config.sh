#!/bin/bash
# Folder where the backups go
baseFolder=/mnt/snapshots

# Folder where PGSQL will generate his backup file
backupFolder=$baseFolder/current

# Name of the file
backupFile=pg_backup_postgre.dump

# BTRFS snapshots subvolume
snapshotsFolder=$baseFolder/history

# DB username
dbUser=postgre

# DB Name
dbName=postgre

# If you run this on a docker host, running a postgre instance, it will run docker exec commands.
docker=true

# Docker instance name
containerName=postgresql
