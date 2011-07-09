# $OpenBSD: Makefile,v 1.7 2011/07/09 00:46:19 robert Exp $

# Work in progress. Not yet linked to the build.

COMMENT =	web UI for icinga
V =		1.4.1
REVISION =	0
DISTNAME =	icinga-web-$V

MODULES=	lang/php

BUILD_DEPENDS =	icinga-api-$V:net/icinga/core,-api
RUN_DEPENDS =	www/pear \
		lang/php/${MODPHP_VERSION},-ldap \
		lang/php/${MODPHP_VERSION},-pdo_mysql \
		lang/php/${MODPHP_VERSION},-xsl \
		icinga-api-$V:net/icinga/core,-api
# Optional php extensions: gd soap xmlrpc
# Does this work with pgo_pgsql? So far haven't worked out how.

MAKE_FLAGS =	PREFIX=/var/www/icinga-web
FAKE_FLAGS =	CFGDIR=${TRUEPREFIX}/share/examples/icinga

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS += \
	--datarootdir=/var/www \
	--with-icinga-api=/var/www/icinga-api \
	--localstatedir=/var/icinga \
	--sbindir=/var/www/cgi-bin/icinga \
	--with-web-apache-path=/var/www/conf/modules.sample \
	--with-api-cmd-file=/var/icinga/rw/icinga.cmd \
	--with-web-user=www \
	--with-web-group=www \
	--with-bin-user=${SHAREOWN} \
	--with-bin-group=${SHAREGRP} \
	--with-db-socket=/var/run/mysql/mysql.sock

#		--with-db-type=DBTYPE   Type of dbms (default mysql)
#		--with-db-host=HOST     Host of dbms (default localhost)
#		--with-db-port=PORT     Port of the dbms (default 3306)
#		--with-api-type=APICON  API type (default CONNECTION_IDO)
#		--with-api-subtype=TYPE DB driver or network connection

NO_REGRESS =	Yes
NO_BUILD =	Yes

INSTALL_TARGET = install install-apache-config

PREFIX =	/var/www

pre-install:
	cd ${WRKINST}; ${INSTALL_DATA_DIR} \
	    ${WRKINST}/var/www/etc/schema/model \
	    ${WRKINST}/var/www/etc/schema/updates \
	    ${WRKINST}/var/www/icinga-web \
	    ${WRKINST}/var/www/conf/modules.sample

post-install:
	find ${WRKINST} -name '*.orig' -print0 | xargs -0r rm
	cd ${PREFIX}; mv app bin doc etc lib pub icinga-web/ ; \
	mv conf/modules.sample/icinga-web.conf \
	    conf/modules.sample/icinga-web.conf.dist
	find ${PREFIX} -name '*.site.xml' -exec mv {} {}.dist \;
	${INSTALL_DATA_DIR} ${WRKINST}/var/www/icinga-web/etc/schema/updates
	cd ${WRKSRC}/etc/schema; \
	${INSTALL_DATA} *sql ${WRKINST}/var/www/icinga-web/etc/schema; \
	${INSTALL_DATA} updates/*sql \
	    ${WRKINST}/var/www/icinga-web/etc/schema/updates

.include <bsd.port.mk>
