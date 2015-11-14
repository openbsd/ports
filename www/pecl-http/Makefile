# $OpenBSD: Makefile,v 1.8 2015/11/14 15:19:08 sthen Exp $

COMMENT=	extended HTTP support

_PECLMOD=	http
V=		2.5.3
REVISION=	1
PKGNAME=	pecl-${_PECLMOD}-${V}
DISTNAME=	pecl_${_PECLMOD}-${V}

HOMEPAGE=	http://pecl.php.net/package/pecl_http

# PHP
PERMIT_PACKAGE_CDROM =	Yes

MODULES=	lang/php/pecl \
		devel/gettext

CONFIGURE_STYLE= gnu

WANTLIB+=	crypto curl event idn nghttp2 ssl z
RUN_DEPENDS+=	www/pecl-raphf \
		www/pecl-propro
TEST_DEPENDS+=	${RUN_DEPENDS}
BUILD_DEPENDS+=	${RUN_DEPENDS}
LIB_DEPENDS=	net/curl

TEST_EXTS+=	-d extension_dir=${LOCALBASE}/lib/php-${MODPHP_VERSION}/modules
TEST_EXTS+=	-d extension=raphf.so
TEST_EXTS+=	-d extension=propro.so
TEST_EXTS+=	-d extension=http.so

MAKE_FLAGS+=	PHP_TEST_SHARED_EXTENSIONS="${TEST_EXTS}"

.include <bsd.port.mk>
