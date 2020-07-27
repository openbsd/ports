# $OpenBSD: Makefile,v 1.168 2020/07/27 14:32:03 jasper Exp $

COMMENT-main =		network and application monitoring - agent
COMMENT-server =	network and application monitoring - server
COMMENT-proxy =		network and application monitoring - proxy
COMMENT-web =		network and application monitoring - web frontend

VERSION =		5.0.2
DISTNAME =		zabbix-${VERSION}
FULLPKGNAME-main =	zabbix-agent-${VERSION}
FULLPKGPATH-main =	net/zabbix,-main
PKGNAME-server =	zabbix-server-${VERSION}
PKGNAME-proxy =		zabbix-proxy-${VERSION}
FULLPKGNAME-web =	zabbix-web-${VERSION}
FULLPKGPATH-web =	net/zabbix,-web
CATEGORIES =		net

MAJV =			${VERSION:C/^([0-9]+\.[0-9]+).*/\1/}

HOMEPAGE =		http://www.zabbix.com/

MAINTAINER =		Robert Nagy <robert@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://cdn.zabbix.com/zabbix/sources/stable/${MAJV}/

MODULES=		lang/php
MODPHP_BUILDDEP =	No

MULTI_PACKAGES =	-main -web
PSEUDO_FLAVORS =	no_server
FLAVORS =		mysql pgsql sqlite3

SUBST_VARS +=		PREFIX-web ZABBIX_WEB MAJV

WANTLIB =		c iconv kvm m execinfo lber ldap crypto ssl z \
			curl nghttp2 pcre pthread

LIB_DEPENDS =		converters/libiconv \
			databases/openldap \
			devel/libexecinfo \
			devel/pcre \
			net/curl

RUN_DEPENDS-main =

LIB_DEPENDS-server =	${LIB_DEPENDS} \
			textproc/libxml \
			net/net-snmp \
			security/libssh2
RUN_DEPENDS-server =	net/fping
# we want the _zabbix user&group as well as README-main
RUN_DEPENDS-server +=	net/zabbix,-main>=${VERSION}
WANTLIB-server =	${WANTLIB} crypto ssl z netsnmp \
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
WANTLIB-proxy =		${WANTLIB} netsnmp ssh2 xml2
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
WANTLIB-proxy +=	event mariadb pthread
WANTLIB-server +=	event mariadb
.elif ${BACKEND} == "pgsql"
MULTI_PACKAGES +=	-proxy -server
LIB_DEPENDS-proxy +=	databases/postgresql,-main
LIB_DEPENDS-server +=	databases/postgresql,-main
CONFIGURE_ARGS +=	--with-postgresql
WANTLIB-proxy +=	event pq
WANTLIB-server +=	event pq
.elif ${BACKEND} == "sqlite3"
MULTI_PACKAGES +=	-proxy
CONFIGURE_ARGS +=	--with-sqlite3 \
			--disable-server
# The proxy does not use jabber, so just disable the check
CONFIGURE_ARGS +=	--without-jabber

WANTLIB-proxy +=	event sqlite3
LIB_DEPENDS-proxy +=	databases/sqlite3
FULLPKGPATH-proxy =	net/zabbix,-proxy,${FLAVOR}
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
	cd ${WRKBUILD}/ui && tar -cf - . | \
		tar -C ${DESTDIR}${PREFIX-web}/zabbix -xf -
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/zabbix
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX-web}/conf/
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX-web}/conf/modules.sample
	${SUBST_DATA} ${FILESDIR}/zabbix.conf \
		${DESTDIR}${PREFIX-web}/conf/modules.sample/zabbix.conf
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/php-${MODPHP_VERSION}
	${SUBST_DATA} ${FILESDIR}/zabbix.ini \
		${PREFIX}/share/examples/php-${MODPHP_VERSION}/zabbix.ini
.for _n in proxy server
	${INSTALL_DATA_DIR} ${PREFIX}/share/zabbix-${_n}/schema

	# Database schemas. The proxy needs sqlite3 as well.
	cd ${WRKSRC}/database/ && tar -cf - mysql postgresql | \
		tar -C ${PREFIX}/share/zabbix-${_n}/schema -xf -
.  if "${_n}" == "proxy"
	cd ${WRKSRC}/database/ && tar -cf - sqlite3 | \
		tar -C ${PREFIX}/share/zabbix-${_n}/schema -xf -
.  endif
	@find ${PREFIX}/share/zabbix-${_n}/schema -name data.sql -exec \
		perl -pi -e "s,/bin/ping,/sbin/ping,g;s,/usr/bin/traceroute,/usr/sbin/traceroute,g" {} \;
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/zabbix
	${INSTALL_DATA} ${WRKBUILD}/conf/*.conf \
		${PREFIX}/share/examples/zabbix

.include <bsd.port.mk>
