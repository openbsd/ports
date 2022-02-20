# $OpenBSD: Makefile,v 1.45 2022/02/20 11:07:36 sthen Exp $

PORTROACH=	limit:^7\.4
PHP_VERSION=	7.4.28

DEFAULT_PHP=	Yes
PHP_PKGSPEC=	<7.5
# keep >= 0 for 7.0->7.1
REVISION=	0

DEBUG_PACKAGES=		${BUILD_PACKAGES}

CONFIGURE_ARGS+=	--enable-inline-optimization

PHP_EXTENSIONS+=	-xmlrpc

.include <bsd.port.mk>
