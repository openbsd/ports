# $OpenBSD: Makefile,v 1.54 2021/05/02 14:47:12 sthen Exp $

PORTROACH=	limit:^7\.3
PHP_VERSION=	7.3.28
PHP_PKGSPEC=	>=7.3,<7.4

# keep above 6.9-stable
REVISION=	0

DEBUG_PACKAGES=		${BUILD_PACKAGES}

PHP_EXTENSIONS+=	-xmlrpc

.include <bsd.port.mk>
