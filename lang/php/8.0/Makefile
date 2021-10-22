# $OpenBSD: Makefile,v 1.14 2021/10/22 09:00:41 sthen Exp $

PORTROACH=	limit:^8\.0
PHP_VERSION=	8.0.12
PHP_PKGSPEC=	>=8.0,<8.1

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS+=		devel/bison
YACC=			bison

CONFIGURE_ARGS+=	--without-valgrind

.include <bsd.port.mk>
