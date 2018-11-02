# $OpenBSD: Makefile,v 1.69 2018/11/02 00:19:32 sthen Exp $

# archs with atomic ops
ONLY_FOR_ARCHS-server=	alpha aarch64 amd64 arm i386 mips64 mips64el powerpc sparc64
ONLY_FOR_ARCHS-tests=	${ONLY_FOR_ARCHS-server}

COMMENT-main=	multithreaded SQL database (client)
COMMENT-server=	multithreaded SQL database (server)
COMMENT-tests=	multithreaded SQL database (regression test suite/benchmark)

VERSION=	10.0.37
DISTNAME=	mariadb-${VERSION}
PKGNAME-main=	mariadb-client-${VERSION}
PKGNAME-server=	mariadb-server-${VERSION}
PKGNAME-tests=	mariadb-tests-${VERSION}
EPOCH=		1

CATEGORIES=	databases
MASTER_SITES=	http://mariadb.mirror.iweb.com//${DISTNAME}/source/ \
		http://ftp.osuosl.org/pub/mariadb/${DISTNAME}/source/ \

LIB_VERSION=	27
SHARED_LIBS=	mysqlclient_r	${LIB_VERSION}.0 \
		mysqlclient	${LIB_VERSION}.0

HOMEPAGE=	http://mariadb.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2 and LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c crypto m pthread ssl ${COMPILER_LIBCXX} z
WANTLIB-main=	curses readline ${WANTLIB}
WANTLIB-server=	lz4 mysqlclient pcre xml2 ${WANTLIB}
WANTLIB-tests=	mysqlclient pcre pcreposix ${WANTLIB}

LOCALSTATEDIR=	${BASELOCALSTATEDIR}/mysql
SOCKET_DIR=	/var/run/mysql
SUBST_VARS=	SOCKET_DIR

MODULES=	devel/cmake
BUILD_DEPENDS=	devel/bison

RUN_DEPENDS-server=	${BASE_PKGPATH}>=10.0v1,<10.1v1 \
			databases/p5-DBD-mysql
LIB_DEPENDS-server=	${BASE_PKGPATH}>=10.0v1,<10.1v1 \
			archivers/lz4 \
			devel/pcre \
			textproc/libxml
LIB_DEPENDS-tests=	${BASE_PKGPATH}>=10.0v1,<10.1v1 \
			devel/pcre

COMPILER=	base-clang ports-gcc

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
		-DWITH_PCRE=system \
		-DWITH_SSL=system \
		-DCONNECT_WITH_JDBC=Off \
		-DCONNECT_WITH_ODBC=Off \
		-DGRN_WITH_MECAB=no \
		-DGRN_WITH_KYTEA=no \
		-DGRN_WITH_LIBSTEMMER=no \
		-DGRN_WITH_ZEROMQ=no \
		-DGRN_WITH_MESSAGE_PACK=no

# force disabling the PAM auth plugin if OpenPAM is installed
CONFIGURE_ARGS+=-DHAVE_PAM_APPL_H=0

# force disabling libexecinfo if it is installed
CONFIGURE_ARGS+=-DHAVE_EXECINFO_H=0 \
		-DHAVE_LIBEXECINFO=0

# CMake test fails on OpenBSD
CONFIGURE_ARGS+=-DHAVE_NETINET_TCP_H=1

# The TokuDB storage engine does not build at the moment on OpenBSD
# One more or more issues to look into
CONFIGURE_ARGS+=-DWITHOUT_TOKUDB_STORAGE_ENGINE=1

CFLAGS+=	-I${LOCALBASE}/include
CXXFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

CONFIGURE_ENV=	LDFLAGS="${LDFLAGS}"

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
	@cd ${WRKBUILD}/mysql-test && ./mysql-test-run.pl --force --verbose --max-test-fail=0
.else
NO_TEST=	Yes
.endif

.include <bsd.port.mk>
