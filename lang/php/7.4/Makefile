# $OpenBSD: Makefile,v 1.11 2020/10/14 15:18:17 sthen Exp $

PORTROACH=	limit:^7\.4
PHP_VERSION=	7.4.11
PHP_PKGSPEC=	>=7.4,<7.5
REVISION-xsl=	0

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS+=		devel/bison
YACC=			bison

CONFIGURE_ARGS+=	--without-valgrind

.include <bsd.port.mk>
