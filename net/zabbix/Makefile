# $OpenBSD: Makefile,v 1.163 2020/02/26 11:27:01 robert Exp $

COMMENT-main =		network and application monitoring - agent
COMMENT-server =	network and application monitoring - server
COMMENT-proxy =		network and application monitoring - proxy
COMMENT-web =		network and application monitoring - web frontend

VERSION =		4.0.18
DISTNAME =		zabbix-${VERSION}
FULLPKGNAME-main =	zabbix-agent-${VERSION}
FULLPKGPATH-main =	net/zabbix,-main
PKGNAME-server =	zabbix-server-${VERSION}
PKGNAME-proxy =		zabbix-proxy-${VERSION}
FULLPKGPATH-proxy =	net/zabbix,-proxy
FULLPKGNAME-web =	zabbix-web-${VERSION}
FULLPKGPATH-web =	net/zabbix,-web
CATEGORIES =		net

MAJV =			${VERSION:C/^([0-9]+\.[0-9]+).*/\1/}

HOMEPAGE =		http://www.zabbix.com/

MAINTAINER =		Robert Nagy <robert@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=zabbix/}

MODULES=		lang/php
MODPHP_BUILDDEP =	No

MULTI_PACKAGES =	-main -web
PSEUDO_FLAVORS =	no_server
FLAVORS =		mysql pgsql sqlite3

SUBST_VARS +=		PREFIX-web ZABBIX_WEB MAJV

WANTLIB =		c iconv kvm m execinfo lber ldap crypto ssl z \
			curl nghttp2 pcre

LIB_DEPENDS =		converters/libiconv \
			databases/openldap \
			devel/libexecinfo \
			devel/pcre \
			net/curl

RUN_DEPENDS-main =

LIB_DEPENDS-server =	${LIB_DEPENDS} \
			textproc/libxml \
			net/net-snmp \
			textproc/iksemel \
			security/libssh2
RUN_DEPENDS-server =	net/fping
# we want the _zabbix user&group as well as README-main
RUN_DEPENDS-server +=	net/zabbix,-main>=${VERSION}
WANTLIB-server =	${WANTLIB} crypto ssl z netsnmp iksemel pthread \
			xml2 ssh2

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-server \
			--enable-agent \
			--enable-proxy \
			--enable-ipv6 \
			--with-libcurl \
			--with-libxml2 \
			--with-net-snmp \
			--with-ldap \
			--with-jabber="${LOCALBASE}" \
			--with-ssh2 \
			--with-openssl
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -lexecinfo" \
			ac_cv_search___res_query=no

PREFIX-web =		${VARBASE}/www
LIB_DEPENDS-web =
RUN_DEPENDS-web =	${MODPHP_RUN_DEPENDS} \
			lang/php/${MODPHP_VERSION},-gd
WANTLIB-web =
ZABBIX_WEB =		${PREFIX-web}/zabbix

LIB_DEPENDS-proxy =	${LIB_DEPENDS} \
			net/net-snmp \
			security/libssh2 \
			textproc/libxml
WANTLIB-proxy =		${WANTLIB} netsnmp ssh2 xml2 pthread
RUN_DEPENDS-proxy =	# empty

FLAVOR ?=		no_server
.if empty(FLAVOR)
FLAVOR =		mysql
.endif

#if non-backend-related flavors are added, add them to
#the following line as ":L:Nflavor1:Nflavor2" so that
#they don't trigger a "Conflicting flavors" error.
BACKEND =		${FLAVOR}
.if ${BACKEND} == "mysql"
MULTI_PACKAGES +=	-proxy -server
LIB_DEPENDS-proxy +=	databases/mariadb,-main
LIB_DEPENDS-server +=	databases/mariadb,-main
CONFIGURE_ARGS +=	--with-mysql
WANTLIB-proxy +=	mysqlclient pthread
WANTLIB-server +=	event mysqlclient
.elif ${BACKEND} == "pgsql"
MULTI_PACKAGES +=	-proxy -server
LIB_DEPENDS-proxy +=	databases/postgresql,-main
LIB_DEPENDS-server +=	databases/postgresql,-main
CONFIGURE_ARGS +=	--with-postgresql
WANTLIB-proxy +=	pq
WANTLIB-server +=	event pq
.elif ${BACKEND} == "sqlite3"
MULTI_PACKAGES +=	-proxy
CONFIGURE_ARGS +=	--with-sqlite3 \
			--disable-server
# The proxy does not use jabber, so just disable the check
CONFIGURE_ARGS +=	--without-jabber

WANTLIB-proxy +=	sqlite3
LIB_DEPENDS-proxy +=	databases/sqlite3
.elif ${BACKEND} == "no_server"
CONFIGURE_ARGS +=	--disable-server \
			--disable-proxy
.else
ERRORS +=		"Fatal: Conflicting flavors: ${FLAVOR}";
.endif

pre-configure:
	${SUBST_CMD} ${WRKSRC}/conf/zabbix_server.conf \
		${WRKSRC}/conf/zabbix_proxy.conf
	sed -i 's,sudo /usr/bin/nmap,doas ${LOCALBASE}/bin/nmap,' \
		${WRKSRC}/database/*/data.sql

post-install:
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX-web}/zabbix
	cd ${WRKBUILD}/frontends/php && tar -cf - . | \
		tar -C ${DESTDIR}${PREFIX-web}/zabbix -xf -
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/zabbix
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX-web}/conf/
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX-web}/conf/modules.sample
	${SUBST_DATA} ${FILESDIR}/zabbix.conf \
		${DESTDIR}${PREFIX-web}/conf/modules.sample/zabbix.conf
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/php-${MODPHP_VERSION}
	${SUBST_DATA} ${FILESDIR}/zabbix.ini \
		${PREFIX}/share/examples/php-${MODPHP_VERSION}/zabbix.ini
	${INSTALL_DATA_DIR} ${PREFIX}/share/zabbix/schema
	${INSTALL_DATA_DIR} ${PREFIX}/share/zabbix/data
	${INSTALL_DATA_DIR} ${PREFIX}/share/zabbix/data/images
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/zabbix
	${INSTALL_DATA} ${WRKBUILD}/conf/*.conf \
		${PREFIX}/share/examples/zabbix
	# Database schemas
	cd ${WRKSRC}/database/ && tar -cf - mysql postgresql sqlite3 | \
		tar -C ${PREFIX}/share/zabbix/schema -xf -

	@find ${PREFIX}/share/zabbix/schema -name data.sql -exec \
		perl -pi -e "s,/bin/ping,/sbin/ping,g;s,/usr/bin/traceroute,/usr/sbin/traceroute,g" {} \;

.include <bsd.port.mk>
