#!/bin/bash -l

# See gearboxworks/gearbox-base for details.
test -f /build/include-me.sh && . /build/include-me.sh

if [ -f "/home/gearbox/projects/default/.NOTMOUNTED" ]
then
	c_err "Error: /home/gearbox/projects/default not mounted. Cannot dump database."
	exit 1
fi

if [ ! -d "/home/gearbox/projects/default/backup/sql" ]
then
	mkdir -p "/home/gearbox/projects/default/backup/sql"
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

mysqldump -h ${MYSQL_HOST} -u ${MYSQL_USER} -p${MYSQL_PASSWORD} ${MYSQL_DATABASE} > "/home/gearbox/projects/default/backup/sql/${DUMP}"

