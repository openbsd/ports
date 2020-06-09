# $OpenBSD: Makefile,v 1.4 2020/06/09 07:14:44 jasper Exp $

PORTROACH=	limit:^7\.4
PHP_VERSION=	7.4.6
PHP_PKGSPEC=	>=7.4,<7.5
REVISION-xsl =  0

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS+=		devel/bison
YACC=			bison

CONFIGURE_ARGS+=	--without-valgrind

.include <bsd.port.mk>
