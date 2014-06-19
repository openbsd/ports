# $OpenBSD: Makefile,v 1.1 2014/06/19 23:24:47 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	network monitoring system

V =		2.0.0
DISTNAME =	icinga2-$V
PKGNAME-main =	icinga2-$V
PKGNAME-mysql =	icinga2-mysql-$V
PKGNAME-pgsql =	icinga2-pgsql-$V
COMMENT-main =	network monitoring system
COMMENT-mysql =	MySQL support for icinga2
COMMENT-pgsql =	PostgreSQL support for icinga2

CATEGORIES =	net

HOMEPAGE =	https://www.icinga.org/icinga2/

# GPLv2+ with OpenSSL exemption
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += boost_program_options-mt boost_regex-mt boost_system-mt
WANTLIB += boost_thread-mt crypto m pthread ssl stdc++

MASTER_SITES =		https://github.com/Icinga/icinga2/archive/
DISTFILES =		${DISTNAME}${EXTRACT_SUFX}{v${V}${EXTRACT_SUFX}}

MODULES =		devel/cmake
BUILD_DEPENDS =		devel/bison \
			devel/flex

MULTI_PACKAGES =	-main -mysql -pgsql

# TODO devel/libexecinfo - want it, cmake doesn't find it

LIB_DEPENDS =		devel/boost
LIB_DEPENDS-mysql =	${LIB_DEPENDS} databases/mysql
LIB_DEPENDS-pgsql =	${LIB_DEPENDS} databases/postgresql

WANTLIB-main +=		${WANTLIB} c
WANTLIB-mysql +=	${WANTLIB} mysqlclient
WANTLIB-pgsql +=	${WANTLIB} pq

#RUN_DEPENDS =		???
#TEST_DEPENDS =		???

#MAKE_FLAGS =		???
#MAKE_ENV =		???
#FAKE_FLAGS =		???

# XXX all tests fail
#TEST_FLAGS =		???

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

pre-configure:
	###echo '#define VERSION "$V"' >> ${WRKSRC}/icinga-version.h.fallback
	ln -sf ${LOCALBASE}/bin/gflex ${WRKDIR}/bin/flex

.include <bsd.port.mk>
