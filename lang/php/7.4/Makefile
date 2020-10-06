# $OpenBSD: Makefile,v 1.9 2020/10/06 11:09:55 sthen Exp $

PORTROACH=	limit:^7\.4
PHP_VERSION=	7.4.11
PHP_PKGSPEC=	>=7.4,<7.5

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS+=		devel/bison
YACC=			bison

CONFIGURE_ARGS+=	--without-valgrind

.include <bsd.port.mk>
