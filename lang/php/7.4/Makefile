# $OpenBSD: Makefile,v 1.6 2020/07/21 15:58:41 sthen Exp $

PORTROACH=	limit:^7\.4
PHP_VERSION=	7.4.8
PHP_PKGSPEC=	>=7.4,<7.5

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS+=		devel/bison
YACC=			bison

CONFIGURE_ARGS+=	--without-valgrind

.include <bsd.port.mk>
