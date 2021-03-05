# $OpenBSD: Makefile,v 1.4 2021/03/05 15:17:19 sthen Exp $

PORTROACH=	limit:^8\.0
PHP_VERSION=	8.0.3
PHP_PKGSPEC=	>=8.0,<8.1

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS+=		devel/bison
YACC=			bison

CONFIGURE_ARGS+=	--without-valgrind

.include <bsd.port.mk>
