# $OpenBSD: Makefile,v 1.13 2016/11/08 14:38:55 sthen Exp $

COMMENT=	extended HTTP support

_PECLMOD=	http
V=		2.5.6
PKGNAME=	pecl-${_PECLMOD}-${V}
DISTNAME=	pecl_${_PECLMOD}-${V}
REVISION=	1

HOMEPAGE=	http://pecl.php.net/package/pecl_http

# PHP
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB+= c crypto curl event iconv intl idn nghttp2 ssl z

MODULES=	lang/php/pecl

CONFIGURE_STYLE= gnu

RUN_DEPENDS+=	www/pecl-raphf \
		www/pecl-propro
TEST_DEPENDS+=	${RUN_DEPENDS}
BUILD_DEPENDS+=	${RUN_DEPENDS}
LIB_DEPENDS=	devel/gettext \
		devel/libidn \
		net/curl

TEST_EXTS+=	-d extension_dir=${LOCALBASE}/lib/php-${MODPHP_VERSION}/modules
TEST_EXTS+=	-d extension=raphf.so
TEST_EXTS+=	-d extension=propro.so
TEST_EXTS+=	-d extension=http.so

MAKE_FLAGS+=	PHP_TEST_SHARED_EXTENSIONS="${TEST_EXTS}"

.include <bsd.port.mk>
