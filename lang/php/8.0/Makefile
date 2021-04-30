# $OpenBSD: Makefile,v 1.5 2021/04/30 17:00:27 sthen Exp $

PORTROACH=	limit:^8\.0
PHP_VERSION=	8.0.5
PHP_PKGSPEC=	>=8.0,<8.1

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS+=		devel/bison
YACC=			bison

CONFIGURE_ARGS+=	--without-valgrind

.include <bsd.port.mk>
