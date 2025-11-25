# undefined ref's to libicon*, libintl* with ld.bfd
ONLY_FOR_ARCHS=	${LLD_ARCHS}

COMMENT-main=	groupware server backend with RPC, IMAP, POP3 support
COMMENT-mapi=	gromox MAPI extensions for PHP

V=		3.2

# required for mime.types
MAILCAP_V=	2-1-54

DISTNAME=	gromox-${V}

PKGNAME-main=	gromox-core-${V}
PKGNAME-mapi=	gromox-mapi-${V}

GH_ACCOUNT=	grommunio
GH_PROJECT=	gromox
GH_COMMIT=	c9b0d1f61f3130f5955968bcf00dc7b3906ad1cb

SITES.a=	https://pagure.io/mailcap/archive/r${MAILCAP_V}/
DISTFILES.a=	mailcap-r${MAILCAP_V}.tar.gz

CATEGORIES=	mail www productivity

SHARED_LIBS +=  gromox_abtree             0.0 # 0.0
SHARED_LIBS +=  gromox_auth               0.0 # 0.0
SHARED_LIBS +=  gromox_authz              0.0 # 0.0
SHARED_LIBS +=  gromox_common             0.0 # 0.0
SHARED_LIBS +=  gromox_cplus              0.0 # 0.0
SHARED_LIBS +=  gromox_dbop               0.0 # 0.0
SHARED_LIBS +=  gromox_emsmdb             0.0 # 0.0
SHARED_LIBS +=  gromox_epoll              0.0 # 0.0
SHARED_LIBS +=  gromox_ews                0.0 # 0.0
SHARED_LIBS +=  gromox_exrpc              0.0 # 0.0
SHARED_LIBS +=  gromox_mapi               0.0 # 0.0
SHARED_LIBS +=  gromox_mh_emsmdb          0.0 # 0.0
SHARED_LIBS +=  gromox_mh_nsp             0.0 # 0.0
SHARED_LIBS +=  gromox_ndr                0.0 # 0.0
SHARED_LIBS +=  gromox_nsp                0.0 # 0.0
SHARED_LIBS +=  gromox_oab                0.0 # 0.0
SHARED_LIBS +=  gromox_oxdisco            0.0 # 0.0
SHARED_LIBS +=  gromox_rfr                0.0 # 0.0
SHARED_LIBS +=  gxm_alias_resolve         0.0 # 0.0
SHARED_LIBS +=  gxm_exmdb_local           0.0 # 0.0
SHARED_LIBS +=  gxs_dnsbl_filter          0.0 # 0.0
SHARED_LIBS +=  gxs_event_proxy           0.0 # 0.0
SHARED_LIBS +=  gxs_event_stub            0.0 # 0.0
SHARED_LIBS +=  gxs_exmdb_provider        0.0 # 0.0
SHARED_LIBS +=  gxs_ldap_adaptor          0.0 # 0.0
SHARED_LIBS +=  gxs_midb_agent            0.0 # 0.0
SHARED_LIBS +=  gxs_mysql_adaptor         0.0 # 0.0
SHARED_LIBS +=  gxs_ruleproc              0.0 # 0.0
SHARED_LIBS +=  gxs_timer_agent           0.0 # 0.0

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

WANTLIB += ${COMPILER_LIBCXX} HX iconv jsoncpp m pthread tinyxml2 vmime zstd

WANTLIB-main += ${WANTLIB} c cares crypto curl fmt icudata icuuc
WANTLIB-main += lber ldap mariadb nghttp2 nghttp3 ngtcp2 ngtcp2_crypto_libressl
WANTLIB-main += sasl2 sqlite3 ssl ssl xml2 xxhash z

# Do not substitute MODULE_NAME
UPDATE_PLIST_ARGS+=	-i MODULE_NAME

RUN_DEPENDS-main=	textproc/catdoc \
			sysutils/py-daemon
LIB_DEPENDS-main=	archivers/zstd \
			databases/mariadb \
			databases/openldap \
			databases/sqlite3 \
			devel/fmt \
			devel/jsoncpp \
			devel/libHX>=4.28 \
			devel/libvmime>=20250917 \
			net/libcares \
			net/curl \
			sysutils/xxhash \
			textproc/libxml \
			textproc/tinyxml2

WANTLIB-mapi += ${WANTLIB} HX crypto fmt gromox_common
WANTLIB-mapi += gromox_mapi m sqlite3 ssl xml2

LIB_DEPENDS-mapi=	${BASE_PKGPATH}>=${V} \
			archivers/zstd \
			devel/libHX>=4.27 \
			devel/libvmime>=0.9.4 \
			devel/jsoncpp \
			textproc/tinyxml2
RUN_DEPENDS-mapi=	${MODPHP_RUN_DEPENDS}

USE_GMAKE=	Yes

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ENV+=		vmime_CFLAGS="$(pkg-config vmime --cflags)" \
			vmime_LIBS="$(pkg-config vmime --libs)"


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
		${WRKDIR}/mailcap-r${MAILCAP_V}/mime.types \
		${PREFIX}/share/examples/gromox

.include <bsd.port.mk>
