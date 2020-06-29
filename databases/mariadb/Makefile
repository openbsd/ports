# $OpenBSD: Makefile,v 1.93 2020/06/29 11:33:58 sthen Exp $

COMMENT-main=	multithreaded SQL database (client)
COMMENT-server=	multithreaded SQL database (server)
COMMENT-tests=	multithreaded SQL database (regression test suite/benchmark)

VERSION=	10.5.4
DISTNAME=	mariadb-${VERSION}
PKGNAME-main=	mariadb-client-${VERSION}
PKGNAME-server=	mariadb-server-${VERSION}
PKGNAME-tests=	mariadb-tests-${VERSION}
REVISION=	1
EPOCH=		1

CATEGORIES=	databases
MASTER_SITES=	https://downloads.mariadb.com/MariaDB/${DISTNAME}/source/ \
		https://ftp.osuosl.org/pub/mariadb/${DISTNAME}/source/

LIB_VERSION=	28
SHARED_LIBS=	mysqlclient_r	${LIB_VERSION}.0 \
		mysqlclient	${LIB_VERSION}.0 \
		mariadb		${LIB_VERSION}.0

HOMEPAGE=	https://mariadb.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2 and LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB=	${COMPILER_LIBCXX} c crypto iconv m pthread ssl z
WANTLIB-main=	${WANTLIB} curses readline
WANTLIB-server=	${WANTLIB} bz2 curl lz4 lzma lzo2 pcre2-8 snappy xml2
WANTLIB-tests=	${WANTLIB} pcre2-8 pcre2-posix

MULTI_PACKAGES=	-main -server -tests

# C++11, atomic ops
COMPILER=	base-clang ports-gcc

LOCALSTATEDIR=	${BASELOCALSTATEDIR}/mysql
SOCKET_DIR=	/var/run/mysql
SUBST_VARS=	SOCKET_DIR

MODULES=	devel/cmake
BUILD_DEPENDS=	devel/bison

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			converters/libiconv
RUN_DEPENDS-server=	${BASE_PKGPATH},-main>=10.5v1,<10.6v1 \
			databases/p5-DBD-MariaDB
LIB_DEPENDS-server=	${LIB_DEPENDS} \
			archivers/bzip2 \
			archivers/lz4 \
			archivers/lzo2 \
			archivers/snappy \
			archivers/xz \
			converters/libiconv \
			devel/pcre2 \
			net/curl \
			textproc/libxml
RUN_DEPENDS-tests=	${BASE_PKGPATH},-main>=10.5v1,<10.6v1
LIB_DEPENDS-tests=	${LIB_DEPENDS} \
			converters/libiconv \
			devel/pcre2

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
		-DWITH_EXTERNAL_ZLIB=On \
		-DWITH_PCRE=system \
		-DWITH_SSL=system \
		-DCONNECT_WITH_JDBC=Off \
		-DCONNECT_WITH_MONGO=Off \
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

# The ColumnStore, Mroonga, RocksDB, and TokuDB storage engines are disabled.
# ColumnStore is only buildable on X86.
# Mroonga is only buildable on little endian archs.
# RocksDB is only buildable on little endian archs and requires POSIX timers.
# TokuDB is only buildable on 64-bit little endian archs and requires O_DIRECT.
CONFIGURE_ARGS+=-DPLUGIN_COLUMNSTORE=NO \
		-DWITHOUT_MROONGA_STORAGE_ENGINE=1 \
		-DWITHOUT_ROCKSDB_STORAGE_ENGINE=1 \
		-DWITHOUT_TOKUDB_STORAGE_ENGINE=1

CFLAGS+=	-I${LOCALBASE}/include
CXXFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

CONFIGURE_ENV=	LDFLAGS="${LDFLAGS}"

.if ${MACHINE_ARCH} == "hppa"
LDFLAGS+=	-latomic
WANTLIB+=	atomic
.endif

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/cmake/mysql_version.cmake \
	    ${WRKSRC}/libmariadb/mariadb_config/mariadb_config.c.in \
	    ${WRKSRC}/scripts/mysql_config.sh

post-install:
	@cd ${PREFIX}/lib && \
		ln -sf mysql/libmysqlclient.so.${LIBmysqlclient_VERSION} . && \
		ln -sf mysql/libmysqlclient_r.so.${LIBmysqlclient_r_VERSION} . && \
		ln -sf mysql/libmariadb.so.${LIBmariadb_VERSION} . && \
		cd mysql && \
		ln -sf libmariadb.so.${LIBmariadb_VERSION} libmysqlclient.so.${LIBmysqlclient_VERSION} && \
		ln -sf libmariadb.so.${LIBmariadb_VERSION} libmysqlclient_r.so.${LIBmysqlclient_r_VERSION}
	${INSTALL_DATA} ${FILESDIR}/my.cnf ${PREFIX}/share/examples/mysql/
	rm -f ${PREFIX}/man/man1/myrocks_hotbackup.1
	rm -Rf ${PREFIX}/share/mysql-test/plugin/rocksdb/

do-test:
	(${MODCMAKE_TEST_TARGET}) || true # Keep on going even if regress tests fail
	@cd ${WRKBUILD}/mysql-test && ./mysql-test-run.pl --force --verbose --max-test-fail=0

.include <bsd.port.mk>
