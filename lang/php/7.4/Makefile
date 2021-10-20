# $OpenBSD: Makefile,v 1.33 2021/10/20 20:45:59 sthen Exp $

PORTROACH=	limit:^7\.4
PHP_VERSION=	7.4.24
PHP_PKGSPEC=	>=7.4,<7.5
REVISION=	0

DEFAULT_PHP=	Yes

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS+=		devel/bison
YACC=			bison

CONFIGURE_ARGS+=	--without-valgrind

PHP_EXTENSIONS+=	-xmlrpc

.include <bsd.port.mk>
