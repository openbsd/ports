# $OpenBSD: Makefile,v 1.12 2020/10/29 23:25:16 sthen Exp $

PORTROACH=	limit:^7\.4
PHP_VERSION=	7.4.12
PHP_PKGSPEC=	>=7.4,<7.5

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS+=		devel/bison
YACC=			bison

CONFIGURE_ARGS+=	--without-valgrind

.include <bsd.port.mk>
