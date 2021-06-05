# $OpenBSD: Makefile,v 1.8 2021/06/05 20:29:55 sthen Exp $

PORTROACH=	limit:^8\.0
PHP_VERSION=	8.0.7
PHP_PKGSPEC=	>=8.0,<8.1

# for 6.9->7.0, keep above version/revision in 6.9-stable
REVISION=	0

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS+=		devel/bison
YACC=			bison

CONFIGURE_ARGS+=	--without-valgrind

.include <bsd.port.mk>
