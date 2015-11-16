# $OpenBSD: Makefile,v 1.42 2015/11/16 12:51:42 sthen Exp $

BROKEN-hppa =	needs 64-bit atomic ops; __sync_add_and_fetch_4
SHARED_ONLY =	Yes

COMMENT-main =	network monitoring system
COMMENT-mysql =	MySQL support for icinga2
COMMENT-pgsql =	PostgreSQL support for icinga2

V =		2.3.11
REVISION =	1
REVISION-main =	6
EPOCH =		0
GH_ACCOUNT =	Icinga
GH_PROJECT =	icinga2
GH_TAGNAME =	v$V
DISTNAME =	icinga2-$V
PKGNAME-main =	icinga2-$V
PKGNAME-mysql =	icinga2-ido-mysql-$V
PKGNAME-pgsql =	icinga2-ido-pgsql-$V

HOMEPAGE =	https://www.icinga.org/icinga2/

# GPLv2+ with OpenSSL exemption
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += boost_program_options-mt boost_regex-mt boost_system-mt
WANTLIB += boost_thread-mt crypto execinfo m pthread ssl stdc++ yajl

MODULES =		devel/cmake \
			gcc4

# Try with gcc 4.9 on sparc64; with base gcc 4.2.1 build fails thusly:
#
# {standard input}:38466: Error: Illegal operands: %lo requires arguments in ()
# c++: Internal error: Illegal instruction (program cc1plus)
MODGCC4_ARCHS =		sparc64
MODGCC4_LANGS =		c++

BUILD_DEPENDS =		devel/bison \
			devel/flex
# needs flex 2.5.31+

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
	-DCMAKE_INSTALL_MANDIR:String=${PREFIX}/man \
	-DCMAKE_INSTALL_SYSCONFDIR:String=${PREFIX}/share/examples \
	-DCMAKE_INSTALL_FULL_SYSCONFDIR:String=${WRKINST}${SYSCONFDIR} \
	-DCMAKE_INSTALL_LOCALSTATEDIR:String=${LOCALSTATEDIR} \
	-DFLEX_EXECUTABLE=${LOCALBASE}/bin/gflex \
	-DICINGA2_USER:String=_icinga \
	-DICINGA2_GROUP:String=_icinga \
	-DICINGA2_GIT_VERSION_INFO:Boolean=OFF \
	-DICINGA2_PLUGINDIR:String=${LOCALBASE}/libexec/nagios

post-configure:
	@sed -i 's,%SYSCONFDIR%,${SYSCONFDIR},' ${WRKBUILD}/config.h

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/nano
	${INSTALL_DATA} ${WRKSRC}/tools/syntax/nano/*nanorc ${PREFIX}/share/nano
.for i in ftdetect syntax
	${INSTALL_DATA_DIR} ${PREFIX}/share/vim/vimfiles/$i
	${INSTALL_DATA} ${WRKSRC}/tools/syntax/vim/$i/* ${PREFIX}/share/vim/vimfiles/$i
.endfor

pre-test:
	@if pkg_info | grep libconfig- > /dev/null; then \
	    printf "\n*** icinga2 tests do not work if libconfig is installed ***\n\n"; \
	    exit 1; \
	fi

.include <bsd.port.mk>
