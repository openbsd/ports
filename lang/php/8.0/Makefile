# $OpenBSD: Makefile,v 1.16 2021/11/19 09:56:25 sthen Exp $

PORTROACH=	limit:^8\.0
PHP_VERSION=	8.0.13
PHP_PKGSPEC=	>=8.0,<8.1

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS+=		devel/bison
YACC=			bison

CONFIGURE_ARGS+=	--without-valgrind

.include <bsd.port.mk>
