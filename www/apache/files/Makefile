#
# Makefile for building and installing apache
#
all::
	cd src; ${MAKE} PREFIX=@@PREFIX@@ $@

configure::
	cd src; ./Configure

INSTALL_FILE=${INSTALL} -c -m 644 -o bin -g bin

CONF_DIR=   @@PREFIX@@/etc/apache

install::
	-mkdir -p ${CONF_DIR}
	-mkdir -p @@PREFIX@@/www/data
	-mkdir -p @@PREFIX@@/www/icons
	-mkdir -p @@PREFIX@@/www/cgi-bin
	${INSTALL} -c -s -m 755 -o root src/httpd @@PREFIX@@/sbin
	${INSTALL} -c -m 644 -o nobody icons/* @@PREFIX@@/www/icons
	for file in httpd.conf srm.conf access.conf ; do \
	    if [ ! -f ${CONF_DIR}/$$file ] ; then \
		${INSTALL_FILE} conf/$$file-dist ${CONF_DIR}/$$file ; \
	    fi ; \
	    ${INSTALL_FILE} conf/$$file-dist ${CONF_DIR} ; \
	done
	for file in mime.types magic ; do \
	    if [ ! -f ${CONF_DIR}/$$file ] ; then \
		${INSTALL_FILE} conf/$$file ${CONF_DIR} ; \
	    fi ; \
	    ${INSTALL_FILE} conf/$$file ${CONF_DIR}/$${file}-dist ; \
	done
