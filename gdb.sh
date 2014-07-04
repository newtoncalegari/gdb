#!/bin/bash

# Log settings
DT="`date --rfc-3339='seconds'`"

# Config
DB_SCHEME="db_test"
DB_USER="user"
DB_PASS="password"
DB_DUMP_FILE="db_test.dump.sql"

echo $DT: GDB - Started
echo $DT: Dumping $DB_SCHEME
mysqldump --skip-extended-insert $DB_SCHEME -u$DB_USER -p$DB_PASS > $DB_DUMP_FILE
echo $DT: Dump to $DB_DUMP_FILE finished

echo $DT: GDB - Preparing to commit
echo $DT: `git commit -am "$DT"`
echo $DT: GDB - Finished
echo " "
