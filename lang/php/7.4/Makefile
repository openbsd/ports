# $OpenBSD: Makefile,v 1.28 2021/06/05 20:30:14 sthen Exp $

PORTROACH=	limit:^7\.4
PHP_VERSION=	7.4.20
PHP_PKGSPEC=	>=7.4,<7.5

# for 6.9->7.0, keep above version/revision in 6.9-stable
REVISION=	0

DEFAULT_PHP=	Yes

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS+=		devel/bison
YACC=			bison

CONFIGURE_ARGS+=	--without-valgrind

PHP_EXTENSIONS+=	-xmlrpc

.include <bsd.port.mk>
