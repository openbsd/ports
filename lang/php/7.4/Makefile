# $OpenBSD: Makefile,v 1.36 2021/10/26 15:11:13 sthen Exp $

PORTROACH=	limit:^7\.4
PHP_VERSION=	7.4.25
PHP_PKGSPEC=	>=7.4,<7.5
REVISION=	0
REVISION-main=	1

DEFAULT_PHP=	Yes

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS+=		devel/bison
YACC=			bison

CONFIGURE_ARGS+=	--without-valgrind

PHP_EXTENSIONS+=	-xmlrpc

.include <bsd.port.mk>
