# $OpenBSD: Makefile,v 1.23 2021/02/25 11:42:33 sthen Exp $

PORTROACH=	limit:^7\.4
PHP_VERSION=	7.4.15
PHP_PKGSPEC=	>=7.4,<7.5
REVISION-main=	3
REVISION=	2

DEFAULT_PHP=	Yes

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS+=		devel/bison
YACC=			bison

CONFIGURE_ARGS+=	--without-valgrind

PHP_EXTENSIONS+=	-xmlrpc

.include <bsd.port.mk>
