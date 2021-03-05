# $OpenBSD: Makefile,v 1.24 2021/03/05 15:13:55 sthen Exp $

PORTROACH=	limit:^7\.4
PHP_VERSION=	7.4.16
PHP_PKGSPEC=	>=7.4,<7.5
REVISION=	0

DEFAULT_PHP=	Yes

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS+=		devel/bison
YACC=			bison

CONFIGURE_ARGS+=	--without-valgrind

PHP_EXTENSIONS+=	-xmlrpc

.include <bsd.port.mk>
