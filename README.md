# snap-my-pgsql
**Quick and dirty** PostgreSQL backup tool using btfrs snapshots.

I made it as a way to have quick table and full database restoration with multiple points in time.

I know PITR exists, but restoring a single table seemed to be too much hassle.

The way I did set this up, was using a separate virtual disk or partition formatted with BTRFS, mounted it on the fstab, then I created a folder called "current", where the current backup of postgres is generated.

After this I set up an btrfs subvolume where the snapshots are going to be stored.

```bash
sudo btrfs subvolume create /snapshots/history
```

```bash
# Syntax:
# Create backup

./snap-my-psql backup


# List backups
./snap-my-psql list

# Restore backup
./snap-my-psql recover database history/25-08-1991_18-23-02
./snap-my-psql recover table history/25-08-1991_18-23-02 myTableName

# Remove backup
./snap-my-psql remove history/25-08-1991_18-23-02
```

Secondary function of this script was to practise vim and get into this beautiful classic terminal text editor.

