# $OpenBSD: Makefile,v 1.2 2018/04/27 09:07:44 sthen Exp $

COMMENT=	extended HTTP support

DISTNAME=	pecl_http-3.1.0
REVISION=	0

HOMEPAGE=	http://pecl.php.net/package/pecl_http

# PHP
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} event_core event_extra iconv icudata
WANTLIB += icui18n icuuc idn intl m z

MODULES=	lang/php/pecl
MODPECL_V=	7

CONFIGURE_STYLE= gnu

RUN_DEPENDS+=	www/pecl-raphf${MODPHP_FLAVOR} \
		www/pecl-propro${MODPHP_FLAVOR}

TEST_DEPENDS+=	${RUN_DEPENDS}
BUILD_DEPENDS+=	${RUN_DEPENDS}
LIB_DEPENDS=	devel/gettext \
		devel/libidn \
		devel/libevent2 \
		textproc/icu4c

TEST_EXTS+=	-d extension_dir=${LOCALBASE}/lib/php-${MODPHP_VERSION}/modules
TEST_EXTS+=	-d extension=raphf.so
TEST_EXTS+=	-d extension=propro.so
TEST_EXTS+=	-d extension=http.so

MAKE_FLAGS+=	PHP_TEST_SHARED_EXTENSIONS="${TEST_EXTS}"

.include <bsd.port.mk>
