#!/bin/bash
#
# Author: Newton Calegari (newton@nic.br)
#
# GDB (Git Dump Backup) is a script to incremental backup of MySQL Dump files
# Source code: https://github.com/newtoncalegari/gdb

# Log and display settings
DT="`date --rfc-3339='seconds'`"

# Dir config
## path to directory where GDB is located at
GDB_DIR="/path/to/gdb/dir/"

# Database config
DB_SCHEME="db_test"
DB_USER="user"
DB_PASS="password"
DB_DUMP_FILE="db_test.dump.sql"

echo $DT: GDB - Started
echo $DT: Acessing $GDB_DIR
cd $GDB_DIR
echo $DT: Dumping $DB_SCHEME
mysqldump --skip-extended-insert $DB_SCHEME -u$DB_USER -p$DB_PASS > $GDB_DIR/$DB_DUMP_FILE
echo $DT: Dump to $DB_DUMP_FILE finished

echo $DT: GDB - Preparing to commit
echo $DT: `git commit -am "$DT"`
echo $DT: GDB - Finished
echo " "
