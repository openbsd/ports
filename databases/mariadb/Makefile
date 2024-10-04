COMMENT-main=	multithreaded SQL database (client)
COMMENT-server=	multithreaded SQL database (server)
COMMENT-tests=	multithreaded SQL database (regression test suite/benchmark)

VERSION=	11.4.3
DISTNAME=	mariadb-${VERSION}
PKGNAME-main=	mariadb-client-${VERSION}
REVISION-main=  1
REVISION-server= 0
EPOCH=		1
CATEGORIES=	databases
SITES=		https://downloads.mariadb.com/MariaDB/${DISTNAME}/source/ \
		https://ftp.osuosl.org/pub/mariadb/${DISTNAME}/source/

DISTFILES.fmt=	fmt-11.0.1.zip
SITES.fmt=	https://github.com/fmtlib/fmt/releases/download/11.0.1/

LIB_VERSION=	31
SHARED_LIBS=	mysqlclient_r	${LIB_VERSION}.0 \
		mysqlclient	${LIB_VERSION}.0 \
		mariadb		${LIB_VERSION}.0

HOMEPAGE=	https://mariadb.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2 and LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB=	${COMPILER_LIBCXX} c crypto execinfo m pthread ssl z
WANTLIB-main=	${WANTLIB} curses readline
WANTLIB-server=	${WANTLIB} bz2 curl lz4 lzma lzo2 pcre2-8 snappy xml2 zstd
WANTLIB-tests=	${WANTLIB} pcre2-8 pcre2-posix

MULTI_PACKAGES=	-main -server -tests

# C++11, atomic ops
COMPILER=	base-clang ports-gcc

LOCALSTATEDIR=	${BASELOCALSTATEDIR}/mysql
SOCKET_DIR=	/var/run/mysql
SUBST_VARS=	SOCKET_DIR

MODULES=	devel/cmake
BUILD_DEPENDS=	devel/bison

LIB_DEPENDS-main=	${LIB_DEPENDS}
RUN_DEPENDS-server=	${BASE_PKGPATH},-main>=11.4v1,<11.5v1 \
			databases/p5-DBD-MariaDB \
			misc/findutils \
			sysutils/coreutils
LIB_DEPENDS-server=	${LIB_DEPENDS} \
			archivers/bzip2 \
			archivers/lz4 \
			archivers/lzo2 \
			archivers/snappy \
			archivers/xz \
			archivers/zstd \
			devel/pcre2 \
			net/curl \
			textproc/libxml
RUN_DEPENDS-tests=	${BASE_PKGPATH},-main>=11.4v1,<11.5v1
LIB_DEPENDS-tests=	${LIB_DEPENDS} \
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
		-DPLUGIN_OQGRAPH=NO \
		-DWITH_EXTERNAL_ZLIB=On \
		-DWITH_LIBFMT=bundled \
		-DWITH_PCRE=system \
		-DWITH_SSL=system \
		-DWITH_WSREP=On \
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

# The ColumnStore storage engine is disabled. ColumnStore is only
# buildable on X86.
CONFIGURE_ARGS+=-DPLUGIN_COLUMNSTORE=NO

.include <bsd.port.arch.mk>

.if !${PROPERTIES:Mlp64} || ${PROPERTIES:Mbe}
CONFIGURE_ARGS+=-DWITHOUT_ROCKSDB_STORAGE_ENGINE=1
.endif

CFLAGS+=	-I${LOCALBASE}/include
CXXFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

CONFIGURE_ENV=	LDFLAGS="${LDFLAGS}"

.if ${MACHINE_ARCH} == "hppa"
LDFLAGS+=	-latomic
WANTLIB+=	atomic
.endif

.if ${PROPERTIES:Mle}
PKG_ARGS+=	-Dle=1
.else
PKG_ARGS+=	-Dle=0
.endif

.if ${PROPERTIES:Mlp64} && ${PROPERTIES:Mle}
PKG_ARGS+=	-Drocksdb=1
.else
PKG_ARGS+=	-Drocksdb=0
.endif

pre-configure:
	mkdir -p ${WRKBUILD}/extra/libfmt/src
	cp -f ${DISTDIR}/fmt-11.0.1.zip ${WRKBUILD}/extra/libfmt/src
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
.if !${PROPERTIES:Mlp64} || ${PROPERTIES:Mbe}
	rm -f ${PREFIX}/man/man1/myrocks_hotbackup.1
	rm -Rf ${PREFIX}/share/mysql-test/plugin/rocksdb/
.endif

do-test:
	(${MODCMAKE_TEST_TARGET}) || true # Keep on going even if regress tests fail
	@cd ${WRKBUILD}/mysql-test && ./mysql-test-run.pl --force --verbose --max-test-fail=0

.include <bsd.port.mk>
