# $OpenBSD: Makefile,v 1.14 2021/01/07 17:13:27 sthen Exp $

PORTROACH=	limit:^7\.4
PHP_VERSION=	7.4.14
PHP_PKGSPEC=	>=7.4,<7.5

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS+=		devel/bison
YACC=			bison

CONFIGURE_ARGS+=	--without-valgrind

.include <bsd.port.mk>
