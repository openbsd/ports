# $OpenBSD: Makefile,v 1.3 2021/02/25 11:42:33 sthen Exp $

PORTROACH=	limit:^8\.0
PHP_VERSION=	8.0.2
PHP_PKGSPEC=	>=8.0,<8.1
REVISION-main=	1
REVISION=	0

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS+=		devel/bison
YACC=			bison

CONFIGURE_ARGS+=	--without-valgrind

.include <bsd.port.mk>
