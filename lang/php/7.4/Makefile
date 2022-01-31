# $OpenBSD: Makefile,v 1.44 2022/01/31 21:18:10 sthen Exp $

PORTROACH=	limit:^7\.4
PHP_VERSION=	7.4.27

DEFAULT_PHP=	Yes
PHP_PKGSPEC=	<7.5
# keep >= 0 for 7.0->7.1
REVISION=	1

DEBUG_PACKAGES=		${BUILD_PACKAGES}

CONFIGURE_ARGS+=	--enable-inline-optimization

PHP_EXTENSIONS+=	-xmlrpc

.include <bsd.port.mk>
