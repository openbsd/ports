# $OpenBSD: Makefile,v 1.2 2009/04/23 15:38:11 jasper Exp $

COMMENT-main =		network and application monitoring - agent
COMMENT-server =	network and application monitoring - server
COMMENT-web =		network and application monitoring - web frontend

VERSION =		1.6.4
DISTNAME =		zabbix-${VERSION}
PKGNAME-main =		zabbix-agent-${VERSION}p0
PKGNAME-server =	zabbix-server-${VERSION}p0
PKGNAME-web =		zabbix-web-${VERSION}p0
CATEGORIES =		net

HOMEPAGE =		http://www.zabbix.com/

# GPLv2
# Manual: - free for translation, if original content stays the same
#	  - printed copies for personal use allowed
#	  - all other uses need to be agreed upon with Zabbix Company
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=zabbix/}

MULTI_PACKAGES =	-server -main -web

WANTLIB =		c kvm m
LIB_DEPENDS =		lber,ldap::databases/openldap

LIB_DEPENDS-server =	${LIB_DEPENDS} \
			curl::net/curl \
			netsnmp::net/net-snmp \
			mysqlclient::databases/mysql
RUN_DEPENDS-server =	::net/fping

WANTLIB-web =
LIB_DEPENDS-web =
RUN_DEPENDS-web =	::www/php5/extensions,-mysql

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-server \
			--enable-agent \
			--enable-proxy \
			--enable-ipv6 \
			--with-mysql \
			--with-libcurl \
			--with-net-snmp \
			--with-ldap
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

PREFIX-web =		/var/www

post-install:
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX-web}/zabbix
	cd ${WRKBUILD}/frontends/php && tar -cf - . | \
		tar -C ${DESTDIR}${PREFIX-web}/zabbix -xf -
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/zabbix
	${INSTALL_DATA} "${WRKBUILD}/docs/ZABBIX Manual v1.6 rev 17.pdf" \
		${PREFIX}/share/doc/zabbix/ZABBIX_Manual_v1.6_rev17.pdf
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

MAJOR =		${VERSION:R}
SUBST_VARS =	MAJOR

.include <bsd.port.mk>
