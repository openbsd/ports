# $OpenBSD: Makefile,v 1.2 2020/04/22 11:55:14 sthen Exp $

PORTROACH=	limit:^7\.4
PHP_VERSION=	7.4.5
PHP_PKGSPEC=	>=7.4,<7.5
REVISION=	0

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS+=		devel/bison
YACC=			bison

CONFIGURE_ARGS+=	--without-valgrind

.include <bsd.port.mk>
