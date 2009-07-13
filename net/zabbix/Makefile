# $OpenBSD: Makefile,v 1.8 2009/07/13 07:21:01 ajacoutot Exp $

COMMENT-main =		network and application monitoring - agent
COMMENT-server =	network and application monitoring - server
COMMENT-web =		network and application monitoring - web frontend
COMMENT-doc =		network and application monitoring - non-free documentation

VERSION =		1.6.4
MAJOR =			${VERSION:R}
DISTNAME =		zabbix-${VERSION}
PKGNAME-main =		zabbix-agent-${VERSION}p4
PKGNAME-server =	zabbix-server-${VERSION}p5
PKGNAME-doc =		zabbix-doc-${VERSION}p1
PKGNAME-web =		zabbix-web-${VERSION}p4
CATEGORIES =		net

HOMEPAGE =		http://www.zabbix.com/

# GPLv2
# Manual: - free for translation, if original content stays the same
#	  - printed copies for personal use allowed
#	  - all other uses need to be agreed upon with Zabbix Company
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =includes non-free documentation
PERMIT_DISTFILES_FTP =	includes non-free documentation

PERMIT_PACKAGE_CDROM-doc = non-free documentation
PERMIT_PACKAGE_FTP-doc =   non-free documentation

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=zabbix/}

MULTI_PACKAGES =	-main -doc
PSEUDO_FLAVORS =	no_server
FLAVORS =		mysql pgsql

SUBST_VARS +=		PREFIX-web ZABBIX_WEB MAJOR

WANTLIB =		c kvm m
LIB_DEPENDS =		lber,ldap::databases/openldap

LIB_DEPENDS-doc =
WANTLIB-doc =

LIB_DEPENDS-server =	${LIB_DEPENDS} \
			curl::net/curl \
			netsnmp::net/net-snmp
RUN_DEPENDS-server =	::net/fping
WANTLIB-server =	${WANTLIB} crypto idn ssl z

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-server \
			--enable-agent \
			--enable-proxy \
			--enable-ipv6 \
			--with-libcurl \
			--with-net-snmp \
			--with-ldap
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_search___res_query=no

PREFIX-web =		/var/www
LIB_DEPENDS-web =
RUN_DEPENDS-web =	::www/php5/extensions,-gd
WANTLIB-web =
ZABBIX_WEB =		${PREFIX-web}/htdocs/zabbix

FLAVOR ?=		no_server

#if non-backend-related flavors are added, add them to
#the following line as ":L:Nflavor1:Nflavor2" so that
#they don't trigger a "Conflicting flavors" error.
BACKEND =		${FLAVOR}
.if ${BACKEND} == "mysql"
MULTI_PACKAGES += -server -web
LIB_DEPENDS-server +=	mysqlclient::databases/mysql,-main
RUN_DEPENDS-web + =	::www/php5/extensions,-mysql
CONFIGURE_ARGS +=	--with-mysql
.elif ${BACKEND} == "pgsql"
MULTI_PACKAGES += -server -web
LIB_DEPENDS-server +=	pq::databases/postgresql,-main
RUN_DEPENDS-web + =	::www/php5/extensions,-pgsql
CONFIGURE_ARGS +=	--with-pgsql
.elif ${BACKEND} == "no_server"
CONFIGURE_ARGS += --disable-server \
                  --disable-proxy
.else
ERRORS +=		"Fatal: Conflicting flavors: ${FLAVOR}";
.endif

pre-configure:
	${SUBST_CMD} ${WRKSRC}/misc/conf/zabbix_server.conf \
		${WRKSRC}/misc/conf/zabbix_proxy.conf

post-install:
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX-web}/zabbix
	cd ${WRKBUILD}/frontends/php && tar -cf - . | \
		tar -C ${DESTDIR}${PREFIX-web}/zabbix -xf -
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/zabbix
	${SUBST_CMD} -c ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/zabbix/README.OpenBSD
	${INSTALL_DATA} "${WRKBUILD}/docs/ZABBIX Manual v1.6 rev 17.pdf" \
		${PREFIX}/share/doc/zabbix/ZABBIX_Manual_v1.6_rev17.pdf
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX-web}/conf/
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX-web}/conf/modules.sample
	${SUBST_CMD} -c ${FILESDIR}/zabbix.conf \
		${DESTDIR}${PREFIX-web}/conf/modules.sample/zabbix.conf
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX-web}/conf/php5.sample
	${SUBST_CMD} -c ${FILESDIR}/zabbix.ini \
		${DESTDIR}${PREFIX-web}/conf/php5.sample/zabbix.ini
	${INSTALL_DATA_DIR} ${PREFIX}/share/zabbix/schema
	${INSTALL_DATA_DIR} ${PREFIX}/share/zabbix/data
	${INSTALL_DATA_DIR} ${PREFIX}/share/zabbix/data/images
	${INSTALL_DATA} ${WRKBUILD}/create/schema/*.sql \
		${PREFIX}/share/zabbix/schema
	${INSTALL_DATA} ${WRKBUILD}/create/data/*.sql \
		${PREFIX}/share/zabbix/data
	${INSTALL_DATA} ${WRKBUILD}/create/data/images/*.png \
		${PREFIX}/share/zabbix/data/images
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/zabbix
	${INSTALL_DATA} ${WRKBUILD}/misc/conf/*.conf \
		${PREFIX}/share/examples/zabbix
	# Script to easy upgrading from previous major version
	cd ${WRKSRC}/upgrades/ && tar -cf - dbpatches | \
		tar -C ${PREFIX}/share/zabbix -xf -
	touch ${WRKINST}/${PREFIX-web}/zabbix/conf/zabbix.conf.php
	chown ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/share/doc/zabbix/README.OpenBSD \
		${DESTDIR}${PREFIX-web}/conf/modules.sample/zabbix.conf \
		${DESTDIR}${PREFIX-web}/conf/php5.sample/zabbix.ini \
		${DESTDIR}/${PREFIX-web}/zabbix/conf/zabbix.conf.php

.include <bsd.port.mk>
