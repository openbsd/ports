# $OpenBSD: Makefile,v 1.18 2021/12/18 22:28:16 sthen Exp $

PORTROACH=	limit:^8\.0
PHP_VERSION=	8.0.14
PHP_PKGSPEC=	>=8.0,<8.1

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS+=		devel/bison
YACC=			bison

CONFIGURE_ARGS+=	--without-valgrind

.include <bsd.port.mk>
