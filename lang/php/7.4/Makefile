# $OpenBSD: Makefile,v 1.10 2020/10/14 08:44:32 sthen Exp $

PORTROACH=	limit:^7\.4
PHP_VERSION=	7.4.11
PHP_PKGSPEC=	>=7.4,<7.5
REVISION-xslt=	0

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS+=		devel/bison
YACC=			bison

CONFIGURE_ARGS+=	--without-valgrind

.include <bsd.port.mk>
