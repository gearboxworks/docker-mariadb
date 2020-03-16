#!/bin/bash
# Created on 2020-03-16T11:11:36+1100, using template:mariadb.sh.tmpl and json:gearbox.json

test -f /etc/gearbox/bin/colors.sh && . /etc/gearbox/bin/colors.sh

c_ok "Started."

c_ok "Installing packages."
APKBIN="$(which apk)"
if [ "${APKBIN}" != "" ]
then
	if [ -f /etc/gearbox/build/mariadb.apks ]
	then
		APKS="$(cat /etc/gearbox/build/mariadb.apks)"
		${APKBIN} update && ${APKBIN} add --no-cache ${APKS}; checkExit
	fi
fi

APTBIN="$(which apt-get)"
if [ "${APTBIN}" != "" ]
then
	if [ -f /etc/gearbox/build/mariadb.apt ]
	then
		DEBS="$(cat /etc/gearbox/build/mariadb.apt)"
		${APTBIN} update && ${APTBIN} install ${DEBS}; checkExit
	fi
fi


if [ -f /etc/gearbox/build/mariadb.env ]
then
	. /etc/gearbox/build/mariadb.env
fi

if [ ! -d /usr/local/bin ]
then
	mkdir -p /usr/local/bin; checkExit
fi

if [ ! -d /var/lib/mysql-files ]
then
	mkdir -p /var/lib/mysql-files
fi
chown mysql:mysql /var/lib/mysql-files

if [ ! -d /var/lib/mysql ]
then
	mkdir -p /var/lib/mysql
fi
chown mysql:mysql /var/lib/mysql

addgroup gearbox mysql
find / -xdev -user mysql | xargs chmod g+w

c_ok "Finished."
