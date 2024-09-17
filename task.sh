#!/bin/bash

mysqldump -u $DB_USER -p$DB_PASSWORD ShopDB --result-file=ShopDB_backup.sql;

mysql -u $DB_USER -p$DB_PASSWORD  ShopDBReserve < ShopDB_backup.sql;

mysqldump -u $DB_USER -p$DB_PASSWORD ShopDB --no-create-db --result-file=ShopDB_no_create.sql;

mysql -u $DB_USER -p$DB_PASSWORD  ShopDBDevelopment < ShopDB_no_create.sql;
