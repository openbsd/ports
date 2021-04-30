# $OpenBSD: Makefile,v 1.25 2021/04/30 17:00:27 sthen Exp $

PORTROACH=	limit:^7\.4
PHP_VERSION=	7.4.18
PHP_PKGSPEC=	>=7.4,<7.5

DEFAULT_PHP=	Yes

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS+=		devel/bison
YACC=			bison

CONFIGURE_ARGS+=	--without-valgrind

PHP_EXTENSIONS+=	-xmlrpc

.include <bsd.port.mk>
