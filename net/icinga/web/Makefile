# $OpenBSD: Makefile,v 1.1.1.1 2011/03/28 14:06:06 sthen Exp $

COMMENT=	web UI for icinga
DISTNAME=	icinga-web-$V

BUILD_DEPENDS=	net/icinga/core,-api
RUN_DEPENDS=	www/pear \
		www/php5/core \
		www/php5/extensions,-ldap \
		www/php5/extensions,-pdo_mysql \
		www/php5/extensions,-xsl \
		net/icinga/core,-api
# is icinga-api RUN_DEPENDS or not?
# pdo_mysql  | pdo_pgsql

#Optional php extension
#        16/23 Test php5-soap ... (Extension soap does not exist) FAIL
#        17/23 Test php5-xmlrpc ... (Extension xmlrpc does not exist) FAIL
#        18/23 Test php5-iconv ... (iconv found) OK
#        19/23 Test php5-gd ... (Extension gd does not exist) FAIL
#        20/23 Test php5-ctype ... (ctype found) OK
#        21/23 Test php5-json ... (json found v1.2.1) OK
#        22/23 Test php5-hash ... (hash found v1.0) OK
#        23/23 Test php.ini memory_limit ... (memory_limit='134217728') OK



#MODULES=	devel/gettext

MAKE_FLAGS=	PREFIX=/var/www/icinga-web
FAKE_FLAGS=	CFGDIR=${TRUEPREFIX}/share/examples/icinga

USE_X11=	Yes
CONFIGURE_STYLE=gnu
# XXX some of this is probably crap copied from nagios or icinga/core
CONFIGURE_ARGS+=--datarootdir=/var/www \
		--with-icinga-api=/var/www/icinga-api \
		--localstatedir=/var/icinga \
		--sbindir=/var/www/cgi-bin/icinga \
		--with-web-apache-path=/var/www/conf/modules.sample \
		--with-api-cmd-file=/var/icinga/rw/icinga.cmd \
		--with-web-user=www \
		--with-web-group=www \
		--with-bin-user=${SHAREOWN} \
		--with-bin-group=${SHAREGRP}

#		--with-web-absolute-path=/var/www/icinga-web 

#		--with-db-type=DBTYPE   Type of dbms (default mysql)
#		--with-db-host=HOST     Host of dbms (default localhost)
#		--with-db-port=PORT     Port of the dbms (default 3306)
#		--with-db-name=DBNAME   DB name for icinga (default icinga_web)
#		--with-db-user=USER     DB user for icinga (default icinga_web)
#		--with-db-pass=PASS     DB pass for icinga (default icinga_web)
##		--with-db-socket=SOCKET DB path to unix socket (default /tmp/mysql.sock)
#		--with-api-type=APICON  API type (default CONNECTION_IDO)
#		--with-api-subtype=TYPE DB driver or network connection
#		--with-api-cmd-file=PATH Icinga command file (default /usr/local/icinga/var/rw/icinga.cmd)


NO_REGRESS=	Yes
NO_BUILD=	Yes

CFLAGS+=	-fPIC \
		-I${LOCALBASE}/include \
		-L${X11BASE}/lib -L${LOCALBASE}/lib
#LDFLAGS=		

#ALL_TARGET=		
INSTALL_TARGET=	install install-apache-config
# or install-javascript instead of install-apache-config?

PREFIX=		/var/www
#REGRESS_TARGET=	

#pre-configure:
#	@perl -pi -e 's, /etc/, ${SYSCONFDIR}/,' \
#	    ${WRKSRC}/sample-config/httpd.conf

pre-install:
	${INSTALL_DATA_DIR} ${WRKINST}/var/www/icinga-web
	${INSTALL_DATA_DIR} ${WRKINST}/var/www/conf/modules.sample

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
