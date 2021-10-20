# $OpenBSD: Makefile,v 1.13 2021/10/20 20:45:59 sthen Exp $

PORTROACH=	limit:^8\.0
PHP_VERSION=	8.0.11
PHP_PKGSPEC=	>=8.0,<8.1
REVISION=	0

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS+=		devel/bison
YACC=			bison

CONFIGURE_ARGS+=	--without-valgrind

.include <bsd.port.mk>
