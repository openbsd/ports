# $OpenBSD: Makefile,v 1.13 2020/11/26 20:39:15 sthen Exp $

PORTROACH=	limit:^7\.4
PHP_VERSION=	7.4.13
PHP_PKGSPEC=	>=7.4,<7.5

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS+=		devel/bison
YACC=			bison

CONFIGURE_ARGS+=	--without-valgrind

.include <bsd.port.mk>
