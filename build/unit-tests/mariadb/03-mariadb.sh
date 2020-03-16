#!/bin/bash
# Created on 2020-03-14T17:04:01+1100, using template:01-base.sh.tmpl and json:gearbox.json

p_info "mysql" "Release test started."

p_info "mysql" "MySQL configuration:"
# mysqld --help --verbose

OK="0"
for RETRY in 1 2 3 4 5 6 7 8
do
	sleep 4
	if mysqladmin -h localhost -u "${MYSQL_USER}" --password=${MYSQL_PASSWORD} status
	then
		c_ok "MySQL running OK."
		OK="1"
		break
	else
		c_warn "MySQL NOT OK - RETRY ${RETRY}."
		OK="0"
	fi
done

for RETRY in 1 2 3 4 5 6 7 8
do
	if mysql -h localhost -u "${MYSQL_USER}" --password=${MYSQL_PASSWORD} --table -e 'SHOW VARIABLES LIKE "%version%";'
	then
		c_ok "MySQL running OK."
		OK="1"
		break
	else
		c_warn "MySQL NOT OK - RETRY ${RETRY}."
		OK="0"
	fi
	sleep 2
done

#for RETRY in 1 2 3 4 5 6 7 8
#do
#	# if mysql -h localhost -u "${MYSQL_USER}" --password=${MYSQL_PASSWORD} --table -A -e 'SHOW GLOBAL VARIABLES;'
#	if mysqladmin -h localhost -u "${MYSQL_USER}" --password=${MYSQL_PASSWORD} variables
#	then
#		c_ok "MySQL running OK."
#		OK="1"
#		break
#	else
#		c_warn "MySQL NOT OK - RETRY ${RETRY}."
#		OK="0"
#	fi
#	sleep 2
#done

if [ "${OK}" == "0" ]
then
	c_err "MySQL NOT OK."
fi

p_info "mysql" "Release test finished."

