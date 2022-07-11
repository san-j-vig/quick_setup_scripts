# Installation
```bash
sudo apt update
sudo apt-get install -y wget gnupg2 lsb-release curl
wget https://repo.percona.com/apt/percona-release_latest.generic_all.deb
sudo dpkg -i percona-release_latest.generic_all.deb
sudo apt-get update
sudo apt-get install clang-format clang-tidy clang-tools clang clangd libc++-dev libc++1 libc++abi-dev libc++abi1 libclang-dev libclang1 liblldb-dev libllvm-ocaml-dev libomp-dev libomp5 lld lldb llvm-dev llvm-runtime llvm python-clang -y
sudo percona-release setup ppg-13
sudo apt-get install percona-postgresql-13 -y
sudo pg_ctlcluster 13 main start
```

# Connecting to server
```bash
sudo su postgres psql
```

# Optional packages
```bash
sudo apt-get install percona-postgresql-13-repack
sudo apt-get install percona-postgresql-13-pgaudit
sudo apt-get install percona-pgbackrest
sudo apt-get install percona-patroni
sudo apt-get install percona-pg-stat-monitor13
sudo apt-get install percona-pgbouncer
sudo apt-get install percona-pgaudit13-set-user
sudo apt-get install percona-pgbadger
sudo apt-get install percona-postgresql-13-wal2json
sudo apt-get install percona-postgresql-contrib
```