# $OpenBSD: Makefile,v 1.17 2014/08/23 02:25:34 brad Exp $

SHARED_ONLY=	Yes

COMMENT-main=	multithreaded SQL database (client)
COMMENT-server=	multithreaded SQL database (server)
COMMENT-tests=	multithreaded SQL database (regression test suite/benchmark)

VERSION=	10.0.13
DISTNAME=	mariadb-${VERSION}
PKGNAME-main=	mariadb-client-${VERSION}
PKGNAME-server=	mariadb-server-${VERSION}
PKGNAME-tests= 	mariadb-tests-${VERSION}
REVISION-main=	0
CATEGORIES=	databases
MASTER_SITES=	http://mariadb.mirror.iweb.com//${DISTNAME}/source/ \
		http://ftp.osuosl.org/pub/mariadb/${DISTNAME}/source/ \

LIB_VERSION=	25
SHARED_LIBS=	mysqlclient_r	${LIB_VERSION}.0 \
		mysqlclient	${LIB_VERSION}.0

HOMEPAGE=	http://mariadb.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2 and LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c crypto m pthread ssl stdc++ z
WANTLIB-main=	curses readline ${WANTLIB}
WANTLIB-server=	mysqlclient ${WANTLIB}
WANTLIB-tests=	mysqlclient ${WANTLIB}

LOCALSTATEDIR=	${BASELOCALSTATEDIR}/mysql
SOCKET_DIR=	/var/run/mysql
SUBST_VARS=	SOCKET_DIR

MODULES=	devel/cmake
BUILD_DEPENDS=	devel/bison

RUN_DEPENDS-server=	${BASE_PKGPATH}>=10.0,<10.1 \
			databases/p5-DBD-mysql \
			devel/p5-Term-ReadKey
LIB_DEPENDS-server=	${BASE_PKGPATH}>=10.0,<10.1
LIB_DEPENDS-tests=	${BASE_PKGPATH}>=10.0,<10.1

USE_GROFF=	Yes

CONFIGURE_ARGS+=-DCMAKE_INSTALL_PREFIX="${PREFIX}" \
		-DINSTALL_DOCDIR="share/doc/mysql" \
		-DINSTALL_DOCREADMEDIR="share/doc/mysql" \
		-DINSTALL_INCLUDEDIR="include/mysql" \
		-DINSTALL_INFODIR="info" \
		-DINSTALL_LIBDIR="lib/mysql" \
		-DINSTALL_MANDIR="man" \
		-DINSTALL_MYSQLDATADIR="${LOCALSTATEDIR}" \
		-DINSTALL_MYSQLSHAREDIR="share/mysql" \
		-DINSTALL_MYSQLTESTDIR="share/mysql-test" \
		-DINSTALL_PLUGINDIR="lib/mysql/plugin" \
		-DINSTALL_SBINDIR="libexec" \
		-DINSTALL_SCRIPTDIR="bin" \
		-DINSTALL_SHAREDIR="share" \
		-DINSTALL_SQLBENCHDIR="share/mysql-bench" \
		-DINSTALL_SUPPORTFILESDIR="share/examples/mysql" \
		-DMYSQL_UNIX_ADDR="${SOCKET_DIR}/mysql.sock" \
		-DWITH_COMMENT='OpenBSD port: ${FULLPKGNAME-server}' \
		-DWITH_SSL=system \
		-DWITH_LIBEDIT=Off \
		-DCONNECT_WITH_LIBXML2=Off

MULTI_PACKAGES=	-main

# archs with atomic ops
.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || \
    ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "powerpc" || \
    ${MACHINE_ARCH} == "sparc64"
MULTI_PACKAGES+= -server -tests
.endif

.include <bsd.port.arch.mk>

.if !${BUILD_PACKAGES:M-server}
CONFIGURE_ARGS+=-DWITHOUT_SERVER=On
.endif

.if !${BUILD_PACKAGES:M-tests}
CONFIGURE_ARGS+=-DWITH_UNIT_TESTS=Off
.endif

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/cmake/mysql_version.cmake

post-install:
	@cd ${PREFIX}/lib && \
		ln -sf mysql/libmysqlclient.so.${LIBmysqlclient_VERSION} . && \
		ln -sf mysql/libmysqlclient_r.so.${LIBmysqlclient_r_VERSION} .

.if ${BUILD_PACKAGES:M-tests}
do-regress:
	@cd ${WRKBUILD}/mysql-test && ./mysql-test-run.pl --force --max-test-fail=0
.else
NO_TEST=	Yes
.endif

.include <bsd.port.mk>
