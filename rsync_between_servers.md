# Remote Source to Local Destination
```bash
rsync --progress -vra -e 'ssh -p 22 -i privkey.pem' user@x.x.x.x:SOURCE DESTINATION
```

# Local Source to Remote Destination
```bash
rsync --progress -vra -e 'ssh -p 22 -i privkey.pem' --rsync-path='sudo rsync' SOURCE user@x.x.x.x:DESTINATION
```
