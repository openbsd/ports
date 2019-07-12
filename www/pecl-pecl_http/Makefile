# $OpenBSD: Makefile,v 1.9 2019/07/12 20:50:59 sthen Exp $

BROKEN= builds, but has problems picking up libcurl

COMMENT=	extended HTTP support

DISTNAME=	pecl_http-3.2.0
REVISION=	0

HOMEPAGE=	http://pecl.php.net/package/pecl_http

# PHP
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += brotlicommon brotlidec brotlienc curl event_core event_extra
WANTLIB += iconv icudata icui18n icuuc idn intl m z

COMPILER =		base-clang ports-gcc base-gcc

MODULES=	lang/php/pecl

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	 --with-http-libcurl-dir=${LOCALBASE}
CONFIGURE_SCRIPT= ${LOCALBASE}/bin/bash configure

RUN_DEPENDS+=	www/pecl-raphf${MODPHP_FLAVOR} \
		www/pecl-propro${MODPHP_FLAVOR}

TEST_DEPENDS+=	${RUN_DEPENDS}
BUILD_DEPENDS+=	${RUN_DEPENDS}
LIB_DEPENDS=	archivers/brotli \
		devel/gettext,-runtime \
		devel/libidn \
		devel/libevent2 \
		net/curl \
		textproc/icu4c

TEST_EXTS+=	-d extension_dir=${LOCALBASE}/lib/php-${MODPHP_VERSION}/modules
TEST_EXTS+=	-d extension=raphf.so
TEST_EXTS+=	-d extension=propro.so
TEST_EXTS+=	-d extension=http.so

MAKE_FLAGS+=	PHP_TEST_SHARED_EXTENSIONS="${TEST_EXTS}"

.include <bsd.port.mk>
