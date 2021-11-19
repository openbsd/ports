# $OpenBSD: Makefile,v 1.37 2021/11/19 09:56:32 sthen Exp $

PORTROACH=	limit:^7\.4
PHP_VERSION=	7.4.26

DEFAULT_PHP=	Yes
PHP_PKGSPEC=	<7.5
REVISION=	0

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS+=		devel/bison
YACC=			bison

CONFIGURE_ARGS+=	--without-valgrind

PHP_EXTENSIONS+=	-xmlrpc

.include <bsd.port.mk>
