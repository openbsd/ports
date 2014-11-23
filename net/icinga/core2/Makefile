# $OpenBSD: Makefile,v 1.18 2014/11/23 20:28:01 sthen Exp $

SHARED_ONLY =	Yes

COMMENT-main =	network monitoring system
COMMENT-mysql =	MySQL support for icinga2
COMMENT-pgsql =	PostgreSQL support for icinga2

V =		2.2.0
GH_ACCOUNT =	Icinga
GH_PROJECT =	icinga2
GH_TAGNAME =	v$V
DISTNAME =	icinga2-$V
PKGNAME-main =	icinga2-$V
PKGNAME-mysql =	icinga2-mysql-$V
PKGNAME-pgsql =	icinga2-pgsql-$V

HOMEPAGE =	https://www.icinga.org/icinga2/

# GPLv2+ with OpenSSL exemption
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += boost_program_options-mt boost_regex-mt boost_system-mt
WANTLIB += boost_thread-mt crypto execinfo m pthread ssl stdc++ yajl

MODULES =		devel/cmake

BUILD_DEPENDS =		devel/bison \
			devel/flex

MULTI_PACKAGES =	-main -mysql -pgsql

WANTLIB-main +=		${WANTLIB} c
LIB_DEPENDS-main =	devel/boost \
			devel/libexecinfo \
			devel/libyajl
RUN_DEPENDS-main =	net/monitoring-plugins
RUN_DEPENDS =           ${BASE_PKGPATH},-main # default for subpackages

WANTLIB-mysql +=	${WANTLIB} mysqlclient_r
LIB_DEPENDS-mysql =	${LIB_DEPENDS} databases/mariadb
RUN_DEPENDS-mysql =	${BASE_PKGPATH},-main

WANTLIB-pgsql +=	${WANTLIB} pq
LIB_DEPENDS-pgsql =	${LIB_DEPENDS} databases/postgresql
RUN_DEPENDS-pgsql =	${BASE_PKGPATH},-main

CONFIGURE_ARGS += \
	-DCMAKE_INSTALL_MANDIR:String="${PREFIX}/man" \
	-DCMAKE_INSTALL_SYSCONFDIR:String="${SYSCONFDIR}" \
	-DCMAKE_INSTALL_FULL_SYSCONFDIR:String="${WRKINST}${SYSCONFDIR}" \
	-DCMAKE_INSTALL_LOCALSTATEDIR:String="${LOCALSTATEDIR}" \
	-DICINGA2_COMMAND_USER:String="_icinga" \
	-DICINGA2_COMMAND_GROUP:String="_icingacmd" \
	-DICINGA2_USER:String="_icinga" \
	-DICINGA2_GROUP:String="_icinga" \
	-DICINGA2_GIT_VERSION_INFO:Boolean="OFF" \
	-DICINGA2_PLUGINDIR:String="${LOCALBASE}/libexec/nagios"

CFLAGS +=	-pthread
LDFLAGS +=	-lpthread

pre-configure:
	ln -sf ${LOCALBASE}/bin/gflex ${WRKDIR}/bin/flex

post-configure:
	perl -pi -e 's,}${SYSCONFDIR}/icinga2,}${TRUEPREFIX}/share/examples/icinga2,g' \
	    ${WRKBUILD}/etc/cmake_install.cmake

pre-install:
	mkdir -p ${PREFIX}

# this target isn't actually needed in order to run the tests, but they
# are all failing for me with ld.so errors (possibly rpath-related) and
# the -V makes it more obvious what's going on.
do-test:
	cd ${WRKBUILD}; ctest -V

.include <bsd.port.mk>
