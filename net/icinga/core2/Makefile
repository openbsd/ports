# $OpenBSD: Makefile,v 1.96 2019/07/18 16:01:05 sthen Exp $

BROKEN-hppa =	needs atomic ops; __sync_add_and_fetch_4

COMMENT-main =	network monitoring system
COMMENT-mysql =	MySQL support for icinga2
COMMENT-pgsql =	PostgreSQL support for icinga2

V =		2.10.5
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

HOMEPAGE =	https://icinga.com/products/icinga-2/

# GPLv2+ with OpenSSL exemption
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} boost_atomic-mt boost_chrono-mt
WANTLIB += boost_date_time-mt boost_program_options-mt boost_regex-mt
WANTLIB += boost_system-mt boost_thread-mt c crypto curses edit
WANTLIB += m ssl yajl

MODULES =		devel/cmake

COMPILER =		base-clang ports-gcc

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
	-DBASHCOMPLETION_DIR=${PREFIX}/share/examples/icinga2/bash_completion.d \
	-DCMAKE_INSTALL_MANDIR=${PREFIX}/man \
	-DCMAKE_INSTALL_LOCALSTATEDIR=${LOCALSTATEDIR} \
	-DCMAKE_INSTALL_SYSCONFDIR=${PREFIX}/share/examples \
	-DICINGA2_CONFIGDIR=${SYSCONFDIR}/icinga2 \
	-DICINGA2_USER=_icinga \
	-DICINGA2_GROUP=_icinga \
	-DICINGA2_GIT_VERSION_INFO=OFF \
	-DICINGA2_PLUGINDIR=${LOCALBASE}/libexec/nagios \
	-DHAVE_LIBEXECINFO=OFF

post-install:
	mv ${WRKINST}${SYSCONFDIR}/icinga2/* ${PREFIX}/share/examples/icinga2/
	rmdir ${WRKINST}${LOCALSTATEDIR}/run/icinga2{/cmd,}
	${INSTALL_DATA_DIR} ${PREFIX}/share/nano
	${INSTALL_DATA} ${WRKSRC}/tools/syntax/nano/*nanorc ${PREFIX}/share/nano
.for i in ftdetect syntax
	${INSTALL_DATA_DIR} ${PREFIX}/share/vim/vimfiles/$i
	${INSTALL_DATA} ${WRKSRC}/tools/syntax/vim/$i/* ${PREFIX}/share/vim/vimfiles/$i
.endfor
	sed -i "s,/usr/share/icinga2,${TRUEPREFIX}/share/icinga2,g" \
		${PREFIX}/share/doc/icinga2/markdown/*.md

.include <bsd.port.arch.mk>
.if !${ARCH:Mamd64} || defined(DEBUG)
CONFIGURE_ARGS += -DICINGA2_UNITY_BUILD=OFF
.endif

.include <bsd.port.mk>
