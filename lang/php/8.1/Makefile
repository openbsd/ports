# $OpenBSD: Makefile,v 1.1 2021/12/18 22:28:55 sthen Exp $

PHP_VERSION=	8.1.1
PHP_PKGSPEC=	>=8.1,<8.2

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS+=		devel/bison
YACC=			bison

CONFIGURE_ARGS+=	--without-valgrind

.include <bsd.port.mk>
