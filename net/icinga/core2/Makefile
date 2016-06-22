# $OpenBSD: Makefile,v 1.56 2016/06/22 21:42:49 sthen Exp $

BROKEN-arm =	needs atomic ops; __sync_add_and_fetch_4
BROKEN-hppa =	needs atomic ops; __sync_add_and_fetch_4
BROKEN-sparc64 = gcc 4.2.1 fails "Illegal operands", gcc 4.9 hangs for 2h (icinga_unity.cpp)
BROKEN-powerpc = link fails, .gnu.linkonce.t.foo referenced in section .gnu.linkonce.r.foo [..] defined in discarded section

COMMENT-main =	network monitoring system
COMMENT-mysql =	MySQL support for icinga2
COMMENT-pgsql =	PostgreSQL support for icinga2

V =		2.4.10
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

WANTLIB += boost_atomic-mt boost_chrono-mt boost_date_time-mt
WANTLIB += boost_program_options-mt boost_regex-mt boost_system-mt
WANTLIB += boost_thread-mt crypto execinfo m pthread ssl stdc++
WANTLIB += yajl

MODULES =		devel/cmake \
			gcc4

PSEUDO_FLAVORS =	test
FLAVOR ?=

BUILD_DEPENDS =		devel/bison

MULTI_PACKAGES =	-main -mysql -pgsql

WANTLIB-main +=		${WANTLIB} c edit termcap
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

.if ${FLAVOR:Mtest}
pre-test:
	@if pkg_info | grep libconfig- > /dev/null; then \
	    printf "\n*** icinga2 tests do not work if libconfig is installed ***\n\n"; \
	    exit 1; \
	fi
.else
post-patch:
	@printf "\n*** Disabling tests to avoid conflict if libconfig is present at build time.\n*** Use \"FLAVOR=test make\" to avoid this.\n\n"
	sed -i 's,add_subdirectory(test),#add_subdirectory(test),' ${WRKSRC}/CMakeLists.txt

pre-test:
	@printf "\n*** Tests were disabled to avoid potential build conflict.\n*** Re-build with \"FLAVOR=test make\" to avoid this.\n\n"
	@exit 1
.endif

.include <bsd.port.mk>
