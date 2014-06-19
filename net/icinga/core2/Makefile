# $OpenBSD: Makefile,v 1.2 2014/06/19 23:33:09 sthen Exp $

SHARED_ONLY =	Yes

COMMENT-main =	network monitoring system
COMMENT-mysql =	MySQL support for icinga2
COMMENT-pgsql =	PostgreSQL support for icinga2

V =		2.0.0
DISTNAME =	icinga2-$V
PKGNAME-main =	icinga2-$V
PKGNAME-mysql =	icinga2-mysql-$V
PKGNAME-pgsql =	icinga2-pgsql-$V

HOMEPAGE =	https://www.icinga.org/icinga2/

# GPLv2+ with OpenSSL exemption
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += boost_program_options-mt boost_regex-mt boost_system-mt
WANTLIB += boost_thread-mt crypto m pthread ssl stdc++

MASTER_SITES =		https://github.com/Icinga/icinga2/archive/
DISTFILES =		${DISTNAME}{v${V}}${EXTRACT_SUFX}

MODULES =		devel/cmake

# TODO devel/libexecinfo - want it, cmake doesn't find it
BUILD_DEPENDS =		devel/bison \
			devel/flex
LIB_DEPENDS =		devel/boost
RUN_DEPENDS =           ${BASE_PKGPATH},-main

MULTI_PACKAGES =	-main -mysql -pgsql

WANTLIB-main +=		${WANTLIB} c
RUN_DEPENDS-main =	net/nagios/plugins

WANTLIB-mysql +=	${WANTLIB} mysqlclient
LIB_DEPENDS-mysql =	${LIB_DEPENDS} databases/mysql
RUN_DEPENDS-mysql =	${BASE_PKGPATH},-main

WANTLIB-pgsql +=	${WANTLIB} pq
LIB_DEPENDS-pgsql =	${LIB_DEPENDS} databases/postgresql
RUN_DEPENDS-pgsql =	${BASE_PKGPATH},-main

# XXX different group for COMMAND_GROUP, upstream uses icingacmd
CONFIGURE_ARGS += \
	-DCMAKE_INSTALL_MANDIR:String="${PREFIX}/man" \
	-DCMAKE_INSTALL_SYSCONFDIR:String="${PREFIX}/share/examples" \
	-DCMAKE_INSTALL_LOCALSTATEDIR:String="${LOCALSTATEDIR}" \
	-DICINGA2_COMMAND_USER:String="_icinga" \
	-DICINGA2_COMMAND_GROUP:String="_icinga" \
	-DICINGA2_USER:String="_icinga" \
	-DICINGA2_GROUP:String="_icinga" \
	-DICINGA2_GIT_VERSION_INFO:Boolean="OFF" \
	-DICINGA2_SYSCONFIGFILE:String="${PREFIX}/share/examples/icinga2/sysconfig"

CFLAGS +=	-pthread
LDFLAGS +=	-lpthread

# XXX tests fail for sthen but not rpe ...

pre-configure:
	ln -sf ${LOCALBASE}/bin/gflex ${WRKDIR}/bin/flex
	@${SUBST_CMD} ${WRKSRC}/etc/icinga2/constants.conf

.include <bsd.port.mk>
