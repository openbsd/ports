# $OpenBSD: Makefile,v 1.32 2021/10/03 20:03:15 sthen Exp $

PORTROACH=	limit:^7\.4
PHP_VERSION=	7.4.24
PHP_PKGSPEC=	>=7.4,<7.5

DEFAULT_PHP=	Yes

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS+=		devel/bison
YACC=			bison

CONFIGURE_ARGS+=	--without-valgrind

PHP_EXTENSIONS+=	-xmlrpc

.include <bsd.port.mk>
