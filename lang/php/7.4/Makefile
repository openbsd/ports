# $OpenBSD: Makefile,v 1.15 2021/01/25 14:02:45 sthen Exp $

PORTROACH=	limit:^7\.4
PHP_VERSION=	7.4.14
PHP_PKGSPEC=	>=7.4,<7.5
REVISION-main=	0

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS+=		devel/bison
YACC=			bison

CONFIGURE_ARGS+=	--without-valgrind

.include <bsd.port.mk>
