# $OpenBSD: Makefile,v 1.28 2010/09/28 11:04:14 robert Exp $

COMMENT-main =		network and application monitoring - agent
COMMENT-server =	network and application monitoring - server
COMMENT-web =		network and application monitoring - web frontend

VERSION =		1.8.3
DISTNAME =		zabbix-${VERSION}
FULLPKGNAME-main =	zabbix-agent-${VERSION}
FULLPKGPATH-main =	net/zabbix,-main
PKGNAME-server =	zabbix-server-${VERSION}
FULLPKGNAME-web =	zabbix-web-${VERSION}
FULLPKGPATH-web =	net/zabbix,-web
CATEGORIES =		net

REVISION-main=		1

MAJV =			${VERSION:C/^([0-9]+\.[0-9]+).*/\1/}

HOMEPAGE =		http://www.zabbix.com/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=zabbix/}

MODULES=		converters/libiconv

MULTI_PACKAGES =	-main -web
PSEUDO_FLAVORS =	no_server
FLAVORS =		mysql pgsql sqlite3

SUBST_VARS +=		PREFIX-web ZABBIX_WEB MAJV

WANTLIB =		c kvm m execinfo lber ldap
LIB_DEPENDS =		::databases/openldap \
			::devel/libexecinfo

LIB_DEPENDS-server =	${LIB_DEPENDS} \
			::net/curl \
			::net/net-snmp \
			::textproc/iksemel
RUN_DEPENDS-server =	::net/fping
# we want the _zabbix user&group as well as README.OpenBSD
RUN_DEPENDS-server +=	:zabbix-agent-${VERSION}:net/zabbix,-main
WANTLIB-server =	${WANTLIB} crypto idn ssl z curl netsnmp iksemel

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-server \
			--enable-agent \
			--enable-proxy \
			--enable-ipv6 \
			--with-libcurl \
			--with-net-snmp \
			--with-ldap \
			--with-jabber="${LOCALBASE}"
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -lexecinfo" \
			ac_cv_search___res_query=no

PREFIX-web =		/var/www
LIB_DEPENDS-web =
RUN_DEPENDS-web =	::www/php5/extensions,-gd \
			::www/php5/extensions,-mbstring
WANTLIB-web =
ZABBIX_WEB =		${PREFIX-web}/zabbix

FLAVOR ?=		no_server

#if non-backend-related flavors are added, add them to
#the following line as ":L:Nflavor1:Nflavor2" so that
#they don't trigger a "Conflicting flavors" error.
BACKEND =		${FLAVOR}
.if ${BACKEND} == "mysql"
MULTI_PACKAGES += -server
LIB_DEPENDS-server +=	::databases/mysql,-main
CONFIGURE_ARGS +=	--with-mysql
WANTLIB-server += mysqlclient
.elif ${BACKEND} == "pgsql"
MULTI_PACKAGES += -server
LIB_DEPENDS-server +=	::databases/postgresql,-main
CONFIGURE_ARGS +=	--with-pgsql
WANTLIB-server += pq
.elif ${BACKEND} == "sqlite3"
MULTI_PACKAGES += -server
LIB_DEPENDS-server +=	::databases/sqlite3,-main
CONFIGURE_ARGS +=	--with-sqlite3
WANTLIB-server += sqlite3
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
	chown ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/share/doc/zabbix/README.OpenBSD \
		${DESTDIR}${PREFIX-web}/conf/modules.sample/zabbix.conf \
		${DESTDIR}${PREFIX-web}/conf/php5.sample/zabbix.ini

.include <bsd.port.mk>
