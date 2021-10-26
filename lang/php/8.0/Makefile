# $OpenBSD: Makefile,v 1.15 2021/10/26 15:11:13 sthen Exp $

PORTROACH=	limit:^8\.0
PHP_VERSION=	8.0.12
PHP_PKGSPEC=	>=8.0,<8.1
REVISION-main=	0

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS+=		devel/bison
YACC=			bison

CONFIGURE_ARGS+=	--without-valgrind

.include <bsd.port.mk>
