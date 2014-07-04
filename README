# GDB (Git Dump Backup)

GDB is a script tool that keeps incremental backup of
MySQL Dump files using GIT.

** It's an experimental version! **

## How to use

### Config
Open the `gdb.sh` and set the variables according to your enviroment.

```
DB_SCHEMA="db_test"
DB_USER="user_test"
DB_PASS="testpassword"
DB_DUMP_FILE="testdb.dump.sql"
```

### Run
The script can be executed directly from bash or can be executed from Crontab.

To run it from Crontab:

```
# GDB (Git Dump Backup)
1 */3 * * * /bin/bash /path/to/git-dump-backup/gdb.sh >> /path/to/git-dump-backup/gdb.log
```
