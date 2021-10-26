# $OpenBSD: Makefile,v 1.35 2021/10/26 11:15:39 sthen Exp $

PORTROACH=	limit:^7\.4
PHP_VERSION=	7.4.25
PHP_PKGSPEC=	>=7.4,<7.5
REVISION=	0

DEFAULT_PHP=	Yes

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS+=		devel/bison
YACC=			bison

CONFIGURE_ARGS+=	--without-valgrind

PHP_EXTENSIONS+=	-xmlrpc

.include <bsd.port.mk>
