# Backup entire drive
```bash
dd if=/dev/sdx bs=128k conv=noerror,sync status=progress | gzip -c > /path/to/file.gz
```

# Restore entire drive
```bash
gunzip -c /path/to/file.gz | dd of=/dev/sdx status=progress
```

#### Source: https://www.cyberciti.biz/faq/unix-linux-dd-create-make-disk-image-commands/
