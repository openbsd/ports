# $OpenBSD: Makefile,v 1.56 2021/08/27 08:51:28 sthen Exp $

PORTROACH=	limit:^7\.3
PHP_VERSION=	7.3.30
PHP_PKGSPEC=	>=7.3,<7.4

# for 6.9->7.0, keep above version/revision in 6.9-stable
REVISION=	0

DEBUG_PACKAGES=		${BUILD_PACKAGES}

PHP_EXTENSIONS+=	-xmlrpc

.include <bsd.port.mk>
