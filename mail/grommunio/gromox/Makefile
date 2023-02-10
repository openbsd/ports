# undefined ref's to libicon*, libintl* with ld.bfd
ONLY_FOR_ARCHS=	${LLD_ARCHS}

COMMENT-main=	groupware server backend with RPC, IMAP, POP3 support
COMMENT-mapi=	gromox MAPI extensions for PHP

V=		2.3.48
DISTNAME=	gromox-${V}

PKGNAME-main=	gromox-core-${V}
PKGNAME-mapi=	gromox-mapi-${V}

GH_ACCOUNT=	grommunio
GH_PROJECT=	gromox
GH_COMMIT=	b26cc56fda11f2ea815f663b4dad876eb885ddd9

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
MESSAGE-main=	# empty
UNMESSAGE-main=	# empty

DEBUG_PACKAGES=	${BUILD_PACKAGES}

BUILD_DEPENDS=	devel/cppunit \
		devel/swig \
		shells/bash \
		sysutils/coreutils

WANTLIB += HX iconv jsoncpp m tinyxml2 vmime zstd

WANTLIB-main += ${LIBCXX} ${WANTLIB} c crypto curl fmt gumbo icudata icuuc lber
WANTLIB-main += ldap mariadb nghttp2 nghttp3 ngtcp2 ngtcp2_crypto_openssl 
WANTLIB-main += pthread sasl2 sqlite3 ssl ssl z

# Do not substitute MODULE_NAME
UPDATE_PLIST_ARGS+=	-i MODULE_NAME

RUN_DEPENDS-main=	textproc/catdoc \
			sysutils/py-daemon${MODPY_FLAVOR} \
			www/py-jwt${MODPY_FLAVOR}
LIB_DEPENDS-main= 	archivers/zstd \
			databases/mariadb \
			databases/openldap \
			devel/fmt \
			devel/jsoncpp \
			devel/libHX \
			devel/libvmime>=0.9.4 \
			net/curl \
			textproc/tinyxml2 \
			www/gumbo

WANTLIB-mapi += ${WANTLIB} HX gromox_common m

LIB_DEPENDS-mapi=	${BASE_PKGPATH}>=${V} \
			archivers/zstd \
			devel/libHX \
			devel/libvmime>=0.9.4 \
			devel/jsoncpp \
			textproc/tinyxml2
RUN_DEPENDS-mapi=	${MODPHP_RUN_DEPENDS}

USE_GMAKE=	Yes

USE_NOEXECONLY=	Yes
USE_WXNEEDED=Yes

CONFIGURE_STYLE=	autoreconf

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.16

CONFIGURE_ENV=	CPPFLAGS="-I/usr/local/include" PHP_SYSCONF_DIR="${SYSCONFDIR}/php-${MODPHP_VERSION}" \
		ac_cv_lib_pam_pam_start=no
CONFIGURE_ARGS=	--disable-static

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples \
		phpsysconfdir=${PREFIX}/share/examples/php-${MODPHP_VERSION}

.include <bsd.port.mk>
