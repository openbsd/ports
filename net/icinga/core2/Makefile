# $OpenBSD: Makefile,v 1.27 2015/06/30 09:19:48 sthen Exp $

BROKEN =	doesn't daemonize correctly. also suspect some thread-related problems with forking.
BROKEN-hppa =	needs 64-bit atomic ops; __sync_add_and_fetch_4
SHARED_ONLY =	Yes

COMMENT-main =	network monitoring system
COMMENT-mysql =	MySQL support for icinga2
COMMENT-pgsql =	PostgreSQL support for icinga2

V =		2.3.5
EPOCH =		0
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
	-DCMAKE_INSTALL_SYSCONFDIR:String="${PREFIX}/share/examples" \
	-DCMAKE_INSTALL_FULL_SYSCONFDIR:String="${WRKINST}${SYSCONFDIR}" \
	-DCMAKE_INSTALL_LOCALSTATEDIR:String="${LOCALSTATEDIR}" \
	-DICINGA2_COMMAND_USER:String="_icinga" \
	-DICINGA2_COMMAND_GROUP:String="_icingacmd" \
	-DICINGA2_USER:String="_icinga" \
	-DICINGA2_GROUP:String="_icinga" \
	-DICINGA2_GIT_VERSION_INFO:Boolean="OFF" \
	-DICINGA2_PLUGINDIR:String="${LOCALBASE}/libexec/nagios"

# CFLAGS +=	-pthread
# LDFLAGS +=	-lpthread

pre-configure:
	ln -sf ${LOCALBASE}/bin/gflex ${WRKDIR}/bin/flex

post-configure:
	perl -pi -e 's,%SYSCONFDIR%,${SYSCONFDIR},' ${WRKBUILD}/config.h \
	    ${WRKBUILD}/etc/icinga/icinga-classic-apache.conf

pre-install:
	mkdir -p ${PREFIX}

post-install:
	cp -r ${WRKSRC}/tools/syntax ${PREFIX}/share/examples/icinga2/
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/examples/icinga2/syntax
	chmod -R u=rwX,g=rX,o=rX ${PREFIX}/share/examples/icinga2/syntax

# XXX this target isn't actually needed in order to run the tests, but they
# are all failing for me with ld.so errors (possibly rpath-related) and
# the -V makes it more obvious what's going on.
do-test:
	cd ${WRKBUILD}; ctest -V

.include <bsd.port.mk>
