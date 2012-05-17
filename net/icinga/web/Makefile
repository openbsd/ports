# $OpenBSD: Makefile,v 1.11 2012/05/17 11:06:33 sthen Exp $

# Work in progress. Not yet linked to the build.

COMMENT =	web UI for icinga
DISTNAME =	icinga-web-$V

MODULES=	lang/php

RUN_DEPENDS =	www/pear \
		lang/php/${MODPHP_VERSION},-ldap \
		lang/php/${MODPHP_VERSION},-xsl \
		php-pdo_mysql-${MODPHP_VSPEC}|php-pdo_pgsql-${MODPHP_VSPEC}:lang/php/${MODPHP_VERSION},-pdo_mysql
# Optional php extensions: gd soap xmlrpc
# memcache

LOCALSTATEDIR =	${BASELOCALSTATEDIR}/icinga

CONFIGURE_STYLE = gnu
CONFIGURE_ENV +=  PHP="${MODPHP_BIN}"
CONFIGURE_ARGS += \
	--datarootdir=/var/www \
	--sbindir=/var/www/cgi-bin/icinga \
	--with-web-apache-path=${PREFIX}/etc \
	--with-api-cmd-file=/var/icinga/rw/icinga.cmd \
	--with-web-user=www \
	--with-web-group=www \
	--with-bin-user=${SHAREOWN} \
	--with-bin-group=${SHAREGRP} \
	--with-db-socket=/var/run/mysql/mysql.sock
# override default ("localhost") to allow tcp connections; makes mysql easier
CONFIGURE_ARGS += \
	--with-api-host=127.0.0.1 \
	--with-db-host=127.0.0.1

NO_REGRESS =	Yes
NO_BUILD =	Yes

INSTALL_TARGET = install install-apache-config

PREFIX =	/var/www/icinga-web

pre-install:
	${INSTALL_DATA_DIR} ${WRKINST}/var/www/conf/modules.sample

post-install:
	find ${WRKINST} -name '*.orig' -print0 | xargs -0r rm
	cd ${PREFIX}; \
	find ${PREFIX} -name '*.site.xml' -exec mv {} {}.dist \;
	mv ${PREFIX}/app/config/databases.xml{,.dist}
	${INSTALL_DATA_DIR} ${PREFIX}/etc/schema/updates
	cd ${WRKSRC}/etc/schema; \
	${INSTALL_DATA} *sql ${PREFIX}/etc/schema; \
	${INSTALL_DATA} updates/*sql ${PREFIX}/etc/schema/updates
	for i in ${PREFIX}/etc/conf.d/*xml; do mv $$i $$i.dist; done

.include <bsd.port.mk>
