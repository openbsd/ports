# $OpenBSD: Makefile,v 1.82 2018/09/04 12:46:17 espie Exp $

BROKEN-hppa =	needs atomic ops; __sync_add_and_fetch_4

COMMENT-main =	network monitoring system
COMMENT-mysql =	MySQL support for icinga2
COMMENT-pgsql =	PostgreSQL support for icinga2

V =		2.9.1
EPOCH =		0
GH_ACCOUNT =	Icinga
GH_PROJECT =	icinga2
GH_TAGNAME =	v$V
PKGNAME-main =	icinga2-$V
PKGNAME-mysql =	icinga2-ido-mysql-$V
PKGNAME-pgsql =	icinga2-ido-pgsql-$V
REVISION-main =	0

SHARED_LIBS +=	base                      0.0 # 2.6
SHARED_LIBS +=	checker                   0.0 # 2.6
SHARED_LIBS +=	cli                       0.0 # 2.6
SHARED_LIBS +=	compat                    0.0 # 2.6
SHARED_LIBS +=	config                    0.0 # 2.6
SHARED_LIBS +=	db_ido                    0.0 # 2.6
SHARED_LIBS +=	db_ido_mysql              0.0 # 2.6
SHARED_LIBS +=	db_ido_pgsql              0.0 # 2.6
SHARED_LIBS +=	execvpe                   0.0 # 2.6
SHARED_LIBS +=	icinga                    0.0 # 2.6
SHARED_LIBS +=	livestatus                0.0 # 2.6
SHARED_LIBS +=	methods                   0.0 # 2.6
SHARED_LIBS +=	mmatch                    0.0 # 2.6
SHARED_LIBS +=	mysql_shim                0.0 # 2.9
SHARED_LIBS +=	notification              0.0 # 2.6
SHARED_LIBS +=	perfdata                  0.0 # 2.6
SHARED_LIBS +=	pgsql_shim                0.0 # 2.9
SHARED_LIBS +=	remote                    0.0 # 2.6
SHARED_LIBS +=	socketpair                0.0 # 2.6

HOMEPAGE =	https://www.icinga.org/icinga2/

# GPLv2+ with OpenSSL exemption
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} boost_atomic-mt boost_chrono-mt
WANTLIB += boost_date_time-mt boost_program_options-mt boost_regex-mt
WANTLIB += boost_system-mt boost_thread-mt c crypto curses edit
WANTLIB += m ssl yajl

MODULES =		devel/cmake

COMPILER =		base-clang ports-gcc

PSEUDO_FLAVORS =	test
FLAVOR ?=

BUILD_DEPENDS =		devel/bison

MULTI_PACKAGES =	-main -mysql -pgsql

LIB_DEPENDS-main =	${LIB_DEPENDS} \
			devel/boost \
			devel/libyajl
RUN_DEPENDS-main =	net/monitoring-plugins
RUN_DEPENDS =           ${BASE_PKGPATH},-main=$Vv${EPOCH} # default for subpackages

WANTLIB-mysql +=	${COMPILER_LIBCXX} m mysqlclient
LIB_DEPENDS-mysql =	${LIB_DEPENDS} \
			databases/mariadb

WANTLIB-pgsql +=	${COMPILER_LIBCXX} m pq
LIB_DEPENDS-pgsql =	${LIB_DEPENDS} \
			databases/postgresql

CONFIGURE_ARGS += \
	-DCMAKE_INSTALL_MANDIR:String=${PREFIX}/man \
	-DCMAKE_INSTALL_SYSCONFDIR:String=${PREFIX}/share/examples \
	-DCMAKE_INSTALL_FULL_SYSCONFDIR:String=${WRKINST}${SYSCONFDIR} \
	-DCMAKE_INSTALL_LOCALSTATEDIR:String=${LOCALSTATEDIR} \
	-DICINGA2_USER:String=_icinga \
	-DICINGA2_GROUP:String=_icinga \
	-DICINGA2_GIT_VERSION_INFO:Boolean=OFF \
	-DICINGA2_PLUGINDIR:String=${LOCALBASE}/libexec/nagios \
	-DHAVE_LIBEXECINFO=OFF

post-configure:
	@sed -i 's,%SYSCONFDIR%,${SYSCONFDIR},' ${WRKBUILD}/config.h

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/nano
	${INSTALL_DATA} ${WRKSRC}/tools/syntax/nano/*nanorc ${PREFIX}/share/nano
.for i in ftdetect syntax
	${INSTALL_DATA_DIR} ${PREFIX}/share/vim/vimfiles/$i
	${INSTALL_DATA} ${WRKSRC}/tools/syntax/vim/$i/* ${PREFIX}/share/vim/vimfiles/$i
.endfor
	sed -i "s,/usr/share/icinga2,${TRUEPREFIX}/share/icinga2,g" \
		${PREFIX}/share/doc/icinga2/markdown/*.md

.if ${FLAVOR:Mtest}
pre-test:
	@if pkg_info | grep libconfig- > /dev/null; then \
	    printf "\n*** icinga2 tests do not work if libconfig is installed ***\n\n"; \
	    exit 1; \
	fi
.else
pre-configure:
	@printf "\n*** Disabling tests to avoid conflict if libconfig is present at build time.\n*** Use \"FLAVOR=test make\" to avoid this.\n\n"
	sed -i 's,add_subdirectory(test),#add_subdirectory(test),' ${WRKSRC}/CMakeLists.txt

pre-test:
	@printf "\n*** Tests were disabled to avoid potential build conflict.\n*** Re-build with \"FLAVOR=test make\" to avoid this.\n\n"
	@exit 1
.endif

.include <bsd.port.arch.mk>
.if !${ARCH:Mamd64}
CONFIGURE_ARGS += -DICINGA2_UNITY_BUILD=OFF
.endif

.include <bsd.port.mk>
