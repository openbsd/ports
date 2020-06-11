# $OpenBSD: Makefile,v 1.5 2020/06/11 13:59:03 sthen Exp $

PORTROACH=	limit:^7\.4
PHP_VERSION=	7.4.7
PHP_PKGSPEC=	>=7.4,<7.5

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS+=		devel/bison
YACC=			bison

CONFIGURE_ARGS+=	--without-valgrind

.include <bsd.port.mk>
