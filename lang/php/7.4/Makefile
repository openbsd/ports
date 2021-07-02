# $OpenBSD: Makefile,v 1.29 2021/07/02 13:53:08 sthen Exp $

PORTROACH=	limit:^7\.4
PHP_VERSION=	7.4.21
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
