# $OpenBSD: Makefile,v 1.16 2021/02/04 16:01:09 sthen Exp $

PORTROACH=	limit:^7\.4
PHP_VERSION=	7.4.15
PHP_PKGSPEC=	>=7.4,<7.5

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS+=		devel/bison
YACC=			bison

CONFIGURE_ARGS+=	--without-valgrind

.include <bsd.port.mk>
