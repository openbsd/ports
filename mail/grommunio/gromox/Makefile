# undefined ref's to libicon*, libintl* with ld.bfd
ONLY_FOR_ARCHS=	${LLD_ARCHS}

COMMENT-main=	groupware server backend with RPC, IMAP, POP3 support
COMMENT-mapi=	gromox MAPI extensions for PHP

V=		2.26
DISTNAME=	gromox-${V}

PKGNAME-main=	gromox-core-${V}
PKGNAME-mapi=	gromox-mapi-${V}

GH_ACCOUNT=	grommunio
GH_PROJECT=	gromox
GH_COMMIT=	62e2ca6ad2bb1fd92cd8d37d5c2d864ac0f010a3

CATEGORIES=	mail www productivity

SHARED_LIBS +=  gromox_common             0.0 # 0.0
SHARED_LIBS +=  gromox_cplus              0.0 # 0.0
SHARED_LIBS +=  gromox_dbop               0.0 # 0.0
SHARED_LIBS +=  gromox_email              0.0 # 0.0
SHARED_LIBS +=  gromox_epoll              0.0 # 0.0
SHARED_LIBS +=  gromox_exrpc              0.0 # 0.0
SHARED_LIBS +=  gromox_mapi               0.0 # 0.0
SHARED_LIBS +=  gromox_rpc                0.0 # 0.0

MULTI_PACKAGES=	-main -mapi

# C++11
COMPILER=	base-clang ports-gcc base-gcc

MODULES=	lang/php

MODPHP_DO_SAMPLE=mapi
MODPHP_BUILDDEP=Yes

DEBUG_PACKAGES=	${BUILD_PACKAGES}

BUILD_DEPENDS=	devel/cppunit \
		devel/swig \
		shells/bash \
		sysutils/coreutils

WANTLIB += HX iconv jsoncpp m pthread tinyxml2 vmime zstd

WANTLIB-main += ${LIBCXX} ${WANTLIB} c crypto curl fmt icudata icuuc lber
WANTLIB-main += ldap lzma mariadb nghttp2 nghttp3 ngtcp2 ngtcp2_crypto_quictls 
WANTLIB-main += sasl2 sqlite3 ssl ssl xml2 xxhash z

# Do not substitute MODULE_NAME
UPDATE_PLIST_ARGS+=	-i MODULE_NAME

# can't use MODPY_FLAVOR, doesn't pull in MODULES=lang/python
RUN_DEPENDS-main=	textproc/catdoc \
			sysutils/py-daemon,python3
LIB_DEPENDS-main= 	archivers/zstd \
			databases/mariadb \
			databases/openldap \
			devel/fmt \
			devel/jsoncpp \
			devel/libHX \
			devel/libvmime>=0.9.4 \
			net/curl \
			sysutils/xxhash \
			textproc/libxml \
			textproc/tinyxml2

WANTLIB-mapi += ${WANTLIB} HX fmt gromox_common m

LIB_DEPENDS-mapi=	${BASE_PKGPATH}>=${V} \
			archivers/zstd \
			devel/libHX \
			devel/libvmime>=0.9.4 \
			devel/jsoncpp \
			textproc/tinyxml2
RUN_DEPENDS-mapi=	${MODPHP_RUN_DEPENDS}

USE_GMAKE=	Yes

USE_NOEXECONLY=	Yes
USE_WXNEEDED=	Yes

CONFIGURE_STYLE=	autoreconf

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.16

CXXFLAGS+=	-D_LIBCPP_ENABLE_CXX17_REMOVED_UNARY_BINARY_FUNCTION

CONFIGURE_ARGS=	--disable-static \
		--with-php=${MODPHP_PHP_CONFIG}

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples \
		phpinidir=${PREFIX}/share/examples/php-${MODPHP_VERSION}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gromox
	${INSTALL_DATA} ${FILESDIR}/http.cfg \
		${FILESDIR}/mysql_adaptor.cfg \
		${FILESDIR}/smtp.cfg \
		${FILESDIR}/zcore.cfg \
		${PREFIX}/share/examples/gromox

.include <bsd.port.mk>
