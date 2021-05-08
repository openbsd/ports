# $OpenBSD: Makefile,v 1.7 2021/05/08 08:39:21 sthen Exp $

PORTROACH=	limit:^8\.0
PHP_VERSION=	8.0.6
PHP_PKGSPEC=	>=8.0,<8.1

# keep above 6.9-stable
REVISION=	0

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS+=		devel/bison
YACC=			bison

CONFIGURE_ARGS+=	--without-valgrind

.include <bsd.port.mk>
