# Install PV
```bash
sudo apt install pv -y
```

# Dump
```bash
mysqldump -h <host> -u <username> -p <db name> | pv | gzip > mydump.sql.gz
```

# Restore
```bash
pv mydump.sql.gz | gunzip | mysql -h <host> -u <username> -p <db name>
```