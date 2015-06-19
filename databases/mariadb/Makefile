# $OpenBSD: Makefile,v 1.27 2015/06/19 10:55:46 sthen Exp $

SHARED_ONLY=	Yes

# archs with atomic ops
ONLY_FOR_ARCHS-server=	alpha amd64 i386 powerpc sparc64
ONLY_FOR_ARCHS-tests=	${ONLY_FOR_ARCHS-server}
BROKEN-sparc=	Requires v9|v9a|v9b; requested architecture is sparclite

COMMENT-main=	multithreaded SQL database (client)
COMMENT-server=	multithreaded SQL database (server)
COMMENT-tests=	multithreaded SQL database (regression test suite/benchmark)

VERSION=	10.0.20
DISTNAME=	mariadb-${VERSION}
PKGNAME-main=	mariadb-client-${VERSION}
PKGNAME-server=	mariadb-server-${VERSION}
PKGNAME-tests= 	mariadb-tests-${VERSION}
EPOCH=		0
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

RUN_DEPENDS-server=	${BASE_PKGPATH}>=10.0v0,<10.1v0 \
			databases/p5-DBD-mysql \
			devel/p5-Term-ReadKey
LIB_DEPENDS-server=	${BASE_PKGPATH}>=10.0v0,<10.1v0
LIB_DEPENDS-tests=	${BASE_PKGPATH}>=10.0v0,<10.1v0

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
		-DCOMPILATION_COMMENT='OpenBSD port: ${FULLPKGNAME-server}' \
		-DWITH_SSL=system \
		-DCONNECT_WITH_LIBXML2=Off

# The Mroonga storage engine does not build at the moment on
# OpenBSD. https://mariadb.atlassian.net/browse/MDEV-7209
CONFIGURE_ARGS+=-DWITHOUT_MROONGA_STORAGE_ENGINE=1

MULTI_PACKAGES=	-main -server -tests

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
