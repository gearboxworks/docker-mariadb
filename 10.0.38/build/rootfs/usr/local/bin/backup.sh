#!/bin/bash -l

# See gearboxworks/gearbox-base for details.
test -f /build/include-me.sh && . /build/include-me.sh

if [ -f "/project/.NOTMOUNTED" ]
then
	c_err "Error: /project not mounted. Cannot dump database."
	exit 1
fi

if [ ! -d "/project/backup/sql" ]
then
	mkdir -p "/project/backup/sql"
fi

if [ -z "$1" ]
then
	DATE="$(date +'%y%m%d-%H%M%S')"
	DUMP="mysqldump-${DATE}.sql"
	LOG="mysqldump-${DATE}.log"
else
	DUMP="$1.sql"
	LOG="$1.log"
fi

mysqldump -h ${MYSQL_HOST} -u ${MYSQL_USER} -p${MYSQL_PASSWORD} ${MYSQL_DATABASE} > "/project/backup/sql/${DUMP}"
# 2> "/project/backup/sql/${LOG}"

