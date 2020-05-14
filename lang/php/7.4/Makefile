# $OpenBSD: Makefile,v 1.3 2020/05/14 19:34:53 sthen Exp $

PORTROACH=	limit:^7\.4
PHP_VERSION=	7.4.6
PHP_PKGSPEC=	>=7.4,<7.5

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS+=		devel/bison
YACC=			bison

CONFIGURE_ARGS+=	--without-valgrind

.include <bsd.port.mk>
